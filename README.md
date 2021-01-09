# What is mysql 
<span>
  ** Open source relational database managment system. <br/>
  ** Uses the sql (Structure Query Language). <br/>
  ** A leading database for web applications. <br/>
  ** Used for small apps to large enterprise apps. <br/>
  ** Used with multiple language (php, Node, Python, c#, etc). <br/>
  ** cross platform
</span>

## MySQL Locations
* Mac             */usr/local/mysql/bin*
* Windows         */Program Files/MySQL/MySQL _version_/bin*
* Xampp           */xampp/mysql/bin*
<hr>

## Mysql Version
<pre>
  mysql --version
</pre>
## Login
<pre>
  mysql -u root -p
</pre>
## Show Databases
<pre>
  SHOW DATABASES
</pre>
## Create Database
<pre>
  CREATE DATABASE databaseName;
</pre>
## Delete Database
<pre>
  DROP DATABASE databaseName;
</pre>
## Select Database
<pre>
  USE databaseName;
</pre>
## Create Table
<pre>
  CREATE TABLE tableName(
  id INT AUTO_INCREMENT,
   first_name VARCHAR(100),
   last_name VARCHAR(100),
   email VARCHAR(50),
   password VARCHAR(20),
   location VARCHAR(100),
   dept VARCHAR(100),
   is_admin TINYINT(1),
   register_date DATETIME,
   PRIMARY KEY(id)
);
</pre>
##  Describe a Table
<pre>DESCRIBE tableName;</pre>
## Delete / Drop Table
<pre>
  DROP TABLE tablename;
</pre>
## Show Tables
<pre>
  SHOW TABLES;
</pre>
## Insert Row / Record
<pre>
  INSERT INTO users (first_name, last_name, email, password, location, dept, is_admin, register_date) values ('Brad', 'Traversy', 'brad@gmail.com', '123456','Massachusetts', 'development', 1, now());
</pre>
## Insert Multiple Rows
<pre>
INSERT INTO users (first_name, last_name, email, password, location, dept,  is_admin, register_date) values ('Fred', 'Smith', 'fred@gmail.com', '123456', 'New York', 'design', 0, now()), ('Sara', 'Watson', 'sara@gmail.com', '123456', 'New York', 'design', 0, now()),('Will', 'Jackson', 'will@yahoo.com', '123456', 'Rhode Island', 'development', 1, now()),('Paula', 'Johnson', 'paula@yahoo.com', '123456', 'Massachusetts', 'sales', 0, now()),('Tom', 'Spears', 'tom@yahoo.com', '123456', 'Massachusetts', 'sales', 0, now());
</pre>
## Exit
<pre> exit; </pre>
<hr>
