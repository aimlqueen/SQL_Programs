import pymysql
    # Establish the connection
con = pymysql.connect(host="localhost",user="root",password="admin123",db="test_sql")
    # creates a cursor object, which is used to interact with the database.
cur=con.cursor()
    # create table
# cur.execute("create table resturant(order_id int primary key,dis_name varchar(30) not null)")
    # insert values
# cur.execute("insert into resturant values(1,'maggi'),(2,'jucie')")
    # display values
cur.execute("SELECT * FROM resturant")
value = cur.fetchone()
print(f"this is fetchone(): {value}")

cur.execute("SELECT * FROM resturant")
values = cur.fetchall()
print(f"this is fetchall(): {values}")

cur.execute("SELECT * FROM resturant")
print("Current values in the restaurant table:")
for i in values:
    print(i)

cur.execute("SELECT * FROM resturant")
value1 = cur.fetchmany()[0]
print(f"this is fetchmany(): {value1}")

    #commit changes
con.commit()
con.close()