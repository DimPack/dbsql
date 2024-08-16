DROP TABLE IF EXISTS a;
CREATE TABLE IF NOT EXISTS a(
    b int CHECK(b < 10),
    c int,
    CONSTRAINT "uniquePair" PRIMARY KEY(b, c)
);
INSERT INTO a
VALUES (5, 1),
    (8, 1),
    (9, 3);