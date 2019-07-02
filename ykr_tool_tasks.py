import psycopg2
from qgis.core import (QgsTask)
from .createdbconnection import createDbConnection

class QueryTask(QgsTask):
    def __init__(self, description, connParams, queries):
        super().__init__(description, QgsTask.CanCancel)
        self.exception = None
        self.conn = None
        self.queries = queries
        try:
            self.conn = createDbConnection(connParams)
            self.cur = self.conn.cursor()
        except psycopg2.Error as e:
            self.exception = e

    def run(self):
        if self.exception:
            return False

        try:
            i = 0
            for query in self.queries:
                self.setProgress(i / len(self.queries) * 100)
                self.cur.execute(query)
                self.conn.commit()
                i += 1

            self.setProgress(99)
            return True

        except psycopg2.Error as e:
            self.exception = e
            self.conn.rollback()
            return False

    def finished(self, result):
        if result:
            self.conn.commit()
            self.conn.close()
        else:
            if self.conn:
                self.conn.close()
            raise self.exception
