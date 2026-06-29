/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/
SET @r = 21;
SELECT REPEAT('* ', @R := @R - 1) 
FROM information_schema.tables 
LIMIT 20;

/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).
*/
SET @r = 0;
SELECT REPEAT('* ', @R := @R + 1) 
FROM information_schema.tables 
LIMIT 20;
