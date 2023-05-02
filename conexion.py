import neo4j 
from neo4j import GraphDatabase
import logging
from neo4j.exceptions import ServiceUnavailable

class App:

    def __init__(self, uri, user, password):
        self.driver = GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.driver.close()




if __name__ == "__main__":
    
    uri = "neo4j+s://6c2a741f.databases.neo4j.io"
    user = "neo4j"
    password = "<Password for Neo4j Aura instance>"
    app = App(uri, user, password)
    app.close()
