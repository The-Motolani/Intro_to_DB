import mysql.connector

try:
    mydb = mysql.connector.connect(host = "localhost", user = "root", password = "password")

    mycursor = mydb.cursor()

    create = "CREATE DATABASE IF NOT EXISTS alx_book_store"
    mycursor.execute(create)
    print(" Database 'alx_book_store' created successfully!")
    mydb.commit()
    mycursor.close()
    mydb.close()

except mysql.connector.Error as e:
    print(f"Error: {e}")
