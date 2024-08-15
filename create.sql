DROP TABLE IF EXISTS "users";
CREATE TABLE IF NOT EXISTS "users"(
    "firstName" varchar(32) NOT NULL CONSTRAINT not_empty_first_name CHECK("firstName" != ''),
    "lastName" varchar(32) NOT NULL CHECK(
        length("lastName") >= 3
        AND length("lastName") <= 32
    ),
    "email" varchar(256) NOT NULL CHECK("email" != '') UNIQUE,
    "height" smallint NOT NULL CHECK(
        "height" > 100
        AND "height" <= 250
    ),
    "weight" numeric(5, 2) NOT NULL CHECK(
        "weight" > 20
        AND "weight" <= 250
    ),
    --123.45
    "birthday" date NOT NULL CHECK("birthday"< current_date),
    "isMale" boolean NOT NULL
);
INSERT INTO "users"
VaLUES(
        'Bo',
        'Ozzi',
        'oz@gmail.com',
        190,
        90,
        '2024-07-16',
        true
    );
INSERT INTO "users"
VaLUES(
        'Brad',
        'Pitt',
        'pitt@gmail.com',
        188,
        82.53,
        '1963-12-18',
        true
    ),
    (
        'Ann',
        'Pitt',
        'pit2t@gmail.com',
        168,
        62.53,
        '2003-12-18',
        false
    ),
    (
        'Tom',
        'Rot',
        'rot@gmail.com',
        178,
        80.53,
        '1964-12-18',
        true
    );