import psycopg2

def createDbConnection(connParams):
    '''Creates a database connection and cursor based on connection params'''
    if '' in list(connParams.values()):
        raise Exception('Virhe yhdistäessä tietokantaan: täytä puuttuvat yhteystiedot')
    try:
        conn = psycopg2.connect(host=connParams['host'],\
            port=connParams['port'], database=connParams['database'],\
            user=connParams['user'], password=connParams['password'],\
            connect_timeout=3)
        return conn
    except Exception as e:
        raise e