# Rental Car Company (SQL-Database)
This was a university assignment about basic QSL queries. The concept was to create a SQL schema about a rental car company and then run queries about it.

## Project Description
A car rental company (let's call it CRC) wants to develop a relational database to monitor customers, rentals, fleet and locations.
CRC's fleet consists of cars of different types. A car is described via a unique code (VIN), a description, color, brand, model, and date of purchase. A car may belong to one (exactly one) vehicle category (compact, economy, convertible, etc.). Each category is described by a unique ID, a label and a detailed description. CRC has several locations around the globe. Each location has a unique ID, an address (street, number, city, state, country) and one or more telephone numbers. CRC also keeps data about its customers. A customer is described by a unique ID, SSN, Name (First, Last), email, mobile phone number and lives in a state and country. Customers rent cars. A car rental has a unique reservation number, an amount (the value of the rental), the pickup and the return date. The car is picked up from a location and returned to another location (not necessarily the same.)

## Questions

### Question 1
Create an Entity-Relationship Diagram (ERD) to model entities, relationships, attributes, cardinalities, and all necessary constraints. Use any tool you like to draw the ERD.

### Question 2
Create the relational schema in MySQL and insert a few records into the tables to test your queries below. You will have to hand in the CREATE TABLE statements.

### Question 3
Run the following queries:
a. Show the reservation number and the location ID of all rentals on 5/20/2015

b. Show the first and the last name and the mobile phone number of these customers that have rented a car in the category that has label = 'luxury'
c. Show the total amount of rentals per location ID (pick up)

d. Show the total amount of rentals per car's category ID and month

e. For each rental‟s state (pick up) show the top renting category

f. Show how many rentals there were in May 2015 in „NY‟, „NJ‟ and „CA‟ (in three columns)

g. For each month of 2015, count how many rentals had amount greater than this month's average rental amount

h. For each month of 2015, show the percentage change of the total amount of rentals over the total amount of rentals of the same month of 2014

i. For each month of 2015, show in three columns: the total rentals‟ amount of the previous months, the total rentals‟ amount of this month and the total rentals‟ amount of the following months

### Question 4
Using the programming language of your choice, connect to the database and implement query (i) above – without using GROUP BY SQL statements, i.e. you are only allowed to use SELECT…FROM…WHERE
