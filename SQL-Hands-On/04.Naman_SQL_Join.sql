-- This SQL file demonstrates various join types (INNER, LEFT, RIGHT, FULL, CROSS), set operations (UNION, UNION ALL, INTERSECT, EXCEPT), and indexing techniques for efficient querying. It also includes examples of composite indexes and queries combining conditions.

-- Using a test database
USE test;

-- Inner Join Example
SELECT EMP.EID, EMP.NAME, EMP.CITY, EMP.DOJ, EMP_SAL.DEPT, EMP_SAL.DESI, EMP_SAL.SALARY
FROM EMP
INNER JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID;

SELECT E1.EID, E1.NAME, E1.CITY, E1.DOJ, E2.DEPT, E2.DESI, E2.SALARY
FROM EMP E1
INNER JOIN EMP_SAL E2
ON E1.EID = E2.EID;

-- Left Join Example
SELECT EMP.EID, EMP.NAME, EMP.CITY, EMP.DOJ, EMP_SAL.DEPT, EMP_SAL.DESI, EMP_SAL.SALARY
FROM EMP
LEFT JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID;

-- Right Join Example
SELECT EMP.EID, EMP.NAME, EMP.CITY, EMP.DOJ, EMP_SAL.DEPT, EMP_SAL.DESI, EMP_SAL.SALARY
FROM EMP
RIGHT JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID;

-- Full Join Example
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
FULL JOIN CJ2
ON CJ1.RNO = CJ2.RNO;

-- Cross Join Example with WHERE
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
CROSS JOIN CJ2
WHERE CJ1.RNO = CJ2.RNO;

-- Self Join Example
SELECT S1.ID, S1.NAME, S2.NAME AS 'BOSS NAME'
FROM SJ S1
LEFT JOIN SJ S2
ON S1.BOSSID = S2.ID;

-- UNION Example
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
LEFT JOIN CJ2
ON CJ1.RNO = CJ2.RNO
UNION
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
RIGHT JOIN CJ2
ON CJ1.RNO = CJ2.RNO;

-- UNION ALL Example
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
LEFT JOIN CJ2
ON CJ1.RNO = CJ2.RNO
UNION ALL
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
RIGHT JOIN CJ2
ON CJ1.RNO = CJ2.RNO;

-- INTERSECT Example
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
LEFT JOIN CJ2
ON CJ1.RNO = CJ2.RNO
INTERSECT
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
RIGHT JOIN CJ2
ON CJ1.RNO = CJ2.RNO;

-- EXCEPT Example
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
LEFT JOIN CJ2
ON CJ1.RNO = CJ2.RNO
EXCEPT
SELECT CJ1.RNO, CJ1.NAME, CJ2.MARKS
FROM CJ1
RIGHT JOIN CJ2
ON CJ1.RNO = CJ2.RNO;

-- Composite Index Example
CREATE INDEX L53I3 ON EMP (CITY, ADDRESS2);
CREATE INDEX L53I1 ON EMP (CITY);
CREATE INDEX L53I2 ON EMP (ADDRESS2);