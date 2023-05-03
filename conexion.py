import neo4j 
from neo4j import GraphDatabase
import logging
from neo4j.exceptions import ServiceUnavailable

class App:

    def __init__(self, uri, user, password):
        self.driver = GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self.driver.close()

    def _create_and_return_User(tx):
        
        query = (
            "CREATE (:User { name: $@andres }) "
            "CREATE (:User { name: $@luisa }) "
            "CREATE (:User { name: $@daniel }) "
            
        )
        result = tx.run(query)
        try:
            return [{"User": row["id"]["name"], "User": row["id"]["name"]}
                    for row in result]
       
        except ServiceUnavailable as exception:
            logging.error("{query} raised an error: \n {exception}".format(
                query=query, exception=exception))
            raise




if __name__ == "__main__":
    
    uri = "neo4j+s://6c2a741f.databases.neo4j.io"
    user = "neo4j"
    password = "<Password for Neo4j Aura instance>"
    app = App(uri, user, password)
    app.close()
