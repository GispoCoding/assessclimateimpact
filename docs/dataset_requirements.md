## The datasets needed

See also [database model](docs/database.md) and [lisences](data/lisence.md). 

### Present - user adds:
- Population (YKR) 
- Jobs (YKR)
- Buildings (YKR, based on building and housing registre called RHR) 

**The use of YKR datasets needs a contract with Liiteri service https://www.ymparisto.fi/fi-FI/Elinympariston_tietopalvelu_Liiteri/Liiterikayttajaksi**

- OR more accurate model for the present situation can be gained with current building information from the municipality, if available use instead of YKR building information

### Future scenarios - user adds:
- Land use planning Zoning elements (Käyttötarkoitusalueet) (Municipality)
- Centre network (Keskusverkko) (Municipality)
- Public transport plan (metro, train, tram) (Municipality)

### Ready in the database:
- Basic grid for whole country (250*250 m), includes also ground surface (in hectars) from CLC2018 data (SYKE)
- Urban zoning areas from 2015 (yhdyskuntarakenteen vyöhykkeet, YKR 2015) (SYKE)
- Centres and business districts (KeskustaAlueet) (SYKE)
- Regions (municipality borderds and region, now only City of Tampere as test area) (NLS-FI)
- Carbon sinks (Council of Tampere region)
- Research on personal transport (Traficom)
- Energy information (?)
- Traffic consumption (?)
- Energy production (?)
- Scenarios - PITKO (long term emission development)

## Dataset structure requirements (User input, current situation)

### Jobs in urban zoning grid dataset (YKR-työpaikat)

- xyind (unique identifier)
- kunta / municipality_name
- Kuntanumero / municipalityid
- tp_yht / jobs_all

#### Population (YKR-population)

- xyind
- kunta
- v_yht / total_pop

#### Buildings (YKR-buildings, with different building type information (area, count, energy type))

- xyind
- kunta
- Kuntanumero
- rakv
- energiam
- rakyht_ala
- asuin_ala
- erpien_ala
- rivita_ala
- askert_ala
- liike_ala
- myymal_ala
- majoit_ala
- asla_ala
- ravint_ala
- tsto_ala
- liiken_ala
- hoito_ala
- kokoon_ala
- opetus_ala
- teoll_ala
- varast_ala
- muut_ala
- erpien_lkm
- rivita_lkm
- askert_lkm
- teoll_lkm
- varast_lkm
 
## Dataset structure requirements (User input, future scenarios)

Coming up
