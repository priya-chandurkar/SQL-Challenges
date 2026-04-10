--Write a SQL query to find all the missing numbers in the sequence.


CREATE TABLE numbers (
    num INT
);

INSERT INTO numbers (num) VALUES
(1),
(2),
(3),
(5),
(6),
(8),
(9),
(10);


select * from numbers


SELECT n1.num + 1 AS missing_number
FROM numbers n1
LEFT JOIN numbers n2 
ON n1.num + 1 = n2.num
WHERE n2.num IS NULL
AND n1.num < (SELECT MAX(num) FROM numbers);
