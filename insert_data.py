# Soleil Thallemer, Aaron Rodriguez, Marco Colmenares
# 1288236, 

import mysql.connector
import csv
import os

print(os.getcwd())  # This prints the current working directory


def insert_data():
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="OsoBear333",
        database="nyc_taxi"
    )
    cursor = connection.cursor()

    with open('taxi-data-sorted-small.csv', 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            if len(row) != 17:  # Ensuring the row has correct number of columns
                continue
            try:
                query = """INSERT INTO taxi_trips 
                           VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""
                cursor.execute(query, row)
            except Exception as e:
                print(f"Skipping row due to error: {e}")

    connection.commit()
    cursor.close()
    connection.close()

insert_data()
