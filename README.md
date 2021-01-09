<h2> What is mysql </h2>
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

## Show Tables
<pre>
  SHOW TABLES;
</pre>

##  Describe a Table
<pre>DESCRIBE tableName;</pre>

## Update Row/Data 
<pre>
 UPDATE employee SET name ="Siam", department="Author", position="CEO" where id ='2';
 ** Here employee is table name
</pre>
## Delete Row 
<pre>DELETE FROM employee WHERE id ='4';
** Here employee is table name
</pre>

## Delete / Drop Table
<pre>
  DROP TABLE tablename;
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

</hr>

## Mysql SELECT statement

<p>The SELECT statement allows you to read data from one or more tables. To write a SELECT statement in MySQL, you follow this syntax:</p>
<pre> 
 SELECT select_list
FROM table_name;
</pre>
<pre>
SELECT 
    lastname, firstname, jobtitle FROM employees;
</pre>
<hr></hr>
## MySQL ORDER BY clause
<p>When you use the SELECT statement to query data from a table, the result set is not sorted. It means that the rows in the result set can be in any order.

To sort the result set, you add the ORDER BY clause to the SELECT statement. The following illustrates the syntax of the ORDER BY  clause:</p>
<pre>
SELECT 
   select_list
FROM 
   table_name
ORDER BY 
   column1 [ASC|DESC], 
   column2 [ASC|DESC],
   ...;
</pre>

<pre>
 SELECT
	contactLastname,
	contactFirstname
FROM
	customers
ORDER BY
	contactLastname DESC,
	contactFirstname ASC;
</pre>

<pre>
SELECT 
    orderNumber, 
    orderlinenumber, 
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY 
   quantityOrdered * priceEach DESC;
</pre>

<hr>

# Mysql Where clause
<p>
        The WHERE clause allows you to specify a search condition for the rows returned by a query. The following shows the syntax of the WHERE clause :
    </p>
    <pre>
        SELECT 
    select_list
FROM
    table_name
WHERE
    search_condition;
    </pre>
<p>
    The following query uses the WHERE clause to find all employees whose job titles are Sales Rep:
</p>
<pre>
    SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';
</pre>
<p>
    The following example uses the WHERE clause to find employees whose job titles are Sales Rep and office codes are 1:
</p>
<pre>
    SELECT 
    lastname, 
    firstname, 
    jobtitle,
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND 
    officeCode = 1;
</pre>

<p>
    The following query returns employees with office code less than or equal 4 (<=4):
</p>
<pre>
    SELECT 
    lastname, 
    firstname, 
    officeCode
FROM
    employees
WHERE 
    officecode <= 4;
</pre>

<a href="https://github.com/SiamShaeed/mysql_cheat_sheet">See More ...</a>
