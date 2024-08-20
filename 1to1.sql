DROP TABLE IF EXISTS "teams" CASCADE;
DROP TABLE IF EXISTS "coachs" CASCADE;

CREATE TABLE "coachs"(
    "id" serial PRIMARY KEY,
    "name" varchar(32) NOT NULL
);

CREATE TABLE "teams"(
    "id" serial PRIMARY KEY,
    "name" varchar(32) NOT NULL,
    "coachId" int REFERENCES "coachs"("id")
);





ALTER TABLE "coachs"
ADD FOREIGN KEY ("id") REFERENCES "teams"("id") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "teams"
ADD FOREIGN KEY ("id") REFERENCES "coachs"("id") DEFERRABLE INITIALLY DEFERRED;

INSERT INTO "coachs"('name', "teamId") VALUES ('TOM', 1);
INSERT INTO "coachs"('name', "teamId") VALUES ('ALL', 1);