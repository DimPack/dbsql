CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS "messages";
CREATE TABLE IF NOT EXISTS "messages"(
    "id" uuid PRIMARY KEY DEFAULT uuid_generate_v1(),
    "body" VARCHAR(2048) NOT NULL CHECK("body" != ''),
    "author" VARCHAR(32) NOT NULL CHECK("author" != ''),
    "createdAt" TIMESTAMP NOT NULL DEFAULT current_timestamp,
    "isRead" BOOLEAN DEFAULT false
);

INSERT INTO "messages"("body", "author")
VaLUES
('hi!', 'Tom'),
('hi!', 'Tom'),
('Brad', 'hello'),
('))))', 'Alex');

