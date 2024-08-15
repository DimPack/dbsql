DROP TABLE IF EXISTS "products";
CREATE TABLE IF NOT EXISTS "products"(
    "nameProduct" VARCHAR(64) NOT NULL CHECK("nameProduct" != '') UNIQUE,
    "price" NUMERIC(7, 2) NOT NULL CHECK (
        "price" > 0
        AND "price" <= 10000
    ),
    "dateManufacture" DATE CHECK("dateManufacture" < current_date),
    "numberPieces" SMALLINT NOT NULL CHECK(
        "numberPieces" >= 0
        AND "numberPieces" < 1000
    ) DEFAULT 0,
    "currency" VARCHAR(3) NOT NULL CHECK(LENGTH("currency") = 3) DEFAULT 'uah',
    "isPromotion" BOOLEAN DEFAULT false
);
INSERT INTO "products"
VaLUES(
    'potato',
    12.569,
    '2024-06-09',
    188,
    'usd',
    true
    );

INSERT INTO "products"
VaLUES(
    'tomato',
    25.54745,
    '2024-05-16',
    188,
    'usd'
    );