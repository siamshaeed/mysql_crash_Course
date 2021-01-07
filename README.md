## MySQL Locations
* Mac             */usr/local/mysql/bin*
* Windows         */Program Files/MySQL/MySQL _version_/bin*
* Xampp           */xampp/mysql/bin*
<hr>

## Introduction to MySQL SELECT statement

<p>The SELECT statement allows you to read data from one or more tables. To write a SELECT statement in MySQL, you follow this syntax:</p>
<code>
  SELECT select_list <br>
FROM table_name; <br> <br>
  
  SELECT lastName <br>
FROM employees;
</code>
<p>Let’s look at each part of the statement.

First, you start with the SELECT keyword. The keyword has a special meaning in MySQL. In this case, SELECT instructs MySQL to retrieve data.

Next, you have space and then a list of columns or expressions that you want to show in the result.

Then, you have the FROM keyword, space and the name of the table.

Finally, you have a semicolon ; at the end of the statement.</p>

