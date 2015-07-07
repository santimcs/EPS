CREATE TABLE "earning_per_shares" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "year" integer, "quarter" integer, "quarterly_profit" decimal(8,0), "yoy_quarterly_profit" decimal(8,0), "accumulated_profit" decimal(8,0), "yoy_accumulated_profit" decimal(8,0), "quarterly_eps" decimal(5,2), "yoy_quarterly_eps" decimal(5,2), "accumulated_eps" decimal(5,2), "yoy_accumulated_eps" decimal(5,2), "created_at" datetime, "updated_at" datetime, stock_id integer);
CREATE TABLE "prices" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "date" date, "price" decimal(8,2), "max_price" decimal(8,2), "min_price" decimal(8,2), "qty" integer, "stock_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "quarters" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "quarter" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "sectors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "pe" decimal(8,2), "pbv" decimal(8,2), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "stocks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime, "in_port" boolean, "on_watch" boolean, "buy_target" decimal(4,2), "sell_target" decimal(4,2));
CREATE TABLE stocks01 (
  id          integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  name        varchar(255),
  created_at  datetime,
  updated_at  datetime
);
CREATE TABLE "years" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "year" integer, "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20101029031749');

INSERT INTO schema_migrations (version) VALUES ('20101029033905');

INSERT INTO schema_migrations (version) VALUES ('20101029034552');

INSERT INTO schema_migrations (version) VALUES ('20101029035825');

INSERT INTO schema_migrations (version) VALUES ('20101113022655');

INSERT INTO schema_migrations (version) VALUES ('20101114024302');

INSERT INTO schema_migrations (version) VALUES ('20101120025625');

INSERT INTO schema_migrations (version) VALUES ('20101121023214');

INSERT INTO schema_migrations (version) VALUES ('20101128023125');