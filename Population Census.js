/*
JOIN and inner join are same and give the intersection


select SUM(CITY.POPULATION) FROM CITY INNER JOIN COUNTRY 
ON CITY.CountryCode = Country.code where Country.continent ='Asia';
 */

select SUM(CITY.POPULATION) FROM CITY JOIN COUNTRY 
ON CITY.CountryCode = Country.code where Country.continent ='Asia';
