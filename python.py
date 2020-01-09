#!/bin/python3

#After complete coding make it executable file through chmod +x file-name.


import cgi, subprocess
import cgitb

print("Content-Type: text/html")
print("")

data=cgi.FieldStorage()

x=data.getvalue('num')

print(x)


output=subprocess.getoutput(x)
print("<pre>")
print(output)
print("</pre>")



