-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.




CREATE TABLE "contacts" (
    "contact_id" serial primary key,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL
);

CREATE TABLE "category" (
    "category_id" VARCHAR(10) primary key,
    "category_name" VARCHAR(50) NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10) primary key ,
    "subcategory_name" VARCHAR(50) NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" serial primary key,
    "contact_id" int not null,
    "company_name" VARCHAR(50) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" float NOT NULL,
    "pledged" float NOT NULL,
    "outcome" TEXT NOT NULL,
    "backers_count" int NOT NULL,
    "country" CHAR(2) NOT NULL,
    "currency" CHAR(3) NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(10) NOT NULL,
    "subcategory_id" VARCHAR(10) NOT NULL,
	foreign key ("contact_id") references "contacts"("contact_id"),
	foreign key ("category_id") references "category"("category_id"),
	foreign key ("subcategory_id") references "subcategory"("subcategory_id")
);

select * from contacts