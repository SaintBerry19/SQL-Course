CREATE DATABASE  IF NOT EXISTS `ecommerce_sql_course` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce_sql_course`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: ecommerce_sql_course
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AREAS`
--

DROP TABLE IF EXISTS `AREAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AREAS` (
  `area_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AREAS`
--

LOCK TABLES `AREAS` WRITE;
/*!40000 ALTER TABLE `AREAS` DISABLE KEYS */;
INSERT INTO `AREAS` VALUES (1,'Ventas'),(2,'Compras'),(3,'Logistica'),(4,'TI'),(5,'Recursos Humanos'),(6,'Almacen'),(7,'Delivery');
/*!40000 ALTER TABLE `AREAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENTES`
--

DROP TABLE IF EXISTS `CLIENTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTES` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `edad` int DEFAULT NULL,
  `empresa_id` int DEFAULT NULL,
  `identificacion_nacional` varchar(255) NOT NULL,
  PRIMARY KEY (`cliente_id`),
  UNIQUE KEY `identificacion_nacional` (`identificacion_nacional`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `EMPRESAS` (`empresa_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTES`
--

LOCK TABLES `CLIENTES` WRITE;
/*!40000 ALTER TABLE `CLIENTES` DISABLE KEYS */;
INSERT INTO `CLIENTES` VALUES (1,'Malachi','Sheircliffe',23,121,'9141387473'),(2,'Concettina','Axtell',26,75,'9263407320'),(3,'Mikkel','Prium',25,68,'0296759341'),(4,'Rodge','Skelcher',59,140,'0473833840'),(5,'Shari','Tethacot',52,57,'9360233536'),(6,'Inger','Barthel',18,39,'3931238253'),(7,'Veronique','Harrie',49,143,'3362546862'),(8,'Ilse','Farens',52,82,'7696228382'),(9,'Sterling','Frangello',27,51,'3273870567'),(10,'Chantal','Cardenas',33,33,'7670810254'),(11,'Bastian','Minichillo',45,17,'5677840017'),(12,'Brier','Laboune',46,86,'8521876041'),(13,'Shaylah','Harmond',31,121,'3554363987'),(14,'Maurise','Quincey',49,43,'9734974459'),(15,'Shaun','Rontsch',58,109,'1775099377'),(16,'Melinda','Dallimore',48,18,'0298357275'),(17,'Cortney','Mottini',34,119,'0687287316'),(18,'Almeda','Goulborn',50,17,'7258756264'),(19,'Flossie','Python',49,105,'9814250589'),(20,'Guido','Szachniewicz',53,11,'4543320263'),(21,'Winna','Whittles',37,71,'4025710145'),(22,'Natale','Diboll',47,115,'5811106548'),(23,'Neddy','Rookwell',48,35,'1296059871'),(24,'Virgie','Speke',42,43,'8251310091'),(25,'Parker','Klemencic',27,90,'2567512462'),(26,'Clareta','Halston',29,92,'9045700166'),(27,'Berri','Yegorchenkov',55,141,'1552609057'),(28,'Jeramey','Veale',61,143,'1601217676'),(29,'Mitchael','Raimbauld',22,53,'5230202300'),(30,'Millicent','Esplin',61,56,'0552257265'),(31,'Florence','Swindells',57,120,'0667162062'),(32,'Milissent','MacDearmont',34,76,'1463277830'),(33,'Sigfrid','Zanni',64,45,'8391836126'),(34,'Kally','Kynvin',38,107,'8053432956'),(35,'Nahum','Stockney',64,132,'6359480700'),(36,'Silvan','Youings',55,50,'9097817358'),(37,'Alvin','Jocic',26,19,'7923328870'),(38,'Bronson','Saffer',19,59,'3934196861'),(39,'Isidore','Adanet',55,146,'5544614148'),(40,'Jayne','Bawle',64,14,'4527184229'),(41,'Osgood','Loney',23,106,'7337954506'),(42,'Lanna','Janecek',64,18,'4817749989'),(43,'Hyatt','Duddell',43,155,'8146007597'),(44,'Roddie','Ogan',57,117,'8664441340'),(45,'Florina','Extill',19,57,'5647687040'),(46,'Benji','Lett',58,57,'5321069085'),(47,'Rodolph','Scocroft',65,126,'4345512808'),(48,'Bord','Iveson',32,127,'5538305988'),(49,'Richmound','Sporle',55,153,'5628356832'),(50,'Lianna','Dunne',22,23,'4389537180'),(51,'Cully','Withrington',53,119,'2095131622'),(52,'Eydie','Costin',64,138,'0240186877'),(53,'Irwinn','Cardenoso',19,7,'5873181675'),(54,'Merrick','Bautiste',44,39,'2838411446'),(55,'Glyn','Meenan',55,129,'4333788560'),(56,'Cristina','Francisco',33,4,'7293847548'),(57,'Ferris','Toombes',19,62,'2959705866'),(58,'Vernice','Sheryn',26,9,'8353126192'),(59,'Jewell','Ellice',34,69,'5298906621'),(60,'Breanne','Calladine',57,25,'8387322865'),(61,'Caye','Birdseye',51,118,'2269999770'),(62,'Juieta','Emeney',40,151,'5869184169'),(63,'Wandis','Petticrew',33,61,'9832067669'),(64,'Barry','Manifould',57,99,'4307653602'),(65,'Waldon','Perkinson',22,15,'4278816766'),(66,'Enoch','Fritschel',31,31,'4809446190'),(67,'Liuka','Richardin',22,135,'7016264912'),(68,'Alecia','Giacopini',48,34,'8930603335'),(69,'Andria','Bonifazio',50,97,'0354506692'),(70,'Alberto','Leger',63,68,'6434936583'),(71,'Stacee','Roeby',30,41,'8750550519'),(72,'Kendricks','Pauler',23,124,'2787654525'),(73,'Lenora','Pantone',27,113,'3905423723'),(74,'Fraze','Regglar',53,103,'7366941727'),(75,'Smith','Tax',30,79,'2334057215'),(76,'Fergus','Kearley',26,29,'2062412029'),(77,'Burt','Rapi',49,67,'7065927601'),(78,'Prent','Bickers',47,61,'5260485572'),(79,'Elvis','Klimowski',42,1,'7139750882'),(80,'Giulia','Pryce',54,83,'5258515966'),(81,'Phyllis','Seal',18,2,'3186667437'),(82,'Bing','Ingman',47,119,'6364460593'),(83,'Farah','Richings',28,36,'8944258775'),(84,'Vanni','Guitton',60,125,'1835279732'),(85,'Letty','Runciman',31,23,'3759747493'),(86,'Silvana','Ratter',29,69,'5877668757'),(87,'Antin','Siberry',44,90,'6568923060'),(88,'Wylma','Washbrook',65,102,'1810577853'),(89,'Brenn','MacAlpine',53,6,'0561875014'),(90,'Fraze','Botly',53,37,'2033836126'),(91,'Meara','Vassman',59,4,'7809912941'),(92,'Britt','Klejna',19,120,'5986131061'),(93,'Donica','Luty',61,20,'8016536123'),(94,'Willabella','Grisenthwaite',40,99,'8590497720'),(95,'Ingemar','Coplestone',40,140,'9581779094'),(96,'Harmony','Pinke',48,92,'0575097914'),(97,'Karena','Richie',23,111,'8539641496'),(98,'Meghan','Tunnacliffe',50,109,'8513277843'),(99,'Luciano','Hargey',34,72,'7044867545'),(100,'Corinna','Fragino',61,109,'9182906416'),(101,'Sabra','Garrud',29,95,'9244739887'),(102,'Bobbe','Tatton',59,3,'8521752733'),(103,'Nealson','Leonida',41,121,'4339369349'),(104,'Mellicent','Bridgens',45,29,'2266034553'),(105,'Dacie','Franzewitch',34,66,'4119426076'),(106,'Roddie','Bouldon',41,16,'9978607129'),(107,'Ber','Britian',48,45,'2558175777'),(108,'Penelopa','Welsh',22,22,'1004671849'),(109,'Angy','Muirden',20,118,'7416722624'),(110,'Rafaello','MacAne',35,111,'3467615783'),(111,'Nani','Hellier',57,154,'6049454248'),(112,'Elvin','Meachan',52,43,'8492199091'),(113,'Sherry','Cuniam',49,39,'5027054114'),(114,'Emyle','Regnard',32,41,'7552543744'),(115,'Petronia','Tofanelli',32,18,'4439250270'),(116,'Woodman','Firth',47,121,'3463038501'),(117,'Latrena','Froom',61,72,'5110352755'),(118,'Gonzalo','Meddick',44,31,'5900827151'),(119,'Xaviera','Puddle',26,79,'9323740071'),(120,'Conroy','Adin',62,91,'7068808808'),(121,'Ralph','Torra',65,108,'4316272551'),(122,'Rowney','Sowood',43,41,'0457944005'),(123,'Godwin','Geany',60,47,'2859226559'),(124,'Marylou','Elsie',38,114,'7642318065'),(125,'Nikita','Cotty',31,121,'5010080400'),(126,'Madelena','McKearnen',43,75,'0363975071'),(127,'Seka','Robus',58,130,'8982408304'),(128,'Lenette','Brunet',24,138,'6475295760'),(129,'Nicola','Allardyce',28,45,'7729896680'),(130,'Angelia','Erangy',58,60,'8408881167'),(131,'Corabella','Yearby',63,22,'5106162440'),(132,'Antoinette','Greschke',56,76,'9762464648'),(133,'Flory','Mumby',49,73,'7685004682'),(134,'Helena','Olenchenko',19,126,'7965943204'),(135,'Faye','Calf',31,127,'8202737540'),(136,'Virgie','Palay',62,2,'6476060287'),(137,'Jade','Paydon',29,43,'1594848610'),(138,'Ashly','Neads',34,85,'4672798410'),(139,'Ambrosi','Barnish',44,25,'7321987248'),(140,'Tessa','Le feuvre',43,15,'9386240939'),(141,'Jelene','O\'Cooney',21,67,'4085987666'),(142,'Angel','Dutt',39,99,'0115055185'),(143,'Esma','Milington',31,97,'3676026330'),(144,'Bessy','Clothier',60,130,'1047659646'),(145,'Washington','Offill',51,70,'1637067569'),(146,'Nevsa','cornhill',61,146,'8300014195'),(147,'Ardelle','Signorelli',47,129,'6426396923'),(148,'Kendricks','Slowcock',63,73,'8935392685'),(149,'Rutter','Vitler',53,136,'6714278764'),(150,'Erminia','Casier',37,20,'2578534586'),(151,'Heinrik','Lumsdall',29,100,'5235476247'),(152,'Tybi','Peggs',45,122,'7332168820'),(153,'Tabor','Ashton',36,83,'8130898969'),(154,'Danika','Hulkes',51,8,'7439029003'),(155,'Dynah','Romero',20,120,'6168380604'),(156,'Nana','Beaulieu',58,45,'2778503889'),(157,'Fara','Cancott',26,64,'0431933634'),(158,'Alfons','Orpin',25,111,'4699565387'),(159,'Jacquelin','Gallagher',55,141,'6070783891'),(160,'Hermina','Jopke',35,70,'8006795061'),(161,'Vivian','Shepherdson',22,15,'2531355154'),(162,'Brett','McCrackan',21,54,'8327440373'),(163,'Carina','Seedull',45,121,'9107295871'),(164,'Steve','Leteurtre',34,8,'6736948797'),(165,'Hamnet','Whisson',37,93,'5077156794'),(166,'Tony','Kurton',22,2,'5061052951'),(167,'Evered','Baudinelli',18,137,'1743109792'),(168,'Roobbie','Dies',36,141,'1416589244'),(169,'Walton','Pimm',52,128,'7390267224'),(170,'Berenice','Copcote',22,54,'4735610081'),(171,'Larina','Phripp',46,47,'0374958610'),(172,'Olympia','Adamczyk',20,120,'1533537593'),(173,'Rica','Lamort',26,104,'3808493143'),(174,'Atlanta','Manterfield',21,11,'4188939249'),(175,'Marcellus','Maidment',23,101,'7579942623'),(176,'Kellen','Hammerson',57,90,'4433226475'),(177,'Rollin','Balm',37,6,'2488756482'),(178,'Lezley','Occleshaw',35,126,'3607847924'),(179,'Tonia','Gamon',33,152,'4475011884'),(180,'Parker','Rapaport',22,46,'7702528281'),(181,'Cary','Engel',24,108,'0483513881'),(182,'Jolene','Cawood',36,154,'7513582653'),(183,'Hester','Gagan',36,13,'4091989977'),(184,'Corrinne','Piesing',45,7,'4011549029'),(185,'Alli','Semon',51,118,'0698841573'),(186,'Timofei','Lavis',32,77,'5195425787'),(187,'Dan','Burkin',21,69,'0698677161'),(188,'Reyna','Domsalla',21,103,'6284421702'),(189,'Jenna','Hollow',62,76,'6662013498'),(190,'Jaquelin','Larn',49,91,'4578556905'),(191,'Guthrey','Matyas',30,109,'8613327281'),(192,'Rhody','McClifferty',65,91,'4113763712'),(193,'Kort','MacElane',46,129,'7962681179'),(194,'Binny','Ducker',36,145,'4597490914'),(195,'Priscilla','Warboys',41,7,'4645526618'),(196,'Chrotoem','Lefort',60,84,'5786634515'),(197,'Ulrikaumeko','Styche',65,133,'3632328471'),(198,'Nickey','Wilcox',33,63,'4223712802'),(199,'Aldwin','Henner',53,137,'4277622534'),(200,'Caril','Kennan',33,146,'9242794341'),(201,'Allison','Spragge',29,137,'5417423122'),(202,'Osbourn','Sanbroke',37,107,'9595776033'),(203,'Rogers','Jilkes',19,100,'8192510441'),(204,'Gordy','Dobbie',56,50,'5172617701'),(205,'Indira','O\'Spellissey',20,16,'5823664397'),(206,'Rheta','Swindon',50,22,'2855434793'),(207,'Arnoldo','Camosso',25,45,'9327926501'),(208,'Danice','Tokell',57,106,'3811399683'),(209,'Cobbie','Skahill',56,69,'8886581580'),(210,'Nicolis','Domnick',47,50,'1416041710'),(211,'Marcelo','Burnapp',48,107,'6709399575'),(212,'Beverlee','Yakuntzov',61,138,'4464334822'),(213,'Trefor','Cocklin',22,70,'6449254963'),(214,'Miran','Tinsley',40,52,'8536736240'),(215,'Jephthah','Crankhorn',45,2,'9456213056'),(216,'Niko','Molloy',39,92,'9177248287'),(217,'Clark','Paquet',43,140,'5104410889'),(218,'Packston','Mucklestone',27,135,'9521830239'),(219,'Wyatt','Triggel',57,133,'4140434430'),(220,'Trueman','Schoolcroft',54,95,'7407917094'),(221,'Lonnard','Mendus',47,22,'0456470557'),(222,'Hurleigh','Lingwood',33,47,'5606535521'),(223,'Nesta','Heller',35,75,'0844884987'),(224,'Selie','Bromage',62,68,'3381026186'),(225,'Blanca','Petricek',53,29,'2224473656'),(226,'Denney','Faughnan',33,44,'1419612271'),(227,'Leonard','McQuode',20,112,'6768764020'),(228,'Roobbie','Noen',46,59,'4740492768'),(229,'Mabelle','Cobbald',40,140,'1111921814'),(230,'Zarah','Dyka',53,86,'9511980505'),(231,'Earl','Wintringham',23,49,'7057426658'),(232,'Jacky','Beckinsall',54,118,'2506881026'),(233,'Aluin','Blakes',64,38,'0026901773'),(234,'Cybil','Cargill',64,49,'0948816902'),(235,'Maudie','Oldroyd',63,156,'9729679797'),(236,'Salomon','Giuroni',26,129,'2741109826'),(237,'Arlyne','Turban',46,120,'4804373489'),(238,'Sib','Enticknap',46,29,'9275715548'),(239,'Marigold','Brocklebank',19,10,'6631076617'),(240,'Bessy','Berndtsson',55,43,'3401620525'),(241,'Gabie','McSherry',38,102,'5093753092'),(242,'Sheilah','Whild',28,37,'8402860761'),(243,'Sella','Simonot',47,141,'9881142377'),(244,'Mord','Dzeniskevich',46,68,'2528061331'),(245,'Anastasia','Erickssen',41,117,'6085854579'),(246,'Sibel','Rippingall',52,125,'4668616311'),(247,'Stacie','Issacoff',40,48,'6951815070'),(248,'Sharai','Skoyles',28,33,'8515201100'),(249,'Brannon','Allabush',29,118,'7904029871'),(250,'Duffy','O\'Kinneally',59,94,'9716024541'),(251,'Halley','Nisen',31,151,'0045937516'),(252,'Cornelia','Zealy',38,107,'0535599765'),(253,'Benedick','Heinz',28,69,'8727837920'),(254,'Trip','Burnside',37,105,'3575959323'),(255,'Boothe','Arthur',52,32,'0810428350'),(256,'Datha','Chamberlayne',30,66,'2940359555'),(257,'Paton','Meryett',33,116,'0836592859'),(258,'Ricki','Goffe',61,133,'2310761184'),(259,'Jackquelin','Butterwick',30,139,'6338061423'),(260,'Babita','Itzkovwich',60,80,'7715097268'),(261,'Nikolai','Yarnell',47,43,'6095279275'),(262,'Mason','Havenhand',19,83,'4816971947'),(263,'Meghann','Stillwell',42,42,'0353125571'),(264,'Kaleena','Strike',19,43,'3984290578'),(265,'Marthena','Belsey',27,2,'7069217560'),(266,'Inna','Batcheldor',35,2,'0024395196'),(267,'Malissa','Ormonde',65,108,'8389029448'),(268,'Obidiah','Parcells',46,125,'7385051243'),(269,'Kristina','Trenaman',62,129,'5352930475'),(270,'Rosie','Carlon',21,78,'1218760079'),(271,'Andras','Maliffe',39,108,'7802961386'),(272,'Odelia','Vasilyevski',46,154,'3147259226'),(273,'Rosemaria','Davion',25,54,'5997981932'),(274,'Cathyleen','MacCheyne',18,96,'9091337966'),(275,'Kalie','Tather',61,149,'6376895263'),(276,'Elysee','Darker',36,49,'9379982380'),(277,'Christalle','Quinnell',37,57,'1327629593'),(278,'Tann','Raimbauld',60,106,'8087884639'),(279,'Sarajane','Neale',40,1,'9980238534'),(280,'Livy','Jolland',24,31,'1769540253'),(281,'Brew','Stitt',48,114,'4805155825'),(282,'Malanie','Fuzzey',26,36,'5800397252'),(283,'Alexia','Gottelier',43,5,'9731546359'),(284,'Vasily','Twidle',50,142,'6227868345'),(285,'Georgeanne','Matyas',33,34,'2563323894'),(286,'Blithe','Veevers',18,122,'6909961048'),(287,'Wendie','McNirlin',31,145,'8934941723'),(288,'Jehanna','O\'Howbane',42,123,'3142796940'),(289,'Evvie','Bartot',50,136,'7982534961'),(290,'Leonora','Fearnley',54,43,'7462160765'),(291,'Roanne','Cannavan',32,47,'9642325055'),(292,'Maxwell','Strutz',52,15,'3673797824'),(293,'Gisela','Grahl',26,82,'1835566235'),(294,'Tedmund','Burne',50,135,'9671353320'),(295,'Andreas','Maw',23,156,'2242015702'),(296,'Gav','McGonigal',32,119,'8184561938'),(297,'Harriet','Beeston',35,74,'4577596962'),(298,'Joelie','Bore',52,108,'0564046388'),(299,'Harvey','Rivelin',45,6,'6643282063'),(300,'Arv','Turfitt',38,129,'1686184735'),(301,'Mariquilla','Sparshutt',39,67,'8146823734'),(302,'Aldwin','Brinkworth',39,70,'2050466692'),(303,'Napoleon','Bunt',36,41,'3310433595'),(304,'Norma','Wall',41,19,'0364823178'),(305,'Esdras','Bernolet',40,123,'5647525407'),(306,'Avram','Rivett',63,61,'9042124474'),(307,'Orlan','Bangiard',45,91,'4218576602'),(308,'Eleanora','Koubu',37,114,'4145152166'),(309,'Dacia','Twittey',62,73,'6621282370'),(310,'Anne-marie','Kelk',63,156,'2415034177'),(311,'Marybelle','Marple',47,56,'7790352679'),(312,'Alberik','McEachern',18,55,'8006912572'),(313,'Nicola','Counsell',60,53,'4849530117'),(314,'Kalina','Hegden',19,72,'2436414475'),(315,'Brittney','Trusty',35,52,'0817586210'),(316,'Flem','Simondson',37,127,'8576178672'),(317,'Alphonso','Ketcher',48,22,'5685176627'),(318,'Malissia','Saker',55,73,'2726073034'),(319,'Eden','Souttar',57,132,'9328822815'),(320,'Brianne','Vagges',53,43,'0560380062'),(321,'Teodoro','Vanner',19,20,'9207892960'),(322,'Cordelia','Shellum',20,83,'9296244315'),(323,'Erick','Gilchrist',58,131,'9438959262'),(324,'Dennison','Morehall',35,14,'9693887670'),(325,'Rozalie','Salleir',21,128,'1490115714'),(326,'Monty','Gunston',24,121,'7922683758'),(327,'Alfred','Gildroy',33,148,'5933038806'),(328,'Clarinda','Chestney',55,70,'5071311569'),(329,'Nancey','Steet',28,43,'2882015496'),(330,'Jabez','Mucci',21,40,'8218659277'),(331,'Cheston','Trice',29,121,'8801324618'),(332,'Hope','Zukierman',25,23,'5234044157'),(333,'Muffin','Faircliffe',55,106,'9329404545'),(334,'Anders','Lukianovich',18,19,'7746784461'),(335,'Lon','Trittam',36,85,'0611348829'),(336,'Gardie','Humphery',61,17,'7708250579'),(337,'Barde','Neising',38,130,'3089503549'),(338,'Dore','Jonczyk',64,103,'6881210175'),(339,'Kurtis','Chatters',57,109,'7607210296'),(340,'Gloriana','Giffard',57,71,'4033310134'),(341,'Corine','Eade',24,90,'8200684199'),(342,'Jarrad','Chue',28,138,'2893221327'),(343,'Eldridge','Greensmith',40,30,'3598783426'),(344,'Averill','Barniss',61,85,'2618141776'),(345,'Leontyne','Cheeke',44,116,'0245080295'),(346,'Darcy','Mellings',65,141,'4758663122'),(347,'Kizzee','Sanchis',58,100,'4266182392'),(348,'Howard','Jallin',59,99,'6835362200'),(349,'Allina','Deackes',31,110,'1383092893'),(350,'Nev','Moye',39,31,'6035916546'),(351,'Winston','Pretorius',39,16,'4269717130'),(352,'Torey','Search',36,52,'1256935360'),(353,'Jan','Trowle',44,111,'2885002263'),(354,'Esther','Sanderson',25,47,'7495810173'),(355,'Robin','Legrice',60,113,'6732411667'),(356,'Leicester','Albrook',25,45,'1618411985'),(357,'Tillie','Dougill',54,8,'4094691006'),(358,'Shanon','Zecchinii',27,120,'8808891615'),(359,'Florie','Nibloe',27,33,'3209321213'),(360,'Daisy','Croydon',64,71,'0905770501'),(361,'Ximenez','Ludovico',65,66,'0917018656'),(362,'Simone','Bichard',43,113,'7838885256'),(363,'Rasia','Garnam',18,105,'3732221245'),(364,'Tommie','McNickle',30,49,'5751750853'),(365,'Eolande','Teall',57,126,'3086233885'),(366,'Rutger','Rumford',49,74,'6646121109'),(367,'Briney','Stodit',41,67,'9046060454'),(368,'Frants','Gibson',28,59,'7776199079'),(369,'Vicky','Inkles',26,19,'5904191022'),(370,'Mariana','Gierhard',55,123,'8523556885'),(371,'Sammie','Duester',31,91,'2724606825'),(372,'Hilliard','Sturgeon',60,103,'7584066682'),(373,'Maia','Poli',52,139,'7368276771'),(374,'Ursa','Cesco',20,146,'1727634942'),(375,'Iona','Athy',34,35,'0562265163'),(376,'Karia','Sizzey',57,1,'9714687101'),(377,'Brodie','Posselt',33,139,'0068210949'),(378,'Fawn','McHardy',52,19,'6871292667'),(379,'Torrie','Lownie',38,151,'2550511247'),(380,'Brynna','O\'Doran',29,142,'8509754837'),(381,'Brande','Kerwood',51,99,'6108118628'),(382,'Eleanor','Gisby',42,58,'8387415103'),(383,'Colby','Jedrys',22,145,'3478558956'),(384,'Alvina','Tybalt',43,95,'6908090159'),(385,'Sylvia','Ricardet',36,8,'6066414550'),(386,'Wandis','Cadreman',39,139,'1658390091'),(387,'Austen','O\'Deegan',24,38,'0437756556'),(388,'Karita','Pieter',19,147,'8074788385'),(389,'Sunny','Tabourier',34,20,'2508725099'),(390,'Danika','Franceschi',41,152,'5721726504'),(391,'Lynelle','Aleksankin',61,123,'8390773112'),(392,'Zita','Kolodziejski',21,6,'6566031391'),(393,'Ainsley','MacGilpatrick',31,70,'8048098016'),(394,'Lonni','Lionel',61,135,'9479242303'),(395,'Lotty','Minchi',39,156,'3656208379'),(396,'Kippar','Benkin',57,17,'2104265150'),(397,'Mayor','Jarrell',53,72,'0375418490'),(398,'Berny','Vial',41,20,'0753672391'),(399,'Garth','Trappe',54,80,'8075181603'),(400,'Clayborn','Flaunders',41,116,'0588082945'),(401,'Nancy','Chaffer',44,83,'6317149410'),(402,'Osgood','Upward',39,13,'2859373748'),(403,'Ginevra','Willishire',59,77,'4517218902'),(404,'Elwira','Dukelow',48,143,'0977457133'),(405,'Izak','Greser',31,72,'4731223601'),(406,'Chick','Echelle',65,16,'8358464797'),(407,'Finley','Beevers',26,114,'1273757505'),(408,'Bar','Simonitto',18,117,'8049079147'),(409,'Perrine','Cady',63,7,'0437642933'),(410,'Delphine','Braxay',20,56,'4485646203'),(411,'Alida','Kingsman',29,30,'5320298471'),(412,'Etienne','Capes',45,148,'6832372450'),(413,'Val','McMenamin',58,151,'0613430247'),(414,'Mitch','Clingan',19,76,'4750618128'),(415,'Marin','McChesney',63,134,'5655559161'),(416,'Giordano','Huegett',51,150,'1677001984'),(417,'Gill','Simonou',52,148,'6668277624'),(418,'Hayyim','Latehouse',62,154,'5123179399'),(419,'Gertie','Bridgman',53,62,'0845938096'),(420,'Netti','Lukas',62,77,'5035876853'),(421,'Cyndie','MacCollom',50,134,'3060806209'),(422,'Elnar','Michieli',46,28,'4846808696'),(423,'Wileen','Tideswell',23,127,'7576639601'),(424,'Yule','Matterson',24,1,'9688057975'),(425,'Kenna','Beresfore',33,60,'4308805066'),(426,'Lari','Rowthorne',46,145,'9883290632'),(427,'Wilt','Trollope',22,29,'6693919316'),(428,'Terrance','Faill',39,92,'8583152764'),(429,'Sargent','Pulsford',18,134,'8764400638'),(430,'Elmer','Speariett',50,64,'4003205421'),(431,'Weber','Pauwel',31,22,'3466885698'),(432,'Bertine','Parnaby',18,142,'0936842318'),(433,'Alfie','Huggin',55,82,'9103070972'),(434,'Timoteo','Taffs',59,34,'0679528482'),(435,'Dulcine','Couvet',60,135,'1822690951'),(436,'Tann','Duignan',24,105,'5982716847'),(437,'Waring','Dorkins',48,72,'7078522338'),(438,'Berti','Hulburt',25,153,'5497552110'),(439,'Dorothee','Royal',57,37,'4264977061'),(440,'Dunstan','Ausher',64,40,'7653384269'),(441,'Shanon','Barthelme',19,67,'2370966963'),(442,'Em','Beggio',26,151,'2275038434'),(443,'Kayle','Cripps',25,79,'5778619677'),(444,'Elisha','Ilieve',46,73,'6025782636'),(445,'Elenore','Meekin',63,113,'1507837860'),(446,'Ingaberg','Claasen',21,14,'0651505585'),(447,'Sigismund','McParland',44,54,'3952748161'),(448,'Caye','Kilbourn',28,112,'0166204269'),(449,'Sheila-kathryn','Jahnke',56,149,'8997314742'),(450,'Beckie','Van Der Weedenburg',35,23,'5938413281'),(451,'Lay','Weekes',40,102,'0145132684'),(452,'Silvano','Samwaye',22,72,'2353665624'),(453,'Bette-ann','Saker',56,101,'8587351435'),(454,'Toby','Stockau',60,59,'4476508812'),(455,'Georgena','Frankton',30,66,'5696142257'),(456,'Shannan','Artingstall',34,85,'6390549253'),(457,'Nikoletta','Snassell',43,139,'8759532319'),(458,'Wynn','Vurley',42,6,'2937072194'),(459,'Penelope','Beatens',61,126,'5956384743'),(460,'Putnem','Carville',60,33,'9192847528'),(461,'Paulina','Gerauld',40,36,'3993145860'),(462,'Rog','Slott',38,147,'6692085187'),(463,'Freida','Baty',46,13,'8367234634'),(464,'Danell','Marron',32,80,'1594731144'),(465,'Knox','Cabrales',26,126,'7233306575'),(466,'Dulcinea','Osgordby',30,100,'4649465370'),(467,'Hartwell','Le feuvre',53,122,'2146364130'),(468,'Austina','Goch',40,152,'4156026507'),(469,'Allene','Davidesco',26,122,'2989722203'),(470,'Berkley','Alenov',50,54,'3522786920'),(471,'Nadia','Crucetti',32,25,'5343022839'),(472,'Betti','Catley',31,118,'8838063125'),(473,'Seana','Concannon',60,40,'1289806535'),(474,'Gerianna','Whybrow',23,129,'2764442254'),(475,'Deborah','Hartas',53,24,'6616377105'),(476,'Aprilette','Peterffy',19,18,'8973304550'),(477,'Padriac','Tregensoe',61,93,'3652305299'),(478,'Mathian','Suddaby',36,65,'8945586725'),(479,'Rebecca','Frawley',60,127,'6531064498'),(480,'Odetta','Andrzejczak',48,40,'8828817275'),(481,'Janean','Irdale',24,6,'1245159364'),(482,'Hedwig','Frenchum',32,23,'5595204397'),(483,'Conn','Scarsbrooke',39,70,'0063985101'),(484,'Timotheus','Sinclar',45,133,'1976923875'),(485,'Crosby','Littleover',60,112,'9808588492'),(486,'Cyb','Pugsley',42,144,'2721563009'),(487,'Isaiah','Peart',63,60,'3414932954'),(488,'Alica','Philip',30,130,'5181571468'),(489,'Martguerita','Beadnell',58,35,'6237661840'),(490,'Virgie','Lockyer',59,116,'8401257867'),(491,'Birdie','Binder',58,137,'5665431745'),(492,'Sansone','Lisimore',28,140,'2713386047'),(493,'Dido','Castagneto',53,83,'1482939177'),(494,'Clifford','Connaughton',18,125,'7512650043'),(495,'Thurston','Baudic',53,87,'2047178207'),(496,'Hewie','Bulluck',64,77,'2339246288'),(497,'Cheryl','Gwioneth',51,41,'8471173824'),(498,'Gena','Hannay',53,99,'2484866569'),(499,'Tiebout','Stanlike',24,61,'9034548147'),(500,'Hammad','Spellacey',53,87,'9712718476');
/*!40000 ALTER TABLE `CLIENTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPRAS`
--

DROP TABLE IF EXISTS `COMPRAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPRAS` (
  `compra_id` int NOT NULL AUTO_INCREMENT,
  `trabajador_proveedor_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`compra_id`),
  KEY `trabajador_proveedor_id` (`trabajador_proveedor_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`trabajador_proveedor_id`) REFERENCES `TRABAJADOR_PROVEEDORES` (`trabajador_proveedor_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `EMPLEADOS` (`empleado_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPRAS`
--

LOCK TABLES `COMPRAS` WRITE;
/*!40000 ALTER TABLE `COMPRAS` DISABLE KEYS */;
INSERT INTO `COMPRAS` VALUES (1,129,9,'2022-04-04'),(2,58,31,'2022-05-27'),(3,134,43,'2021-09-30'),(4,110,6,'2022-04-26'),(5,41,25,'2022-05-01'),(6,191,24,'2022-02-26'),(7,180,4,'2022-11-11'),(8,165,7,'2022-06-28'),(9,114,43,'2021-07-04'),(10,73,13,'2022-03-12'),(11,53,5,'2022-04-01'),(12,102,23,'2021-09-16'),(13,97,32,'2021-08-27'),(14,92,15,'2021-09-29'),(15,186,16,'2022-07-20'),(16,24,10,'2022-08-16'),(17,30,11,'2022-12-08'),(18,45,25,'2022-05-25'),(19,50,2,'2021-06-27'),(20,35,15,'2022-05-12'),(21,53,26,'2022-03-20'),(22,170,21,'2021-09-06'),(23,34,17,'2022-07-21'),(24,71,10,'2022-03-04'),(25,134,8,'2022-01-13'),(26,106,9,'2022-09-14'),(27,128,23,'2022-05-07'),(28,148,9,'2022-11-26'),(29,10,14,'2022-09-16'),(30,188,23,'2022-05-24'),(31,103,34,'2021-10-21'),(32,123,24,'2021-11-02'),(33,181,17,'2022-09-19'),(34,178,24,'2021-11-09'),(35,14,12,'2022-01-17'),(36,29,30,'2021-11-04'),(37,139,44,'2022-07-02'),(38,188,30,'2021-12-05'),(39,16,18,'2022-06-19'),(40,107,22,'2021-08-01'),(41,25,16,'2022-06-23'),(42,52,1,'2021-10-25'),(43,107,1,'2022-02-06'),(44,131,5,'2022-06-25'),(45,67,1,'2022-06-08'),(46,174,13,'2022-09-12'),(47,41,49,'2022-01-10'),(48,75,38,'2021-10-12'),(49,134,20,'2021-07-25'),(50,91,2,'2021-10-24'),(51,151,4,'2022-11-16'),(52,119,35,'2022-01-07'),(53,72,34,'2022-12-01'),(54,16,19,'2022-05-29'),(55,130,33,'2022-02-26'),(56,4,37,'2022-05-29'),(57,22,30,'2021-12-08'),(58,159,44,'2022-11-20'),(59,158,18,'2022-08-25'),(60,4,47,'2021-11-14'),(61,21,46,'2021-07-08'),(62,157,42,'2022-12-04'),(63,88,14,'2022-05-27'),(64,197,38,'2022-03-19'),(65,54,29,'2021-11-27'),(66,43,50,'2022-09-02'),(67,182,29,'2022-09-26'),(68,50,40,'2021-11-14'),(69,44,39,'2022-04-01'),(70,25,44,'2021-11-29'),(71,168,23,'2022-06-22'),(72,113,47,'2021-12-24'),(73,33,37,'2022-11-02'),(74,158,44,'2022-04-10'),(75,30,39,'2022-08-17'),(76,155,5,'2021-09-16'),(77,139,15,'2022-06-06'),(78,23,41,'2022-07-08'),(79,176,13,'2021-11-26'),(80,41,35,'2022-05-14'),(81,154,10,'2021-12-16'),(82,123,45,'2021-12-29'),(83,140,21,'2022-01-29'),(84,137,39,'2022-09-22'),(85,24,28,'2022-03-20'),(86,199,33,'2021-09-01'),(87,197,44,'2022-07-04'),(88,33,12,'2022-02-14'),(89,23,43,'2021-11-05'),(90,164,39,'2022-07-21'),(91,189,24,'2021-08-21'),(92,162,34,'2022-04-14'),(93,152,48,'2022-08-16'),(94,110,44,'2022-10-12'),(95,84,26,'2021-11-08'),(96,8,21,'2021-12-08'),(97,34,41,'2021-07-30'),(98,103,3,'2022-05-21'),(99,13,20,'2022-09-23'),(100,123,17,'2022-07-03'),(101,117,44,'2022-11-09'),(102,49,34,'2021-10-19'),(103,85,38,'2022-04-12'),(104,105,21,'2021-06-28'),(105,118,48,'2021-07-14'),(106,139,35,'2021-11-16'),(107,39,22,'2022-09-20'),(108,139,35,'2022-09-01'),(109,13,32,'2022-10-01'),(110,137,13,'2021-12-07'),(111,104,13,'2022-10-24'),(112,128,19,'2021-07-11'),(113,97,19,'2021-11-15'),(114,109,18,'2022-06-08'),(115,93,36,'2021-09-18'),(116,75,42,'2021-09-14'),(117,196,29,'2022-06-05'),(118,2,5,'2022-12-15'),(119,63,25,'2022-10-23'),(120,142,12,'2021-07-23'),(121,88,23,'2021-07-22'),(122,27,31,'2021-07-21'),(123,19,50,'2022-11-04'),(124,128,41,'2021-09-25'),(125,143,19,'2021-08-21'),(126,21,47,'2022-08-14'),(127,63,8,'2021-08-14'),(128,62,29,'2022-11-24'),(129,12,33,'2021-07-08'),(130,35,9,'2021-07-29'),(131,178,3,'2022-05-22'),(132,192,15,'2021-12-13'),(133,37,14,'2022-01-09'),(134,20,38,'2022-07-25'),(135,3,12,'2021-11-16'),(136,105,27,'2021-12-10'),(137,53,6,'2022-09-02'),(138,171,3,'2022-04-04'),(139,96,41,'2022-04-16'),(140,196,13,'2022-06-20'),(141,164,21,'2022-06-21'),(142,156,21,'2021-12-26'),(143,73,17,'2022-01-15'),(144,75,8,'2022-01-12'),(145,32,11,'2022-03-01'),(146,145,13,'2021-07-03'),(147,110,8,'2021-09-20'),(148,85,17,'2022-09-11'),(149,199,12,'2022-06-27'),(150,11,13,'2021-10-30'),(151,83,34,'2022-08-02'),(152,117,13,'2022-09-17'),(153,89,26,'2021-12-01'),(154,137,22,'2021-10-10'),(155,30,8,'2022-05-30'),(156,194,37,'2022-09-11'),(157,181,30,'2022-07-24'),(158,163,41,'2021-08-31'),(159,70,15,'2022-04-24'),(160,121,12,'2021-07-05'),(161,92,36,'2022-06-12'),(162,4,40,'2022-12-05'),(163,97,2,'2022-03-25'),(164,8,37,'2022-10-08'),(165,180,6,'2021-06-24'),(166,53,2,'2021-12-05'),(167,1,17,'2021-11-29'),(168,153,4,'2022-01-21'),(169,121,10,'2021-12-22'),(170,159,11,'2022-09-06'),(171,145,23,'2022-08-21'),(172,18,20,'2022-12-13'),(173,78,9,'2022-10-08'),(174,31,23,'2022-08-02'),(175,98,33,'2022-11-04'),(176,148,13,'2021-10-28'),(177,83,46,'2021-07-30'),(178,96,24,'2021-10-21'),(179,46,4,'2022-01-27'),(180,183,40,'2022-05-12'),(181,100,28,'2022-10-10'),(182,104,32,'2021-11-10'),(183,139,46,'2022-04-17'),(184,2,18,'2022-09-11'),(185,94,10,'2022-01-04'),(186,155,46,'2022-04-06'),(187,60,45,'2022-11-24'),(188,33,31,'2021-09-22'),(189,165,42,'2022-11-27'),(190,177,12,'2021-11-18'),(191,16,28,'2022-05-13'),(192,46,34,'2022-04-01'),(193,157,45,'2021-12-30'),(194,85,11,'2022-10-05'),(195,73,27,'2022-02-10'),(196,76,37,'2021-10-07'),(197,169,38,'2022-01-05'),(198,43,43,'2022-02-26'),(199,194,14,'2021-09-27'),(200,14,35,'2022-04-09');
/*!40000 ALTER TABLE `COMPRAS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_new_compras` AFTER INSERT ON `compras` FOR EACH ROW INSERT INTO `nuevas_compras`(compra_id, trabajador_proveedor_id, empleado_id,fecha) VALUES (NEW.compra_id, NEW.trabajador_proveedor_id, NEW.empleado_id,NEW.fecha) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_compra_aud` AFTER INSERT ON `compras` FOR EACH ROW INSERT INTO `registro_compras`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('compras', NEW.compra_id, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_compra_aud` BEFORE UPDATE ON `compras` FOR EACH ROW UPDATE `registro_compras` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER()
WHERE entity_id = OLD.compra_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `COMPRAS_DETALLADAS`
--

DROP TABLE IF EXISTS `COMPRAS_DETALLADAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPRAS_DETALLADAS` (
  `compra_detallada_id` int NOT NULL AUTO_INCREMENT,
  `compra_id` int NOT NULL,
  `material_id` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`compra_detallada_id`),
  KEY `compra_id` (`compra_id`),
  KEY `material_id` (`material_id`),
  CONSTRAINT `compras_detalladas_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `COMPRAS` (`compra_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `compras_detalladas_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `MATERIALES` (`material_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPRAS_DETALLADAS`
--

LOCK TABLES `COMPRAS_DETALLADAS` WRITE;
/*!40000 ALTER TABLE `COMPRAS_DETALLADAS` DISABLE KEYS */;
INSERT INTO `COMPRAS_DETALLADAS` VALUES (1,134,114,7),(2,107,153,10),(3,27,190,2),(4,7,136,5),(5,34,75,13),(6,63,191,7),(7,35,47,4),(8,33,103,14),(9,128,182,12),(10,99,35,10),(11,107,133,15),(12,9,192,13),(13,130,79,2),(14,34,86,11),(15,154,62,7),(16,118,139,12),(17,98,77,8),(18,36,154,14),(19,120,102,4),(20,62,72,6),(21,44,40,9),(22,13,60,3),(23,63,124,7),(24,94,167,14),(25,110,165,1),(26,139,130,5),(27,109,122,5),(28,56,160,13),(29,153,162,7),(30,176,157,10),(31,26,59,12),(32,60,125,12),(33,96,112,15),(34,134,26,15),(35,63,85,15),(36,150,144,6),(37,11,5,7),(38,37,138,7),(39,108,42,14),(40,26,29,10),(41,60,91,15),(42,176,112,6),(43,59,16,6),(44,118,151,11),(45,152,120,8),(46,52,52,3),(47,50,174,9),(48,73,166,14),(49,37,8,15),(50,83,20,14),(51,139,190,9),(52,82,9,9),(53,33,44,13),(54,113,6,3),(55,38,14,11),(56,2,108,10),(57,190,90,7),(58,140,112,10),(59,200,173,11),(60,146,53,8),(61,199,19,15),(62,52,142,3),(63,121,20,6),(64,197,40,14),(65,108,132,7),(66,93,96,6),(67,10,49,15),(68,7,13,3),(69,118,21,6),(70,84,33,4),(71,200,169,8),(72,162,98,1),(73,128,165,10),(74,180,121,13),(75,162,161,2),(76,196,182,14),(77,108,1,7),(78,154,130,13),(79,151,157,13),(80,199,93,3),(81,115,162,2),(82,1,17,12),(83,157,106,8),(84,36,146,4),(85,19,96,6),(86,120,121,4),(87,67,189,5),(88,127,138,6),(89,66,185,5),(90,22,11,2),(91,65,142,9),(92,16,111,15),(93,170,136,12),(94,63,125,4),(95,66,1,3),(96,88,145,10),(97,165,31,15),(98,80,13,5),(99,8,84,6),(100,114,41,3),(101,53,24,14),(102,147,183,8),(103,61,28,3),(104,102,129,6),(105,16,111,15),(106,155,147,13),(107,178,148,12),(108,124,151,14),(109,68,43,13),(110,22,19,7),(111,133,6,3),(112,137,105,6),(113,84,1,1),(114,200,162,12),(115,89,69,11),(116,155,123,9),(117,99,100,2),(118,43,79,13),(119,115,81,1),(120,72,144,6),(121,119,178,1),(122,124,41,12),(123,159,153,9),(124,106,168,1),(125,130,174,5),(126,116,183,8),(127,73,58,5),(128,196,13,5),(129,34,116,9),(130,82,80,4),(131,121,108,12),(132,97,124,13),(133,38,86,14),(134,12,161,8),(135,64,27,10),(136,22,107,5),(137,41,83,2),(138,76,180,10),(139,84,15,13),(140,9,66,6),(141,191,53,8),(142,62,133,9),(143,33,143,10),(144,109,166,4),(145,24,120,10),(146,87,145,15),(147,56,131,12),(148,166,145,14),(149,101,139,2),(150,195,98,8),(151,78,40,12),(152,143,53,10),(153,65,140,2),(154,128,63,6),(155,102,14,5),(156,9,85,2),(157,52,160,3),(158,99,115,6),(159,180,44,11),(160,134,157,5),(161,128,32,4),(162,108,157,11),(163,114,103,13),(164,50,26,2),(165,101,187,5),(166,131,70,14),(167,111,154,5),(168,43,111,2),(169,1,6,12),(170,193,2,9),(171,4,142,1),(172,33,113,10),(173,147,182,9),(174,162,160,5),(175,32,107,2),(176,11,1,8),(177,195,183,10),(178,37,36,8),(179,107,171,11),(180,67,118,10),(181,22,131,5),(182,178,193,6),(183,75,169,14),(184,54,187,6),(185,88,70,2),(186,44,156,5),(187,200,14,10),(188,39,125,9),(189,94,165,8),(190,64,193,12),(191,2,121,10),(192,34,176,6),(193,80,80,15),(194,143,157,5),(195,82,185,4),(196,106,57,12),(197,75,189,11),(198,21,94,9),(199,51,31,15),(200,198,184,12),(201,4,97,1),(202,74,93,12),(203,61,181,8),(204,87,173,9),(205,115,169,14),(206,24,65,3),(207,59,109,4),(208,182,134,10),(209,172,47,13),(210,37,75,2),(211,123,8,1),(212,16,13,10),(213,156,17,15),(214,19,157,14),(215,120,72,11),(216,162,29,3),(217,142,156,15),(218,154,59,4),(219,75,146,5),(220,41,2,7),(221,34,89,4),(222,38,167,3),(223,176,139,11),(224,19,68,5),(225,149,88,10),(226,139,149,15),(227,51,145,15),(228,71,41,7),(229,86,26,15),(230,36,89,10),(231,33,107,9),(232,144,75,7),(233,2,107,1),(234,142,89,7),(235,196,64,15),(236,183,65,10),(237,10,191,4),(238,82,155,15),(239,87,146,12),(240,56,16,5),(241,101,59,5),(242,177,127,12),(243,166,105,10),(244,170,141,14),(245,38,39,9),(246,79,117,9),(247,113,93,15),(248,185,175,4),(249,29,11,9),(250,146,51,2),(251,32,85,10),(252,192,9,5),(253,96,101,11),(254,27,106,1),(255,16,97,7),(256,104,78,8),(257,136,167,15),(258,19,1,8),(259,185,191,1),(260,158,94,7),(261,61,189,8),(262,56,175,1),(263,142,142,12),(264,122,64,5),(265,159,90,15),(266,63,143,2),(267,141,183,12),(268,142,51,13),(269,43,180,8),(270,57,114,1),(271,131,10,3),(272,107,148,2),(273,80,164,1),(274,37,50,3),(275,6,22,14),(276,13,34,10),(277,4,84,13),(278,12,71,14),(279,37,159,14),(280,139,154,3),(281,101,9,8),(282,199,131,4),(283,124,45,12),(284,187,22,5),(285,62,165,4),(286,20,161,15),(287,98,167,7),(288,90,115,6),(289,200,19,14),(290,130,151,7),(291,173,133,4),(292,116,1,13),(293,8,4,6),(294,200,20,4),(295,138,187,9),(296,4,101,8),(297,164,161,3),(298,68,184,14),(299,2,101,11),(300,101,31,11),(301,130,141,13),(302,111,179,12),(303,81,64,15),(304,114,64,14),(305,144,12,11),(306,140,99,1),(307,124,134,15),(308,123,52,15),(309,79,126,12),(310,77,15,15),(311,39,2,11),(312,182,85,15),(313,13,12,4),(314,55,76,10),(315,89,16,13),(316,21,174,3),(317,94,185,15),(318,48,97,14),(319,143,42,6),(320,179,112,1),(321,134,90,9),(322,183,70,7),(323,185,135,1),(324,153,164,11),(325,118,178,1),(326,123,96,8),(327,182,188,15),(328,76,87,1),(329,133,87,1),(330,147,177,3),(331,25,189,6),(332,51,68,12),(333,11,62,7),(334,125,164,2),(335,171,167,2),(336,159,4,15),(337,30,95,15),(338,11,61,6),(339,199,117,2),(340,165,59,15),(341,110,98,9),(342,193,175,4),(343,106,28,14),(344,12,146,12),(345,76,26,1),(346,101,17,9),(347,180,38,9),(348,192,90,9),(349,9,122,12),(350,50,153,11),(351,48,145,10),(352,45,178,10),(353,141,43,15),(354,160,73,8),(355,153,186,8),(356,80,60,2),(357,195,37,3),(358,2,137,2),(359,122,143,10),(360,50,177,10),(361,114,142,11),(362,85,177,4),(363,103,155,11),(364,179,49,13),(365,29,168,7),(366,70,50,10),(367,168,104,12),(368,27,184,7),(369,88,26,10),(370,86,169,13),(371,63,33,6),(372,101,125,9),(373,58,123,9),(374,176,48,15),(375,198,37,5),(376,106,175,12),(377,101,48,6),(378,197,5,13),(379,27,28,13),(380,79,55,10),(381,153,68,3),(382,137,57,1),(383,154,4,11),(384,131,146,8),(385,189,158,13),(386,9,111,5),(387,92,3,8),(388,48,164,8),(389,64,13,1),(390,193,194,12),(391,184,133,2),(392,140,99,15),(393,200,70,8),(394,145,79,12),(395,3,151,15),(396,149,9,12),(397,104,103,7),(398,158,111,10),(399,48,176,6),(400,130,2,1),(401,38,128,13),(402,160,28,6),(403,53,194,9),(404,119,67,14),(405,186,173,14),(406,165,115,2),(407,197,77,5),(408,26,135,3),(409,162,38,7),(410,179,30,7),(411,181,187,5),(412,188,59,4),(413,3,100,2),(414,100,141,10),(415,170,30,13),(416,62,137,14),(417,102,174,10),(418,7,47,9),(419,103,39,13),(420,42,95,1),(421,129,154,9),(422,113,82,7),(423,124,94,8),(424,160,103,15),(425,10,78,4),(426,55,92,12),(427,112,147,6),(428,10,189,3),(429,39,182,2),(430,29,59,11),(431,114,163,10),(432,69,109,9),(433,120,189,5),(434,37,121,9),(435,159,17,6),(436,189,146,13),(437,156,33,1),(438,39,124,15),(439,183,56,2),(440,189,184,6),(441,37,99,2),(442,53,11,14),(443,135,147,5),(444,188,145,14),(445,183,191,10),(446,183,124,3),(447,194,180,6),(448,175,160,15),(449,121,31,10),(450,88,191,7),(451,153,164,12),(452,34,1,5),(453,71,173,11),(454,157,124,1),(455,15,60,12),(456,36,7,14),(457,146,172,2),(458,32,188,4),(459,136,178,9),(460,188,65,12),(461,37,137,8),(462,149,105,3),(463,21,67,14),(464,177,118,1),(465,11,50,11),(466,63,86,9),(467,14,137,12),(468,8,188,1),(469,20,134,12),(470,127,176,8),(471,147,131,11),(472,39,109,13),(473,86,188,5),(474,29,126,15),(475,179,131,5),(476,33,151,14),(477,64,102,3),(478,39,182,6),(479,192,13,5),(480,109,170,13),(481,57,74,15),(482,193,103,4),(483,144,184,6),(484,60,26,1),(485,30,170,15),(486,136,167,9),(487,97,144,9),(488,139,117,3),(489,51,70,7),(490,15,68,6),(491,155,90,11),(492,57,173,4),(493,195,91,11),(494,50,61,10),(495,111,150,4),(496,95,132,8),(497,167,173,8),(498,16,157,14),(499,44,102,14),(500,19,169,1),(501,56,65,14),(502,92,89,9),(503,37,69,8),(504,189,29,1),(505,17,130,11),(506,19,149,3),(507,135,39,4),(508,42,173,9),(509,133,77,4),(510,82,172,13),(511,148,67,13),(512,19,80,7),(513,133,74,6),(514,57,49,5),(515,173,76,4),(516,139,58,13),(517,14,114,11),(518,125,172,11),(519,190,56,7),(520,22,35,3),(521,89,28,12),(522,186,87,15),(523,93,122,9),(524,200,164,13),(525,191,151,6),(526,8,108,14),(527,139,73,8),(528,176,66,8),(529,91,134,7),(530,104,172,7),(531,199,194,10),(532,122,81,7),(533,30,61,1),(534,20,86,11),(535,171,29,10),(536,197,76,8),(537,117,42,14),(538,74,82,8),(539,37,80,9),(540,29,52,13),(541,178,21,11),(542,7,161,10),(543,153,49,1),(544,60,61,9),(545,113,13,8),(546,179,83,13),(547,172,85,15),(548,43,169,10),(549,121,112,2),(550,98,134,9),(551,117,54,4),(552,118,135,3),(553,12,89,3),(554,159,83,10),(555,85,86,8),(556,24,54,2),(557,154,150,6),(558,186,113,1),(559,195,62,14),(560,77,40,4),(561,118,10,4),(562,133,48,4),(563,153,114,13),(564,140,142,13),(565,184,123,7),(566,28,62,7),(567,56,122,14),(568,89,75,5),(569,78,95,14),(570,184,66,7),(571,131,125,1),(572,61,42,7),(573,2,155,7),(574,143,72,15),(575,120,74,8),(576,121,116,4),(577,199,82,5),(578,137,59,5),(579,196,94,6),(580,26,43,14),(581,7,19,6),(582,196,121,11),(583,68,116,14),(584,195,158,10),(585,30,119,6),(586,66,191,8),(587,37,71,13),(588,44,150,1),(589,46,173,12),(590,34,45,1),(591,60,20,11),(592,132,124,2),(593,134,85,8),(594,37,158,13),(595,15,163,2),(596,131,132,5),(597,164,14,14),(598,81,29,6),(599,192,38,2),(600,119,12,4),(601,21,22,12),(602,92,107,6),(603,71,63,10),(604,124,28,2),(605,75,126,7),(606,101,63,4),(607,168,53,7),(608,182,190,7),(609,108,99,9),(610,95,73,15),(611,178,188,10),(612,127,101,8),(613,63,84,15),(614,104,73,11),(615,34,171,3),(616,179,139,4),(617,123,104,15),(618,142,7,7),(619,134,47,10),(620,83,86,8),(621,55,67,1),(622,134,160,4),(623,57,129,5),(624,53,3,9),(625,28,172,6),(626,157,85,7),(627,187,138,12),(628,63,63,15),(629,25,122,7),(630,20,180,14),(631,179,27,11),(632,66,168,14),(633,181,194,5),(634,150,81,8),(635,191,13,15),(636,157,78,15),(637,78,4,13),(638,61,77,12),(639,145,6,14),(640,68,76,11),(641,176,88,15),(642,27,157,3),(643,27,126,1),(644,190,144,3),(645,130,158,15),(646,92,53,12),(647,75,117,1),(648,59,21,11),(649,79,165,4),(650,142,120,11),(651,108,162,4),(652,4,28,4),(653,94,154,4),(654,27,113,2),(655,80,66,12),(656,200,182,7),(657,68,189,14),(658,73,57,10),(659,16,120,1),(660,63,62,13),(661,193,31,15),(662,92,140,3),(663,41,128,3),(664,34,97,3),(665,59,119,7),(666,139,160,9),(667,9,38,13),(668,158,73,1),(669,74,123,15),(670,24,122,5),(671,139,176,11),(672,26,117,14),(673,23,53,7),(674,134,2,12),(675,8,158,8),(676,185,182,14),(677,92,165,1),(678,199,57,8),(679,70,38,8),(680,10,115,3),(681,182,47,5),(682,180,33,11),(683,93,52,15),(684,72,17,1),(685,143,103,1),(686,162,15,3),(687,78,192,8),(688,113,33,14),(689,174,46,12),(690,44,135,12),(691,45,129,9),(692,68,92,11),(693,35,72,11),(694,57,1,4),(695,31,145,1),(696,59,180,13),(697,175,73,6),(698,153,173,5),(699,43,23,10),(700,108,171,6),(701,2,82,3),(702,1,70,13),(703,159,12,3),(704,24,169,12),(705,99,85,3),(706,102,184,4),(707,107,15,1),(708,55,8,1),(709,75,42,10),(710,189,122,2),(711,113,134,11),(712,176,118,5),(713,85,38,6),(714,141,75,1),(715,119,64,11),(716,36,161,13),(717,140,38,13),(718,43,22,7),(719,78,86,5),(720,75,63,8),(721,127,78,15),(722,84,128,6),(723,73,85,6),(724,59,85,8),(725,190,114,14),(726,149,42,3),(727,90,154,5),(728,110,108,13),(729,29,179,7),(730,184,95,8),(731,48,150,6),(732,129,176,2),(733,191,28,4),(734,192,74,8),(735,38,96,7),(736,103,60,6),(737,40,4,5),(738,175,139,9),(739,39,69,8),(740,132,93,12),(741,177,28,4),(742,150,132,6),(743,185,191,4),(744,131,63,5),(745,29,92,7),(746,87,86,13),(747,28,95,14),(748,143,86,11),(749,65,91,1),(750,198,102,5),(751,184,55,6),(752,23,129,9),(753,70,43,9),(754,75,114,6),(755,145,4,1),(756,6,63,11),(757,26,61,8),(758,171,156,9),(759,68,150,1),(760,119,189,1),(761,129,161,5),(762,80,127,15),(763,4,61,9),(764,81,194,10),(765,141,91,1),(766,128,47,4),(767,30,108,7),(768,129,66,10),(769,4,103,12),(770,157,6,4),(771,130,115,11),(772,135,21,10),(773,7,153,6),(774,53,163,2),(775,104,91,14),(776,141,9,12),(777,6,82,7),(778,82,34,14),(779,74,132,4),(780,180,163,3),(781,144,160,1),(782,39,25,7),(783,169,96,6),(784,162,174,4),(785,167,94,12),(786,30,164,3),(787,154,150,12),(788,24,102,4),(789,22,179,10),(790,80,2,12),(791,170,39,2),(792,184,187,13),(793,15,15,15),(794,107,95,3),(795,180,10,6),(796,74,138,15),(797,114,99,5),(798,22,89,8),(799,102,75,3),(800,183,163,14),(801,40,107,8),(802,178,131,15),(803,41,96,1),(804,176,140,2),(805,4,68,6),(806,59,102,9),(807,66,176,5),(808,28,177,15),(809,148,48,8),(810,69,150,10),(811,61,119,11),(812,55,68,6),(813,41,113,14),(814,52,94,11),(815,150,115,2),(816,94,169,9),(817,6,129,3),(818,140,118,1),(819,99,51,11),(820,121,32,7),(821,115,104,4),(822,127,100,15),(823,17,161,11),(824,161,110,2),(825,188,49,14),(826,40,34,12),(827,131,120,5),(828,72,53,13),(829,18,120,1),(830,163,45,6),(831,162,132,7),(832,147,98,9),(833,194,4,11),(834,128,117,6),(835,55,56,5),(836,1,172,11),(837,152,61,10),(838,91,33,9),(839,47,14,4),(840,190,118,14),(841,194,57,13),(842,87,176,5),(843,195,11,12),(844,113,42,1),(845,151,162,6),(846,33,146,7),(847,65,85,8),(848,2,1,12),(849,76,104,7),(850,190,41,9),(851,176,135,5),(852,131,101,12),(853,12,50,13),(854,123,128,1),(855,74,71,4),(856,141,145,4),(857,188,7,7),(858,121,45,12),(859,128,20,14),(860,18,115,14),(861,124,51,2),(862,66,122,5),(863,129,9,6),(864,103,18,6),(865,9,85,6),(866,25,156,13),(867,194,57,12),(868,125,10,1),(869,102,101,9),(870,99,84,2),(871,67,141,12),(872,119,88,12),(873,80,110,15),(874,69,125,12),(875,32,37,5),(876,97,112,11),(877,138,22,13),(878,29,89,7),(879,43,142,1),(880,105,35,10),(881,171,174,1),(882,146,68,13),(883,180,29,6),(884,183,38,15),(885,53,22,13),(886,165,146,4),(887,176,153,8),(888,94,124,8),(889,74,37,7),(890,44,34,3),(891,68,126,1),(892,128,84,7),(893,42,95,14),(894,140,172,11),(895,124,44,9),(896,88,148,7),(897,155,119,3),(898,47,27,5),(899,14,185,13),(900,152,3,2),(901,134,68,3),(902,174,98,1),(903,178,18,5),(904,86,183,9),(905,182,170,8),(906,79,189,14),(907,18,51,1),(908,184,112,11),(909,42,92,1),(910,193,68,10),(911,17,15,6),(912,103,40,8),(913,30,73,9),(914,164,191,11),(915,49,48,12),(916,125,70,15),(917,181,105,6),(918,32,173,14),(919,115,156,7),(920,97,52,11),(921,184,170,14),(922,20,128,8),(923,55,177,2),(924,151,49,11),(925,104,141,13),(926,9,146,9),(927,2,26,14),(928,157,180,8),(929,3,33,14),(930,25,73,6),(931,131,89,15),(932,163,182,12),(933,184,192,1),(934,167,33,5),(935,138,78,15),(936,140,140,3),(937,35,54,5),(938,75,128,11),(939,23,129,10),(940,111,165,5),(941,95,179,12),(942,132,108,14),(943,115,44,9),(944,41,48,11),(945,142,188,5),(946,19,137,11),(947,194,169,14),(948,92,164,5),(949,60,82,11),(950,195,168,6),(951,46,90,13),(952,114,161,12),(953,41,183,11),(954,160,191,9),(955,22,124,4),(956,107,16,7),(957,35,9,12),(958,78,128,8),(959,149,165,12),(960,181,167,12),(961,147,161,9),(962,119,60,8),(963,57,70,7),(964,116,121,9),(965,59,24,6),(966,80,85,8),(967,186,121,2),(968,134,135,5),(969,23,134,8),(970,112,169,15),(971,69,33,8),(972,180,83,8),(973,123,170,12),(974,51,85,4),(975,171,192,1),(976,89,2,1),(977,55,163,7),(978,153,122,12),(979,132,34,1),(980,86,143,1),(981,20,75,7),(982,128,117,8),(983,6,60,15),(984,69,116,13),(985,80,107,3),(986,26,18,14),(987,126,163,8),(988,200,80,9),(989,164,58,15),(990,127,133,7),(991,42,53,5),(992,37,101,8),(993,157,167,13),(994,45,75,4),(995,59,186,9),(996,130,63,13),(997,98,86,9),(998,166,59,13),(999,161,98,2),(1000,120,2,3),(1001,3,4,55);
/*!40000 ALTER TABLE `COMPRAS_DETALLADAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `compras_detalladas_extendidas`
--

DROP TABLE IF EXISTS `compras_detalladas_extendidas`;
/*!50001 DROP VIEW IF EXISTS `compras_detalladas_extendidas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `compras_detalladas_extendidas` AS SELECT 
 1 AS `compra_id`,
 1 AS `nombre`,
 1 AS `precio`,
 1 AS `cantidad`,
 1 AS `Total`,
 1 AS `fecha`,
 1 AS `Nombre_Trabajador_Proveedor`,
 1 AS `Nombre_Empleado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `EMPLEADOS`
--

DROP TABLE IF EXISTS `EMPLEADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLEADOS` (
  `empleado_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `identificacion_nacional` varchar(255) NOT NULL,
  `area_id` int NOT NULL,
  PRIMARY KEY (`empleado_id`),
  UNIQUE KEY `identificacion_nacional` (`identificacion_nacional`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `AREAS` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADOS`
--

LOCK TABLES `EMPLEADOS` WRITE;
/*!40000 ALTER TABLE `EMPLEADOS` DISABLE KEYS */;
INSERT INTO `EMPLEADOS` VALUES (1,'Berky','Dionisetto',33,'Male','1828252859',3),(2,'Demetris','Stain',30,'Female','0905350464',4),(3,'Nye','Josephi',65,'Male','2462693424',4),(4,'Nevin','Nash',31,'Male','2574670817',5),(5,'Putnam','Roussel',21,'Male','0305776150',3),(6,'Rudie','Yallop',36,'Male','3940501395',6),(7,'Charlotte','Brosh',50,'Female','5792620989',4),(8,'Othilie','Forster',48,'Female','5401088345',3),(9,'Monte','Coventry',46,'Male','0994009453',3),(10,'Augustin','Ivakhno',50,'Male','5082921436',4),(11,'Cly','Ife',22,'Male','2443216020',2),(12,'Uriel','McEttigen',60,'Male','6291570114',1),(13,'Chiquita','Joye',39,'Female','8241200188',7),(14,'Emelyne','Munroe',60,'Female','8687843380',5),(15,'Carrol','Camblin',26,'Male','5184463046',1),(16,'Andrej','Pellington',46,'Male','4536741402',1),(17,'Lorry','Ritmeier',47,'Male','9520079408',6),(18,'Barnabas','Hughill',49,'Male','9286759207',6),(19,'Saunderson','Stalf',36,'Male','7063222724',7),(20,'Sharona','Gallaher',19,'Female','5734597635',2),(21,'Allistir','Weakley',33,'Male','5821768624',4),(22,'Nicky','Kingdon',56,'Female','3928497871',4),(23,'Freddie','Cruddace',37,'Female','0235977322',7),(24,'Leland','Aisbett',29,'Female','5767718210',5),(25,'Nissa','Schall',52,'Female','9812909907',1),(26,'Darrell','Errol',56,'Male','3444399499',4),(27,'Hetti','Mullally',59,'Female','0850405963',3),(28,'Bobine','MacCaughan',58,'Female','6905080810',4),(29,'Abbey','McDougald',22,'Male','7203635414',4),(30,'Alleyn','Fairhead',37,'Male','0276353196',4),(31,'Ferrell','Alpe',38,'Male','0915771640',2),(32,'Adan','Dommett',56,'Male','5538317951',2),(33,'Philippe','Petyakov',62,'Female','1523905913',4),(34,'Emily','Kelberman',20,'Female','1523475463',2),(35,'Saul','Phillot',65,'Male','4679986638',7),(36,'Tine','Labone',20,'Female','1289841500',3),(37,'Hort','Bench',24,'Male','2575986060',7),(38,'Harv','Inglesant',38,'Male','2411331282',3),(39,'Gilberto','Lattka',20,'Male','6269134862',6),(40,'Duff','Goburn',59,'Male','9729548803',2),(41,'Edmund','Staddart',39,'Male','0100378412',2),(42,'Elianore','Shortell',61,'Female','6963269009',3),(43,'Pearle','Szimon',43,'Female','8549998036',6),(44,'Pierson','Corkell',56,'Male','1832136736',3),(45,'Reg','Gahan',56,'Male','6692904722',4),(46,'Fania','Gallaway',29,'Female','7580345447',2),(47,'Debby','Jahan',38,'Female','0661721698',1),(48,'Eduino','Costi',24,'Male','9475806806',2),(49,'Milzie','Aaronsohn',44,'Female','0587605596',6),(50,'Camey','Hansemann',39,'Male','9206795740',4);
/*!40000 ALTER TABLE `EMPLEADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPRESAS`
--

DROP TABLE IF EXISTS `EMPRESAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPRESAS` (
  `empresa_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  PRIMARY KEY (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPRESAS`
--

LOCK TABLES `EMPRESAS` WRITE;
/*!40000 ALTER TABLE `EMPRESAS` DISABLE KEYS */;
INSERT INTO `EMPRESAS` VALUES (1,'Thoughtbeat','Thoughtbeat@correo.com','389-543-6086'),(2,'Fivespan','Fivespan@correo.com','336-204-4566'),(3,'Babbleopia','Babbleopia@correo.com','343-143-8538'),(4,'Skaboo','Skaboo@correo.com','533-667-2973'),(5,'Miboo','Miboo@correo.com','680-372-9859'),(6,'Twimm','Twimm@correo.com','771-355-8122'),(7,'Eazzy','Eazzy@correo.com','910-100-3045'),(8,'Tanoodle','Tanoodle@correo.com','418-990-8508'),(9,'Dabjam','Dabjam@correo.com','250-149-7854'),(10,'Skinix','Skinix@correo.com','306-199-2258'),(11,'Shuffledrive','Shuffledrive@correo.com','150-990-8752'),(12,'Skipstorm','Skipstorm@correo.com','502-368-7586'),(13,'Agivu','Agivu@correo.com','422-442-9670'),(14,'Ozu','Ozu@correo.com','814-870-0907'),(15,'Quamba','Quamba@correo.com','531-106-0941'),(16,'Mydo','Mydo@correo.com','700-393-7123'),(17,'Demizz','Demizz@correo.com','400-783-4781'),(18,'Abatz','Abatz@correo.com','999-395-6232'),(19,'Browseblab','Browseblab@correo.com','266-990-1298'),(20,'Oyondu','Oyondu@correo.com','602-212-6150'),(21,'Photofeed','Photofeed@correo.com','319-423-8865'),(22,'Riffpedia','Riffpedia@correo.com','834-742-3620'),(23,'Yakijo','Yakijo@correo.com','941-827-4570'),(24,'Gevee','Gevee@correo.com','620-328-0026'),(25,'Jaxworks','Jaxworks@correo.com','809-963-4897'),(26,'Centidel','Centidel@correo.com','200-534-8144'),(27,'Youfeed','Youfeed@correo.com','672-756-8473'),(28,'Mudo','Mudo@correo.com','494-347-2090'),(29,'Aimbu','Aimbu@correo.com','664-870-8488'),(30,'Avavee','Avavee@correo.com','780-729-8183'),(31,'Twinder','Twinder@correo.com','801-111-2005'),(32,'Photospace','Photospace@correo.com','101-120-5201'),(33,'Photobug','Photobug@correo.com','716-157-6647'),(34,'Flashspan','Flashspan@correo.com','384-994-9373'),(35,'Brightbean','Brightbean@correo.com','357-480-1958'),(36,'Kaymbo','Kaymbo@correo.com','289-313-2533'),(37,'Npath','Npath@correo.com','354-264-6069'),(38,'Realcube','Realcube@correo.com','113-632-7266'),(39,'Jazzy','Jazzy@correo.com','739-767-5167'),(40,'Mymm','Mymm@correo.com','321-158-9940'),(41,'Zoombeat','Zoombeat@correo.com','513-279-7705'),(42,'Eadel','Eadel@correo.com','165-495-7147'),(43,'Talane','Talane@correo.com','770-719-3415'),(44,'Aivee','Aivee@correo.com','688-922-2184'),(45,'Realblab','Realblab@correo.com','142-591-2249'),(46,'Zoomdog','Zoomdog@correo.com','680-847-4902'),(47,'Aimbo','Aimbo@correo.com','655-271-2392'),(48,'Fivebridge','Fivebridge@correo.com','200-286-5505'),(49,'Buzzbean','Buzzbean@correo.com','493-891-4411'),(50,'Zoomlounge','Zoomlounge@correo.com','138-736-8576'),(51,'Tagcat','Tagcat@correo.com','411-344-4478'),(52,'Divavu','Divavu@correo.com','430-498-6995'),(53,'Meeveo','Meeveo@correo.com','507-378-7599'),(54,'Wordware','Wordware@correo.com','305-616-3145'),(55,'Meezzy','Meezzy@correo.com','759-771-3149'),(56,'Fivechat','Fivechat@correo.com','509-611-3061'),(57,'Devpoint','Devpoint@correo.com','529-249-7913'),(58,'Voonder','Voonder@correo.com','351-461-4182'),(59,'Meejo','Meejo@correo.com','917-448-6182'),(60,'Layo','Layo@correo.com','602-700-6147'),(61,'Geba','Geba@correo.com','777-276-5393'),(62,'Teklist','Teklist@correo.com','663-393-0472'),(63,'Browsetype','Browsetype@correo.com','625-308-8475'),(64,'Jabbercube','Jabbercube@correo.com','464-227-0422'),(65,'Minyx','Minyx@correo.com','475-936-6263'),(66,'Tagchat','Tagchat@correo.com','398-338-6008'),(67,'Devbug','Devbug@correo.com','763-921-8190'),(68,'Browsedrive','Browsedrive@correo.com','111-780-1119'),(69,'Skidoo','Skidoo@correo.com','514-785-9476'),(70,'Dynazzy','Dynazzy@correo.com','789-144-5615'),(71,'Gabspot','Gabspot@correo.com','949-235-5648'),(72,'Leenti','Leenti@correo.com','622-355-1803'),(73,'Wikizz','Wikizz@correo.com','473-641-6372'),(74,'Topdrive','Topdrive@correo.com','462-824-4458'),(75,'Twimbo','Twimbo@correo.com','445-382-3479'),(76,'Twitterbeat','Twitterbeat@correo.com','313-684-3731'),(77,'Shuffletag','Shuffletag@correo.com','907-658-5980'),(78,'Skyba','Skyba@correo.com','114-438-9839'),(79,'JumpXS','JumpXS@correo.com','954-165-8354'),(80,'Mycat','Mycat@correo.com','600-279-0184'),(81,'Janyx','Janyx@correo.com','184-828-8508'),(82,'Demimbu','Demimbu@correo.com','347-947-3763'),(83,'Avamba','Avamba@correo.com','595-404-9361'),(84,'Avaveo','Avaveo@correo.com','229-941-8844'),(85,'Izio','Izio@correo.com','580-403-3041'),(86,'Edgewire','Edgewire@correo.com','319-315-1185'),(87,'Thoughtblab','Thoughtblab@correo.com','714-745-7931'),(88,'Realpoint','Realpoint@correo.com','535-220-4603'),(89,'Bubbletube','Bubbletube@correo.com','121-915-4958'),(90,'Meetz','Meetz@correo.com','497-394-8800'),(91,'Thoughtstorm','Thoughtstorm@correo.com','609-918-5275'),(92,'Tekfly','Tekfly@correo.com','600-310-4946'),(93,'Realbridge','Realbridge@correo.com','180-426-3106'),(94,'Kazu','Kazu@correo.com','201-546-9504'),(95,'Yambee','Yambee@correo.com','993-394-9049'),(96,'Zazio','Zazio@correo.com','696-369-1723'),(97,'Digitube','Digitube@correo.com','265-153-7672'),(98,'Fatz','Fatz@correo.com','865-837-0803'),(99,'Roodel','Roodel@correo.com','139-723-6453'),(100,'Devcast','Devcast@correo.com','215-974-8695'),(101,'Riffwire','Riffwire@correo.com','890-344-8471'),(102,'Skivee','Skivee@correo.com','759-178-8700'),(103,'Brainsphere','Brainsphere@correo.com','980-578-2067'),(104,'Eidel','Eidel@correo.com','240-214-7481'),(105,'Zoomcast','Zoomcast@correo.com','830-756-9325'),(106,'Quimba','Quimba@correo.com','619-847-5170'),(107,'Topicstorm','Topicstorm@correo.com','514-526-2026'),(108,'Linkbridge','Linkbridge@correo.com','102-291-1794'),(109,'Edgetag','Edgetag@correo.com','154-265-1063'),(110,'Yoveo','Yoveo@correo.com','770-468-3312'),(111,'Demivee','Demivee@correo.com','539-965-5540'),(112,'Gigaclub','Gigaclub@correo.com','270-940-4232'),(113,'Flashset','Flashset@correo.com','839-334-0080'),(114,'Livepath','Livepath@correo.com','996-285-8332'),(115,'Bluezoom','Bluezoom@correo.com','146-952-5436'),(116,'Wordtune','Wordtune@correo.com','704-115-6717'),(117,'Devpulse','Devpulse@correo.com','919-234-9652'),(118,'Skiptube','Skiptube@correo.com','882-282-4494'),(119,'Thoughtmix','Thoughtmix@correo.com','230-378-6250'),(120,'Dynabox','Dynabox@correo.com','210-539-6663'),(121,'Topicblab','Topicblab@correo.com','587-264-9716'),(122,'Eayo','Eayo@correo.com','813-713-5816'),(123,'Dazzlesphere','Dazzlesphere@correo.com','756-702-8564'),(124,'Livetube','Livetube@correo.com','838-334-0156'),(125,'Vipe','Vipe@correo.com','300-177-2374'),(126,'Plajo','Plajo@correo.com','308-524-3901'),(127,'Buzzdog','Buzzdog@correo.com','658-510-2952'),(128,'Edgeclub','Edgeclub@correo.com','834-840-8904'),(129,'Zooveo','Zooveo@correo.com','372-107-8931'),(130,'Kazio','Kazio@correo.com','904-100-6063'),(131,'Wikido','Wikido@correo.com','665-784-8253'),(132,'Dabvine','Dabvine@correo.com','790-207-9335'),(133,'Jabberstorm','Jabberstorm@correo.com','255-679-9329'),(134,'Brightdog','Brightdog@correo.com','202-747-9149'),(135,'Meemm','Meemm@correo.com','934-650-3622'),(136,'Browsecat','Browsecat@correo.com','708-679-1168'),(137,'Voolith','Voolith@correo.com','109-389-1524'),(138,'Feedfire','Feedfire@correo.com','762-544-3836'),(139,'Livefish','Livefish@correo.com','421-322-2041'),(140,'Divanoodle','Divanoodle@correo.com','940-456-2475'),(141,'Voonte','Voonte@correo.com','872-102-3574'),(142,'Rhybox','Rhybox@correo.com','588-267-5203'),(143,'Zoozzy','Zoozzy@correo.com','726-660-2972'),(144,'Kayveo','Kayveo@correo.com','862-895-3765'),(145,'Ailane','Ailane@correo.com','296-336-8784'),(146,'Kwideo','Kwideo@correo.com','793-159-3785'),(147,'Kwimbee','Kwimbee@correo.com','701-773-3654'),(148,'Jaxnation','Jaxnation@correo.com','809-712-7805'),(149,'Meedoo','Meedoo@correo.com','297-351-7218'),(150,'Trupe','Trupe@correo.com','180-422-0439'),(151,'Jamia','Jamia@correo.com','420-290-7606'),(152,'Topiczoom','Topiczoom@correo.com','667-196-5773'),(153,'Twitterwire','Twitterwire@correo.com','854-836-1136'),(154,'Oyoyo','Oyoyo@correo.com','781-923-9750'),(155,'Fiveclub','Fiveclub@correo.com','129-304-8613'),(156,'Trudoo','Trudoo@correo.com','793-679-4731');
/*!40000 ALTER TABLE `EMPRESAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACTURAS_COMPRAS`
--

DROP TABLE IF EXISTS `FACTURAS_COMPRAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FACTURAS_COMPRAS` (
  `factura_id` int NOT NULL AUTO_INCREMENT,
  `numero_factura` int DEFAULT NULL,
  `compra_id` int DEFAULT NULL,
  PRIMARY KEY (`factura_id`),
  UNIQUE KEY `numero_factura` (`numero_factura`),
  KEY `compra_id` (`compra_id`),
  CONSTRAINT `facturas_compras_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `COMPRAS` (`compra_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACTURAS_COMPRAS`
--

LOCK TABLES `FACTURAS_COMPRAS` WRITE;
/*!40000 ALTER TABLE `FACTURAS_COMPRAS` DISABLE KEYS */;
INSERT INTO `FACTURAS_COMPRAS` VALUES (1,153040289,1),(2,564209031,2),(3,96742291,3),(4,144719020,4),(5,959855590,5),(6,605034435,6),(7,436942296,7),(8,108657916,8),(9,872256744,9),(10,421529249,10),(11,887400234,11),(12,565661596,12),(13,515205510,13),(14,285825841,14),(15,447532670,15),(16,776521453,16),(17,195597028,17),(18,94261535,18),(19,920291676,19),(20,745514312,20),(21,570863637,21),(22,72416444,22),(23,838905212,23),(24,524242796,24),(25,57830627,25),(26,572970433,26),(27,463147140,27),(28,915113181,28),(29,902866896,29),(30,968077817,30),(31,937288532,31),(32,414628495,32),(33,837989009,33),(34,471408054,34),(35,292975050,35),(36,710251576,36),(37,179756545,37),(38,711538664,38),(39,303375371,39),(40,659040865,40),(41,597087263,41),(42,254106906,42),(43,455384124,43),(44,513418460,44),(45,647553584,45),(46,209882642,46),(47,977727927,47),(48,315574993,48),(49,818104210,49),(50,552653920,50),(51,399348122,51),(52,45123875,52),(53,742689659,53),(54,383139401,54),(55,666189656,55),(56,619675397,56),(57,899195914,57),(58,26387309,58),(59,373382543,59),(60,200108256,60),(61,413266859,61),(62,57969585,62),(63,406771789,63),(64,61829512,64),(65,640040922,65),(66,491269321,66),(67,872511784,67),(68,252993325,68),(69,928664281,69),(70,632208359,70),(71,949910142,71),(72,139593381,72),(73,825861376,73),(74,832601727,74),(75,175477183,75),(76,757504087,76),(77,643778639,77),(78,600995306,78),(79,925599575,79),(80,242340630,80),(81,305630534,81),(82,956142932,82),(83,775068402,83),(84,744797559,84),(85,109099630,85),(86,617180285,86),(87,440836062,87),(88,744731384,88),(89,452841178,89),(90,983248299,90),(91,11475021,91),(92,152650596,92),(93,935328872,93),(94,976035791,94),(95,820345048,95),(96,100886054,96),(97,226309975,97),(98,643656209,98),(99,937340084,99),(100,288271446,100),(101,70030885,101),(102,704143667,102),(103,672119578,103),(104,779593430,104),(105,919979333,105),(106,195109324,106),(107,910253201,107),(108,455961702,108),(109,689980840,109),(110,813507401,110),(111,560903147,111),(112,564767934,112),(113,238976444,113),(114,505152282,114),(115,553555534,115),(116,560956157,116),(117,198477636,117),(118,810044058,118),(119,392299163,119),(120,87843171,120),(121,826926700,121),(122,515800668,122),(123,962774352,123),(124,878353504,124),(125,831301839,125),(126,712703169,126),(127,643471568,127),(128,545065845,128),(129,672611064,129),(130,626473741,130),(131,848806219,131),(132,986516850,132),(133,853609549,133),(134,82150794,134),(135,735183880,135),(136,372842705,136),(137,2946129,137),(138,213717100,138),(139,552905345,139),(140,719245407,140),(141,970160656,141),(142,231173976,142),(143,412338919,143),(144,371348806,144),(145,570824107,145),(146,425993732,146),(147,422431158,147),(148,432839577,148),(149,844990376,149),(150,272245294,150),(151,95832315,151),(152,908966541,152),(153,633471870,153),(154,95171035,154),(155,728761895,155),(156,706587001,156),(157,566145889,157),(158,525616624,158),(159,902012077,159),(160,420738517,160),(161,216287092,161),(162,860980643,162),(163,736574978,163),(164,904446225,164),(165,222392588,165),(166,551051411,166),(167,432324916,167),(168,959274898,168),(169,806536203,169),(170,242125825,170),(171,361976639,171),(172,298032723,172),(173,915099939,173),(174,425227760,174),(175,598042532,175),(176,410473173,176),(177,38615708,177),(178,487645583,178),(179,94352111,179),(180,782721189,180),(181,895875112,181),(182,38359108,182),(183,89729527,183),(184,828286782,184),(185,72215041,185),(186,532378398,186),(187,334519220,187),(188,294011400,188),(189,432923011,189),(190,56478057,190),(191,959749159,191),(192,795622203,192),(193,460836976,193),(194,670348068,194),(195,228381240,195),(196,613875831,196),(197,634055393,197),(198,978512855,198),(199,424889172,199),(200,358604974,200);
/*!40000 ALTER TABLE `FACTURAS_COMPRAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACTURAS_VENTAS`
--

DROP TABLE IF EXISTS `FACTURAS_VENTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FACTURAS_VENTAS` (
  `factura_id` int NOT NULL AUTO_INCREMENT,
  `numero_factura` int DEFAULT NULL,
  `venta_id` int DEFAULT NULL,
  PRIMARY KEY (`factura_id`),
  UNIQUE KEY `numero_factura` (`numero_factura`),
  KEY `venta_id` (`venta_id`),
  CONSTRAINT `facturas_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `VENTAS` (`venta_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACTURAS_VENTAS`
--

LOCK TABLES `FACTURAS_VENTAS` WRITE;
/*!40000 ALTER TABLE `FACTURAS_VENTAS` DISABLE KEYS */;
INSERT INTO `FACTURAS_VENTAS` VALUES (1,208927659,1),(2,917155521,2),(3,211343461,3),(4,399348942,4),(5,438400872,5),(6,712414996,6),(7,41729041,7),(8,739999936,8),(9,495951267,9),(10,178471639,10),(11,752204663,11),(12,755370073,12),(13,61606348,13),(14,49002378,14),(15,473646251,15),(16,686547063,16),(17,269713099,17),(18,620662189,18),(19,40221309,19),(20,815344401,20),(21,369556865,21),(22,823409068,22),(23,756824269,23),(24,566415556,24),(25,757569617,25),(26,73714615,26),(27,205586795,27),(28,183608505,28),(29,894359590,29),(30,197261653,30),(31,917611680,31),(32,55606781,32),(33,533735757,33),(34,685114659,34),(35,312931480,35),(36,903405024,36),(37,352275184,37),(38,198511154,38),(39,717431012,39),(40,645501692,40),(41,254555956,41),(42,302554028,42),(43,981477038,43),(44,615410398,44),(45,305095643,45),(46,459750604,46),(47,326150635,47),(48,671993874,48),(49,886246270,49),(50,414290278,50),(51,97587624,51),(52,139207812,52),(53,830090360,53),(54,957590861,54),(55,322471436,55),(56,887638814,56),(57,315425634,57),(58,717194042,58),(59,388906080,59),(60,515962105,60),(61,941976580,61),(62,132961075,62),(63,450695634,63),(64,30095633,64),(65,692877957,65),(66,934008602,66),(67,694158209,67),(68,420630349,68),(69,547167777,69),(70,234910190,70),(71,685725207,71),(72,129076736,72),(73,642446629,73),(74,218970244,74),(75,831329582,75),(76,937771833,76),(77,810035276,77),(78,772757652,78),(79,190786536,79),(80,268443513,80),(81,363128693,81),(82,990501277,82),(83,709014047,83),(84,877548346,84),(85,939507915,85),(86,166365594,86),(87,536959315,87),(88,351466067,88),(89,423571142,89),(90,644305654,90),(91,599177251,91),(92,990564910,92),(93,758319670,93),(94,147484121,94),(95,416167459,95),(96,858410951,96),(97,406591446,97),(98,92298148,98),(99,857377970,99),(100,155124445,100),(101,698525864,101),(102,681739887,102),(103,450101585,103),(104,995978475,104),(105,159017301,105),(106,80911884,106),(107,618478767,107),(108,958620020,108),(109,558883689,109),(110,694939261,110),(111,9321419,111),(112,907420718,112),(113,958131316,113),(114,334467220,114),(115,511084270,115),(116,812754572,116),(117,634669431,117),(118,105785612,118),(119,755229094,119),(120,674730435,120),(121,945079766,121),(122,213992966,122),(123,179891423,123),(124,755147863,124),(125,577268144,125),(126,335165566,126),(127,641149968,127),(128,293452898,128),(129,709901218,129),(130,740552584,130),(131,364196882,131),(132,389077089,132),(133,942578638,133),(134,170023344,134),(135,102824928,135),(136,377284794,136),(137,181655589,137),(138,533739992,138),(139,95164109,139),(140,812657332,140),(141,603325169,141),(142,327210396,142),(143,590789220,143),(144,537796790,144),(145,158937463,145),(146,613390052,146),(147,974366662,147),(148,853046411,148),(149,505957642,149),(150,202427063,150),(151,585183159,151),(152,275502252,152),(153,707224321,153),(154,658552778,154),(155,780911544,155),(156,200377666,156),(157,184862590,157),(158,706522413,158),(159,275264428,159),(160,761568136,160),(161,857339510,161),(162,477985550,162),(163,589665057,163),(164,621372143,164),(165,279212731,165),(166,547280302,166),(167,85317984,167),(168,366043772,168),(169,504033876,169),(170,587662940,170),(171,85121730,171),(172,84139281,172),(173,348751558,173),(174,123704981,174),(175,609418112,175),(176,33476839,176),(177,257738734,177),(178,235913905,178),(179,589686332,179),(180,964337854,180),(181,783442953,181),(182,310847884,182),(183,405461604,183),(184,526477486,184),(185,682448437,185),(186,95561304,186),(187,784001648,187),(188,99298618,188),(189,138744028,189),(190,175311043,190),(191,517599233,191),(192,795383325,192),(193,65694187,193),(194,977395652,194),(195,547510219,195),(196,792569052,196),(197,401297917,197),(198,629370241,198),(199,205091907,199),(200,343832026,200);
/*!40000 ALTER TABLE `FACTURAS_VENTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MATERIALES`
--

DROP TABLE IF EXISTS `MATERIALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MATERIALES` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `proveedor_id` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` int DEFAULT NULL,
  `inventario` int DEFAULT NULL,
  PRIMARY KEY (`material_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `PROVEEDORES` (`proveedor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MATERIALES`
--

LOCK TABLES `MATERIALES` WRITE;
/*!40000 ALTER TABLE `MATERIALES` DISABLE KEYS */;
INSERT INTO `MATERIALES` VALUES (1,16,'Acetaminophen PM Rapid Release',5284,28),(2,43,'Amlodipine Besylate and Benazepril Hydrochloride',7697,90),(3,172,'LEVAQUIN',4758,52),(4,94,'Control Dynamics kit',8485,57),(5,72,'Fluconazole',9470,32),(6,170,'PROVENCE TWO WAY PACT',7466,30),(7,36,'JEUNCELL Hair Loss Prevention and Hair Growth Tonic',5195,55),(8,137,'Mo-Tech',2263,99),(9,57,'Boscia Restorative Day Moisture Broad Spectrum SPF 15 For Dry Skin',4049,32),(10,162,'Hevert Pain Relief',2857,69),(11,105,'Povidone Iodine',6437,94),(12,64,'GEODON',4260,21),(13,161,'Levothyroxine sodium',9613,80),(14,52,'Glycopyrrolate',6423,67),(15,58,'Zicam Cold Remedy',726,40),(16,30,'Original',2272,94),(17,84,'TEMAZEPAM',2308,72),(18,130,'Personal Care',1732,70),(19,181,'Atenolol',9776,56),(20,20,'Scalpicin 2 in 1',3774,40),(21,45,'Tendon Rescue',660,65),(22,15,'Treatment Set TS339184',3205,24),(23,81,'Levothroid',9888,39),(24,188,'EPIVIR',1287,63),(25,180,'LBEL HYDRATESS',5761,69),(26,106,'Fenoprofen',3134,37),(27,149,'HALOG',7368,78),(28,2,'Sore Throat Cherry',4796,62),(29,100,'Flawless Finish Dual Perfection Makeup SPF 8 Cream',6341,95),(30,92,'DIORSNOW UV Shield White Reveal UV Protection BB Creme Pearly White SPF 50',5380,23),(31,53,'Captopril',4868,23),(32,89,'Methocarbamol',6509,37),(33,176,'USTILAGO MAYDIS',3159,92),(34,26,'up and up cold flu relief',5705,83),(35,184,'Bio Elm',5904,57),(36,117,'ciprofloxacin',3461,68),(37,27,'Bronco Pulmonar Syrup',1044,16),(38,155,'NiteTime Cough DayTime Cough',2144,79),(39,70,'Amlodipine Besylate',6939,45),(40,153,'Optimal Diet Drops',4233,97),(41,174,'Enoxaparin Sodium',330,32),(42,111,'BETULA LENTA POLLEN',754,36),(43,15,'TUSSIN COUGH',3614,50),(44,1,'Diltiazem Hydrochloride',746,65),(45,153,'Tanda pearl professional whitening',9816,37),(46,189,'Hydrocodone Bitartrate and Acetaminophen',2866,56),(47,40,'Trimipramine maleate',9881,5),(48,34,'Softlips',4261,90),(49,142,'LA MER',456,23),(50,188,'DigiSan E Foam Hand Sanitizer',545,22),(51,48,'METHOTREXATE',1367,63),(52,32,'Dexamethasone',1519,69),(53,152,'Treatment Set TS349631',9241,29),(54,95,'Pristiq',6480,10),(55,5,'Naproxen',9271,13),(56,16,'METHYLIN',9563,59),(57,135,'Cetirizine Hydrochloride',7192,71),(58,160,'Potassium Acetate',2580,26),(59,152,'Restful Legs',9658,26),(60,187,'Arnica Aurum 15/10 Special Order',1286,90),(61,69,'Rugby Nicotine Polacrilex Gum, Coated Mint Flavor',3035,27),(62,43,'Exuviance CoverBlend Concealing Treatment Makeup',87,69),(63,158,'Risperidone',3111,96),(64,30,'Oxygen',7702,12),(65,145,'Neutrogena MoistureShine Lip Soother',3026,29),(66,178,'Dermoplast Pain Relieving',1359,99),(67,127,'Pollens - Weeds, Weed mix 2630',4609,54),(68,15,'7 select night time relief',9378,54),(69,37,'RIte Aid',6798,27),(70,29,'Lisinopril and Hydrochlorothiazide',6285,90),(71,149,'Wormwood',6819,62),(72,46,'Antacid Supreme',8682,59),(73,30,'Exhaustion - Chronic Fatigue',201,12),(74,77,'COUMADIN',89,98),(75,127,'MENHIBRIX',5297,38),(76,45,'Gabapentin',9533,80),(77,67,'OYSTER',8330,79),(78,117,'Lunesta',8602,90),(79,139,'Lisinopril',7236,76),(80,14,'Lorac Foundation Deep',3063,53),(81,184,'Wheezing HP',2338,63),(82,166,'Venoforce',9805,95),(83,102,'Glyburide',5086,30),(84,22,'AZITHROMYCIN',1404,36),(85,26,'VANACOF',5343,23),(86,99,'Alprazolam',3832,38),(87,126,'Demadex',3758,65),(88,183,'enema',5999,84),(89,199,'Retin-A MICRO',8846,66),(90,25,'Metoprolol Succinate',93,59),(91,51,'MiniDrops',3572,50),(92,199,'Wellness Products J-FLEX',5508,97),(93,104,'Trichothecium roseum',225,44),(94,191,'Western FAMILY',734,67),(95,131,'Inflammago',7649,48),(96,85,'fluvoxamine maleate',1530,58),(97,105,'DOPamine Hydrochloride',5479,3),(98,139,'Sunstick Broad Spectrum SPF 30',9167,6),(99,153,'allergy relief d',5488,25),(100,9,'Calcium antacid',3211,52),(101,5,'Levetiracetam',6993,56),(102,108,'Valproic Acid',4711,12),(103,144,'Sodium Lactate',6047,32),(104,7,'Solbar Zinc SPF38',3883,77),(105,151,'Pedia-Lax',2879,78),(106,111,'Olanzapine',1122,61),(107,54,'Zyvox',8341,56),(108,53,'Pure Finish Mineral Tinted Moisturizer SPF 15 Light',3131,36),(109,129,'VITALUMIERE AQUA',851,47),(110,195,'CENTER-AL - FRAXINUS AMERICANA POLLEN',222,81),(111,111,'Res-Q Topical Analgesic Soothing',1753,59),(112,98,'Epinastine HCl',9492,42),(113,145,'BAC-D Foaming Antibacterial Wound sanitizer',2408,8),(114,60,'VIMOVO',5067,58),(115,46,'Sinus relief',8920,71),(116,39,'Verdon Outdoor Moisturizer SPF 30',8031,78),(117,11,'smart sense antibiotic',6192,82),(118,121,'Facilipro',3858,1),(119,194,'Oxy Maximum Action Spot Treatment',3010,29),(120,10,'Beyond BB Perfecting Foundation Broad Spectrum SPF 15 Sunscreen',7759,9),(121,183,'GUNA-IL 10',9980,48),(122,71,'Microban',8969,6),(123,187,'Skin So Soft Firm and Restore',1085,89),(124,171,'FACE VALUES',5595,49),(125,45,'Pollens - Weeds and Garden Plants, Goldenrod Solidago canadensis',769,61),(126,137,'Exchange Select Baby Sunscreen',9647,33),(127,129,'Surfak Stool Softener',5112,45),(128,181,'Ibuprofen',5275,93),(129,21,'UNIVERSAL PURE PETROLEUM',638,67),(130,32,'Imipramine Hydrochloride',787,44),(131,11,'TheraPlus',146,34),(132,127,'Lemon Verbena Antibacterial Foaming Hand Wash',6758,72),(133,152,'Dextroamphetamine Sulfate',243,35),(134,7,'Piroxicam',5235,75),(135,133,'CLONIDINE HYDROCHLORIDE',6968,100),(136,32,'Desmopressin Acetate',7408,61),(137,17,'Lisinopril with Hydrochlorothiazide',8950,51),(138,21,'Linkus Lozenges',5958,11),(139,45,'RESTORIL',4983,99),(140,87,'Acid Reducer',3481,81),(141,27,'Citroma',5050,57),(142,142,'ESIKA',6282,61),(143,121,'BETULA NIGRA POLLEN',8215,53),(144,175,'Amazonian Clay 12-Hour Full Coverage Foundation Broad Spectrum SPF 15 Sunscreen',4202,81),(145,31,'SYNTHROID',5764,65),(146,99,'Spartan E2 Hand Wash and Sanitizer',7227,77),(147,193,'Oxcarbazepine',6821,63),(148,196,'ADVANCED CELL BOOSTING EX WATERY',4664,29),(149,30,'Nystatin and Triamcinolone Acetonide',7794,39),(150,128,'Pleo Zinc',7651,60),(151,158,'Perricone',9062,47),(152,41,'STOOL SOFTENER',9129,46),(153,182,'Cefepime',1775,80),(154,52,'EMINENCE Bright Skin Moisturizer BROAD SPECTRUM SPF 30 SUNSCREEN',3802,53),(155,49,'childrens ibuprofen oral suspension',6282,47),(156,8,'Topiramate',1450,28),(157,147,'Goniovisc',5878,49),(158,117,'LANOXIN',3375,84),(159,49,'CAREALL Zinc Oxide',6506,100),(160,6,'Shark Cartilage',1388,97),(161,74,'Pulsatilla',2087,15),(162,61,'Carbidopa and Levodopa',4485,45),(163,83,'oxaliplatin',8059,83),(164,140,'health mart aspirin',2756,10),(165,124,'Naloxone Hydrochloride',6540,16),(166,62,'Homeopathic Gas Relief Formula',5173,32),(167,54,'Cyclobenzaprine Hydrochloride',8911,18),(168,131,'CLARINS Ever Matte Broad Spectrum SPF 15 Tint 112',3481,83),(169,140,'Vancomycin Hydrochloride',3898,15),(170,189,'RoseGlo',234,48),(171,160,'PAUL AND JOE SILKY SMOOTH FOUNDATION UV 302',6010,32),(172,113,'Childrens Mapap',7875,70),(173,15,'Loperamide Hydrochloride',5532,74),(174,115,'UNITHROID',946,87),(175,135,'butalbital and acetaminophen',8188,70),(176,64,'Leader ClearLax',6674,19),(177,86,'Pioglitazone and Metformin Hydrocholride',4456,53),(178,186,'care one nicotine',1755,36),(179,54,'Niaspan',4199,62),(180,165,'Methylprednisolone Sodium Succinate',2569,61),(181,123,'winter vanilla hand sanitizer',6247,18),(182,200,'Healthy Accents Nighttime',9374,28),(183,16,'WLP40',7278,82),(184,191,'ARSENICUM METALLICUM',7076,89),(185,25,'Losartan Potassium',2328,26),(186,160,'ANTIBACTERIAL',8145,24),(187,154,'Mirtazapine',3057,67),(188,21,'Prednisone',6238,40),(189,103,'Pantoprazole Sodium',9571,17),(190,64,'Clozapine',2800,16),(191,116,'Ampicillin',2159,6),(192,183,'Feverall',8737,94),(193,24,'Dologen 325',7744,72),(194,187,'Pleo Grif',2559,77);
/*!40000 ALTER TABLE `MATERIALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mayor_egreso_material`
--

DROP TABLE IF EXISTS `mayor_egreso_material`;
/*!50001 DROP VIEW IF EXISTS `mayor_egreso_material`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mayor_egreso_material` AS SELECT 
 1 AS `material_id`,
 1 AS `nombre`,
 1 AS `Compras Totales`,
 1 AS `precio`,
 1 AS `Total Gastado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mayor_ingreso_material`
--

DROP TABLE IF EXISTS `mayor_ingreso_material`;
/*!50001 DROP VIEW IF EXISTS `mayor_ingreso_material`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mayor_ingreso_material` AS SELECT 
 1 AS `material_id`,
 1 AS `nombre`,
 1 AS `Ventas Totales`,
 1 AS `precio`,
 1 AS `Total Generado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mayores_compradores`
--

DROP TABLE IF EXISTS `mayores_compradores`;
/*!50001 DROP VIEW IF EXISTS `mayores_compradores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mayores_compradores` AS SELECT 
 1 AS `empleado_id`,
 1 AS `Compras Totales`,
 1 AS `Nombre_Empleado`,
 1 AS `Area_de_Trabajo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mayores_vendedores`
--

DROP TABLE IF EXISTS `mayores_vendedores`;
/*!50001 DROP VIEW IF EXISTS `mayores_vendedores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mayores_vendedores` AS SELECT 
 1 AS `empleado_id`,
 1 AS `Ventas Totales`,
 1 AS `Nombre_Empleado`,
 1 AS `Area_de_Trabajo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `NUEVAS_COMPRAS`
--

DROP TABLE IF EXISTS `NUEVAS_COMPRAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NUEVAS_COMPRAS` (
  `compra_id` int NOT NULL AUTO_INCREMENT,
  `trabajador_proveedor_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`compra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NUEVAS_COMPRAS`
--

LOCK TABLES `NUEVAS_COMPRAS` WRITE;
/*!40000 ALTER TABLE `NUEVAS_COMPRAS` DISABLE KEYS */;
INSERT INTO `NUEVAS_COMPRAS` VALUES (1,129,9,'2022-04-04'),(2,58,31,'2022-05-27'),(3,134,43,'2021-09-30'),(4,110,6,'2022-04-26'),(5,41,25,'2022-05-01'),(6,191,24,'2022-02-26'),(7,180,4,'2022-11-11'),(8,165,7,'2022-06-28'),(9,114,43,'2021-07-04'),(10,73,13,'2022-03-12'),(11,53,5,'2022-04-01'),(12,102,23,'2021-09-16'),(13,97,32,'2021-08-27'),(14,92,15,'2021-09-29'),(15,186,16,'2022-07-20'),(16,24,10,'2022-08-16'),(17,30,11,'2022-12-08'),(18,45,25,'2022-05-25'),(19,50,2,'2021-06-27'),(20,35,15,'2022-05-12'),(21,53,26,'2022-03-20'),(22,170,21,'2021-09-06'),(23,34,17,'2022-07-21'),(24,71,10,'2022-03-04'),(25,134,8,'2022-01-13'),(26,106,9,'2022-09-14'),(27,128,23,'2022-05-07'),(28,148,9,'2022-11-26'),(29,10,14,'2022-09-16'),(30,188,23,'2022-05-24'),(31,103,34,'2021-10-21'),(32,123,24,'2021-11-02'),(33,181,17,'2022-09-19'),(34,178,24,'2021-11-09'),(35,14,12,'2022-01-17'),(36,29,30,'2021-11-04'),(37,139,44,'2022-07-02'),(38,188,30,'2021-12-05'),(39,16,18,'2022-06-19'),(40,107,22,'2021-08-01'),(41,25,16,'2022-06-23'),(42,52,1,'2021-10-25'),(43,107,1,'2022-02-06'),(44,131,5,'2022-06-25'),(45,67,1,'2022-06-08'),(46,174,13,'2022-09-12'),(47,41,49,'2022-01-10'),(48,75,38,'2021-10-12'),(49,134,20,'2021-07-25'),(50,91,2,'2021-10-24'),(51,151,4,'2022-11-16'),(52,119,35,'2022-01-07'),(53,72,34,'2022-12-01'),(54,16,19,'2022-05-29'),(55,130,33,'2022-02-26'),(56,4,37,'2022-05-29'),(57,22,30,'2021-12-08'),(58,159,44,'2022-11-20'),(59,158,18,'2022-08-25'),(60,4,47,'2021-11-14'),(61,21,46,'2021-07-08'),(62,157,42,'2022-12-04'),(63,88,14,'2022-05-27'),(64,197,38,'2022-03-19'),(65,54,29,'2021-11-27'),(66,43,50,'2022-09-02'),(67,182,29,'2022-09-26'),(68,50,40,'2021-11-14'),(69,44,39,'2022-04-01'),(70,25,44,'2021-11-29'),(71,168,23,'2022-06-22'),(72,113,47,'2021-12-24'),(73,33,37,'2022-11-02'),(74,158,44,'2022-04-10'),(75,30,39,'2022-08-17'),(76,155,5,'2021-09-16'),(77,139,15,'2022-06-06'),(78,23,41,'2022-07-08'),(79,176,13,'2021-11-26'),(80,41,35,'2022-05-14'),(81,154,10,'2021-12-16'),(82,123,45,'2021-12-29'),(83,140,21,'2022-01-29'),(84,137,39,'2022-09-22'),(85,24,28,'2022-03-20'),(86,199,33,'2021-09-01'),(87,197,44,'2022-07-04'),(88,33,12,'2022-02-14'),(89,23,43,'2021-11-05'),(90,164,39,'2022-07-21'),(91,189,24,'2021-08-21'),(92,162,34,'2022-04-14'),(93,152,48,'2022-08-16'),(94,110,44,'2022-10-12'),(95,84,26,'2021-11-08'),(96,8,21,'2021-12-08'),(97,34,41,'2021-07-30'),(98,103,3,'2022-05-21'),(99,13,20,'2022-09-23'),(100,123,17,'2022-07-03'),(101,117,44,'2022-11-09'),(102,49,34,'2021-10-19'),(103,85,38,'2022-04-12'),(104,105,21,'2021-06-28'),(105,118,48,'2021-07-14'),(106,139,35,'2021-11-16'),(107,39,22,'2022-09-20'),(108,139,35,'2022-09-01'),(109,13,32,'2022-10-01'),(110,137,13,'2021-12-07'),(111,104,13,'2022-10-24'),(112,128,19,'2021-07-11'),(113,97,19,'2021-11-15'),(114,109,18,'2022-06-08'),(115,93,36,'2021-09-18'),(116,75,42,'2021-09-14'),(117,196,29,'2022-06-05'),(118,2,5,'2022-12-15'),(119,63,25,'2022-10-23'),(120,142,12,'2021-07-23'),(121,88,23,'2021-07-22'),(122,27,31,'2021-07-21'),(123,19,50,'2022-11-04'),(124,128,41,'2021-09-25'),(125,143,19,'2021-08-21'),(126,21,47,'2022-08-14'),(127,63,8,'2021-08-14'),(128,62,29,'2022-11-24'),(129,12,33,'2021-07-08'),(130,35,9,'2021-07-29'),(131,178,3,'2022-05-22'),(132,192,15,'2021-12-13'),(133,37,14,'2022-01-09'),(134,20,38,'2022-07-25'),(135,3,12,'2021-11-16'),(136,105,27,'2021-12-10'),(137,53,6,'2022-09-02'),(138,171,3,'2022-04-04'),(139,96,41,'2022-04-16'),(140,196,13,'2022-06-20'),(141,164,21,'2022-06-21'),(142,156,21,'2021-12-26'),(143,73,17,'2022-01-15'),(144,75,8,'2022-01-12'),(145,32,11,'2022-03-01'),(146,145,13,'2021-07-03'),(147,110,8,'2021-09-20'),(148,85,17,'2022-09-11'),(149,199,12,'2022-06-27'),(150,11,13,'2021-10-30'),(151,83,34,'2022-08-02'),(152,117,13,'2022-09-17'),(153,89,26,'2021-12-01'),(154,137,22,'2021-10-10'),(155,30,8,'2022-05-30'),(156,194,37,'2022-09-11'),(157,181,30,'2022-07-24'),(158,163,41,'2021-08-31'),(159,70,15,'2022-04-24'),(160,121,12,'2021-07-05'),(161,92,36,'2022-06-12'),(162,4,40,'2022-12-05'),(163,97,2,'2022-03-25'),(164,8,37,'2022-10-08'),(165,180,6,'2021-06-24'),(166,53,2,'2021-12-05'),(167,1,17,'2021-11-29'),(168,153,4,'2022-01-21'),(169,121,10,'2021-12-22'),(170,159,11,'2022-09-06'),(171,145,23,'2022-08-21'),(172,18,20,'2022-12-13'),(173,78,9,'2022-10-08'),(174,31,23,'2022-08-02'),(175,98,33,'2022-11-04'),(176,148,13,'2021-10-28'),(177,83,46,'2021-07-30'),(178,96,24,'2021-10-21'),(179,46,4,'2022-01-27'),(180,183,40,'2022-05-12'),(181,100,28,'2022-10-10'),(182,104,32,'2021-11-10'),(183,139,46,'2022-04-17'),(184,2,18,'2022-09-11'),(185,94,10,'2022-01-04'),(186,155,46,'2022-04-06'),(187,60,45,'2022-11-24'),(188,33,31,'2021-09-22'),(189,165,42,'2022-11-27'),(190,177,12,'2021-11-18'),(191,16,28,'2022-05-13'),(192,46,34,'2022-04-01'),(193,157,45,'2021-12-30'),(194,85,11,'2022-10-05'),(195,73,27,'2022-02-10'),(196,76,37,'2021-10-07'),(197,169,38,'2022-01-05'),(198,43,43,'2022-02-26'),(199,194,14,'2021-09-27'),(200,14,35,'2022-04-09');
/*!40000 ALTER TABLE `NUEVAS_COMPRAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NUEVAS_VENTAS`
--

DROP TABLE IF EXISTS `NUEVAS_VENTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NUEVAS_VENTAS` (
  `venta_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`venta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NUEVAS_VENTAS`
--

LOCK TABLES `NUEVAS_VENTAS` WRITE;
/*!40000 ALTER TABLE `NUEVAS_VENTAS` DISABLE KEYS */;
INSERT INTO `NUEVAS_VENTAS` VALUES (1,351,45,'2022-10-23'),(2,463,5,'2022-02-19'),(3,147,7,'2022-11-28'),(4,119,9,'2022-07-24'),(5,297,34,'2022-03-25'),(6,58,17,'2022-08-27'),(7,59,45,'2022-05-17'),(8,389,40,'2022-07-03'),(9,475,49,'2022-01-22'),(10,304,42,'2022-11-22'),(11,57,17,'2022-10-18'),(12,323,49,'2022-12-14'),(13,221,16,'2022-07-08'),(14,22,31,'2022-02-08'),(15,284,9,'2022-09-10'),(16,125,8,'2022-02-18'),(17,307,1,'2022-02-21'),(18,61,38,'2022-09-18'),(19,227,23,'2022-09-25'),(20,64,40,'2022-05-03'),(21,308,27,'2022-09-11'),(22,474,22,'2022-07-11'),(23,41,48,'2022-07-05'),(24,252,27,'2022-09-26'),(25,398,28,'2022-01-11'),(26,258,11,'2022-07-17'),(27,462,16,'2022-02-06'),(28,187,46,'2022-06-04'),(29,142,6,'2022-05-14'),(30,82,33,'2022-10-14'),(31,316,19,'2022-04-09'),(32,289,45,'2022-09-29'),(33,247,33,'2022-10-21'),(34,376,7,'2022-11-15'),(35,470,2,'2022-11-28'),(36,22,38,'2021-12-20'),(37,80,27,'2022-11-30'),(38,416,30,'2022-01-04'),(39,127,14,'2022-02-15'),(40,17,43,'2022-01-22'),(41,341,42,'2022-09-27'),(42,14,47,'2022-12-16'),(43,295,3,'2022-06-16'),(44,2,44,'2022-11-04'),(45,424,24,'2022-01-11'),(46,352,23,'2022-03-04'),(47,350,4,'2022-02-09'),(48,410,20,'2022-08-23'),(49,192,43,'2022-11-06'),(50,474,4,'2022-01-25'),(51,112,42,'2022-06-03'),(52,192,2,'2022-08-03'),(53,244,49,'2022-02-16'),(54,99,14,'2022-12-18'),(55,352,27,'2022-01-29'),(56,372,16,'2022-11-02'),(57,336,10,'2022-05-22'),(58,51,8,'2022-01-15'),(59,24,29,'2022-07-20'),(60,407,21,'2022-08-18'),(61,69,22,'2022-11-27'),(62,62,2,'2022-09-06'),(63,234,27,'2022-02-22'),(64,149,39,'2022-12-17'),(65,174,35,'2022-04-20'),(66,103,18,'2022-12-06'),(67,444,24,'2022-01-24'),(68,301,9,'2022-12-09'),(69,212,5,'2022-04-02'),(70,18,31,'2022-01-06'),(71,144,18,'2022-04-25'),(72,411,47,'2022-12-02'),(73,412,25,'2022-05-31'),(74,36,1,'2022-10-05'),(75,458,19,'2021-12-21'),(76,99,31,'2022-11-10'),(77,15,47,'2022-02-12'),(78,192,33,'2022-11-11'),(79,341,39,'2022-03-05'),(80,273,43,'2022-06-21'),(81,224,12,'2022-09-26'),(82,462,30,'2022-06-11'),(83,133,50,'2022-05-31'),(84,15,32,'2021-12-21'),(85,13,13,'2022-09-08'),(86,269,45,'2022-04-13'),(87,137,14,'2022-03-18'),(88,248,18,'2022-01-22'),(89,88,39,'2022-11-10'),(90,82,26,'2022-02-16'),(91,205,35,'2022-08-08'),(92,341,34,'2021-12-27'),(93,66,27,'2022-04-26'),(94,338,49,'2022-01-24'),(95,14,43,'2022-03-24'),(96,367,15,'2022-11-09'),(97,100,9,'2022-05-31'),(98,79,22,'2022-03-05'),(99,315,9,'2022-05-02'),(100,290,27,'2022-04-01'),(101,470,49,'2022-05-17'),(102,103,45,'2022-09-03'),(103,154,32,'2022-09-12'),(104,217,38,'2022-02-13'),(105,309,26,'2022-07-23'),(106,73,2,'2022-08-10'),(107,1,49,'2022-08-21'),(108,310,40,'2022-05-28'),(109,150,31,'2022-01-11'),(110,103,28,'2022-07-31'),(111,47,26,'2022-12-17'),(112,494,38,'2022-01-09'),(113,86,30,'2022-02-04'),(114,49,35,'2022-11-28'),(115,330,46,'2022-02-21'),(116,182,23,'2021-12-22'),(117,14,32,'2022-08-16'),(118,89,45,'2022-07-27'),(119,302,50,'2022-07-23'),(120,262,6,'2022-09-04'),(121,108,26,'2022-09-11'),(122,346,31,'2022-10-10'),(123,140,4,'2022-04-17'),(124,270,39,'2022-12-14'),(125,98,16,'2022-09-16'),(126,317,15,'2022-07-26'),(127,240,44,'2022-09-09'),(128,123,2,'2022-01-18'),(129,232,37,'2022-09-02'),(130,156,14,'2022-02-13'),(131,306,28,'2022-09-04'),(132,473,21,'2022-06-04'),(133,106,13,'2022-02-02'),(134,36,48,'2022-03-30'),(135,438,15,'2022-04-28'),(136,191,12,'2022-04-11'),(137,107,2,'2022-12-05'),(138,225,48,'2022-08-16'),(139,63,32,'2022-02-03'),(140,207,48,'2022-08-30'),(141,115,27,'2022-10-15'),(142,58,33,'2022-10-22'),(143,285,7,'2022-04-03'),(144,148,30,'2022-05-16'),(145,359,25,'2022-07-10'),(146,32,7,'2022-11-24'),(147,187,15,'2022-04-04'),(148,64,41,'2022-08-15'),(149,23,44,'2022-02-27'),(150,477,15,'2021-12-28'),(151,491,8,'2021-12-31'),(152,248,26,'2022-08-23'),(153,318,46,'2022-08-20'),(154,457,21,'2022-06-25'),(155,329,3,'2022-10-27'),(156,444,2,'2022-05-15'),(157,419,19,'2022-10-04'),(158,419,2,'2022-03-25'),(159,442,43,'2022-12-02'),(160,6,41,'2022-04-05'),(161,410,23,'2022-10-09'),(162,314,4,'2022-12-05'),(163,310,7,'2022-10-23'),(164,373,24,'2022-04-01'),(165,312,17,'2022-06-09'),(166,395,13,'2022-09-18'),(167,137,18,'2022-07-27'),(168,406,38,'2022-12-10'),(169,272,44,'2022-03-20'),(170,196,10,'2022-04-13'),(171,326,31,'2022-01-11'),(172,40,4,'2022-08-14'),(173,25,16,'2022-02-20'),(174,169,8,'2022-08-01'),(175,345,41,'2022-05-02'),(176,232,29,'2022-07-02'),(177,114,30,'2022-12-19'),(178,411,33,'2022-10-09'),(179,209,12,'2022-12-17'),(180,401,25,'2022-09-28'),(181,48,20,'2022-05-18'),(182,195,49,'2022-07-15'),(183,97,37,'2022-03-06'),(184,178,50,'2022-07-26'),(185,11,49,'2022-02-02'),(186,49,13,'2022-12-06'),(187,1,27,'2022-10-11'),(188,65,29,'2022-11-15'),(189,420,2,'2022-02-12'),(190,170,26,'2022-06-05'),(191,182,36,'2022-10-13'),(192,91,40,'2021-12-26'),(193,463,36,'2022-10-15'),(194,486,50,'2022-06-04'),(195,68,44,'2022-06-15'),(196,393,9,'2022-01-25'),(197,330,44,'2022-09-18'),(198,113,28,'2022-10-12'),(199,23,4,'2022-10-07'),(200,488,29,'2022-04-07');
/*!40000 ALTER TABLE `NUEVAS_VENTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROVEEDORES`
--

DROP TABLE IF EXISTS `PROVEEDORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROVEEDORES` (
  `proveedor_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  PRIMARY KEY (`proveedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVEEDORES`
--

LOCK TABLES `PROVEEDORES` WRITE;
/*!40000 ALTER TABLE `PROVEEDORES` DISABLE KEYS */;
INSERT INTO `PROVEEDORES` VALUES (1,'Ebert, Halvorson and Jast','Ebert_Halvorson_and_Jast@correo.com','389-543-6086'),(2,'Kertzmann-Tillman','Kertzmann-Tillman@correo.com','336-204-4566'),(3,'Ryan, Cruickshank and Klein','Ryan_Cruickshank_and_Klein@correo.com','343-143-8538'),(4,'Blick-Satterfield','Blick-Satterfield@correo.com','533-667-2973'),(5,'Leuschke, Mohr and Hickle','Leuschke_Mohr_and_Hickle@correo.com','680-372-9859'),(6,'Goldner, Champlin and Turner','Goldner_Champlin_and_Turner@correo.com','771-355-8122'),(7,'Ferry-Feeney','Ferry-Feeney@correo.com','910-100-3045'),(8,'Lynch, Rohan and Larkin','Lynch_Rohan_and_Larkin@correo.com','418-990-8508'),(9,'Rogahn-Pfeffer','Rogahn-Pfeffer@correo.com','250-149-7854'),(10,'McLaughlin, Mohr and Hagenes','McLaughlin_Mohr_and_Hagenes@correo.com','306-199-2258'),(11,'McKenzie LLC','McKenzie_LLC@correo.com','150-990-8752'),(12,'Crist-Borer','Crist-Borer@correo.com','502-368-7586'),(13,'Durgan Group','Durgan_Group@correo.com','422-442-9670'),(14,'Hodkiewicz, Marks and Hayes','Hodkiewicz_Marks_and_Hayes@correo.com','814-870-0907'),(15,'Balistreri-Kohler','Balistreri-Kohler@correo.com','531-106-0941'),(16,'Bartell-Bosco','Bartell-Bosco@correo.com','700-393-7123'),(17,'Trantow, Kozey and Mante','Trantow_Kozey_and_Mante@correo.com','400-783-4781'),(18,'Christiansen and Sons','Christiansen_and_Sons@correo.com','999-395-6232'),(19,'Bradtke, Runte and Goyette','Bradtke_Runte_and_Goyette@correo.com','266-990-1298'),(20,'Jenkins-Jast','Jenkins-Jast@correo.com','602-212-6150'),(21,'Ankunding Inc','Ankunding_Inc@correo.com','319-423-8865'),(22,'Sauer LLC','Sauer_LLC@correo.com','834-742-3620'),(23,'Crona, Marvin and Keebler','Crona_Marvin_and_Keebler@correo.com','941-827-4570'),(24,'Hirthe, Hamill and O\'Keefe','Hirthe_Hamill_and_O\'Keefe@correo.com','620-328-0026'),(25,'Kertzmann-Kessler','Kertzmann-Kessler@correo.com','809-963-4897'),(26,'Rutherford, Ryan and Blanda','Rutherford_Ryan_and_Blanda@correo.com','200-534-8144'),(27,'Ryan Inc','Ryan_Inc@correo.com','672-756-8473'),(28,'Herzog, Heathcote and Stracke','Herzog_Heathcote_and_Stracke@correo.com','494-347-2090'),(29,'Mayert, Stamm and O\'Hara','Mayert_Stamm_and_O\'Hara@correo.com','664-870-8488'),(30,'Blanda-Treutel','Blanda-Treutel@correo.com','780-729-8183'),(31,'Schaefer LLC','Schaefer_LLC@correo.com','801-111-2005'),(32,'Doyle, Stroman and Dickens','Doyle_Stroman_and_Dickens@correo.com','101-120-5201'),(33,'Dickinson-Fritsch','Dickinson-Fritsch@correo.com','716-157-6647'),(34,'Lowe LLC','Lowe_LLC@correo.com','384-994-9373'),(35,'Bernhard Inc','Bernhard_Inc@correo.com','357-480-1958'),(36,'Doyle Group','Doyle_Group@correo.com','289-313-2533'),(37,'Casper, Schmidt and Ullrich','Casper_Schmidt_and_Ullrich@correo.com','354-264-6069'),(38,'Satterfield Inc','Satterfield_Inc@correo.com','113-632-7266'),(39,'Schamberger, O\'Conner and Ortiz','Schamberger_O\'Conner_and_Ortiz@correo.com','739-767-5167'),(40,'Bins, Pagac and Marvin','Bins_Pagac_and_Marvin@correo.com','321-158-9940'),(41,'Graham, Lindgren and Wiza','Graham_Lindgren_and_Wiza@correo.com','513-279-7705'),(42,'Marvin Group','Marvin_Group@correo.com','165-495-7147'),(43,'Ryan-Runolfsson','Ryan-Runolfsson@correo.com','770-719-3415'),(44,'Wunsch LLC','Wunsch_LLC@correo.com','688-922-2184'),(45,'Keebler Inc','Keebler_Inc@correo.com','142-591-2249'),(46,'Wisoky Group','Wisoky_Group@correo.com','680-847-4902'),(47,'Fay-Leffler','Fay-Leffler@correo.com','655-271-2392'),(48,'Rolfson, Dach and Yost','Rolfson_Dach_and_Yost@correo.com','200-286-5505'),(49,'Kunze, Donnelly and Collins','Kunze_Donnelly_and_Collins@correo.com','493-891-4411'),(50,'Schumm-Koelpin','Schumm-Koelpin@correo.com','138-736-8576'),(51,'Lesch-Rutherford','Lesch-Rutherford@correo.com','411-344-4478'),(52,'Jones Inc','Jones_Inc@correo.com','430-498-6995'),(53,'Bernhard and Sons','Bernhard_and_Sons@correo.com','507-378-7599'),(54,'Steuber Group','Steuber_Group@correo.com','305-616-3145'),(55,'Monahan LLC','Monahan_LLC@correo.com','759-771-3149'),(56,'Bayer, Rodriguez and Dare','Bayer_Rodriguez_and_Dare@correo.com','509-611-3061'),(57,'Morissette, Sawayn and Kerluke','Morissette_Sawayn_and_Kerluke@correo.com','529-249-7913'),(58,'Bashirian, Feeney and Lemke','Bashirian_Feeney_and_Lemke@correo.com','351-461-4182'),(59,'DuBuque, Willms and Ziemann','DuBuque_Willms_and_Ziemann@correo.com','917-448-6182'),(60,'Brakus, Legros and Goodwin','Brakus_Legros_and_Goodwin@correo.com','602-700-6147'),(61,'Jerde-Beahan','Jerde-Beahan@correo.com','777-276-5393'),(62,'Kassulke, Mosciski and Cruickshank','Kassulke_Mosciski_and_Cruickshank@correo.com','663-393-0472'),(63,'Smitham LLC','Smitham_LLC@correo.com','625-308-8475'),(64,'Bradtke, Funk and Ryan','Bradtke_Funk_and_Ryan@correo.com','464-227-0422'),(65,'Schamberger, Bechtelar and Farrell','Schamberger_Bechtelar_and_Farrell@correo.com','475-936-6263'),(66,'Cassin Inc','Cassin_Inc@correo.com','398-338-6008'),(67,'Little-Hettinger','Little-Hettinger@correo.com','763-921-8190'),(68,'Goodwin Group','Goodwin_Group@correo.com','111-780-1119'),(69,'Wunsch and Sons','Wunsch_and_Sons@correo.com','514-785-9476'),(70,'Jones, Kertzmann and Morissette','Jones_Kertzmann_and_Morissette@correo.com','789-144-5615'),(71,'Towne LLC','Towne_LLC@correo.com','949-235-5648'),(72,'Wiegand, Nitzsche and Goyette','Wiegand_Nitzsche_and_Goyette@correo.com','622-355-1803'),(73,'Zemlak Group','Zemlak_Group@correo.com','473-641-6372'),(74,'Toy-Muller','Toy-Muller@correo.com','462-824-4458'),(75,'Adams Inc','Adams_Inc@correo.com','445-382-3479'),(76,'Wintheiser-Jacobson','Wintheiser-Jacobson@correo.com','313-684-3731'),(77,'Hilpert Inc','Hilpert_Inc@correo.com','907-658-5980'),(78,'McCullough, Marvin and Baumbach','McCullough_Marvin_and_Baumbach@correo.com','114-438-9839'),(79,'Johns and Sons','Johns_and_Sons@correo.com','954-165-8354'),(80,'Stehr, Green and Parker','Stehr_Green_and_Parker@correo.com','600-279-0184'),(81,'Beatty Inc','Beatty_Inc@correo.com','184-828-8508'),(82,'Barrows, Ullrich and Schmeler','Barrows_Ullrich_and_Schmeler@correo.com','347-947-3763'),(83,'Kohler-Schulist','Kohler-Schulist@correo.com','595-404-9361'),(84,'Towne-Morar','Towne-Morar@correo.com','229-941-8844'),(85,'Daugherty, Terry and Crona','Daugherty_Terry_and_Crona@correo.com','580-403-3041'),(86,'Leuschke Inc','Leuschke_Inc@correo.com','319-315-1185'),(87,'Crist-Hilpert','Crist-Hilpert@correo.com','714-745-7931'),(88,'Bednar-Breitenberg','Bednar-Breitenberg@correo.com','535-220-4603'),(89,'Thiel Group','Thiel_Group@correo.com','121-915-4958'),(90,'Runolfsson, Willms and Huels','Runolfsson_Willms_and_Huels@correo.com','497-394-8800'),(91,'Pouros Group','Pouros_Group@correo.com','609-918-5275'),(92,'Prosacco, Upton and Donnelly','Prosacco_Upton_and_Donnelly@correo.com','600-310-4946'),(93,'Satterfield, Stanton and Cole','Satterfield_Stanton_and_Cole@correo.com','180-426-3106'),(94,'Leannon-Wisozk','Leannon-Wisozk@correo.com','201-546-9504'),(95,'Raynor-Kilback','Raynor-Kilback@correo.com','993-394-9049'),(96,'Robel Inc','Robel_Inc@correo.com','696-369-1723'),(97,'Carroll-Anderson','Carroll-Anderson@correo.com','265-153-7672'),(98,'Fisher, Brakus and Orn','Fisher_Brakus_and_Orn@correo.com','865-837-0803'),(99,'Wyman, Howe and Wyman','Wyman_Howe_and_Wyman@correo.com','139-723-6453'),(100,'Block-Hackett','Block-Hackett@correo.com','215-974-8695'),(101,'Willms-Hansen','Willms-Hansen@correo.com','890-344-8471'),(102,'Hickle, Luettgen and Lesch','Hickle_Luettgen_and_Lesch@correo.com','759-178-8700'),(103,'Hayes Inc','Hayes_Inc@correo.com','980-578-2067'),(104,'Kulas, Haley and Strosin','Kulas_Haley_and_Strosin@correo.com','240-214-7481'),(105,'Kunze-Gleichner','Kunze-Gleichner@correo.com','830-756-9325'),(106,'Lockman Group','Lockman_Group@correo.com','619-847-5170'),(107,'Macejkovic LLC','Macejkovic_LLC@correo.com','514-526-2026'),(108,'Dare, Rice and Kessler','Dare_Rice_and_Kessler@correo.com','102-291-1794'),(109,'Little, Morissette and Harvey','Little_Morissette_and_Harvey@correo.com','154-265-1063'),(110,'Mosciski and Sons','Mosciski_and_Sons@correo.com','770-468-3312'),(111,'Turner-Kutch','Turner-Kutch@correo.com','539-965-5540'),(112,'Schroeder Inc','Schroeder_Inc@correo.com','270-940-4232'),(113,'Stark, Wolf and Boyer','Stark_Wolf_and_Boyer@correo.com','839-334-0080'),(114,'Reichel LLC','Reichel_LLC@correo.com','996-285-8332'),(115,'Kling-Bins','Kling-Bins@correo.com','146-952-5436'),(116,'Oberbrunner, Swift and Braun','Oberbrunner_Swift_and_Braun@correo.com','704-115-6717'),(117,'Kris-Schneider','Kris-Schneider@correo.com','919-234-9652'),(118,'Ward Inc','Ward_Inc@correo.com','882-282-4494'),(119,'Brown-Legros','Brown-Legros@correo.com','230-378-6250'),(120,'Sipes-Marvin','Sipes-Marvin@correo.com','210-539-6663'),(121,'Swaniawski, Schroeder and White','Swaniawski_Schroeder_and_White@correo.com','587-264-9716'),(122,'Labadie-Goyette','Labadie-Goyette@correo.com','813-713-5816'),(123,'O\'Conner, Smith and Kertzmann','O\'Conner_Smith_and_Kertzmann@correo.com','756-702-8564'),(124,'Torp, Borer and Marvin','Torp_Borer_and_Marvin@correo.com','838-334-0156'),(125,'Marks Inc','Marks_Inc@correo.com','300-177-2374'),(126,'Davis Inc','Davis_Inc@correo.com','308-524-3901'),(127,'Hackett-Heaney','Hackett-Heaney@correo.com','658-510-2952'),(128,'Schultz Inc','Schultz_Inc@correo.com','834-840-8904'),(129,'Wuckert, Hartmann and Pfeffer','Wuckert_Hartmann_and_Pfeffer@correo.com','372-107-8931'),(130,'Turner LLC','Turner_LLC@correo.com','904-100-6063'),(131,'Medhurst LLC','Medhurst_LLC@correo.com','665-784-8253'),(132,'Balistreri-Huel','Balistreri-Huel@correo.com','790-207-9335'),(133,'Fisher, Predovic and Auer','Fisher_Predovic_and_Auer@correo.com','255-679-9329'),(134,'Farrell-Boyer','Farrell-Boyer@correo.com','202-747-9149'),(135,'Frami LLC','Frami_LLC@correo.com','934-650-3622'),(136,'Oberbrunner-Carter','Oberbrunner-Carter@correo.com','708-679-1168'),(137,'Anderson and Sons','Anderson_and_Sons@correo.com','109-389-1524'),(138,'Okuneva, Sauer and Balistreri','Okuneva_Sauer_and_Balistreri@correo.com','762-544-3836'),(139,'Windler, Rolfson and Skiles','Windler_Rolfson_and_Skiles@correo.com','421-322-2041'),(140,'Gutmann LLC','Gutmann_LLC@correo.com','940-456-2475'),(141,'Rempel and Sons','Rempel_and_Sons@correo.com','872-102-3574'),(142,'Roob, Schinner and Fahey','Roob_Schinner_and_Fahey@correo.com','588-267-5203'),(143,'Abshire-Upton','Abshire-Upton@correo.com','726-660-2972'),(144,'Willms Inc','Willms_Inc@correo.com','862-895-3765'),(145,'Emmerich-Hand','Emmerich-Hand@correo.com','296-336-8784'),(146,'Larson, Olson and Flatley','Larson_Olson_and_Flatley@correo.com','793-159-3785'),(147,'Bosco, Nolan and Nienow','Bosco_Nolan_and_Nienow@correo.com','701-773-3654'),(148,'Howe-Larson','Howe-Larson@correo.com','809-712-7805'),(149,'Beer-Bosco','Beer-Bosco@correo.com','297-351-7218'),(150,'Bergstrom-Rohan','Bergstrom-Rohan@correo.com','180-422-0439'),(151,'Sanford-Gibson','Sanford-Gibson@correo.com','420-290-7606'),(152,'Dare-McKenzie','Dare-McKenzie@correo.com','667-196-5773'),(153,'Herzog Inc','Herzog_Inc@correo.com','854-836-1136'),(154,'Hodkiewicz-Parisian','Hodkiewicz-Parisian@correo.com','781-923-9750'),(155,'Hansen Inc','Hansen_Inc@correo.com','129-304-8613'),(156,'Prohaska Group','Prohaska_Group@correo.com','793-679-4731'),(157,'Blanda and Sons','Blanda_and_Sons@correo.com','389-543-6086'),(158,'Vandervort, Goodwin and Yost','Vandervort_Goodwin_and_Yost@correo.com','336-204-4566'),(159,'Leffler-Kuphal','Leffler-Kuphal@correo.com','343-143-8538'),(160,'Von, Champlin and Roob','Von_Champlin_and_Roob@correo.com','533-667-2973'),(161,'Corwin, Bogan and Mante','Corwin_Bogan_and_Mante@correo.com','680-372-9859'),(162,'Ziemann-O\'Conner','Ziemann-O\'Conner@correo.com','771-355-8122'),(163,'Monahan Inc','Monahan_Inc@correo.com','910-100-3045'),(164,'Christiansen-Kerluke','Christiansen-Kerluke@correo.com','418-990-8508'),(165,'Tillman, Bruen and Klocko','Tillman_Bruen_and_Klocko@correo.com','250-149-7854'),(166,'Pfannerstill-Jerde','Pfannerstill-Jerde@correo.com','306-199-2258'),(167,'Jakubowski, Johns and Daniel','Jakubowski_Johns_and_Daniel@correo.com','150-990-8752'),(168,'Ortiz-Conroy','Ortiz-Conroy@correo.com','502-368-7586'),(169,'Parker-Bernier','Parker-Bernier@correo.com','422-442-9670'),(170,'Breitenberg-Daniel','Breitenberg-Daniel@correo.com','814-870-0907'),(171,'Lueilwitz, Rolfson and Schoen','Lueilwitz_Rolfson_and_Schoen@correo.com','531-106-0941'),(172,'Bartell-Buckridge','Bartell-Buckridge@correo.com','700-393-7123'),(173,'Rath LLC','Rath_LLC@correo.com','400-783-4781'),(174,'Glover LLC','Glover_LLC@correo.com','999-395-6232'),(175,'Pouros, Franecki and Boyle','Pouros_Franecki_and_Boyle@correo.com','266-990-1298'),(176,'Ward-Adams','Ward-Adams@correo.com','602-212-6150'),(177,'Kshlerin-Gleason','Kshlerin-Gleason@correo.com','319-423-8865'),(178,'Bernhard, Schuppe and Torphy','Bernhard_Schuppe_and_Torphy@correo.com','834-742-3620'),(179,'Rau-Schoen','Rau-Schoen@correo.com','941-827-4570'),(180,'Ernser, Sanford and Kunze','Ernser_Sanford_and_Kunze@correo.com','620-328-0026'),(181,'Gislason-Bernier','Gislason-Bernier@correo.com','809-963-4897'),(182,'Rodriguez-Larson','Rodriguez-Larson@correo.com','200-534-8144'),(183,'Auer LLC','Auer_LLC@correo.com','672-756-8473'),(184,'Beier LLC','Beier_LLC@correo.com','494-347-2090'),(185,'Glover, Wunsch and Paucek','Glover_Wunsch_and_Paucek@correo.com','664-870-8488'),(186,'Corwin Group','Corwin_Group@correo.com','780-729-8183'),(187,'Witting, Koepp and Gaylord','Witting_Koepp_and_Gaylord@correo.com','801-111-2005'),(188,'Romaguera Group','Romaguera_Group@correo.com','101-120-5201'),(189,'Parisian and Sons','Parisian_and_Sons@correo.com','716-157-6647'),(190,'Tremblay and Sons','Tremblay_and_Sons@correo.com','384-994-9373'),(191,'Krajcik Inc','Krajcik_Inc@correo.com','357-480-1958'),(192,'Heaney, Nolan and Quigley','Heaney_Nolan_and_Quigley@correo.com','289-313-2533'),(193,'Barton LLC','Barton_LLC@correo.com','354-264-6069'),(194,'Steuber Inc','Steuber_Inc@correo.com','113-632-7266'),(195,'McDermott, Leffler and Rosenbaum','McDermott_Leffler_and_Rosenbaum@correo.com','739-767-5167'),(196,'Schneider Group','Schneider_Group@correo.com','321-158-9940'),(197,'Orn Group','Orn_Group@correo.com','513-279-7705'),(198,'Hirthe, Becker and Gleichner','Hirthe_Becker_and_Gleichner@correo.com','165-495-7147'),(199,'Kutch Inc','Kutch_Inc@correo.com','770-719-3415'),(200,'Marvin, Shields and McDermott','Marvin_Shields_and_McDermott@correo.com','688-922-2184');
/*!40000 ALTER TABLE `PROVEEDORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRO_COMPRAS`
--

DROP TABLE IF EXISTS `REGISTRO_COMPRAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REGISTRO_COMPRAS` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_dt` datetime DEFAULT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRO_COMPRAS`
--

LOCK TABLES `REGISTRO_COMPRAS` WRITE;
/*!40000 ALTER TABLE `REGISTRO_COMPRAS` DISABLE KEYS */;
INSERT INTO `REGISTRO_COMPRAS` VALUES (1,'compras',1,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(2,'compras',2,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(3,'compras',3,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(4,'compras',4,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(5,'compras',5,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(6,'compras',6,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(7,'compras',7,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(8,'compras',8,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(9,'compras',9,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(10,'compras',10,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(11,'compras',11,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(12,'compras',12,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(13,'compras',13,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(14,'compras',14,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(15,'compras',15,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(16,'compras',16,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(17,'compras',17,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(18,'compras',18,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(19,'compras',19,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(20,'compras',20,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(21,'compras',21,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(22,'compras',22,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(23,'compras',23,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(24,'compras',24,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(25,'compras',25,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(26,'compras',26,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(27,'compras',27,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(28,'compras',28,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(29,'compras',29,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(30,'compras',30,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(31,'compras',31,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(32,'compras',32,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(33,'compras',33,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(34,'compras',34,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(35,'compras',35,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(36,'compras',36,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(37,'compras',37,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(38,'compras',38,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(39,'compras',39,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(40,'compras',40,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(41,'compras',41,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(42,'compras',42,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(43,'compras',43,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(44,'compras',44,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(45,'compras',45,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(46,'compras',46,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(47,'compras',47,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(48,'compras',48,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(49,'compras',49,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(50,'compras',50,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(51,'compras',51,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(52,'compras',52,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(53,'compras',53,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(54,'compras',54,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(55,'compras',55,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(56,'compras',56,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(57,'compras',57,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(58,'compras',58,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(59,'compras',59,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(60,'compras',60,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(61,'compras',61,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(62,'compras',62,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(63,'compras',63,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(64,'compras',64,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(65,'compras',65,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(66,'compras',66,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(67,'compras',67,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(68,'compras',68,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(69,'compras',69,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(70,'compras',70,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(71,'compras',71,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(72,'compras',72,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(73,'compras',73,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(74,'compras',74,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(75,'compras',75,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(76,'compras',76,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(77,'compras',77,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(78,'compras',78,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(79,'compras',79,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(80,'compras',80,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(81,'compras',81,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(82,'compras',82,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(83,'compras',83,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(84,'compras',84,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(85,'compras',85,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(86,'compras',86,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(87,'compras',87,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(88,'compras',88,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(89,'compras',89,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(90,'compras',90,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(91,'compras',91,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(92,'compras',92,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(93,'compras',93,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(94,'compras',94,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(95,'compras',95,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(96,'compras',96,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(97,'compras',97,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(98,'compras',98,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(99,'compras',99,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(100,'compras',100,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(101,'compras',101,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(102,'compras',102,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(103,'compras',103,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(104,'compras',104,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(105,'compras',105,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(106,'compras',106,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(107,'compras',107,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(108,'compras',108,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(109,'compras',109,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(110,'compras',110,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(111,'compras',111,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(112,'compras',112,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(113,'compras',113,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(114,'compras',114,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(115,'compras',115,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(116,'compras',116,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(117,'compras',117,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(118,'compras',118,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(119,'compras',119,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(120,'compras',120,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(121,'compras',121,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(122,'compras',122,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(123,'compras',123,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(124,'compras',124,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(125,'compras',125,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(126,'compras',126,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(127,'compras',127,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(128,'compras',128,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(129,'compras',129,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(130,'compras',130,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(131,'compras',131,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(132,'compras',132,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(133,'compras',133,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(134,'compras',134,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(135,'compras',135,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(136,'compras',136,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(137,'compras',137,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(138,'compras',138,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(139,'compras',139,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(140,'compras',140,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(141,'compras',141,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(142,'compras',142,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(143,'compras',143,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(144,'compras',144,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(145,'compras',145,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(146,'compras',146,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(147,'compras',147,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(148,'compras',148,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(149,'compras',149,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(150,'compras',150,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(151,'compras',151,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(152,'compras',152,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(153,'compras',153,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(154,'compras',154,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(155,'compras',155,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(156,'compras',156,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(157,'compras',157,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(158,'compras',158,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(159,'compras',159,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(160,'compras',160,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(161,'compras',161,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(162,'compras',162,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(163,'compras',163,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(164,'compras',164,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(165,'compras',165,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(166,'compras',166,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(167,'compras',167,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(168,'compras',168,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(169,'compras',169,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(170,'compras',170,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(171,'compras',171,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(172,'compras',172,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(173,'compras',173,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(174,'compras',174,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(175,'compras',175,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(176,'compras',176,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(177,'compras',177,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(178,'compras',178,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(179,'compras',179,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(180,'compras',180,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(181,'compras',181,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(182,'compras',182,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(183,'compras',183,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(184,'compras',184,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(185,'compras',185,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(186,'compras',186,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(187,'compras',187,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(188,'compras',188,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(189,'compras',189,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(190,'compras',190,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(191,'compras',191,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(192,'compras',192,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(193,'compras',193,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(194,'compras',194,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(195,'compras',195,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(196,'compras',196,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(197,'compras',197,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(198,'compras',198,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(199,'compras',199,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost'),(200,'compras',200,'2023-02-12 11:36:23','root@localhost','2023-02-12 11:36:23','root@localhost');
/*!40000 ALTER TABLE `REGISTRO_COMPRAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRO_VENTAS`
--

DROP TABLE IF EXISTS `REGISTRO_VENTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REGISTRO_VENTAS` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_dt` datetime DEFAULT NULL,
  `last_updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRO_VENTAS`
--

LOCK TABLES `REGISTRO_VENTAS` WRITE;
/*!40000 ALTER TABLE `REGISTRO_VENTAS` DISABLE KEYS */;
INSERT INTO `REGISTRO_VENTAS` VALUES (1,'ventas',1,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(2,'ventas',2,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(3,'ventas',3,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(4,'ventas',4,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(5,'ventas',5,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(6,'ventas',6,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(7,'ventas',7,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(8,'ventas',8,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(9,'ventas',9,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(10,'ventas',10,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(11,'ventas',11,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(12,'ventas',12,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(13,'ventas',13,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(14,'ventas',14,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(15,'ventas',15,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(16,'ventas',16,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(17,'ventas',17,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(18,'ventas',18,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(19,'ventas',19,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(20,'ventas',20,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(21,'ventas',21,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(22,'ventas',22,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(23,'ventas',23,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(24,'ventas',24,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(25,'ventas',25,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(26,'ventas',26,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(27,'ventas',27,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(28,'ventas',28,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(29,'ventas',29,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(30,'ventas',30,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(31,'ventas',31,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(32,'ventas',32,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(33,'ventas',33,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(34,'ventas',34,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(35,'ventas',35,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(36,'ventas',36,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(37,'ventas',37,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(38,'ventas',38,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(39,'ventas',39,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(40,'ventas',40,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(41,'ventas',41,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(42,'ventas',42,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(43,'ventas',43,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(44,'ventas',44,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(45,'ventas',45,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(46,'ventas',46,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(47,'ventas',47,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(48,'ventas',48,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(49,'ventas',49,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(50,'ventas',50,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(51,'ventas',51,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(52,'ventas',52,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(53,'ventas',53,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(54,'ventas',54,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(55,'ventas',55,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(56,'ventas',56,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(57,'ventas',57,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(58,'ventas',58,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(59,'ventas',59,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(60,'ventas',60,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(61,'ventas',61,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(62,'ventas',62,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(63,'ventas',63,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(64,'ventas',64,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(65,'ventas',65,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(66,'ventas',66,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(67,'ventas',67,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(68,'ventas',68,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(69,'ventas',69,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(70,'ventas',70,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(71,'ventas',71,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(72,'ventas',72,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(73,'ventas',73,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(74,'ventas',74,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(75,'ventas',75,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(76,'ventas',76,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(77,'ventas',77,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(78,'ventas',78,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(79,'ventas',79,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(80,'ventas',80,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(81,'ventas',81,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(82,'ventas',82,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(83,'ventas',83,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(84,'ventas',84,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(85,'ventas',85,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(86,'ventas',86,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(87,'ventas',87,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(88,'ventas',88,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(89,'ventas',89,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(90,'ventas',90,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(91,'ventas',91,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(92,'ventas',92,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(93,'ventas',93,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(94,'ventas',94,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(95,'ventas',95,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(96,'ventas',96,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(97,'ventas',97,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(98,'ventas',98,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(99,'ventas',99,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(100,'ventas',100,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(101,'ventas',101,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(102,'ventas',102,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(103,'ventas',103,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(104,'ventas',104,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(105,'ventas',105,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(106,'ventas',106,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(107,'ventas',107,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(108,'ventas',108,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(109,'ventas',109,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(110,'ventas',110,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(111,'ventas',111,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(112,'ventas',112,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(113,'ventas',113,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(114,'ventas',114,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(115,'ventas',115,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(116,'ventas',116,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(117,'ventas',117,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(118,'ventas',118,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(119,'ventas',119,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(120,'ventas',120,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(121,'ventas',121,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(122,'ventas',122,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(123,'ventas',123,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(124,'ventas',124,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(125,'ventas',125,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(126,'ventas',126,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(127,'ventas',127,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(128,'ventas',128,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(129,'ventas',129,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(130,'ventas',130,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(131,'ventas',131,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(132,'ventas',132,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(133,'ventas',133,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(134,'ventas',134,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(135,'ventas',135,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(136,'ventas',136,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(137,'ventas',137,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(138,'ventas',138,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(139,'ventas',139,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(140,'ventas',140,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(141,'ventas',141,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(142,'ventas',142,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(143,'ventas',143,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(144,'ventas',144,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(145,'ventas',145,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(146,'ventas',146,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(147,'ventas',147,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(148,'ventas',148,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(149,'ventas',149,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(150,'ventas',150,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(151,'ventas',151,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(152,'ventas',152,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(153,'ventas',153,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(154,'ventas',154,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(155,'ventas',155,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(156,'ventas',156,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(157,'ventas',157,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(158,'ventas',158,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(159,'ventas',159,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(160,'ventas',160,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(161,'ventas',161,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(162,'ventas',162,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(163,'ventas',163,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(164,'ventas',164,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(165,'ventas',165,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(166,'ventas',166,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(167,'ventas',167,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(168,'ventas',168,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(169,'ventas',169,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(170,'ventas',170,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(171,'ventas',171,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(172,'ventas',172,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(173,'ventas',173,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(174,'ventas',174,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(175,'ventas',175,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(176,'ventas',176,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(177,'ventas',177,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(178,'ventas',178,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(179,'ventas',179,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(180,'ventas',180,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(181,'ventas',181,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(182,'ventas',182,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(183,'ventas',183,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(184,'ventas',184,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(185,'ventas',185,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(186,'ventas',186,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(187,'ventas',187,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(188,'ventas',188,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(189,'ventas',189,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(190,'ventas',190,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(191,'ventas',191,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(192,'ventas',192,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(193,'ventas',193,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(194,'ventas',194,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(195,'ventas',195,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(196,'ventas',196,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(197,'ventas',197,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(198,'ventas',198,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(199,'ventas',199,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost'),(200,'ventas',200,'2023-02-12 11:36:58','root@localhost','2023-02-12 11:36:58','root@localhost');
/*!40000 ALTER TABLE `REGISTRO_VENTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRABAJADOR_PROVEEDORES`
--

DROP TABLE IF EXISTS `TRABAJADOR_PROVEEDORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRABAJADOR_PROVEEDORES` (
  `trabajador_proveedor_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `edad` int DEFAULT NULL,
  `identificacion_nacional` varchar(255) NOT NULL,
  `proveedor_id` int NOT NULL,
  PRIMARY KEY (`trabajador_proveedor_id`),
  UNIQUE KEY `identificacion_nacional` (`identificacion_nacional`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `trabajador_proveedores_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `PROVEEDORES` (`proveedor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRABAJADOR_PROVEEDORES`
--

LOCK TABLES `TRABAJADOR_PROVEEDORES` WRITE;
/*!40000 ALTER TABLE `TRABAJADOR_PROVEEDORES` DISABLE KEYS */;
INSERT INTO `TRABAJADOR_PROVEEDORES` VALUES (1,'Jyoti','McKeighan',36,'6256073169',137),(2,'Linn','Abrashkin',36,'1257562835',47),(3,'Jarred','Euston',23,'3570473384',65),(4,'Timothee','Jacquemet',23,'4140287195',125),(5,'Belle','Goad',22,'7137999840',143),(6,'Rora','Atherton',33,'4342293021',62),(7,'Basia','Tesdale',19,'3889042058',30),(8,'Meghan','Harroway',37,'8624256984',104),(9,'Debby','Penritt',63,'7224828904',38),(10,'Page','Aizikovitz',44,'1411695615',19),(11,'Darby','Monni',38,'3128894353',162),(12,'Andonis','Kibbye',39,'2428003348',53),(13,'Burton','Duling',33,'3241151867',103),(14,'Jocelin','Olekhov',52,'6669961359',61),(15,'Rycca','Sutheran',37,'1247058441',124),(16,'Elijah','Mongin',18,'6775369492',176),(17,'Coreen','Norley',52,'6990607106',167),(18,'Pascale','Haycroft',20,'8336650415',114),(19,'Lemar','Whelpdale',53,'8650436501',193),(20,'Alyson','Croysdale',46,'4591536688',86),(21,'Dulcine','Beushaw',31,'6332611189',138),(22,'Benn','Grahamslaw',26,'9736946908',147),(23,'Gay','Phillimore',48,'7839181627',191),(24,'Nevil','Streatfield',56,'0116039825',24),(25,'Angel','Beadles',49,'0643989218',146),(26,'Kinnie','Swateridge',38,'1015828396',173),(27,'Dena','Hainge',46,'5810131530',112),(28,'Welbie','Cowdroy',60,'7110403033',133),(29,'Vernor','Pedycan',52,'1980468249',122),(30,'Josi','Segot',28,'6060085873',72),(31,'Elton','Tutton',21,'8180996328',51),(32,'Ollie','Sterman',38,'3053337835',87),(33,'Shanda','Le Moucheux',34,'3325016391',143),(34,'Clarie','Hancell',31,'9155611451',111),(35,'Margarete','Moncreiff',37,'0680607900',148),(36,'Fraser','Kibbye',46,'6065204161',101),(37,'Todd','Christian',35,'6912853641',114),(38,'Elmore','O\'Griffin',37,'8451993575',31),(39,'Elianore','Whatford',63,'6169301228',89),(40,'Lilian','Vance',51,'3939935301',96),(41,'Neysa','Bycraft',21,'9228925426',55),(42,'Emelda','Proffer',65,'8045305363',172),(43,'Grover','Deverson',39,'4286473023',110),(44,'Jeana','Hyman',34,'9362412314',146),(45,'Ailene','Rummery',36,'8217878854',22),(46,'Sisile','Concannon',26,'0616833946',32),(47,'Casi','Adie',32,'2474212310',90),(48,'Zebulen','Awty',21,'9812657851',118),(49,'Nanine','Joesbury',19,'8258053493',119),(50,'Alric','Scamerden',42,'4445082325',179),(51,'Mickey','Kimber',27,'1237332664',128),(52,'Honoria','Deary',36,'5618406667',80),(53,'Marcellus','Lehemann',47,'6714689950',141),(54,'Benson','Trounson',56,'2032323028',135),(55,'Vittorio','Nial',24,'1882940490',183),(56,'Hammad','Inkpen',35,'6341684770',126),(57,'Rubin','Rudgard',40,'4518200187',15),(58,'Karin','Lappin',62,'1913949605',10),(59,'Edita','Booij',52,'0489874169',181),(60,'Culley','Vasser',44,'3208012713',200),(61,'Darrick','Stutely',64,'1104119463',175),(62,'Wallache','Jimson',34,'2996204379',29),(63,'Gerard','Bramich',25,'8928443806',48),(64,'Barri','Layhe',23,'3124563409',119),(65,'Waylan','Fruchter',42,'4076115325',25),(66,'Charmaine','Brecknock',25,'9076321973',4),(67,'Laurens','Menure',31,'6136140403',168),(68,'Shaw','Hartfleet',50,'9602792485',30),(69,'Amerigo','Marfell',27,'8711472332',145),(70,'Fredia','Beckinsall',64,'8596613501',161),(71,'Sigmund','Liff',21,'8779041841',13),(72,'Carmela','Wippermann',59,'3555397206',155),(73,'Carolann','Deniskevich',32,'5468109514',67),(74,'Fitzgerald','Hardey',48,'3000256636',53),(75,'Erny','Christophers',65,'1629303623',8),(76,'Marty','Emmison',60,'0418690146',1),(77,'Janis','Harborow',19,'4056717478',15),(78,'Theresita','Slowgrave',42,'8465429057',94),(79,'Danette','Kilbee',50,'8019846689',93),(80,'Trula','Hancorn',47,'9967898291',43),(81,'Oliy','Sowrey',52,'0756788641',190),(82,'Falkner','Van Halen',22,'8978142974',124),(83,'Laney','Yarnall',46,'2006022318',3),(84,'Vince','Bygott',63,'1196115060',164),(85,'Giselbert','Pescud',39,'4920893973',102),(86,'Brandie','Pinckard',54,'5466531510',146),(87,'North','Antal',48,'3100084845',183),(88,'Sybil','Dugood',38,'1577557670',136),(89,'Luce','Borton',40,'0160773075',87),(90,'Drucy','Redihalgh',44,'5277761888',140),(91,'Maurene','Bettington',29,'9380735251',84),(92,'Kathryne','Hiskey',36,'6596783502',108),(93,'Amos','Wheildon',48,'9599441494',144),(94,'Siegfried','Coiley',18,'9200218040',90),(95,'Dita','McConigal',55,'9480705591',176),(96,'Janis','Crosham',34,'8820133148',61),(97,'Mickey','Kettle',18,'3304839852',151),(98,'Kayla','Foat',26,'2295075734',78),(99,'Kylie','Adamovitch',54,'2647958025',96),(100,'Judah','Pepperell',56,'7205117313',105),(101,'Kameko','Featherstone',23,'8623399757',187),(102,'Alisa','Kesby',57,'9178551129',121),(103,'Rosemaria','Loutheane',64,'0689845014',132),(104,'Queenie','Bonnier',24,'9936704304',22),(105,'Dalston','Easthope',41,'4692362383',13),(106,'Kin','Scurman',41,'1020425342',185),(107,'Mollee','Piche',40,'8898939132',14),(108,'Mina','Goddman',35,'7193868357',6),(109,'Latia','Ladlow',65,'5858543456',28),(110,'Meaghan','Wortt',62,'9075562632',184),(111,'Celestia','O\'Sheils',37,'2735179435',158),(112,'Gar','Aronsohn',25,'6899687445',49),(113,'Penny','Ricioppo',58,'2555866841',16),(114,'Miner','Spadotto',61,'2479446107',156),(115,'Moira','Heggs',46,'2690889471',2),(116,'Arman','Bartholomaus',22,'4835305477',11),(117,'Beilul','Yosselevitch',49,'2225128456',116),(118,'Vinson','McGoogan',31,'3867741360',39),(119,'Leona','St. Paul',45,'5654943065',85),(120,'Jenelle','Duny',31,'6695848165',93),(121,'Knox','Bjorkan',57,'1123109532',188),(122,'Pascal','Barbour',28,'7367936239',26),(123,'Fons','Dun',30,'8058300349',154),(124,'Clotilda','De Dantesie',52,'8272453126',18),(125,'Maureene','Catherick',36,'1324777621',90),(126,'Thacher','Dicey',20,'5035465403',147),(127,'Starr','McFarland',20,'6200072612',94),(128,'Sileas','Longmaid',28,'6415468707',150),(129,'Nels','Brim',35,'7235772735',78),(130,'Kevin','Goggey',34,'9892552652',86),(131,'Blanch','Standall',24,'7810021125',126),(132,'Lexine','Cashell',44,'6242718960',129),(133,'Keen','Whittock',61,'4129624245',55),(134,'Pennie','Cradoc',37,'7128953108',81),(135,'Alwin','Radmore',64,'6841192834',170),(136,'Preston','MacGiolla',37,'0648851923',41),(137,'Isobel','Kinker',62,'6092136988',70),(138,'Arny','Shorie',21,'5157592086',200),(139,'Abagail','Manjot',31,'8336002189',114),(140,'Ida','Whellams',29,'8798383159',48),(141,'Valentine','Cordsen',53,'7444767025',152),(142,'Madelle','Farlham',36,'3603352211',24),(143,'Emmye','Summerell',49,'1611722594',111),(144,'Torrin','Larcier',19,'9809276370',122),(145,'Claude','Bartolijn',36,'8336641203',10),(146,'Shantee','Macklin',50,'6706415006',116),(147,'Dex','Garrals',47,'2351591933',162),(148,'Wrennie','Melonby',58,'7534310377',129),(149,'Marian','Andreacci',50,'3342397195',197),(150,'Deloris','Goscomb',57,'1345088280',141),(151,'Dedie','Mullany',64,'0862196000',8),(152,'Cobby','Le Jean',63,'9198744712',122),(153,'Caty','Lawrenson',64,'8943252900',98),(154,'Bibby','Coddrington',20,'9828453053',68),(155,'Ernestus','Pordall',34,'4280184143',27),(156,'Roze','Scalera',54,'9641331345',32),(157,'Abby','Yegorev',61,'2154164560',76),(158,'Janaye','Kollasch',57,'9361167014',111),(159,'Christy','Mountlow',57,'8049352250',164),(160,'Jamie','Champneys',23,'6339402259',182),(161,'Rozelle','Jaram',58,'6116033512',153),(162,'Wells','Clemens',57,'5296120787',105),(163,'Barbra','Kennett',26,'6594214748',142),(164,'Rees','Ramos',29,'7086916412',37),(165,'Loutitia','Caldicott',29,'5420729873',14),(166,'Maurene','Kerbey',45,'2570686611',33),(167,'Ange','Corssen',19,'4443506462',68),(168,'Brett','Keepence',46,'5140746212',63),(169,'Maitilde','Dumberrill',64,'0384243509',131),(170,'Clive','Muccino',65,'3465991281',56),(171,'Carissa','Van Dijk',36,'7863675081',108),(172,'Anastassia','Chiechio',52,'1514829746',200),(173,'Kirbie','Lepere',40,'5666334158',75),(174,'Doll','Ubee',51,'2671149425',47),(175,'Quent','Alexandersen',30,'1262629136',49),(176,'Giorgi','Fattori',21,'3280965349',148),(177,'Dahlia','Perrinchief',24,'7651431847',29),(178,'Darius','Smith',52,'5748719320',101),(179,'Tommie','Crispin',31,'4306010007',105),(180,'Anatol','Fawdry',56,'5613040184',125),(181,'Lillis','Cordelet',24,'1166721701',124),(182,'Gottfried','Chowne',56,'2602010081',90),(183,'Myrlene','Gumly',54,'8636119286',13),(184,'Mortimer','Iacomo',38,'2183505311',13),(185,'Nerta','Longford',63,'3779871785',100),(186,'Jordana','Simonich',28,'2992372749',121),(187,'Ryan','Blackney',65,'7598297088',104),(188,'Aubert','Jiroudek',56,'4206293716',25),(189,'Conrad','Elgood',36,'9841953625',52),(190,'Etienne','Milksop',19,'1765751136',80),(191,'Reena','Dymock',54,'0341914657',171),(192,'Josie','Heindl',22,'0768426340',139),(193,'Donn','Dederich',20,'2925805965',93),(194,'Andy','Hutchison',54,'3512605230',28),(195,'Feodora','Lording',60,'1644892332',73),(196,'Zed','Halleybone',45,'8896508738',151),(197,'Allan','Kaman',53,'2038976880',167),(198,'Mack','Czapla',21,'8037483029',32),(199,'Darb','Pennycook',36,'9382022627',113),(200,'Arlen','Rivel',39,'3939155721',117);
/*!40000 ALTER TABLE `TRABAJADOR_PROVEEDORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENTAS`
--

DROP TABLE IF EXISTS `VENTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENTAS` (
  `venta_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`venta_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `CLIENTES` (`cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `EMPLEADOS` (`empleado_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENTAS`
--

LOCK TABLES `VENTAS` WRITE;
/*!40000 ALTER TABLE `VENTAS` DISABLE KEYS */;
INSERT INTO `VENTAS` VALUES (1,351,45,'2022-10-23'),(2,463,5,'2022-02-19'),(3,147,7,'2022-11-28'),(4,119,9,'2022-07-24'),(5,297,34,'2022-03-25'),(6,58,17,'2022-08-27'),(7,59,45,'2022-05-17'),(8,389,40,'2022-07-03'),(9,475,49,'2022-01-22'),(10,304,42,'2022-11-22'),(11,57,17,'2022-10-18'),(12,323,49,'2022-12-14'),(13,221,16,'2022-07-08'),(14,22,31,'2022-02-08'),(15,284,9,'2022-09-10'),(16,125,8,'2022-02-18'),(17,307,1,'2022-02-21'),(18,61,38,'2022-09-18'),(19,227,23,'2022-09-25'),(20,64,40,'2022-05-03'),(21,308,27,'2022-09-11'),(22,474,22,'2022-07-11'),(23,41,48,'2022-07-05'),(24,252,27,'2022-09-26'),(25,398,28,'2022-01-11'),(26,258,11,'2022-07-17'),(27,462,16,'2022-02-06'),(28,187,46,'2022-06-04'),(29,142,6,'2022-05-14'),(30,82,33,'2022-10-14'),(31,316,19,'2022-04-09'),(32,289,45,'2022-09-29'),(33,247,33,'2022-10-21'),(34,376,7,'2022-11-15'),(35,470,2,'2022-11-28'),(36,22,38,'2021-12-20'),(37,80,27,'2022-11-30'),(38,416,30,'2022-01-04'),(39,127,14,'2022-02-15'),(40,17,43,'2022-01-22'),(41,341,42,'2022-09-27'),(42,14,47,'2022-12-16'),(43,295,3,'2022-06-16'),(44,2,44,'2022-11-04'),(45,424,24,'2022-01-11'),(46,352,23,'2022-03-04'),(47,350,4,'2022-02-09'),(48,410,20,'2022-08-23'),(49,192,43,'2022-11-06'),(50,474,4,'2022-01-25'),(51,112,42,'2022-06-03'),(52,192,2,'2022-08-03'),(53,244,49,'2022-02-16'),(54,99,14,'2022-12-18'),(55,352,27,'2022-01-29'),(56,372,16,'2022-11-02'),(57,336,10,'2022-05-22'),(58,51,8,'2022-01-15'),(59,24,29,'2022-07-20'),(60,407,21,'2022-08-18'),(61,69,22,'2022-11-27'),(62,62,2,'2022-09-06'),(63,234,27,'2022-02-22'),(64,149,39,'2022-12-17'),(65,174,35,'2022-04-20'),(66,103,18,'2022-12-06'),(67,444,24,'2022-01-24'),(68,301,9,'2022-12-09'),(69,212,5,'2022-04-02'),(70,18,31,'2022-01-06'),(71,144,18,'2022-04-25'),(72,411,47,'2022-12-02'),(73,412,25,'2022-05-31'),(74,36,1,'2022-10-05'),(75,458,19,'2021-12-21'),(76,99,31,'2022-11-10'),(77,15,47,'2022-02-12'),(78,192,33,'2022-11-11'),(79,341,39,'2022-03-05'),(80,273,43,'2022-06-21'),(81,224,12,'2022-09-26'),(82,462,30,'2022-06-11'),(83,133,50,'2022-05-31'),(84,15,32,'2021-12-21'),(85,13,13,'2022-09-08'),(86,269,45,'2022-04-13'),(87,137,14,'2022-03-18'),(88,248,18,'2022-01-22'),(89,88,39,'2022-11-10'),(90,82,26,'2022-02-16'),(91,205,35,'2022-08-08'),(92,341,34,'2021-12-27'),(93,66,27,'2022-04-26'),(94,338,49,'2022-01-24'),(95,14,43,'2022-03-24'),(96,367,15,'2022-11-09'),(97,100,9,'2022-05-31'),(98,79,22,'2022-03-05'),(99,315,9,'2022-05-02'),(100,290,27,'2022-04-01'),(101,470,49,'2022-05-17'),(102,103,45,'2022-09-03'),(103,154,32,'2022-09-12'),(104,217,38,'2022-02-13'),(105,309,26,'2022-07-23'),(106,73,2,'2022-08-10'),(107,1,49,'2022-08-21'),(108,310,40,'2022-05-28'),(109,150,31,'2022-01-11'),(110,103,28,'2022-07-31'),(111,47,26,'2022-12-17'),(112,494,38,'2022-01-09'),(113,86,30,'2022-02-04'),(114,49,35,'2022-11-28'),(115,330,46,'2022-02-21'),(116,182,23,'2021-12-22'),(117,14,32,'2022-08-16'),(118,89,45,'2022-07-27'),(119,302,50,'2022-07-23'),(120,262,6,'2022-09-04'),(121,108,26,'2022-09-11'),(122,346,31,'2022-10-10'),(123,140,4,'2022-04-17'),(124,270,39,'2022-12-14'),(125,98,16,'2022-09-16'),(126,317,15,'2022-07-26'),(127,240,44,'2022-09-09'),(128,123,2,'2022-01-18'),(129,232,37,'2022-09-02'),(130,156,14,'2022-02-13'),(131,306,28,'2022-09-04'),(132,473,21,'2022-06-04'),(133,106,13,'2022-02-02'),(134,36,48,'2022-03-30'),(135,438,15,'2022-04-28'),(136,191,12,'2022-04-11'),(137,107,2,'2022-12-05'),(138,225,48,'2022-08-16'),(139,63,32,'2022-02-03'),(140,207,48,'2022-08-30'),(141,115,27,'2022-10-15'),(142,58,33,'2022-10-22'),(143,285,7,'2022-04-03'),(144,148,30,'2022-05-16'),(145,359,25,'2022-07-10'),(146,32,7,'2022-11-24'),(147,187,15,'2022-04-04'),(148,64,41,'2022-08-15'),(149,23,44,'2022-02-27'),(150,477,15,'2021-12-28'),(151,491,8,'2021-12-31'),(152,248,26,'2022-08-23'),(153,318,46,'2022-08-20'),(154,457,21,'2022-06-25'),(155,329,3,'2022-10-27'),(156,444,2,'2022-05-15'),(157,419,19,'2022-10-04'),(158,419,2,'2022-03-25'),(159,442,43,'2022-12-02'),(160,6,41,'2022-04-05'),(161,410,23,'2022-10-09'),(162,314,4,'2022-12-05'),(163,310,7,'2022-10-23'),(164,373,24,'2022-04-01'),(165,312,17,'2022-06-09'),(166,395,13,'2022-09-18'),(167,137,18,'2022-07-27'),(168,406,38,'2022-12-10'),(169,272,44,'2022-03-20'),(170,196,10,'2022-04-13'),(171,326,31,'2022-01-11'),(172,40,4,'2022-08-14'),(173,25,16,'2022-02-20'),(174,169,8,'2022-08-01'),(175,345,41,'2022-05-02'),(176,232,29,'2022-07-02'),(177,114,30,'2022-12-19'),(178,411,33,'2022-10-09'),(179,209,12,'2022-12-17'),(180,401,25,'2022-09-28'),(181,48,20,'2022-05-18'),(182,195,49,'2022-07-15'),(183,97,37,'2022-03-06'),(184,178,50,'2022-07-26'),(185,11,49,'2022-02-02'),(186,49,13,'2022-12-06'),(187,1,27,'2022-10-11'),(188,65,29,'2022-11-15'),(189,420,2,'2022-02-12'),(190,170,26,'2022-06-05'),(191,182,36,'2022-10-13'),(192,91,40,'2021-12-26'),(193,463,36,'2022-10-15'),(194,486,50,'2022-06-04'),(195,68,44,'2022-06-15'),(196,393,9,'2022-01-25'),(197,330,44,'2022-09-18'),(198,113,28,'2022-10-12'),(199,23,4,'2022-10-07'),(200,488,29,'2022-04-07');
/*!40000 ALTER TABLE `VENTAS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_new_ventas` AFTER INSERT ON `ventas` FOR EACH ROW INSERT INTO `nuevas_ventas`(venta_id, cliente_id, empleado_id,fecha) VALUES (NEW.venta_id, NEW.cliente_id, NEW.empleado_id,NEW.fecha) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_venta_aud` AFTER INSERT ON `ventas` FOR EACH ROW INSERT INTO `registro_ventas`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('ventas', NEW.venta_id, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_venta_aud` BEFORE UPDATE ON `ventas` FOR EACH ROW UPDATE `registro_ventas` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER()
WHERE entity_id = OLD.venta_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `VENTAS_DETALLADAS`
--

DROP TABLE IF EXISTS `VENTAS_DETALLADAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENTAS_DETALLADAS` (
  `venta_detallada_id` int NOT NULL AUTO_INCREMENT,
  `venta_id` int NOT NULL,
  `material_id` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`venta_detallada_id`),
  KEY `venta_id` (`venta_id`),
  KEY `material_id` (`material_id`),
  CONSTRAINT `ventas_detalladas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `VENTAS` (`venta_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ventas_detalladas_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `MATERIALES` (`material_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENTAS_DETALLADAS`
--

LOCK TABLES `VENTAS_DETALLADAS` WRITE;
/*!40000 ALTER TABLE `VENTAS_DETALLADAS` DISABLE KEYS */;
INSERT INTO `VENTAS_DETALLADAS` VALUES (1,150,9,2),(2,13,56,15),(3,67,172,9),(4,25,183,7),(5,195,63,2),(6,48,150,14),(7,15,43,2),(8,55,115,5),(9,14,26,7),(10,25,147,10),(11,127,184,2),(12,171,154,15),(13,47,20,9),(14,3,178,4),(15,158,104,2),(16,42,194,5),(17,119,69,14),(18,57,165,1),(19,176,130,5),(20,14,18,5),(21,156,26,5),(22,21,107,7),(23,21,34,5),(24,193,42,13),(25,39,32,10),(26,10,174,4),(27,102,11,8),(28,126,125,7),(29,23,96,4),(30,187,141,1),(31,191,46,5),(32,110,111,9),(33,130,12,8),(34,56,36,7),(35,161,117,8),(36,9,73,6),(37,111,58,3),(38,61,22,2),(39,175,1,3),(40,62,103,11),(41,52,176,13),(42,98,179,14),(43,56,177,10),(44,94,73,2),(45,162,88,1),(46,51,177,2),(47,80,107,7),(48,167,131,4),(49,17,42,15),(50,169,156,7),(51,139,187,11),(52,190,128,13),(53,170,121,15),(54,171,178,11),(55,142,2,5),(56,34,82,12),(57,109,70,13),(58,79,49,1),(59,192,74,12),(60,15,146,2),(61,17,63,13),(62,122,77,3),(63,102,59,1),(64,163,11,6),(65,185,84,12),(66,195,98,2),(67,82,164,5),(68,47,21,6),(69,71,9,7),(70,168,137,5),(71,181,150,7),(72,162,130,10),(73,150,84,2),(74,104,169,13),(75,30,60,9),(76,99,32,4),(77,60,16,13),(78,189,169,15),(79,106,49,2),(80,85,71,4),(81,101,10,3),(82,110,126,11),(83,150,143,3),(84,141,121,1),(85,49,88,4),(86,150,63,6),(87,53,134,8),(88,53,109,9),(89,13,43,13),(90,124,83,8),(91,56,137,7),(92,1,87,15),(93,41,92,13),(94,1,187,14),(95,130,98,15),(96,191,25,8),(97,48,46,4),(98,25,133,14),(99,64,168,12),(100,147,79,1),(101,98,147,6),(102,101,7,10),(103,187,100,15),(104,71,161,12),(105,105,79,5),(106,42,82,10),(107,109,118,15),(108,111,44,4),(109,11,100,14),(110,63,49,10),(111,135,168,9),(112,7,110,11),(113,146,159,8),(114,76,45,2),(115,174,36,14),(116,21,43,4),(117,87,26,7),(118,159,134,4),(119,142,183,1),(120,169,127,9),(121,57,110,11),(122,119,109,12),(123,67,143,15),(124,182,95,13),(125,56,85,8),(126,188,151,4),(127,119,167,1),(128,113,42,6),(129,177,191,9),(130,90,110,5),(131,197,14,2),(132,97,44,2),(133,125,60,6),(134,146,124,8),(135,166,28,2),(136,24,119,11),(137,177,98,11),(138,45,104,7),(139,57,18,1),(140,164,43,5),(141,137,35,10),(142,13,126,14),(143,63,82,8),(144,82,81,12),(145,21,22,8),(146,137,192,7),(147,137,17,12),(148,3,109,15),(149,59,53,2),(150,57,149,10),(151,37,156,6),(152,47,131,2),(153,40,153,6),(154,110,78,8),(155,1,186,13),(156,34,158,7),(157,12,113,4),(158,56,4,3),(159,127,155,11),(160,172,36,13),(161,113,99,5),(162,133,96,9),(163,177,28,5),(164,162,169,6),(165,40,35,5),(166,44,46,2),(167,68,132,3),(168,67,140,8),(169,142,10,14),(170,31,142,7),(171,107,160,5),(172,11,27,14),(173,101,110,11),(174,97,80,5),(175,20,181,10),(176,38,60,4),(177,35,84,15),(178,137,44,9),(179,145,119,5),(180,191,124,6),(181,102,74,5),(182,185,17,11),(183,132,186,13),(184,62,52,13),(185,47,157,5),(186,41,108,4),(187,194,102,3),(188,189,111,7),(189,101,44,15),(190,155,86,8),(191,169,109,10),(192,133,115,15),(193,25,81,7),(194,169,94,4),(195,147,179,1),(196,148,69,12),(197,168,27,7),(198,200,95,7),(199,122,174,3),(200,38,127,8),(201,38,47,15),(202,105,111,14),(203,122,95,2),(204,1,97,8),(205,45,77,5),(206,127,89,8),(207,36,181,13),(208,49,167,9),(209,92,61,2),(210,188,175,6),(211,165,97,15),(212,14,185,8),(213,181,21,12),(214,199,146,3),(215,165,79,7),(216,81,6,15),(217,2,13,4),(218,98,43,5),(219,31,120,10),(220,43,110,7),(221,126,169,5),(222,128,34,14),(223,51,124,10),(224,25,163,8),(225,136,183,13),(226,16,191,3),(227,75,50,1),(228,2,59,4),(229,50,67,3),(230,186,117,8),(231,64,67,4),(232,40,159,12),(233,150,22,9),(234,52,117,10),(235,91,188,9),(236,24,165,5),(237,126,120,15),(238,4,22,6),(239,77,188,2),(240,38,8,2),(241,28,138,10),(242,102,72,3),(243,131,175,7),(244,4,69,13),(245,44,65,3),(246,85,112,8),(247,169,92,14),(248,136,165,12),(249,90,128,11),(250,27,132,4),(251,13,190,12),(252,52,84,3),(253,59,53,3),(254,4,24,9),(255,66,39,11),(256,14,56,1),(257,3,1,9),(258,98,116,2),(259,40,125,10),(260,21,34,15),(261,105,146,14),(262,12,151,3),(263,138,122,5),(264,189,133,6),(265,100,129,6),(266,192,56,15),(267,35,43,7),(268,52,79,3),(269,51,66,4),(270,95,147,2),(271,149,190,14),(272,121,54,2),(273,62,96,9),(274,14,40,8),(275,145,60,6),(276,161,186,10),(277,10,5,1),(278,34,84,15),(279,18,14,12),(280,97,157,11),(281,54,17,7),(282,22,47,4),(283,179,111,10),(284,37,72,6),(285,28,192,2),(286,86,142,2),(287,134,159,9),(288,96,49,11),(289,35,146,8),(290,191,59,8),(291,17,46,7),(292,52,135,13),(293,67,90,11),(294,7,175,6),(295,115,95,1),(296,155,193,11),(297,10,33,10),(298,5,60,5),(299,116,26,2),(300,113,98,5),(301,148,56,4),(302,190,188,11),(303,88,112,15),(304,102,144,10),(305,126,71,15),(306,190,52,6),(307,161,31,15),(308,57,166,7),(309,45,158,13),(310,103,100,2),(311,182,2,6),(312,135,181,2),(313,93,28,8),(314,149,76,7),(315,12,167,14),(316,181,137,4),(317,91,119,13),(318,110,58,12),(319,57,89,8),(320,192,35,15),(321,20,55,11),(322,64,127,9),(323,142,172,8),(324,57,113,3),(325,66,99,12),(326,31,95,15),(327,19,162,11),(328,99,185,1),(329,106,104,5),(330,8,157,6),(331,172,40,13),(332,87,185,5),(333,129,82,1),(334,35,120,14),(335,114,154,13),(336,191,95,13),(337,116,48,6),(338,103,108,14),(339,129,50,15),(340,31,174,15),(341,183,17,14),(342,73,24,12),(343,26,62,8),(344,128,172,15),(345,85,76,4),(346,114,11,7),(347,52,137,4),(348,196,65,3),(349,104,46,15),(350,70,90,7),(351,32,16,7),(352,173,61,4),(353,87,68,12),(354,57,166,13),(355,13,141,10),(356,179,169,10),(357,141,114,2),(358,119,104,11),(359,148,120,12),(360,88,117,13),(361,30,53,8),(362,119,35,13),(363,163,144,2),(364,26,44,1),(365,168,70,8),(366,146,128,10),(367,141,89,11),(368,95,157,2),(369,51,143,7),(370,133,61,14),(371,66,34,6),(372,9,5,9),(373,6,53,6),(374,57,175,2),(375,9,18,13),(376,155,178,13),(377,84,165,9),(378,44,171,12),(379,28,162,2),(380,186,52,14),(381,116,72,2),(382,67,128,9),(383,75,190,14),(384,191,168,12),(385,197,140,14),(386,178,163,10),(387,124,97,1),(388,141,37,1),(389,76,178,8),(390,10,22,14),(391,186,174,6),(392,199,174,7),(393,33,125,11),(394,127,37,10),(395,148,138,3),(396,16,71,7),(397,24,39,1),(398,4,157,12),(399,90,105,3),(400,8,101,5),(401,24,104,15),(402,43,82,6),(403,86,141,15),(404,50,109,3),(405,161,188,10),(406,174,16,2),(407,35,179,12),(408,21,33,6),(409,139,85,10),(410,67,45,2),(411,107,8,6),(412,102,13,6),(413,34,134,9),(414,18,142,15),(415,116,114,5),(416,13,58,6),(417,166,118,2),(418,54,79,6),(419,81,181,9),(420,132,10,5),(421,175,167,8),(422,187,77,1),(423,95,121,4),(424,173,80,9),(425,50,124,11),(426,174,187,12),(427,69,126,8),(428,172,80,14),(429,151,96,11),(430,49,156,3),(431,20,118,14),(432,167,98,6),(433,149,142,14),(434,79,69,2),(435,129,6,13),(436,109,64,14),(437,149,185,5),(438,198,134,14),(439,199,1,7),(440,19,57,10),(441,157,22,4),(442,162,101,1),(443,166,23,15),(444,14,160,7),(445,82,175,2),(446,84,190,2),(447,129,174,15),(448,160,80,6),(449,65,165,2),(450,121,6,11),(451,55,167,2),(452,55,138,5),(453,16,16,1),(454,50,42,15),(455,197,45,6),(456,151,6,6),(457,70,191,14),(458,59,159,3),(459,198,79,10),(460,106,156,4),(461,3,188,15),(462,168,53,3),(463,64,168,6),(464,166,15,3),(465,105,137,11),(466,122,108,14),(467,146,28,1),(468,9,107,1),(469,179,118,2),(470,89,184,14),(471,31,67,11),(472,147,133,9),(473,195,45,14),(474,152,76,9),(475,199,36,14),(476,95,80,1),(477,66,181,3),(478,76,153,2),(479,42,80,1),(480,72,117,5),(481,174,177,5),(482,76,151,1),(483,66,15,8),(484,151,183,1),(485,135,60,12),(486,160,65,9),(487,69,185,9),(488,191,181,3),(489,70,31,12),(490,24,156,4),(491,25,69,13),(492,158,55,8),(493,85,131,13),(494,76,17,11),(495,169,86,7),(496,92,111,15),(497,79,182,12),(498,131,60,10),(499,26,186,4),(500,175,106,6),(501,28,57,13),(502,149,25,10),(503,85,36,5),(504,196,128,10),(505,15,180,6),(506,123,161,14),(507,130,190,11),(508,12,72,3),(509,42,61,8),(510,15,35,14),(511,41,47,13),(512,142,34,11),(513,51,100,5),(514,126,181,15),(515,40,164,14),(516,87,4,3),(517,192,52,1),(518,45,23,10),(519,158,109,12),(520,171,33,11),(521,186,157,1),(522,81,64,11),(523,85,192,13),(524,114,167,1),(525,118,33,6),(526,124,46,9),(527,78,86,10),(528,90,171,1),(529,153,85,7),(530,106,117,4),(531,101,89,1),(532,88,130,10),(533,157,28,14),(534,26,27,9),(535,178,138,13),(536,64,50,15),(537,27,81,15),(538,182,57,5),(539,131,139,15),(540,98,33,15),(541,192,181,12),(542,161,51,5),(543,67,145,1),(544,1,155,7),(545,177,130,6),(546,31,65,4),(547,125,143,10),(548,149,1,8),(549,178,64,3),(550,161,93,11),(551,200,27,11),(552,139,103,6),(553,64,93,2),(554,52,138,11),(555,112,24,15),(556,56,31,5),(557,138,167,2),(558,21,122,2),(559,109,109,13),(560,170,70,2),(561,156,24,3),(562,197,138,10),(563,77,71,2),(564,18,158,15),(565,104,1,8),(566,50,56,8),(567,67,109,15),(568,100,48,15),(569,127,194,3),(570,32,161,9),(571,195,124,8),(572,188,31,12),(573,186,140,1),(574,49,13,13),(575,63,2,14),(576,30,104,3),(577,55,112,11),(578,90,161,4),(579,70,80,2),(580,178,115,5),(581,191,52,13),(582,82,112,1),(583,81,43,6),(584,27,181,9),(585,71,66,2),(586,57,30,4),(587,189,85,1),(588,181,23,10),(589,13,27,13),(590,154,166,3),(591,75,114,15),(592,18,10,3),(593,76,44,7),(594,196,2,3),(595,4,134,13),(596,140,46,8),(597,52,20,5),(598,35,50,11),(599,129,135,14),(600,12,158,13),(601,168,97,6),(602,157,30,12),(603,115,117,12),(604,41,75,5),(605,180,137,3),(606,193,157,5),(607,36,99,8),(608,84,172,10),(609,88,168,2),(610,44,17,12),(611,100,151,12),(612,163,154,1),(613,71,178,3),(614,9,21,12),(615,115,152,14),(616,9,46,9),(617,160,40,2),(618,111,57,5),(619,83,36,4),(620,113,108,6),(621,100,192,5),(622,180,84,5),(623,182,86,1),(624,39,20,6),(625,89,55,6),(626,90,123,5),(627,113,15,5),(628,34,24,8),(629,48,72,10),(630,129,23,7),(631,86,125,6),(632,79,4,6),(633,61,141,2),(634,80,90,10),(635,163,34,11),(636,165,22,1),(637,177,136,4),(638,81,17,8),(639,51,72,13),(640,175,154,10),(641,118,147,1),(642,85,7,15),(643,43,24,6),(644,41,72,5),(645,154,163,4),(646,152,160,12),(647,94,150,11),(648,17,160,9),(649,183,53,2),(650,53,29,9),(651,168,87,7),(652,154,175,15),(653,67,70,5),(654,75,23,6),(655,163,119,3),(656,87,60,14),(657,27,71,15),(658,19,8,4),(659,154,141,15),(660,185,131,5),(661,182,184,10),(662,175,168,6),(663,67,133,15),(664,71,159,11),(665,78,62,6),(666,157,10,11),(667,186,177,7),(668,139,77,2),(669,9,190,5),(670,94,74,5),(671,51,27,14),(672,126,96,15),(673,173,193,12),(674,26,83,1),(675,180,70,5),(676,10,159,3),(677,133,14,8),(678,76,141,1),(679,32,100,13),(680,152,191,9),(681,20,9,8),(682,5,77,9),(683,192,21,13),(684,141,14,8),(685,152,21,1),(686,99,91,2),(687,7,159,10),(688,144,184,15),(689,118,104,14),(690,144,25,10),(691,16,64,10),(692,71,87,6),(693,167,163,7),(694,41,103,13),(695,186,113,1),(696,123,144,11),(697,164,145,5),(698,198,168,8),(699,18,15,1),(700,22,133,2),(701,8,26,1),(702,91,185,7),(703,88,178,5),(704,56,86,6),(705,168,78,6),(706,149,32,8),(707,64,11,13),(708,152,147,14),(709,120,124,4),(710,16,169,10),(711,139,155,15),(712,180,70,2),(713,194,53,6),(714,107,188,4),(715,106,151,3),(716,100,113,7),(717,63,137,4),(718,11,40,7),(719,40,68,10),(720,94,103,7),(721,71,17,7),(722,54,69,6),(723,195,88,6),(724,138,12,13),(725,74,167,9),(726,185,14,11),(727,68,171,13),(728,141,150,1),(729,19,181,11),(730,172,131,8),(731,141,80,11),(732,10,35,8),(733,65,101,5),(734,147,16,10),(735,150,112,12),(736,130,31,8),(737,119,135,8),(738,95,153,6),(739,117,131,7),(740,187,193,9),(741,143,142,3),(742,199,125,11),(743,183,93,4),(744,160,21,14),(745,96,82,14),(746,168,1,12),(747,193,109,6),(748,140,65,1),(749,14,26,3),(750,176,104,13),(751,42,39,8),(752,9,67,1),(753,198,37,13),(754,171,13,14),(755,27,109,11),(756,138,98,10),(757,25,64,12),(758,194,123,8),(759,84,8,8),(760,38,16,11),(761,43,74,3),(762,112,125,11),(763,120,128,1),(764,74,41,4),(765,29,71,15),(766,98,172,9),(767,25,169,12),(768,27,67,8),(769,134,142,4),(770,176,59,1),(771,34,149,13),(772,67,151,11),(773,179,177,13),(774,114,192,3),(775,65,113,7),(776,133,125,15),(777,118,23,3),(778,134,71,15),(779,75,156,3),(780,182,175,7),(781,137,96,8),(782,165,161,7),(783,23,131,9),(784,146,152,14),(785,121,73,14),(786,138,138,2),(787,108,174,15),(788,139,139,11),(789,90,21,14),(790,142,82,11),(791,178,120,2),(792,130,153,2),(793,70,122,15),(794,148,157,14),(795,147,151,7),(796,171,68,7),(797,129,25,9),(798,86,37,12),(799,18,126,14),(800,33,176,10),(801,166,84,3),(802,32,126,5),(803,192,156,12),(804,32,57,12),(805,20,48,7),(806,72,62,1),(807,171,119,10),(808,164,158,12),(809,190,75,15),(810,53,41,4),(811,152,156,6),(812,10,25,9),(813,12,181,12),(814,86,28,15),(815,187,27,7),(816,5,15,10),(817,138,84,7),(818,81,43,15),(819,159,146,11),(820,153,114,13),(821,85,21,8),(822,64,52,12),(823,28,42,14),(824,109,141,14),(825,90,26,6),(826,171,189,2),(827,167,11,9),(828,46,170,7),(829,54,18,14),(830,152,132,5),(831,169,51,5),(832,40,104,13),(833,48,147,15),(834,164,10,10),(835,167,95,7),(836,193,52,2),(837,76,76,3),(838,12,182,9),(839,195,153,7),(840,18,48,5),(841,114,112,2),(842,196,81,12),(843,1,71,1),(844,178,130,10),(845,92,40,8),(846,154,21,10),(847,68,2,9),(848,98,143,9),(849,131,143,5),(850,97,82,8),(851,1,2,13),(852,95,35,6),(853,196,97,13),(854,166,127,12),(855,117,100,5),(856,188,194,3),(857,48,24,14),(858,30,99,5),(859,22,150,1),(860,56,168,5),(861,157,46,12),(862,36,92,1),(863,24,34,15),(864,63,47,12),(865,150,128,9),(866,107,47,13),(867,101,152,7),(868,127,65,4),(869,19,131,14),(870,13,27,15),(871,24,18,6),(872,13,50,6),(873,75,134,12),(874,147,153,5),(875,67,8,1),(876,190,20,6),(877,18,57,10),(878,60,50,10),(879,53,135,1),(880,63,29,7),(881,103,139,1),(882,62,117,2),(883,177,10,12),(884,25,103,14),(885,111,73,11),(886,170,98,3),(887,67,53,8),(888,131,74,1),(889,156,147,5),(890,131,172,6),(891,111,8,10),(892,19,1,13),(893,117,167,10),(894,153,95,15),(895,62,24,5),(896,187,141,2),(897,65,132,2),(898,41,108,10),(899,191,190,8),(900,53,119,15),(901,131,86,5),(902,197,118,15),(903,21,90,9),(904,11,35,6),(905,168,193,9),(906,192,48,6),(907,17,164,14),(908,50,90,14),(909,112,160,13),(910,63,179,11),(911,139,43,11),(912,55,68,1),(913,92,88,8),(914,25,101,7),(915,110,99,11),(916,22,108,15),(917,122,73,13),(918,157,65,1),(919,70,145,1),(920,192,51,3),(921,71,92,6),(922,50,92,10),(923,127,83,4),(924,166,160,2),(925,93,139,7),(926,61,187,6),(927,196,101,10),(928,109,125,12),(929,68,191,13),(930,109,98,4),(931,3,191,2),(932,75,143,2),(933,122,68,9),(934,89,56,8),(935,75,147,4),(936,151,6,4),(937,93,142,14),(938,141,113,13),(939,123,122,6),(940,48,27,10),(941,197,57,1),(942,147,6,4),(943,46,33,15),(944,41,59,2),(945,117,87,3),(946,103,43,6),(947,109,18,3),(948,26,77,7),(949,173,48,4),(950,145,46,8),(951,13,159,11),(952,176,2,7),(953,30,101,13),(954,176,36,6),(955,105,103,11),(956,51,122,15),(957,34,188,15),(958,19,97,15),(959,191,57,3),(960,42,180,3),(961,5,86,6),(962,196,116,9),(963,169,126,4),(964,150,183,14),(965,163,3,4),(966,171,165,9),(967,127,80,13),(968,184,10,2),(969,166,5,6),(970,136,119,9),(971,71,67,13),(972,182,78,4),(973,83,109,10),(974,151,39,13),(975,189,44,2),(976,168,139,11),(977,158,186,12),(978,149,152,5),(979,136,117,14),(980,27,5,5),(981,172,193,5),(982,142,118,10),(983,5,91,5),(984,58,80,12),(985,132,70,12),(986,104,36,1),(987,141,67,4),(988,65,143,15),(989,13,9,8),(990,150,77,3),(991,141,182,5),(992,101,53,7),(993,125,133,2),(994,183,53,5),(995,30,158,15),(996,195,158,5),(997,152,117,4),(998,137,179,2),(999,86,154,8),(1000,115,140,15);
/*!40000 ALTER TABLE `VENTAS_DETALLADAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ventas_detalladas_extendidas`
--

DROP TABLE IF EXISTS `ventas_detalladas_extendidas`;
/*!50001 DROP VIEW IF EXISTS `ventas_detalladas_extendidas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_detalladas_extendidas` AS SELECT 
 1 AS `venta_id`,
 1 AS `nombre`,
 1 AS `precio`,
 1 AS `cantidad`,
 1 AS `Total`,
 1 AS `fecha`,
 1 AS `Nombre_Cliente`,
 1 AS `Nombre_Empleado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'ecommerce_sql_course'
--

--
-- Dumping routines for database 'ecommerce_sql_course'
--
/*!50003 DROP FUNCTION IF EXISTS `seleccionar_ventaid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `seleccionar_ventaid`(venta_id INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE resultado integer;
SET resultado = venta_id;
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_compras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_compras`(numero_compra INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE resultado integer;
SET resultado = (SELECT T.Total_de_compra
FROM (SELECT c.compra_id, SUM((m.precio*c.cantidad)) as 'Total_de_compra'
FROM compras_detalladas c JOIN materiales m
ON c.material_id = m.material_id
GROUP BY compra_id
ORDER BY compra_id ASC) T
WHERE T.compra_id = numero_compra);
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_venta`(numero_venta INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE resultado integer;
SET resultado = (SELECT T.Total_de_venta 
FROM (SELECT v.venta_id, SUM((m.precio*v.cantidad)) as 'Total_de_venta'
FROM ventas_detalladas v JOIN materiales m
ON v.material_id = m.material_id
GROUP BY venta_id
ORDER BY venta_id ASC) T
WHERE T.venta_id = numero_venta);
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_products`()
BEGIN
	SELECT * FROM materiales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_products_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_products_order`(IN field CHAR(20),IN input CHAR(20))
BEGIN
	IF field <> '' THEN
		SET @material_order = concat('ORDER BY ', field,' ',input);
	ELSE
		SET @material_order = '';
	END IF;
    
    SET @clausula = concat('SELECT * FROM materiales ', @material_order);
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_compras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_compras`(IN trabajador_proveedor_id INT,IN empleado_id INT,OUT output VARCHAR(150))
BEGIN
	IF trabajador_proveedor_id BETWEEN 1 AND (SELECT COUNT(1) FROM trabajador_proveedor) AND empleado_id BETWEEN 1 AND (SELECT COUNT(1) FROM empleados) THEN
		INSERT INTO compras (trabajador_proveedor_id,empleado_id,fecha) VALUES (trabajador_proveedor_id,empleado_id,CURRENT_DATE());
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar compra, trabajador_proveedor_id o empleado_id erroneo';
	END IF;
    
    SET @clausula = ('SELECT * FROM compras ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_compras_detalladas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_compras_detalladas`(IN compra_id INT,IN material_id INT,IN cantidad INT,OUT output VARCHAR(50))
BEGIN
	IF material_id BETWEEN 1 AND (SELECT COUNT(1) FROM materiales) AND compra_id BETWEEN 1 AND (SELECT COUNT(1) FROM compras) THEN
		INSERT INTO compras_detalladas (compra_id,material_id,cantidad) VALUES (compra_id,material_id,cantidad);
		SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar compra';
	END IF;
    SET @clausula = ('SELECT * FROM compras_detalladas ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_product`(IN nombre CHAR(20), IN proveedor_id INT,IN precio INT,IN inventario INT,OUT output VARCHAR(50))
BEGIN
	IF  nombre <> '' AND proveedor_id BETWEEN 1 AND 200 THEN
		INSERT INTO materiales (proveedor_id,nombre,precio,inventario) VALUES (proveedor_id,(nombre),precio,inventario);
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'ERROR: no se pudo crear el producto indicado';
	END IF;
    
    SET @clausula = 'SELECT * FROM materiales ORDER BY material_id DESC ';
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_ventas`(IN cliente_id INT,IN empleado_id INT,OUT output VARCHAR(50))
BEGIN
	IF cliente_id BETWEEN 1 AND (SELECT COUNT(1) FROM clientes) AND empleado_id BETWEEN 1 AND (SELECT COUNT(1) FROM empleados) THEN
		INSERT INTO ventas (cliente_id,empleado_id,fecha) VALUES (cliente_id,empleado_id,CURRENT_DATE());
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar venta, cliente_id o empleado_id erroneo';
	END IF;
    
    SET @clausula = ('SELECT * FROM ventas ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_ventas_detalladas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_ventas_detalladas`(IN venta_id INT,IN material_id INT,IN cantidad INT,OUT output VARCHAR(50))
BEGIN
	IF material_id BETWEEN 1 AND (SELECT COUNT(1) FROM materiales) AND venta_id BETWEEN 1 AND (SELECT COUNT(1) FROM ventas) THEN
		INSERT INTO ventas_detalladas (venta_id,material_id,cantidad) VALUES (venta_id,material_id,cantidad);
		SET output = 'Inserción exitosa';
	ELSE
		SET output = 'Problema al generar venta';
	END IF;
    SET @clausula = ('SELECT * FROM ventas_detalladas ');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `compras_detalladas_extendidas`
--

/*!50001 DROP VIEW IF EXISTS `compras_detalladas_extendidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `compras_detalladas_extendidas` AS select `cd`.`compra_id` AS `compra_id`,`m`.`nombre` AS `nombre`,`m`.`precio` AS `precio`,`cd`.`cantidad` AS `cantidad`,(`m`.`precio` * `cd`.`cantidad`) AS `Total`,`c`.`fecha` AS `fecha`,`t`.`Nombre_Trabajador_Proveedor` AS `Nombre_Trabajador_Proveedor`,`t`.`Nombre_Empleado` AS `Nombre_Empleado` from (((`compras_detalladas` `cd` join `materiales` `m` on((`cd`.`material_id` = `m`.`material_id`))) join `compras` `c` on((`c`.`compra_id` = `cd`.`compra_id`))) join (select `c`.`compra_id` AS `compra_id`,concat(`p`.`nombre`,' ',`p`.`apellido`) AS `Nombre_Trabajador_Proveedor`,concat(`e`.`nombre`,' ',`e`.`apellido`) AS `Nombre_Empleado` from ((`compras` `c` join `trabajador_proveedores` `p` on((`c`.`trabajador_proveedor_id` = `p`.`trabajador_proveedor_id`))) join `empleados` `e` on((`c`.`empleado_id` = `e`.`empleado_id`)))) `T` on((`cd`.`compra_id` = `t`.`compra_id`))) order by `cd`.`compra_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mayor_egreso_material`
--

/*!50001 DROP VIEW IF EXISTS `mayor_egreso_material`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mayor_egreso_material` AS select `cd`.`material_id` AS `material_id`,`m`.`nombre` AS `nombre`,sum(`cd`.`cantidad`) AS `Compras Totales`,`m`.`precio` AS `precio`,(sum(`cd`.`cantidad`) * `m`.`precio`) AS `Total Gastado` from (`compras_detalladas` `cd` join `materiales` `m` on((`cd`.`material_id` = `m`.`material_id`))) group by `cd`.`material_id` order by (sum(`cd`.`cantidad`) * `m`.`precio`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mayor_ingreso_material`
--

/*!50001 DROP VIEW IF EXISTS `mayor_ingreso_material`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mayor_ingreso_material` AS select `vd`.`material_id` AS `material_id`,`m`.`nombre` AS `nombre`,sum(`vd`.`cantidad`) AS `Ventas Totales`,`m`.`precio` AS `precio`,(sum(`vd`.`cantidad`) * `m`.`precio`) AS `Total Generado` from (`ventas_detalladas` `vd` join `materiales` `m` on((`vd`.`material_id` = `m`.`material_id`))) group by `vd`.`material_id` order by (sum(`vd`.`cantidad`) * `m`.`precio`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mayores_compradores`
--

/*!50001 DROP VIEW IF EXISTS `mayores_compradores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mayores_compradores` AS select `c`.`empleado_id` AS `empleado_id`,count(`c`.`empleado_id`) AS `Compras Totales`,concat(`e`.`nombre`,' ',`e`.`apellido`) AS `Nombre_Empleado`,`t`.`Area_de_Trabajo` AS `Area_de_Trabajo` from ((`compras` `c` join `empleados` `e` on((`c`.`empleado_id` = `e`.`empleado_id`))) join (select `e`.`empleado_id` AS `empleado_id`,`e`.`nombre` AS `nombre`,`a`.`nombre` AS `Area_de_Trabajo` from (`empleados` `e` join `areas` `a` on((`e`.`area_id` = `a`.`area_id`)))) `T` on((`t`.`empleado_id` = `c`.`empleado_id`))) group by `c`.`empleado_id` order by count(`c`.`empleado_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mayores_vendedores`
--

/*!50001 DROP VIEW IF EXISTS `mayores_vendedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mayores_vendedores` AS select `v`.`empleado_id` AS `empleado_id`,count(`v`.`empleado_id`) AS `Ventas Totales`,concat(`e`.`nombre`,' ',`e`.`apellido`) AS `Nombre_Empleado`,`t`.`Area_de_Trabajo` AS `Area_de_Trabajo` from ((`ventas` `v` join `empleados` `e` on((`v`.`empleado_id` = `e`.`empleado_id`))) join (select `e`.`empleado_id` AS `empleado_id`,`e`.`nombre` AS `nombre`,`a`.`nombre` AS `Area_de_Trabajo` from (`empleados` `e` join `areas` `a` on((`e`.`area_id` = `a`.`area_id`)))) `T` on((`t`.`empleado_id` = `v`.`empleado_id`))) group by `v`.`empleado_id` order by count(`v`.`empleado_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_detalladas_extendidas`
--

/*!50001 DROP VIEW IF EXISTS `ventas_detalladas_extendidas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_detalladas_extendidas` AS select `vd`.`venta_id` AS `venta_id`,`m`.`nombre` AS `nombre`,`m`.`precio` AS `precio`,`vd`.`cantidad` AS `cantidad`,(`m`.`precio` * `vd`.`cantidad`) AS `Total`,`v`.`fecha` AS `fecha`,`t`.`Nombre_Cliente` AS `Nombre_Cliente`,`t`.`Nombre_Empleado` AS `Nombre_Empleado` from (((`ventas_detalladas` `vd` join `materiales` `m` on((`vd`.`material_id` = `m`.`material_id`))) join `ventas` `v` on((`v`.`venta_id` = `vd`.`venta_id`))) join (select `v`.`venta_id` AS `venta_id`,concat(`c`.`nombre`,' ',`c`.`apellido`) AS `Nombre_Cliente`,concat(`e`.`nombre`,' ',`e`.`apellido`) AS `Nombre_Empleado` from ((`ventas` `v` join `clientes` `c` on((`v`.`cliente_id` = `c`.`cliente_id`))) join `empleados` `e` on((`v`.`empleado_id` = `e`.`empleado_id`)))) `T` on((`vd`.`venta_id` = `t`.`venta_id`))) order by `vd`.`venta_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-12 11:46:03
