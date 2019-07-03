# -*- coding: utf-8 -*-
"""
/***************************************************************************
 YKRTool
                                 A QGIS plugin
 Tampereen tulevaisuuden yhdyskuntarakenteen ilmastovaikutusten arviointityökalu
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                              -------------------
        begin                : 2019-05-05
        git sha              : $Format:%H$
        copyright            : (C) 2019 by Gispo Ltd.
        email                : mikael@gispo.fi
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from PyQt5 import uic
from PyQt5.QtCore import QSettings, QTranslator, qVersion, QCoreApplication
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QAction

from qgis.core import (Qgis, QgsMessageLog, QgsVectorLayer,
QgsCoordinateReferenceSystem, QgsApplication, QgsDataSourceUri, QgsProject)
from qgis.gui import QgsFileWidget

# Initialize Qt resources from file resources.py
from .resources import *
# Import the code for the dialog
import processing
import uuid
import os.path
import psycopg2
import datetime, getpass
from configparser import ConfigParser
from .ykr_tool_tasks import QueryTask
from .createdbconnection import createDbConnection

class YKRTool:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        """Constructor.

        :param iface: An interface instance that will be passed to this class
            which provides the hook by which you can manipulate the QGIS
            application at run time.
        :type iface: QgsInterface
        """
        # Save reference to the QGIS interface
        self.iface = iface
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'YKRTool_{}.qm'.format(locale))

        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)

            if qVersion() > '4.3.3':
                QCoreApplication.installTranslator(self.translator)

        # Declare instance attributes
        self.actions = []
        self.menu = self.tr(u'&Ilmastovaikutusten arviointityökalu')

        self.conn = None
        self.connParams = None
        self.tableNames = {}

        # Check if plugin was started the first time in current QGIS session
        # Must be set in initGui() to survive plugin reloads
        self.first_start = None

        self.mainDialog = uic.loadUi(os.path.join(self.plugin_dir, 'ykr_tool_main.ui'))
        self.settingsDialog = uic.loadUi(os.path.join(self.plugin_dir, 'ykr_tool_db_settings.ui'))
        self.infoDialog = uic.loadUi(os.path.join(self.plugin_dir, 'ykr_tool_info.ui'))

    # noinspection PyMethodMayBeStatic
    def tr(self, message):
        """Get the translation for a string using Qt translation API.

        We implement this ourselves since we do not inherit QObject.

        :param message: String for translation.
        :type message: str, QString

        :returns: Translated version of message.
        :rtype: QString
        """
        # noinspection PyTypeChecker,PyArgumentList,PyCallByClass
        return QCoreApplication.translate('YKRTool', message)


    def add_action(
            self,
            icon_path,
            text,
            callback,
            enabled_flag=True,
            add_to_menu=True,
            add_to_toolbar=True,
            status_tip=None,
            whats_this=None,
            parent=None):
        """Add a toolbar icon to the toolbar.

        :param icon_path: Path to the icon for this action. Can be a resource
            path (e.g. ':/plugins/foo/bar.png') or a normal file system path.
        :type icon_path: str

        :param text: Text that should be shown in menu items for this action.
        :type text: str

        :param callback: Function to be called when the action is triggered.
        :type callback: function

        :param enabled_flag: A flag indicating if the action should be enabled
            by default. Defaults to True.
        :type enabled_flag: bool

        :param add_to_menu: Flag indicating whether the action should also
            be added to the menu. Defaults to True.
        :type add_to_menu: bool

        :param add_to_toolbar: Flag indicating whether the action should also
            be added to the toolbar. Defaults to True.
        :type add_to_toolbar: bool

        :param status_tip: Optional text to show in a popup when mouse pointer
            hovers over the action.
        :type status_tip: str

        :param parent: Parent widget for the new action. Defaults None.
        :type parent: QWidget

        :param whats_this: Optional text to show in the status bar when the
            mouse pointer hovers over the action.

        :returns: The action that was created. Note that the action is also
            added to self.actions list.
        :rtype: QAction
        """

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if add_to_toolbar:
            # Adds plugin icon to Plugins toolbar
            self.iface.addToolBarIcon(action)

        if add_to_menu:
            self.iface.addPluginToMenu(
                self.menu,
                action)

        self.actions.append(action)

        return action

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""

        icon_path = ':/plugins/ykr_tool/icon.png'
        self.add_action(
            icon_path,
            text=self.tr(u'Ilmastovaikutusten arviointityökalu'),
            callback=self.run,
            parent=self.iface.mainWindow())

        # will be set False in run()
        self.first_start = True


    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""
        for action in self.actions:
            self.iface.removePluginMenu(
                self.tr(u'&Ilmastovaikutusten arviointityökalu'),
                action)
            self.iface.removeToolBarIcon(action)


    def run(self):
        """Run method that performs all the real work"""

        # Create the dialog with elements (after translation) and keep reference
        # Only create GUI ONCE in callback, so that it will only load when the plugin is started
        if self.first_start:
            self.first_start = False
            self.setupMainDialog()

        self.mainDialog.show()

        # Run the dialog event loop
        result = self.mainDialog.exec_()
        # See if OK was pressed
        if result:
            try:
                if not self.connParams:
                    configFilePath = QSettings().value("/YKRTool/configFilePath",\
                        "", type=str)
                    self.connParams = self.parseConfigFile(configFilePath)
                self.conn = createDbConnection(self.connParams)
                self.cur = self.conn.cursor()
                self.sessionParams = self.generateSessionParameters()
                self.readProcessingInput()
                self.uploadData()

                queryTask = QueryTask('Suoritetaan laskentaa', self.connParams, self.getCalculationQueries())
                queryTask.taskCompleted.connect(self.postCalculation)
                QgsApplication.taskManager().addTask(queryTask)
                self.iface.messageBar().pushMessage('Lasketaan', 'Laskenta käynnissä', Qgis.Info, duration=15)

            except Exception as e:
                self.iface.messageBar().pushMessage('Virhe', str(e), Qgis.Critical, duration=0)
                try:
                    self.cleanUpSession()
                except Exception as e:
                    self.iface.messageBar().pushMessage('Virhe', str(e), Qgis.Warning, duration=0)
                return False

    def setupMainDialog(self):
        '''Sets up the main dialog'''
        md = self.mainDialog
        md.geomArea.addItem("Tampere")
        md.adminArea.addItem("Pirkanmaa")
        md.pitkoScenario.addItems(["wem", "eu80", "kasvu", "muutos", "saasto", "static"])
        md.emissionsAllocation.addItems(["hjm", "em"])
        md.elecEmissionType.addItems(["hankinta", "tuotanto"])

        md.onlySelectedFeats.setEnabled(False)

        md.settingsButton.clicked.connect(self.displaySettingsDialog)
        md.infoButton.clicked.connect(lambda: self.infoDialog.show())

        md.ykrPopLayerList.hide()
        md.ykrJobsLayerList.hide()
        md.ykrBuildingsLayerList.hide()
        md.futureAreasLayerList.hide()
        md.futureNetworkLayerList.hide()
        md.futureStopsLayerList.hide()

        md.ykrPopLoadLayer.clicked.connect(self.handleLayerToggle)
        md.ykrJobsLoadLayer.clicked.connect(self.handleLayerToggle)
        md.ykrBuildingsLoadLayer.clicked.connect(self.handleLayerToggle)
        md.futureAreasLoadLayer.clicked.connect(self.handleLayerToggle)
        md.futureNetworkLoadLayer.clicked.connect(self.handleLayerToggle)
        md.futureStopsLoadLayer.clicked.connect(self.handleLayerToggle)

        md.calculateFuture.clicked.connect(self.handleLayerToggle)
        # Future calculations currently not supported
        md.calculateFuture.setEnabled(False)
        md.futureBox.setEnabled(False)

    def displaySettingsDialog(self):
        '''Sets up and displays the settings dialog'''
        self.settingsDialog.show()
        self.settingsDialog.configFileInput.setStorageMode(QgsFileWidget.GetFile)
        self.settingsDialog.configFileInput.setFilePath(QSettings().value\
            ("/YKRTool/configFilePath", "", type=str))
        self.settingsDialog.loadFileButton.clicked.connect(self.setConnectionParamsFromFile)

        result = self.settingsDialog.exec_()
        if result:
            self.connParams = self.readConnectionParamsFromInput()

    def setConnectionParamsFromFile(self):
        '''Reads connection parameters from file and sets them to the input fields'''
        filePath = self.settingsDialog.configFileInput.filePath()
        QSettings().setValue("/YKRTool/configFilePath", filePath)

        try:
            dbParams = self.parseConfigFile(filePath)
        except Exception as e:
            self.iface.messageBar().pushMessage('Virhe luettaessa tiedostoa',\
                str(e), Qgis.Warning, duration=10)

        self.setConnectionParamsFromInput(dbParams)

    def parseConfigFile(self, filePath):
        '''Reads configuration file and returns parameters as a dict'''
        # Setup an empty dict with correct keys to avoid keyerrors
        dbParams = {
            'host': '',
            'port': '',
            'database': '',
            'user': '',
            'password': ''
        }
        if not os.path.exists(filePath):
            self.iface.messageBar().pushMessage('Virhe', 'Tiedostoa ei voitu lukea',\
                Qgis.Warning)
            return dbParams

        parser = ConfigParser()
        parser.read(filePath)
        if parser.has_section('postgresql'):
            params = parser.items('postgresql')
            for param in params:
                dbParams[param[0]] = param[1]
        else:
            self.iface.messageBar().pushMessage('Virhe', 'Tiedosto ei sisällä\
                tietokannan yhteystietoja', Qgis.Warning)

        return dbParams

    def setConnectionParamsFromInput(self, params):
        '''Sets connection parameters to input fields'''
        self.settingsDialog.dbHost.setValue(params['host'])
        self.settingsDialog.dbPort.setValue(params['port'])
        self.settingsDialog.dbName.setValue(params['database'])
        self.settingsDialog.dbUser.setValue(params['user'])
        self.settingsDialog.dbPass.setText(params['password'])

    def readConnectionParamsFromInput(self):
        '''Reads connection parameters from user input and returns a dictionary'''
        params = {}
        params['host'] = self.settingsDialog.dbHost.value()
        params['port'] = self.settingsDialog.dbPort.value()
        params['database'] = self.settingsDialog.dbName.value()
        params['user'] = self.settingsDialog.dbUser.value()
        params['password'] = self.settingsDialog.dbPass.text()
        return params

    def handleLayerToggle(self):
        '''Toggle UI components visibility based on selection'''
        if self.mainDialog.ykrPopLoadLayer.isChecked():
            self.mainDialog.ykrPopLayerList.show()
            self.mainDialog.ykrPopFile.hide()
        else:
            self.mainDialog.ykrPopLayerList.hide()
            self.mainDialog.ykrPopFile.show()
        if self.mainDialog.ykrJobsLoadLayer.isChecked():
            self.mainDialog.ykrJobsLayerList.show()
            self.mainDialog.ykrJobsFile.hide()
        else:
            self.mainDialog.ykrJobsLayerList.hide()
            self.mainDialog.ykrJobsFile.show()
        if self.mainDialog.ykrBuildingsLoadLayer.isChecked():
            self.mainDialog.ykrBuildingsLayerList.show()
            self.mainDialog.ykrBuildingsFile.hide()
        else:
            self.mainDialog.ykrBuildingsLayerList.hide()
            self.mainDialog.ykrBuildingsFile.show()
        if self.mainDialog.futureAreasLoadLayer.isChecked():
            self.mainDialog.futureAreasLayerList.show()
            self.mainDialog.futureAreasFile.hide()
        else:
            self.mainDialog.futureAreasLayerList.hide()
            self.mainDialog.futureAreasFile.show()
        if self.mainDialog.futureNetworkLoadLayer.isChecked():
            self.mainDialog.futureNetworkLayerList.show()
            self.mainDialog.futureNetworkFile.hide()
        else:
            self.mainDialog.futureNetworkLayerList.hide()
            self.mainDialog.futureNetworkFile.show()
        if self.mainDialog.futureStopsLoadLayer.isChecked():
            self.mainDialog.futureStopsLayerList.show()
            self.mainDialog.futureStopsFile.hide()
        else:
            self.mainDialog.futureStopsLayerList.hide()
            self.mainDialog.futureStopsFile.show()

        if self.mainDialog.calculateFuture.isChecked():
            self.mainDialog.futureBox.setEnabled(True)
        else:
            self.mainDialog.futureBox.setEnabled(False)

    def generateSessionParameters(self):
        '''Get necessary values for processing session'''
        sessionParams = {}

        usr = getpass.getuser()
        sessionParams["user"] = usr.replace(" ", "_")
        now = datetime.datetime.now()
        sessionParams["startTime"] = now.strftime("%Y%m%d_%H%M%S")
        sessionParams["baseYear"] = now.year
        sessionParams["uuid"] = str(uuid.uuid4())

        return sessionParams

    def readProcessingInput(self):
        '''Read user input from main dialog'''
        if self.mainDialog.ykrPopLoadLayer.isChecked():
            self.ykrPopLayer = self.mainDialog.ykrPopLayerList.currentLayer()
        else:
            self.ykrPopLayer = QgsVectorLayer(self.mainDialog.\
                ykrPopFile.filePath(), "ykr_vaesto_2017", "ogr")
        if self.mainDialog.ykrBuildingsLoadLayer.isChecked():
            self.ykrBuildingsLayer = self.mainDialog.ykrBuildingsLayerList.currentLayer()
        else:
            self.ykrBuildingsLayer = QgsVectorLayer(self.mainDialog.\
                ykrBuildingsFile.filePath(), "pir_rakennukset_2017_piste", "ogr")
        if self.mainDialog.ykrJobsLoadLayer.isChecked():
            self.ykrJobsLayer = self.mainDialog.ykrJobsLayerList.currentLayer()
        else:
            self.ykrJobsLayer = QgsVectorLayer(self.mainDialog.\
                ykrJobsFile.filePath(), "ykr_tyopaikat_2015", "ogr")

        if self.mainDialog.calculateFuture.isChecked():
            if self.mainDialog.futureAreasLoadLayer.isChecked():
                self.futureAreasLayer = self.mainDialog.futureAreasLayerList.currentLayer()
            else:
                self.futureAreasLayer = QgsVectorLayer(self.mainDialog.\
                    futureAreasFile.filePath(), "futureareas", "ogr")
            if self.mainDialog.futureNetworkLoadLayer.isChecked():
                self.futureNetworkLayer = self.mainDialog.futureNetworkLayerList.currentLayer()
            else:
                self.futureNetworkLayer = QgsVectorLayer(self.mainDialog.\
                    futureNetworkFile.filePath(), "futurenetwork", "ogr")
            if self.mainDialog.futureStopsLoadLayer.isChecked():
                self.futureStopsLayer = self.mainDialog.futureStopsLayerList.currentLayer()
            else:
                self.futureStopsLayer = QgsVectorLayer(self.mainDialog.\
                    futureStopsFile.filePath(), "futurestops", "ogr")
            self.targetYear = self.mainDialog.targetYear.value()
        else:
            self.targetYear = None

        self.geomArea = self.mainDialog.geomArea.currentText()
        self.adminArea = self.mainDialog.adminArea.currentText()
        self.onlySelectedFeats = self.mainDialog.onlySelectedFeats.isChecked()
        self.pitkoScenario = self.mainDialog.pitkoScenario.currentText()
        self.emissionsAllocation = self.mainDialog.emissionsAllocation.currentText()
        self.elecEmissionType = self.mainDialog.elecEmissionType.currentText()

    def uploadData(self):
        '''Check if layers are valid and write to database'''
        self.checkLayerValidity()

        params = {
            'INPUT': '',
            'SHAPE_ENCODING': '',
            'GTYPE': 5, # 3 for point, 5 for polygon
            'A_SRS': QgsCoordinateReferenceSystem('EPSG:3067'),
            'T_SRS': None,
            'S_SRS': None,
            'HOST': self.connParams['host'],
            'PORT': self.connParams['port'],
            'USER': self.connParams['user'],
            'DBNAME': self.connParams['database'],
            'PASSWORD': self.connParams['password'],
            'SCHEMA': 'user_input',
            'TABLE': '',
            'PK': 'fid',
            'PRIMARY_KEY': None,
            'GEOCOLUMN': 'geom',
            'DIM': 0,
            'FIELDS': [],
            'LAUNDER': False,
            'INDEX': False,
            'SKIPFAILURES': False,
            'PROMOTETOMULTI': False,
            'PRECISION': True
        }

        for layer in [self.ykrBuildingsLayer, self.ykrJobsLayer, self.ykrPopLayer]:
            params['INPUT'] = layer
            tableName = self.sessionParams['uuid'] + '_' + layer.name()
            tableName = tableName.replace('-', '_')
            params['TABLE'] = tableName [:49] # Truncate tablename to avoid hitting postgres 63char cap

            if layer.geometryType() == 0: # point
                params['GTYPE'] = 3
            elif layer.geometryType() == 2: # polygon
                params['GTYPE'] = 5

            processing.run("gdal:importvectorintopostgisdatabasenewconnection", params)
            self.tableNames[layer] = params['TABLE']

        return True

    def checkLayerValidity(self):
        '''Checks that the layers are valid and raises an exception if necessary'''
        try:
            if not self.ykrPopLayer.isValid():
                raise Exception("Virhe ladattaessa nykytilanteen YKR-väestötasoa")
            if not self.ykrBuildingsLayer.isValid():
                raise Exception("Virhe ladattaessa nykytilanteen YKR-rakennustasoa")
            if not self.ykrJobsLayer.isValid():
                print(abcdeft)
                raise Exception("Virhe ladattaessa nykytilanteen YKR-työpaikkatasoa")
            if self.mainDialog.calculateFuture.isChecked():
                if not self.futureAreasLayer.isValid():
                    raise Exception("Virhe ladattaessa tulevaisuuden aluevaraustietoja")
                if self.futureNetworkLayer:
                    if not self.futureNetworkLayer.isValid():
                        raise Exception("Virhe ladattaessa keskusverkkotietoja")
                if self.futureStopsLayer:
                    if not self.futureStopsLayer.isValid():
                        raise Exception("Virhe ladattaessa joukkoliikennepysäkkitietoja")
            return True
        except Exception as e:
            raise e

    def getCalculationQueries(self):
        '''Call necessary processing functions in database'''
        vals = {
            'uuid': self.sessionParams['uuid'],
            'areaGeomTable': 'tutkimusalue_uuid',
            'geomArea': self.geomArea,
            'popTable': self.tableNames[self.ykrPopLayer],
            'jobTable': self.tableNames[self.ykrJobsLayer],
            'buildingTable': self.tableNames[self.ykrBuildingsLayer],
            'calcYear': self.sessionParams['baseYear'],
            'baseYear': self.sessionParams['baseYear'],
            'pitkoScenario': self.pitkoScenario,
            'emissionsAllocation': self.emissionsAllocation,
            'elecEmissionType': self.elecEmissionType
        }

        queries = []
        queries.append('''CREATE TABLE user_input."ykr_{uuid}" AS SELECT * FROM
        il_preprocess('{areaGeomTable}','{popTable}','{jobTable}')'''.format(**vals))
        queries.append('ALTER TABLE user_input."ykr_{uuid}" ADD PRIMARY KEY (xyind)'.format(**vals))
        queries.append('CREATE INDEX "ykr_{uuid}_gidx" ON user_input."ykr_{uuid}" USING GIST(geom)'.format(**vals))
        queries.append('''CREATE TABLE user_output."output_{uuid}" AS
        SELECT * FROM il_laske_co2paastot('ykr_{uuid}','{buildingTable}',
        {calcYear},'{pitkoScenario}','{emissionsAllocation}',
        '{elecEmissionType}','{geomArea}',{baseYear})'''.format(**vals))
        queries.append('''ALTER TABLE user_output."output_{uuid}"
        ADD COLUMN geom geometry('MultiPolygon', 3067)'''.format(**vals))
        queries.append('''UPDATE user_output."output_{uuid}" results
        SET geom = ykr.geom FROM user_input."ykr_{uuid}" ykr WHERE ykr.xyind = results.xyind'''.format(**vals))

        return queries

    def postCalculation(self):
        '''Called after QueryTask finishes. Writes session info to sessions table and closes session'''
        try:
            self.writeSessionInfo()
            self.iface.messageBar().pushMessage('Valmis', 'Laskentasessio ' +\
                str(self.sessionParams['uuid']) + ' on valmis', Qgis.Success, duration=0)
        except Exception as e:
            self.iface.messageBar().pushMessage('Virhe kirjoittaessa session tietoja:',\
                str(e), Qgis.Warning, duration=0)
            self.conn.rollback()
        try:
            self.addResultAsLayer()
        except Exception as e:
            self.iface.messageBar().pushMessage('Virhe lisättäessä tulostasoa:', str(e), Qgis.Warning, duration=0)
        try:
            self.cleanUpSession()
        except Exception as e:
            self.iface.messageBar().pushMessage('Virhe session sulkemisessa:', str(e), Qgis.Warning, duration=0)

    def writeSessionInfo(self):
        '''Writes session info to user_output.sessions table'''
        uuid = self.sessionParams['uuid']
        user = self.sessionParams['user']
        geomArea = self.geomArea
        startTime = self.sessionParams['startTime']
        baseYear = self.sessionParams['baseYear']
        targetYear = self.targetYear
        pitkoScenario = self.pitkoScenario
        emissionsAllocation = self.emissionsAllocation
        elecEmissionType = self.elecEmissionType

        self.cur.execute('''INSERT INTO user_output.sessions VALUES (%s, %s, %s, %s, %s,
        %s, %s, %s, %s)''', (uuid, user, startTime, baseYear, targetYear,\
            pitkoScenario, emissionsAllocation, elecEmissionType, geomArea))
        self.conn.commit()

    def addResultAsLayer(self):
        uri = QgsDataSourceUri()
        uri.setConnection(self.connParams['host'], self.connParams['port'],\
            self.connParams['database'], self.connParams['user'], self.connParams['password'])
        uri.setDataSource('user_output', 'output_' + self.sessionParams['uuid'], 'geom')
        layer = QgsVectorLayer(uri.uri(False), 'Output ' + self.sessionParams['uuid'], 'postgres')
        QgsProject.instance().addMapLayer(layer)

    def cleanUpSession(self):
        '''Delete temporary data and close db connection'''
        for table in list(self.tableNames.values()):
            self.cur.execute('DROP TABLE IF EXISTS user_input."' + table + '"')
        self.conn.commit()
        self.conn.close()
