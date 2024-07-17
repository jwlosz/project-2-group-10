CREATE TABLE "category" (
  "category_ids" varchar(10) PRIMARY KEY,
  "category" varchar(30)
);

CREATE TABLE "subcategory" (
  "subcategory_ids" varchar(30) PRIMARY KEY,
  "subcategory" varchar(30)
);

CREATE TABLE "campaign" (
  "cf_id" int PRIMARY KEY,
  "contact_id" int,
  "company_name" varchar(50),
  "description" varchar(50),
  "goal" int,
  "pledged" int,
  "outcome" varchar(15),
  "backers_count" int,
  "country" varchar(5),
  "currency" varchar(5),
  "launched_date" datetime,
  "end_date" datetime,
  "category_ids" varchar(30),
  "subcategory_ids" varchar(30)
);

CREATE TABLE "contacts" (
  "contact_id" int PRIMARY KEY,
  "first_name" varchar(10),
  "last_name" varchar(10),
  "email" varchar(50)
);

ALTER TABLE "campaign" ADD FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("subcategory_ids") REFERENCES "subcategory" ("subcategory_ids");

ALTER TABLE "campaign" ADD FOREIGN KEY ("category_ids") REFERENCES "category" ("category_ids");
