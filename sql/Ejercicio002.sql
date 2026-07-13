/*Query a list of CITY and STATE from the STATION table.

The STATION table is described as follows:
id: int
city: varchar(21)
state: varchar(2)
latitude: double
longitude: double   

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT CITY, STATE FROM STATION

/*
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:
*/

SELECT DISTINCT(CITY) FROM STATION
WHERE MOD(ID,2) = 0
ORDER BY CITY ASC

/*Find the difference between the total number of CITY entries in the 
table and the number of distinct CITY entries in the table.*/

SELECT COUNT(CITY)- COUNT(DISTINCT(CITY)) FROM STATION 
/* Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.*/
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION

/*Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes 
first when ordered alphabetically.*/

SELECT CITY, LENGTH(CITY) FROM STATION 
GROUP BY CITY
ORDER BY LENGTH(CITY) ASC, CITY ASC
limit 1;

SELECT CITY, LENGTH(CITY) FROM STATION 
GROUP BY CITY
ORDER BY LENGTH(CITY) DESC, CITY ASC
limit 1;

/*Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) 
from STATION. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U')

/*Query the list of CITY names ending with vowels (a, e, i, o, u) 
from STATION. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE RIGHT(CITY,1) IN ('A','E','I','O','U')

/*Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as 
both their first and last characters. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE RIGHT(CITY,1) IN ('A','E','I','O','U')
AND LEFT(CITY, 1) IN ('A','E','I','O','U')

/*Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U')

/*Query the list of CITY names from STATION that do not end with vowels.
 Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('A','E','I','O','U')

/*Query the list of CITY names from STATION that either do not start with vowels or do not 
end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('A','E','I','O','U')
OR LEFT(CITY, 1) NOT IN ('A','E','I','O','U')

/*Query the list of CITY names from STATION that do not start with vowels and do not 
end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT(CITY) FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('A','E','I','O','U')
AND LEFT(CITY, 1) NOT IN ('A','E','I','O','U')

/*
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater 
than  and less than . Truncate your answer to  decimal places.
*/
select round(sum(LAT_N),4) from STATION
where lat_n between 38.7880 AND 137.2345

/*Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than .
 Truncate your answer to  decimal places.*/
 SELECT ROUND(MAX(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345

/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION 
that is less than . Round your answer to  decimal places.
*/

SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1

/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . 
Round your answer to  decimal places.
*/
 SELECT ROUND(MIN(LAT_N),4) FROM STATION
WHERE LAT_N > 38.7780

/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) 
in STATION is greater than . Round your answer to  decimal places.
*/
SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC
LIMIT 1

/*
Consider  and  to be two points on a 2D plane.

 happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
*/
SELECT ROUND(
    ABS(MIN(LAT_N) - MAX(LAT_N)) + 
    ABS(MIN(LONG_W) - MAX(LONG_W)), 
    4
) FROM STATION;

/*
Consider  and  to be two points on a 2D plane where  
are the respective minimum and maximum values of 
Northern Latitude (LAT_N) and  are the respective 
minimum and maximum values of Western Longitude 
(LONG_W) in STATION.

Query the Euclidean Distance between points  and  
and format your answer to display  decimal digits.
*/

SELECT ROUND(
    SQRT(POW(ABS(MIN(LAT_N) - MAX(LAT_N)),2) + 
    POW(ABS(MIN(LONG_W) - MAX(LONG_W)),2)), 
    4
) FROM STATION;