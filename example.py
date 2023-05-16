from neo4j import GraphDatabase

graphdb= GraphDatabase.driver(uri="neo4j+s://e348ff89.databases.neo4j.io",auth=("neo4j","no"))



# search 
session = graphdb.session()
q1 = "CREATE (:User { name: '@Mia' }) "

nodes = session.run(q1)
for node in nodes:
    print(node)

