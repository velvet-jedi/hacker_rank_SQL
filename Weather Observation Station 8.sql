SELECT DISTINCT(city) FROM station WHERE LOWER(SUBSTR(city,1,1)) IN ('a','e','i','o','u') and LOWER(SUBSTR(city,-1,1)) IN ('a','e','i','o','u');
