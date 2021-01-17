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
  mysql --version or MySQL -V
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

<hr></hr>

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
<h2>MySQL ORDER BY clause</h2>
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
<hr></hr>

## MySQL AND Operator
<p>The AND operator is a logical operator that combines two or more Boolean expressions and returns true only if both expressions evaluate to true. The AND operator returns false if one of the two expressions evaluate to false.</p>
<p>The following statement uses the AND operator to find customers who locate in California (CA), USA:</p>

<pre>
 SELECT 
    customername, 
    country, 
    state
FROM
    customers
WHERE
    country = 'USA' AND state = 'CA';
</pre>

<p>By using the AND operator, you can combine more than two Boolean expressions. For example, the following query returns the customers who locate in California, USA, and have the credit limit greater than 100K.</p>

<pre>
 SELECT    
	customername, 
	country, 
	state, 
	creditlimit
FROM    
	customers
WHERE country = 'USA'
	AND state = 'CA'
	AND creditlimit > 100000;
</pre>

<hr></hr>

## MySQL OR Operator

<p> The MySQL OR operator combines two Boolean expressions and returns true when either condition is true. </p>
<p> For example, to get the customers who locate in the USA or France, you use the OR operator in the WHERE clause as follows: </p>
<pre> 
SELECT    
	customername, 
	country
FROM    
	customers
WHERE country = 'USA' OR 
      country = 'France';
</pre>

<hr> </hr>

## MySQL IN
<p> The IN  operator allows you to determine if a specified value matches any value in a set of values or returned by a subquery. </p>
<pre>
 SELECT 
    column1,column2,...
FROM
    table_name
WHERE 
	(expr|column_1) IN ('value1','value2',...);
</pre>

<p> If you want to find the offices that locate in the U.S. and France, you can use the IN operator as the following query: </p>
<pre>
 SELECT 
    officeCode, 
    city, 
    phone, 
    country
FROM
    offices
WHERE
    country IN ('USA' , 'France');
</pre>

<hr> </hr>

## MySQL Trigger
<p> In MySQL, a trigger is a stored program invoked automatically in response to an event such as insert, update, or delete that occurs in the associated table. For example, you can define a trigger that is invoked automatically before a new row is inserted into a table. </p>
<p> MySQL supports triggers that are invoked in response to the INSERT, UPDATE or DELETE event. </p>
<p> The SQL standard defines two types of triggers: row-level triggers and statement-level triggers. </p>

<p> **  Row-level trigger is activated for each row that is inserted, updated, or deleted.  For example, if a table has 100 rows inserted, updated, or deleted, the trigger is automatically invoked 100 times for the 100 rows affected. </p>
<p> ** A statement-level trigger is executed once for each transaction regardless of how many rows are inserted, updated, or deleted. </p>

<pre>
CREATE TRIGGER trigger_name    
    (AFTER | BEFORE) (INSERT | UPDATE | DELETE)  
         ON table_name FOR EACH ROW    
         BEGIN    
        --variable declarations    
        --trigger code    
        END;     
</pre>

<pre>
DELIMITER $$
CREATE TRIGGER after_insert_employees
AFTER INSERT ON employees
FOR EACH  ROW
BEGIN
INSERT INTO employees_log VALUES('',NEW.employee_id,'create',now());
END$$
DELIMITER ;
</pre>

<pre>

DELIMITER //
CREATE TRIGGER after_insert_employee
AFTER INSERT ON employees
FOR EACH  ROW
BEGIN
INSERT INTO employees_log
SET employee_id = NEW.employee_id,
    i_event = 'INSERT',
    date_time = NOW();
END//
DELIMITER;
</pre>
<hr></hr>

## MySQL Stored Procedures
<p>In this section, you will learn how to develop stored programs including stored procedures and stored functions in MySQL.</P>
<p>Here is the basic syntax of the CREATE PROCEDURE statement:</p>
<pre>
CREATE PROCEDURE procedure_name(parameter_list)
BEGIN
   statements;
END //</pre>

<p>The following statement creates a new stored procedure that wraps the query:</p>
<pre>
DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
	SELECT *  FROM products;
END //

DELIMITER ;
</pre>


<a href="https://github.com/SiamShaeed/mysql_cheat_sheet">See More...</a>
