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
    
# table_name = "songs"
# insert_query = f"INSERT INTO {table_name} {'(' + ','.join(df.columns) + ')'} VALUES ({'%s,'*(df.columns.size-1)}%s)"

# for row in df.values:
#     cursor.execute(insert_query, tuple(row))
#     connection.commit()
# print("inserted successfully")

for i in range(0, len(df["genres"])):
    
    releasedYear = df["releasedYear"][i]
    select_query = f"SELECT id FROM songs WHERE title=%s AND releasedYear={releasedYear}"
    cursor.execute(select_query, (df["title"][i],))
    song = cursor.fetchone()
    
    arr = df["genres"][i].split(', ')
    select_query = f"SELECT id FROM genres WHERE {'title=%s OR '*(len(arr)-1)}title=%s"
    cursor.execute(select_query, tuple(arr))
    genres = cursor.fetchall()
    middle = [(song[0], genre[0]) for genre in genres]
    
    for row in middle:     
        insert_query = f"INSERT INTO songs_genres (songId, genreId) VALUES (%s,%s)"
        cursor.execute(insert_query, tuple(row))
        connection.commit()
    
if connection:
    cursor.close()
    connection.close()
    print("Connection to database closed")