
from neo4j import GraphDatabase



transaction_execution_commands = []


neo4j_create_statemenet = "CREATE (:User { name: '@Sarah' }) "
transaction_execution_commands.append(neo4j_create_statemenet)

    
def execute_transactions(transaction_execution_commands):
    data_base_connection = GraphDatabase.driver(uri = "neo4j+s://e348ff89.databases.neo4j.io", auth=("neo4j", "no"))
    session = data_base_connection.session()    
    for i in transaction_execution_commands:
        session.run(i)

        
execute_transactions(transaction_execution_commands)