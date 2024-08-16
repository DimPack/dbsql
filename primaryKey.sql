DROP TABLE IF EXISTS "messages";
CREATE TABLE IF NOT EXISTS "messages"(
    "id" BIGSERIAL PRIMARY KEY,
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