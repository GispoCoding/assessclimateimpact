from qgis.core import (QgsTask, QgsMessageLog, Qgis)
from .createdbconnection import createDbConnection

class QueryTask(QgsTask):
    def __init__(self, connParams, queries):
        super().__init__('Suoritetaan laskentaa', QgsTask.CanCancel)
        self.exception = None
        self.conn = None
        self.queries = queries
        try:
            self.conn = createDbConnection(connParams)
            self.cur = self.conn.cursor()
        except Exception as e:
            self.exception = e

    def run(self):
        if self.exception:
            return False

        i = 0
        for query in self.queries:
            self.setProgress(i / len(self.queries) * 100)
            i += 1
            if self.isCanceled():
                self.exception = 'Laskenta keskeytetty'
                return False
            try:
                self.cur.execute(query)
            except Exception as e:
                self.exception = e
                self.conn.rollback()
                self.conn.close()
                return False
        self.conn.commit()
        self.conn.close()
        return True

    def finished(self, result):
        if not result:
            QgsMessageLog.logMessage('Laskentavirhe: ' + str(self.exception), 'YKRTool', Qgis.Critical)
            # raise self.exception
            self.cancel()
