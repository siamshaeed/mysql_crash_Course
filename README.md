## MySQL Locations
* Mac             */usr/local/mysql/bin*
* Windows         */Program Files/MySQL/MySQL _version_/bin*
* Xampp           */xampp/mysql/bin*
<hr>

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
