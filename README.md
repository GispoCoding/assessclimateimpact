# Climate Tool

Climate Tool is a QGIS plugin for assessing climate impacts in cities. The plugin is under development and will be released here in June 2019. The plugin will need a PostGIS connection in order to work. The datasets needed will be listed here. The tool is provided by the joint cooperation of City of Tampere, Ubigu Ltd, TietoTakomo & Gispo Ltd. Many thanks to the project team!

The tool is modelling the climate impacts in the cities. It provides  information about the current situation in the cities by calculating the  energyefficiency of the city. It also provides scenarios for the future. In the inital phace only datasets from the City of Tampere are used. 

It takes into account several information from the cities:

- Building
- Traffic
- Elecricity consumption
- Carbon sinks
- Land use plans
- Scenario information

## Use cases

The tool can be used by city developers (land use planners) for
- Seeing the current situation for climate impacts in the community
- Detect the effects of land use planning (planned building, use and maintanence) in climate impacts
- See trends in climate impact changes in the future

## End results:

- 250*250 m grid, vector layers in PostGIS database
- different parameters attached to the grid (current situation and also future)
- visualisations (SLD) for different parameters and layer possibilities
- Map layers: current situation and optionally target year
- Tables: yearly scenarios

## Process
- Open QGIS
- Add QGIS Climate Tool plugin
- Check the PostGIS database connection
- Check that the grid data exists in the database (YKR = Urban Zone Grid by Finnish Environment Institute) 
- Open QGIS Climate Tool plugin

### Choosing reseach area
- Choose the area for your calculations (in this stage only City of Tampere)
- Choose a governmental area (it provides certain parameters to the calculations)

### Calculate current situation
- Add information about the current situation (Population, Jobs, Buildings)

### Calculate future information
- Choose if you want to calculate also future scenarios 
- Add land use planning zoning elements
- Set target Year
- Optional: add Keskusverkkotiedot (centers in the city by network information)
- Optional: add intensive public transportation stations (train, metro, tram)
- Advanced: add PITKO scenario (heating and electrivity scenarios) or use default parameters
- Advanced: add emmittion allocation methods
- Advanced: add used electricity emmittion sources

## The datasets needed

- Population (YKR)
- Jobs (YKR)
- Buildings (YKR)

## Documentation

- Technical documentation (in Finnish) coming up
- Schema model


