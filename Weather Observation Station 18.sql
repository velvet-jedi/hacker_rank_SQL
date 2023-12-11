select round(abs(MAX(LAT_N) - MIN(LAT_N)) + abs(MAX(LONG_W) - MIN(LONG_W)), 4) FROM STATION
