import pandas as pd
import mysql.connector

db_host = "localhost"
db_name = "music_server"
db_user = "root"
db_password = ""

df = pd.read_csv("D:/data.csv")

try:
    connection = mysql.connector.connect(host=db_host, database=db_name, user=db_user, password=db_password)
    cursor = connection.cursor()
except mysql.connector.Error as err:
    print("Error connecting to database:", err)
    exit()
    
table_name = "songs"
insert_query = f"INSERT INTO {table_name} {'(' + ','.join(df.columns) + ')'} VALUES ({'%s,'*(df.columns.size-1)}%s)"

for row in df.values:
    cursor.execute(insert_query, tuple(row))
    connection.commit()
print("inserted successfully")
    
if connection:
    cursor.close()
    connection.close()
    print("Connection to database closed")