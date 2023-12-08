SELECT 
  (CASE 
    WHEN (A + B <= C OR A + C <= B OR B + C <= A) THEN "Not A Triangle" 
    WHEN (A = B AND B = C) THEN "Equilateral"
    WHEN (A + B > C OR A + C > B OR B + C > A) AND ((A = B AND B != C) OR (A = C AND C != B) OR (B = C AND C != A)) THEN "Isosceles"
    WHEN (A + B > C OR A + C > B OR B + C > A) AND A != B AND B != C THEN "Scalene" 
  END) FROM TRIANGLES;
