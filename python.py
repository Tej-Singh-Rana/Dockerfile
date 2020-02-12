#!/usr/bin/python3

import cgi, cgitb
import os
#mysql database connectivity

import mysql.connector

mydb = mysql.connector.connect(
  host="data",
  user="root",
  passwd="redhat123",
  database="register"
)

mycursor = mydb.cursor()
#mycursor.execute("select * from login")
#myresult = mycursor.fetchall() # it gives the list

# Create instance of FieldStorage
print ("Content-Type: text/html\n")

form = cgi.FieldStorage()

# Get data from fields
username = form.getvalue('Username')
password  = form.getvalue('Password')

def create_table():
    mycursor.execute()
def data_entry():
    name = username
    pass1 = password
    mycursor.execute("INSERT INTO register (username, password) VALUES (?,?)", (name,pass1))
    mydb.commit()

create_table()
data_entry()


mycursor.close()
mydb.close()
