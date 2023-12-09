select COUNTRY.CONTINENT, floor(avg(CITY.POPULATION)) FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE GROUP BY COUNTRY.CONTINENT;

/*
Joins the "CITY" and "COUNTRY" tables based on the common column "COUNTRYCODE" in "CITY" and "CODE" in "COUNTRY." This is used to associate cities with their respective countries.

Groups the result set by the "CONTINENT" column from the "COUNTRY" table. This means that the subsequent aggregate functions (such as AVG) will be applied separately for each continent.

*/
