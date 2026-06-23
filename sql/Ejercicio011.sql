/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
CITY table: 
+-------------+---------+
| Column Name  | Type    |
+-------------+---------+
| ID           | int     |
| Name         | varchar |
| CountryCode  | char(3) |
| District     | varchar |
| Population   | int     |
+-------------+---------+
COUNTRY table:
+-------------+---------+
| Column Name  | Type    |
+-------------+---------+
| Code         | char(3) |
| Name         | varchar |
| Continent    | varchar |
| Region       | varchar |
| SurfaceArea   | float   |
| IndepYear     | int     |
| Population     | int     |
| LifeExpectancy | float   |
| GNP           | float   |
| GNPOld        | float   |
| LocalName     | varchar |
| GovernmentForm | varchar |
| HeadOfState    | varchar |
| Capital        | int     |
| Code2          | char(2) |
+-------------+---------+   
*/
SELECT SUM(CITY.POPULATION) FROM CITY
INNER JOIN COUNTRY  ON COUNTRYCODE = CODE
WHERE CONTINENT = 'ASIA'

/*
Given the CITY and COUNTRY tables, query the names of all cities where 
the CONTINENT is 'Africa'.
*/
SELECT CITY.NAME FROM CITY
INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code 
WHERE COUntry.Continent='Africa'

/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average 
city populations (CITY.Population) rounded down to the nearest integer.
*/

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) AS POPULATION 
FROM COUNTRY 
INNER JOIN CITY ON COUNTRY.Code = CITY.CountryCode
GROUP BY COUNTRY.CONTINENT
ORDER BY POPULATION ASC
