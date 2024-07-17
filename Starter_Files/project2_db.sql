
-- create tables
CREATE TABLE "category" (
  "category_ids" varchar(100) PRIMARY KEY,
  "category" varchar(300)
);

CREATE TABLE "subcategory" (
  "subcategory_ids" varchar(300) PRIMARY KEY,
  "sub-category" varchar(300)
);

CREATE TABLE "campaign" (
  "cf_id" int PRIMARY KEY,
  "contact_id" int,
  "company_name" varchar(500),
  "description" varchar(500),
  "goal" int,
  "pledged" int,
  "outcome" varchar(150),
  "backers_count" int,
  "country" varchar(50),
  "currency" varchar(50),
  "launch_date" date,
  "end_date" date,
  "category_ids" varchar(30),
  "subcategory_ids" varchar(30)
);

CREATE TABLE "contacts" (
  "contact_id" int PRIMARY KEY,
  "first_name" varchar(100),
  "last_name" varchar(100),
  "email" varchar(500)
);

ALTER TABLE "campaign" ADD FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("subcategory_ids") REFERENCES "subcategory" ("subcategory_ids");

ALTER TABLE "campaign" ADD FOREIGN KEY ("category_ids") REFERENCES "category" ("category_ids");

--- table drop
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS category CASCADE;


---- table test
-- Select query to test the "category" table
SELECT * FROM category LIMIT 5;

-- Select query to test the "subcategory" table
SELECT * FROM subcategory LIMIT 5;

-- Select query to test the "campaign" table
SELECT * FROM campaign LIMIT 5;

-- Select query to test the "contacts" table
SELECT * FROM contacts LIMIT 5;