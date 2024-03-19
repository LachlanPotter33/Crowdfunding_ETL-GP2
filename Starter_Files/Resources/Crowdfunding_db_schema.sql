-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/f6O1Yy
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cf-id" (
    "contact_id" int   NOT NULL,
    "CompanyName" Varchar   NOT NULL,
    "description" Char   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" Char   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" char(2)   NOT NULL,
    "currency" Char(3)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "Category_id" varchar(4)   NOT NULL,
    "subcategory_id" varchar(7)   NOT NULL,
    CONSTRAINT "pk_cf-id" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contacts" (
    "Contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "Contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" int   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcatergory" (
    "subcategory_id" int   NOT NULL,
    "subcatergory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcatergory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "cf-id" ADD CONSTRAINT "fk_cf-id_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("Contact_id");

ALTER TABLE "cf-id" ADD CONSTRAINT "fk_cf-id_Category_id" FOREIGN KEY("Category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "cf-id" ADD CONSTRAINT "fk_cf-id_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcatergory" ("subcategory_id");

