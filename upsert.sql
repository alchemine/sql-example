INSERT INTO
    table_a
SELECT
    *
FROM
    table_b
ON CONFLICT
    (id)
DO UPDATE SET
   a = table_a.a + EXCLUDED.a,
   b = table_a.b + EXCLUDED.b,
   date = GREATEST(table_a.date, EXCLUDED.date);