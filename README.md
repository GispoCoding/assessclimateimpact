# Climate Tool

Climate Tool is a QGIS plugin for assessing climate impacts in cities. The plugin is under development and will be released here in June 2019. The tool is modelling the climate impacts in the cities. It provides  information about the current situation in the cities by calculating the  energyefficiency of the city. It also provides scenarios for the future. In the inital phace only datasets from the City of Tampere are used. The plugin will need a PostGIS connection in order to work. 

## Team

**Developed by the joint cooperation of [City of Tampere](https://www.tampere.fi/), [Ubigu Ltd](https://www.ubigu.fi/en/), [Tietotakomo](https://www.tietotakomo.fi/) & [Gispo Ltd](https://www.gispo.fi/en/home/).**

The plugin is still in beta-development. Please report issues to mikael@gispo.fi.

Many thanks to the project team!

## Licences

This plugin relies on urban zone data provided by Statistics Finaland and Finland's environmental administration **Please read [https://www.stat.fi/tup/ykraineistot/index.html](https://www.stat.fi/tup/ykraineistot/index.html) for more information.**

**Read also [data/lisence.txt](data/lisence.txt) for more information.**

## Installation instructions

Coming up

## Documentation

- [Database and database model](docs/database.md)
- [Descriptions for visualizations](docs/visualization.md)
- [Dataset requirements](docs/dataset_requirements.md)
- [Data lisences](data/lisence.md)

- Plugin documentation (coming up)

## Software requirements

- QGIS 3.4.6
- PostgreSQL 9.4 (tested on PostgreSQL 9.6+)
- PostGIS 2.1.8 (tested on 2.2+)

## Climate Tool description
![alt text](Climate_tool_UI_v1.png)

The tool can be used by city developers (land use planners) for
- Understanding the current situation of CO2 emissions in the community
- Detect the effects of land use planning (planned building, use and maintanence) in CO2 emission levels
- See trends in of CO2 emission changes in the future

Climate Tool takes into account several information from the cities:

- Building
- Traffic
- Public transportation
- Electricity consumption
- Heating
- Carbon sinks
- Land use plans
- Scenario information for the future

## End results:

- 250*250 m grid, vector layers in PostGIS database
- CO2 emissions of different emission sources in the cities. Current situation as map layer.
- Predictions on CO2 emissions in the future (using scenarios from land use planning). Target year as map layer, yearly scenarios as tables
- Ready made visualizations for the map layers including grids and top emission source/grid cell

## Process
- Open QGIS
- Install QGIS Climate Tool plugin
- Check the PostGIS database connection (hosted at the moment by Ubigu Ltd)
- Open QGIS Climate Tool plugin
- Choose the area for your calculations (in this stage only City of Tampere)
- Choose a governmental area (it provides certain parameters to the calculations)
- Add information about the current situation (Population, Jobs, Buildings) in requested format
- Choose if you want to calculate also future scenarios 
- Add land use planning zoning elements
- Set target Year
- Optional: add Keskusverkkotiedot (centers in the city by network information)
- Optional: add intensive public transportation stations (train, metro, tram)
- Advanced: add PITKO scenario (heating and electricity scenarios) or use default parameters
- Advanced: add emission allocation methods
- Advanced: add used electricity emission sources

## The datasets needed

[Dataset structure requirements](docs/dataset_requirements.md). See also [database model](docs/database.md). 

Present - user adds:
- Population (YKR) 
- Jobs (YKR)
- Buildings (YKR, based on building and housing registre called RHR) 

More accurate model for the present situation can be gained with:
- Buildings (current situation from the municipality, if available use instead of YKR building information)

Ready in the database:
- Basic grid for whole country (250*250 m), includes also ground surface (in hectars) from CLC2018 data
- Urban zones (yhdyskuntarakenteen vyöhykkeet, YKR 2015)
- Centres and commercial areas (KeskustaAlueet)
- Regions (municipality borderds, now only City of Tampere as test area)
- Carbon sinks
- Energy information
- Scenarios - PITKO (long term emission development)

Future scenarios - user adds:
- Land use planning Zoning elements (Käyttötarkoitusalueet)
- Centre network (Keskusverkko)
- Public transport plan (metro, train, tram)




