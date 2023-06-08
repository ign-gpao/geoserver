SET standard_conforming_strings = OFF;
DROP TABLE IF EXISTS "public"."emprises" CASCADE;
BEGIN;
CREATE TABLE "public"."emprises" ( "ogc_fid" SERIAL, CONSTRAINT "emprises_pk" PRIMARY KEY ("ogc_fid") );
SELECT AddGeometryColumn('public','emprises','wkb_geometry',4326,'GEOMETRY',2);
CREATE INDEX "emprises_wkb_geometry_geom_idx" ON "public"."emprises" USING GIST ("wkb_geometry");
ALTER TABLE "public"."emprises" ADD COLUMN "id" NUMERIC(10,0);
ALTER TABLE "public"."emprises" ADD COLUMN "name" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "start_date" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "end_date" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "command" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "status" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "return_code" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "log" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "id_project" NUMERIC(10,0);
ALTER TABLE "public"."emprises" ADD COLUMN "id_session" VARCHAR;
ALTER TABLE "public"."emprises" ADD COLUMN "tags" VARCHAR;
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E61000000100000001030000000100000005000000F32BEFEA1A6DE6BF2C9CBFD2012548405E112A6BA0BFDC3FD03F7997E5284840E227A9701DF3D43FB01B2CD19BAF47403BADC2E18509E8BFCE7A9536DCB34740F32BEFEA1A6DE6BF2C9CBFD201254840', 2852, 'job 1', '2023-06-01 12:35:07.47089+00', '2023-06-01 12:35:17.510945+00', 'sleep 10', 'done', '0', 'Commande : [''sleep'', ''10'']

FIN', 32, '97', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E61000000100000001030000000100000005000000027BE88116FEC53FBF94D88AE1C047408315F8AA910EF63F4B251EBBAAC847405EBEB117290DF33F68D5141A76424740E7CE052B466ED63F8BE25E5297434740027BE88116FEC53FBF94D88AE1C04740', 2853, 'job 2', '2023-06-01 12:35:15.411153+00', '2023-06-01 12:35:15.459472+00', 'fail', 'failed', '-1', '[Errno 2] No such file or directory: ''fail''FIN', 32, '98', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E6100000010000000103000000010000000500000073F884E3BEBFF33F383793A5A9B6474092D61AC2ED000540C73CE7E6CEC64740CE8E14ACF7790440780B785F924247402F386924F018EF3F7A5598BEFD41474073F884E3BEBFF33F383793A5A9B64740', 2854, 'job 3', '2023-06-01 12:35:15.483039+00', '2023-06-01 12:35:25.510547+00', 'sleep 10', 'done', '0', 'Commande : [''sleep'', ''10'']

FIN', 32, '98', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E61000000100000001030000000100000005000000B770CD7A672EC73F53BCB392CA3148406B5D56596D73F43FCBAFEA73A52F484019FCB40962A5F43F1034EC4E28B5474087573FDB5A85D33F3AF3BC7538B94740B770CD7A672EC73F53BCB392CA314840', 2855, 'job 4', '2023-06-01 12:35:17.541806+00', '2023-06-01 12:35:27.571788+00', 'sleep 10', 'done', '0', 'Commande : [''sleep'', ''10'']

FIN', 32, '97', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E6100000010000000103000000010000000500000025A239440F53F33FDB9497582C1C484092A791FB528B02404F0BACA9F02848404E7B97BE98550240B0CCC06353BB4740CF141DF3E133F33FA13C9FEF4EAB474025A239440F53F33FDB9497582C1C4840', 2856, 'job 5', '2023-06-01 12:35:25.545285+00', '2023-06-01 12:35:35.583554+00', 'sleep 10', 'done', '0', 'Commande : [''sleep'', ''10'']

FIN', 32, '98', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E61000000100000001030000000100000005000000BF359D07268101406DFB563F1C174840F143DAA0CA160A40262B3A44A71A48403796964FC30D0A402EE654B99BA6474003ECB7D6EA760140F0EC8B19AAA44740BF359D07268101406DFB563F1C174840', 2857, 'job 6', '2023-06-01 12:35:35.62112+00', '2023-06-01 12:35:45.654987+00', 'sleep 10', 'done', '0', 'Commande : [''sleep'', ''10'']

FIN', 32, '98', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E6100000010000000103000000010000000500000095CF418D5FDEF33FD8EE0343145147402BC74D13FBB6024032BAF31A564F47403CA126357E1003407FB68F11BDFE46402EE81E0D17C2F23F37B460EF10FD464095CF418D5FDEF33FD8EE034314514740', 2858, 'job 7', 'NULL', 'NULL', 'sleep 10', 'waiting', 'NULL', 'NULL', 32, 'NULL', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E61000000100000001030000000100000005000000B0AFDDAEEFB40340E01DD33B04834740648B174FF6B00C40D3B06544897C47401187347C9B4A0A40E419DA25D8F6464038755A50E7090140FA366E7223004740B0AFDDAEEFB40340E01DD33B04834740', 2859, 'job 8', '2023-06-01 12:35:27.605294+00', '2023-06-01 12:35:37.636976+00', 'sleep 10', 'done', '0', 'Commande : [''sleep'', ''10'']

FIN', 32, '97', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E610000001000000010300000001000000050000007E36D7FA362F0240268C404BECBC47400C5C5936B68B0B40D89857527EBB474018FACCB610A00B40487812E8E3384740959F1BC1874F0340E0FC8F53433F47407E36D7FA362F0240268C404BECBC4740', 2860, 'job 9', 'NULL', 'NULL', 'fail', 'ready', 'NULL', 'NULL', 32, 'NULL', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0106000020E6100000010000000103000000010000000500000096A1EB7B11F20F40D4D66765AF094740150556F2BC7413403B99FBAF581047407AC05E37F7671340BB618EE63C9C4640126A89EEACAD0E40FCD5D62E5A97464096A1EB7B11F20F40D4D66765AF094740', 2861, 'job 10', 'NULL', 'NULL', 'sleep 10', 'ready', 'NULL', 'NULL', 32, 'NULL', '{}');
INSERT INTO "public"."emprises" ("wkb_geometry" , "id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES ('0101000020E610000000A529386BA7D0BFBA7C927BCDF04640', 2862, 'job 11', 'NULL', 'NULL', 'sleep 10', 'ready', 'NULL', 'NULL', 32, 'NULL', '{}');
INSERT INTO "public"."emprises" ("id", "name", "start_date", "end_date", "command", "status", "return_code", "log", "id_project", "id_session", "tags") VALUES (2863, 'job 12', 'NULL', 'NULL', 'sleep 10', 'ready', 'NULL', 'NULL', 32, 'NULL', '{}');
COMMIT;
