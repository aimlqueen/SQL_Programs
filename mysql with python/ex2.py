import pymysql
    # Establish the connection
con = pymysql.connect(host="localhost", user="root", password="admin123", db="test_sql")
    # Create a cursor object to interact with the database
cur = con.cursor()
    # Create the  table for school
# cur.execute("create table school(student_id int primary key,student_name varchar(30) not null)")
    # Insert values into the school table
# cur.execute("INSERT INTO school (student_id, student_name) VALUES (1, 'Alice'), (2, 'Bob')")
# print("Data inserted into school table successfully.")
    # Display values from the school table
cur.execute("SELECT * FROM school")
school_values = cur.fetchall()
print("Current values in the school table:")
for student in school_values:
    print(student)
    # Commit changes
con.commit()
    # Close the connection
cur.close()
con.close()
