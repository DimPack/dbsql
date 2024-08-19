DROP TABLE IF EXISTS "messages";
CREATE TABLE IF NOT EXISTS "messages"(
    "id" bigserial PRIMARY KEY,
    "body" VARCHAR(2048) NOT NULL CHECK("body" != ''),
    "authorId" INT REFERENCES "users"("id"),
    "createdAt" TIMESTAMP NOT NULL DEFAULT current_timestamp,
    "isRead" BOOLEAN DEFAULT false
);

INSERT INTO "messages"("body", "authorId")
VaLUES
('hi!', 2),
('hi!', 1),
('Brad', 4),
('))))', 3);