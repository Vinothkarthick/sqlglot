SUM(1)
SUM(CASE WHEN x > 1 THEN 1 ELSE 0 END) / y
x > 1
x = y OR x > 1
SELECT * FROM test
SELECT *, 1 FROM test
SELECT 1
SELECT 1 FROM test
SELECT a FROM test
SELECT test.* FROM test
SELECT a AS b FROM test
SELECT "a"."b" FROM "a"
SELECT "a".b FROM a
SELECT a.b FROM "a"
SELECT a.b FROM a
SELECT 1 AS b FROM test
SELECT 1 AS "b" FROM test
SELECT 1 + 1 FROM test
SELECT 1 - 1 FROM test
SELECT 1 * 1 FROM test
SELECT 1 / 1 FROM test
SELECT 1 < 2 FROM test
SELECT 1 <= 2 FROM test
SELECT 1 > 2 FROM test
SELECT 1 >= 2 FROM test
SELECT (1 > 2) AS x FROM test
SELECT NOT (1 > 2) FROM test
SELECT 1 + 2 AS x FROM test
SELECT a, b, 1 < 1 FROM test
SELECT a FROM test WHERE a = 1
SELECT a FROM test WHERE a = 1 AND b = 2
SELECT a FROM test ORDER BY a
SELECT a FROM test ORDER BY a, b
SELECT a, b FROM test GROUP BY 1
SELECT a, b FROM test GROUP BY a
SELECT a, b FROM test WHERE a = 1 GROUP BY a HAVING a = 2
SELECT a, b FROM test WHERE a = 1 GROUP BY a HAVING a = 2 ORDER BY a
SELECT CASE WHEN a < b THEN 1 WHEN a < c THEN 2 ELSE 3 END FROM test
SELECT a FROM (SELECT a FROM test) AS x
SELECT a FROM (SELECT a FROM (SELECT a FROM test) AS y) AS x
SELECT a FROM test WHERE a IN (1, 2, 3) OR b BETWEEN 1 AND 4
SELECT AVG(a) FROM test
SELECT COUNT(a) FROM test
SELECT COUNT(1) FROM test
SELECT COUNT(*) FROM test
SELECT COUNT(DISTINCT a) FROM test
SELECT FIRST(a) FROM test
SELECT LAST(a) FROM test
SELECT MAX(a) FROM test
SELECT MIN(a) FROM test
SELECT SUM(a) FROM test
SELECT CAST(a AS INT) FROM test
SELECT CAST(a AS VARCHAR) FROM test
SELECT CAST(a < 1 AS INT) FROM test
SELECT CAST(a IS NULL AS INT) FROM test
SELECT COUNT(CAST(1 < 2 AS INT)) FROM test
SELECT COUNT(CASE WHEN CAST(1 < 2 AS BOOLEAN) THEN 1 END) FROM test
SELECT CAST(a AS DECIMAL) FROM test
SELECT CAST(a AS DECIMAL(1)) FROM test
SELECT CAST(a AS DECIMAL(1, 2)) FROM test
SELECT CAST(a AS MAP(INT, INT)) FROM test
SELECT COALESCE(a, b, c) FROM test
SELECT 1 FROM a JOIN b ON a.x = b.x
SELECT 1 FROM a JOIN b AS c ON a.x = b.x
SELECT 1 FROM a INNER JOIN b ON a.x = b.x
SELECT 1 FROM a LEFT JOIN b ON a.x = b.x
SELECT 1 FROM a RIGHT JOIN b ON a.x = b.x
SELECT 1 FROM a CROSS JOIN b ON a.x = b.x
SELECT 1 FROM a JOIN (SELECT a FROM c) AS b ON a.x = b.x AND a.x < 2
SELECT 1 FROM a UNION SELECT 2 FROM b
SELECT 1 FROM a UNION ALL SELECT 2 FROM b
SELECT 1 FROM a JOIN b ON a.foo = b.bar JOIN c ON a.foo = c.bar
SELECT 1 FROM a LEFT JOIN b ON a.foo = b.bar JOIN c ON a.foo = c.bar
SELECT 1 FROM a LEFT INNER JOIN b ON a.foo = b.bar
SELECT 1 FROM a LEFT OUTER JOIN b ON a.foo = b.bar
SELECT 1 FROM a OUTER JOIN b ON a.foo = b.bar
SELECT 1 FROM a FULL JOIN b ON a.foo = b.bar
SELECT 1 UNION ALL SELECT 2
SELECT * FROM (SELECT 1) AS x
SELECT * FROM (SELECT 1 UNION SELECT 2) AS x
SELECT * FROM (SELECT 1 UNION ALL SELECT 2) AS x
SELECT * FROM (SELECT 1 UNION ALL SELECT 2)
WITH a AS (SELECT 1) SELECT a.* FROM a
WITH a AS (SELECT 1), b AS (SELECT 2) SELECT a.*, b.* FROM a CROSS JOIN b
SELECT RANK() OVER() FROM x
SELECT RANK() OVER() AS y FROM x
SELECT RANK() OVER(PARTITION BY a) FROM x
SELECT RANK() OVER(PARTITION BY a, b) FROM x
SELECT RANK() OVER(ORDER BY a) FROM x
SELECT RANK() OVER(ORDER BY a, b) FROM x
SELECT RANK() OVER(PARTITION BY a ORDER BY a) FROM x
SELECT RANK() OVER(PARTITION BY a, b ORDER BY a, b DESC) FROM x
SELECT a['1'], b[0], x.c[0], "x".d['1'] FROM x
SELECT ARRAY[1, 2, 3] FROM x
SELECT ARRAY[ARRAY[1], ARRAY[2]] FROM x
SELECT MAP[ARRAY[1], ARRAY[2]] FROM x
SELECT MAP(ARRAY[1], ARRAY[2]) FROM x
SELECT MAX(ARRAY[1, 2, 3]) FROM x
SELECT ARRAY[ARRAY[0]][0][0] FROM x
SELECT MAP[ARRAY['x'], ARRAY[0]]['x'] FROM x
SELECT student, score FROM tests LATERAL VIEW EXPLODE(scores) t AS score
SELECT student, score FROM tests LATERAL VIEW EXPLODE(scores) t AS score, name
SELECT student, score FROM tests LATERAL VIEW OUTER EXPLODE(scores) t AS score, name
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) AS t (score)
SELECT student, score FROM tests CROSS JOIN UNNEST(scores) AS t (a, b)
CREATE TABLE a.b AS SELECT 1
CREATE TABLE a.b AS SELECT a FROM a.c
CREATE TABLE IF NOT EXISTS x AS SELECT a FROM d
CREATE VIEW x AS SELECT a FROM b
CREATE VIEW IF NOT EXISTS x AS SELECT a FROM b
DROP TABLE a
DROP TABLE a.b
DROP VIEW a
DROP VIEW a.b
