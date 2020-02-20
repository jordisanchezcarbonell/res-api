-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: fightin_game
-- ------------------------------------------------------
-- Server version	5.7.29-log
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "dbz"
--

DROP TABLE IF EXISTS "dbz";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dbz" (
  "id" int(11) NOT NULL,
  "nombre" varchar(45) DEFAULT NULL,
  "Fightin_game_id" int(11) NOT NULL,
  PRIMARY KEY ("id","Fightin_game_id"),
  KEY "fk_Garou_Fightin_game1_idx" ("Fightin_game_id"),
  CONSTRAINT "fk_Garou_Fightin_game1" FOREIGN KEY ("Fightin_game_id") REFERENCES "fightin_game" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dbz"
--

LOCK TABLES "dbz" WRITE;
/*!40000 ALTER TABLE "dbz" DISABLE KEYS */;
INSERT INTO "dbz" VALUES (1,'GT Goku',2),(2,'Bardock',2),(3,'Teen Gohan',2),(4,'Kid Buu',2),(5,'Adult Gohan',2),(6,'Vegeta',2),(7,'Base Vegeta',2),(8,'Yamcha',2),(9,'Android 21',2),(10,'Gotenks',2),(11,'Broly',2),(12,'Trunks',2),(13,'Gogeta',2),(14,'Goku',2),(15,'Hit',2),(16,'Piccolo',2),(17,'Cell',2),(18,'Super Broly',2),(19,'Blue Goku',2),(20,'Fused Zamasu',2),(21,'Goku Black',2),(22,'Base Goku',2),(23,'Android 18',2),(24,'Frieza',2),(25,'Vegito',2),(26,'Majin Buu',2),(27,'Tien',2),(28,'Android 16',2),(29,'Videl',2),(30,'Jiren',2),(31,'Janemba',2),(32,'Cooler',2),(33,'Beerus',2),(34,'Android 17',2),(35,'Blue Vegeta',2),(36,'Captain Ginyu',2),(37,'Nappa',2),(38,'Krillin',2),(39,'Vega',2);
/*!40000 ALTER TABLE "dbz" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "failed_jobs"
--

DROP TABLE IF EXISTS "failed_jobs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "failed_jobs" (
  "id" bigint(20) unsigned NOT NULL,
  "connection" text COLLATE utf8mb4_unicode_ci NOT NULL,
  "queue" text COLLATE utf8mb4_unicode_ci NOT NULL,
  "payload" longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  "exception" longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  "failed_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "failed_jobs"
--

LOCK TABLES "failed_jobs" WRITE;
/*!40000 ALTER TABLE "failed_jobs" DISABLE KEYS */;
/*!40000 ALTER TABLE "failed_jobs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "fightin_game"
--

DROP TABLE IF EXISTS "fightin_game";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "fightin_game" (
  "id" int(11) NOT NULL,
  "nom" varchar(45) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "fightin_game"
--

LOCK TABLES "fightin_game" WRITE;
/*!40000 ALTER TABLE "fightin_game" DISABLE KEYS */;
INSERT INTO "fightin_game" VALUES (1,'street fighter'),(2,'dbz'),(3,'MortalKombat'),(4,'Garou'),(5,'Power Rangers');
/*!40000 ALTER TABLE "fightin_game" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "garou"
--

DROP TABLE IF EXISTS "garou";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "garou" (
  "id" int(11) NOT NULL,
  "nombre" varchar(45) DEFAULT NULL,
  "fightin_game_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_dbz_fightin_game1_idx" ("fightin_game_id"),
  CONSTRAINT "fk_dbz_fightin_game1" FOREIGN KEY ("fightin_game_id") REFERENCES "fightin_game" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "garou"
--

LOCK TABLES "garou" WRITE;
/*!40000 ALTER TABLE "garou" DISABLE KEYS */;
INSERT INTO "garou" VALUES (1,'Kevin',4),(2,'Jenet',4),(3,'Gato',4),(4,'Kain',4),(5,'Grant',4),(6,'Dong Hwan',4),(7,'Base Vegeta',4),(8,'Jae Hoon',4),(9,'Butt',4),(10,'Hokutomaru',4),(11,'Hotaru',4),(12,'Terry',4),(13,'Tizoc',4),(14,'Rock',4),(15,'Freeman',4);
/*!40000 ALTER TABLE "garou" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "migrations"
--

DROP TABLE IF EXISTS "migrations";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "migrations" (
  "id" int(10) unsigned NOT NULL,
  "migration" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "batch" int(11) NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "migrations"
--

LOCK TABLES "migrations" WRITE;
/*!40000 ALTER TABLE "migrations" DISABLE KEYS */;
INSERT INTO "migrations" VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_01_29_151213_create_tabl__street__fighter',1),(5,'2020_01_29_151222_create_table__street__fighter',1);
/*!40000 ALTER TABLE "migrations" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "mortalkombat"
--

DROP TABLE IF EXISTS "mortalkombat";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "mortalkombat" (
  "id" int(11) NOT NULL,
  "nombre" varchar(45) DEFAULT NULL,
  "fightin_game_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_MortalKombat_fightin_game1_idx" ("fightin_game_id"),
  CONSTRAINT "fk_MortalKombat_fightin_game1" FOREIGN KEY ("fightin_game_id") REFERENCES "fightin_game" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "mortalkombat"
--

LOCK TABLES "mortalkombat" WRITE;
/*!40000 ALTER TABLE "mortalkombat" DISABLE KEYS */;
INSERT INTO "mortalkombat" VALUES (1,'Scorpion',3),(2,'Sonya',3),(3,'Erron Black',3),(4,'Liu Kang',3),(5,'Geras',3),(6,'Cassie Cage',3),(7,'Shang Tsung',3),(8,'Jacqui',3),(9,'Jade',3),(10,'Noob Saibot',3),(11,'Sub-Zero',3),(12,'Cetrion',3),(13,'Nightwolf',3),(14,'Kabal',3),(15,'Skarlet',3),(16,'Sindel',3),(17,'Baraka',3),(18,'Kung Lao',3),(19,'Kitana',3),(20,'Joker',3),(21,'Jax',3),(22,'Terminator',3),(23,'Johnny Cage',3),(24,'Raiden',3),(25,'Frost',3),(26,'Kollector',3),(27,'Kano',3),(28,'D\'Vorah',3),(29,'Kotal Kahn',3),(30,'Shao Kahn',3);
/*!40000 ALTER TABLE "mortalkombat" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "password_resets"
--

DROP TABLE IF EXISTS "password_resets";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "password_resets" (
  "email" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "token" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  KEY "password_resets_email_index" ("email")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "password_resets"
--

LOCK TABLES "password_resets" WRITE;
/*!40000 ALTER TABLE "password_resets" DISABLE KEYS */;
/*!40000 ALTER TABLE "password_resets" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "powerrangers"
--

DROP TABLE IF EXISTS "powerrangers";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "powerrangers" (
  "id" int(11) NOT NULL,
  "nombre" varchar(45) DEFAULT NULL,
  "fightin_game_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_PowerRangers_fightin_game1_idx" ("fightin_game_id"),
  CONSTRAINT "fk_PowerRangers_fightin_game1" FOREIGN KEY ("fightin_game_id") REFERENCES "fightin_game" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "powerrangers"
--

LOCK TABLES "powerrangers" WRITE;
/*!40000 ALTER TABLE "powerrangers" DISABLE KEYS */;
/*!40000 ALTER TABLE "powerrangers" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "street_fighters"
--

DROP TABLE IF EXISTS "street_fighters";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "street_fighters" (
  "id" int(11) NOT NULL,
  "nombre" varchar(45) DEFAULT NULL,
  "Fightin_game_id" int(11) NOT NULL,
  "url" varchar(105) DEFAULT NULL,
  PRIMARY KEY ("id","Fightin_game_id"),
  KEY "fk_Street_Fighter_Fightin_game_idx" ("Fightin_game_id"),
  CONSTRAINT "fk_Street_Fighter_Fightin_game" FOREIGN KEY ("Fightin_game_id") REFERENCES "fightin_game" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "street_fighters"
--

LOCK TABLES "street_fighters" WRITE;
/*!40000 ALTER TABLE "street_fighters" DISABLE KEYS */;
INSERT INTO "street_fighters" VALUES (1,'Rashid',1,'https://media.eventhubs.com/images/characters/sf5/rashid.png'),(2,'G',1,'https://media.eventhubs.com/images/characters/sf5/g.png'),(3,'M. Bison',1,'https://media.eventhubs.com/images/characters/sf5/mbison.png'),(4,'Karin',1,'https://media.eventhubs.com/images/characters/sf5/karin.png'),(5,'Ibuki',1,'https://media.eventhubs.com/images/characters/sf5/ibuki.png'),(6,'Guile',1,'https://media.eventhubs.com/images/characters/sf5/guile.png'),(7,'Chun-Li',1,'https://media.eventhubs.com/images/characters/sf5/chunli.png'),(8,'Necalli',1,'https://media.eventhubs.com/images/characters/sf5/necalli.png'),(9,'Poison',1,'https://media.eventhubs.com/images/characters/sf5/poison.png'),(10,'Gill',1,'https://media.eventhubs.com/images/characters/sf5/gill.png'),(11,'Akuma',1,'https://media.eventhubs.com/images/characters/sf5/akuma.png'),(12,'Menat',1,'https://media.eventhubs.com/images/characters/sf5/menat.png'),(13,'Laura',1,'https://media.eventhubs.com/images/characters/sf5/laura.png'),(14,'Zeku',1,'https://media.eventhubs.com/images/characters/sf5/zeku.png'),(15,'Kolin',1,'https://media.eventhubs.com/images/characters/sf5/kolin.png'),(16,'Urien',1,'https://media.eventhubs.com/images/characters/sf5/urien.png'),(17,'Cammy',1,'https://media.eventhubs.com/images/characters/sf5/cammy.png'),(18,'Abigail',1,'https://media.eventhubs.com/images/characters/sf5/abigail.png'),(19,'Birdie',1,'https://media.eventhubs.com/images/characters/sf5/birdie.png'),(20,'Balrog',1,'https://media.eventhubs.com/images/characters/sf5/balrog.png'),(21,'Lucia',1,'https://media.eventhubs.com/images/characters/sf5/lucia.png'),(22,'Dhalsim',1,'https://media.eventhubs.com/images/characters/sf5/dhalsim.png'),(23,'Cody',1,'https://media.eventhubs.com/images/characters/sf5/cody.png'),(24,'Sagat',1,'https://media.eventhubs.com/images/characters/sf5/sagat.png'),(25,'Blanka',1,'https://media.eventhubs.com/images/characters/sf5/blanka.png'),(26,'R. Mika',1,'https://media.eventhubs.com/images/characters/sf5/r-mika.png'),(27,'Ed',1,'https://media.eventhubs.com/images/characters/sf5/ed.png'),(28,'F.A.N.G',1,'https://media.eventhubs.com/images/characters/sf5/fang.png'),(29,'Ken',1,'https://media.eventhubs.com/images/characters/sf5/ken.png'),(30,'Falke',1,'https://media.eventhubs.com/images/characters/sf5/falke.png'),(31,'Kage',1,'https://media.eventhubs.com/images/characters/sf5/kage.png'),(32,'Nash',1,'https://media.eventhubs.com/images/characters/sf5/nash.png'),(33,'Sakura',1,'https://media.eventhubs.com/images/characters/sf5/sakura.png'),(34,'Zangief',1,'https://media.eventhubs.com/images/characters/sf5/zangief.png'),(35,'Ryu',1,'https://media.eventhubs.com/images/characters/sf5/ryu.png'),(36,'Alex',1,'https://media.eventhubs.com/images/characters/sf5/alex.png'),(37,'Juri',1,'https://media.eventhubs.com/images/characters/sf5/juri.png'),(38,'E. Honda',1,'https://media.eventhubs.com/images/characters/sf5/e-honda.png'),(39,'Vega',1,'https://media.eventhubs.com/images/characters/sf5/vega.png');
/*!40000 ALTER TABLE "street_fighters" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "tabl__street__fighter"
--

DROP TABLE IF EXISTS "tabl__street__fighter";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "tabl__street__fighter" (
  "id" bigint(20) unsigned NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "tabl__street__fighter"
--

LOCK TABLES "tabl__street__fighter" WRITE;
/*!40000 ALTER TABLE "tabl__street__fighter" DISABLE KEYS */;
/*!40000 ALTER TABLE "tabl__street__fighter" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "table__street__fighter"
--

DROP TABLE IF EXISTS "table__street__fighter";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "table__street__fighter" (
  "id" bigint(20) unsigned NOT NULL,
  "nombre" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "table__street__fighter"
--

LOCK TABLES "table__street__fighter" WRITE;
/*!40000 ALTER TABLE "table__street__fighter" DISABLE KEYS */;
/*!40000 ALTER TABLE "table__street__fighter" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "users"
--

DROP TABLE IF EXISTS "users";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "users" (
  "id" bigint(20) unsigned NOT NULL,
  "name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "email" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "email_verified_at" timestamp NULL DEFAULT NULL,
  "password" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "remember_token" varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  "created_at" timestamp NULL DEFAULT NULL,
  "updated_at" timestamp NULL DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "users_email_unique" ("email")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "users"
--

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
/*!40000 ALTER TABLE "users" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20 17:37:18
