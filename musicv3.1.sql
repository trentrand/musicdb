CREATE DATABASE  IF NOT EXISTS `music` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `music`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artistID` text,
  `artistName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Artist
--

DELIMITER //
CREATE TRIGGER prime_artist BEFORE INSERT
 ON artist
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from artist
		where artist.artistID = new.artistID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('A20682','\"Weird Al\"\" Yankovic\"'),('A85906','Aaron G. Wilkinson'),('A02786','Adam Clayton'),('A34065','Adam Lambert'),('A92574','Adrienne Knolff'),('A84501','AJ Perrelli'),('A06712','Alan Curtis'),('A25495','Alan Merrill'),('A99711','Alberto Slezynger'),('A65013','Alec Timerman'),('A04980','Alex Briley'),('A73623','Alex Burke'),('A72327','Alex Call'),('A95843','Alexander Mathias'),('A23957','Alonzo Miller'),('A49360','Alphonso Mizell'),('A32396','Amanda Kramer'),('A05356','Amy Lee'),('A48984','Andreas Carlsson'),('A15007','Andrew Ridgeley'),('A96526','Andy Summers'),('A04652','Andy Taylor'),('A64962','Andy Wickett'),('A10268','Annie Lennox'),('A95814','Arthur Baker'),('A53842','Artis Ivey Jr.'),('A53034','Avril Lavigne'),('A57021','B. Nail'),('A56415','Barry Mitchell'),('A94814','Belinda Carlisle'),('A67283','Ben Moody'),('A22766','Berry Gordy, Jr.'),('A11232','Berton Averre'),('A38152','Bill Gibson'),('A78076','Bill Uechi'),('A61070','Bill Whitefield'),('A22876','Billy Adams'),('A24855','Billy Idol'),('A37812','Billy Joel'),('A43715','Blue Saraceno'),('A40051','Bo Gentry'),('A46132','Bob Mayo'),('A88887','Bob West'),('A74180','Bobby \"Tango\"\" Gibb\"'),('A14737','Bobby Dall'),('A68942','Bobby Kimball'),('A84081','Boy George'),('A13210','Brad Fiedel'),('A18684','Brandon Dickert'),('A57063','Bret Michaels'),('A84997','Brian Dunne'),('A73177','Brian Holland'),('A00351','Brian Mashburn'),('A80984','Brian May'),('A87734','Bryan Adams'),('A58856','Bryan Holland'),('A44085','C. C. DeVille'),('A62998','C. Caffey'),('A37512','Caleb Quaye'),('A71012','Carlene Carter'),('A10819','Carole Bayer Sager'),('A94820','Chad Wackerman'),('A64339','Charles Brown'),('A48241','Charles DeChant'),('A86816','Charlotte Caffey'),('A89466','Chris Hayes'),('A72445','Chris Hughes'),('A88176','Chris Jasper'),('A07719','Chris Spedding'),('A75517','Christian Carlos Warren'),('A37524','Christopher Ballew'),('A50792','Christopher Hayes'),('A51422','Christopher Wallace'),('A54058','Clarence Drayton'),('A21442','Clifton Davis'),('A22258','Colin Bayley'),('A19012','Colin Hay'),('A04674','Connor McElwain'),('A73074','Cornell haynes Jr.'),('A41674','Curt Smith'),('A66935','Curtis Mayfield'),('A93601','Cyndi Lauper'),('A12872','Danny B. Harvey'),('A15933','Danny Luna'),('A55714','Danny Miranda'),('A78888','Danny Styles'),('A19090','Daryl Hall'),('A42607','Daryl Stuermer'),('A83360','Dave Forrest'),('A54110','David A. Stewart'),('A92911','David Evans'),('A21222','David Foster'),('A55167','David Grohl'),('A19599','David Hodges'),('A10570','David Hodo'),('A54362','David Hungate'),('A44006','David Kent'),('A85240','David Paich'),('A89812','David Pirner'),('A69056','David Porter'),('A91386','Dean Parks'),('A81062','Deke Richards'),('A88950','Denise Thurlow'),('A83228','Dennis Frederiksen'),('A05310','Denny Weston, Jr.'),('A77926','Deric Angelettie'),('A81967','Diane Warren'),('A95117','Dick Spatsley'),('A77170','Dino Fekaris'),('A90080','Dominic Brown'),('A27624','Don Black'),('A37608','Don Fenceton'),('A18767','Don Fletcher'),('A37877','Donald Fletcher'),('A44862','Donald McLean III'),('A88360','Donald Storball'),('A15760','Doug Fieger'),('A62249','Doug Johnson'),('A28708','Doug Rasheed'),('A88622','Dough Ewood Bogie'),('A84004','Duncan Kilburn'),('A18379','Eddie Holland'),('A53887','Eddie Zyne'),('A32594','Edward Heyman'),('A10305','Eliot Lewis'),('A91801','Elissa Bello'),('A29442','Elliot Willensky'),('A87190','Eric Anzalone'),('A53658','Eric Brittingham'),('A51561','Eric Zamora'),('A92070','Erik Hughes'),('A83620','Ernie Isley'),('A37662','Evan Kilbourne'),('A32309','Everett Bradley'),('A96264','Felipe Rose'),('A25784','Francesco DiCosmo'),('A42210','Frank Farian'),('A45721','Fred Coury'),('A13508','Fred Mandel'),('A29624','Freddie Mercury'),('A01954','Freddie Perren'),('A70412','G. E. Smith'),('A90825','G. Jeff Olson'),('A90082','George Michael'),('A83763','George O\'Dowd'),('A58890','Gerardo Mejia'),('A04872','Gina Schock'),('A01142','Glen Hughes'),('A71356','Gloria Gaynor'),('A31639','Gordon Bash'),('A42960','Greg Ham'),('A90712','Greg Phillinganes'),('A83624','Greg Sneddon'),('A33519','Hal Davis'),('A47508','Henri Belolo'),('A66316','Henry Padovani'),('A54855','Heta Moses'),('A82818','Huey Lewis'),('A97405','Hugh Cregg III'),('A63787','Hugh McDonald'),('A24936','Ian Haugland'),('A71269','Ian Stanley'),('A56820','Isaac Hayes'),('A61603','J. Wiedlin'),('A23457','Jackie Jackson'),('A06415','Jacques Morali'),('A05715','Jake Hooker'),('A92173','James Black'),('A05954','James Ingram'),('A24578','James Ryan'),('A08218','James Sheppard'),('A91289','Jamie Moses'),('A99611','Jane Wiedlin'),('A09881','Janna Allen'),('A02522','Jason Philips'),('A56840','Jean-Michel Bryon'),('A71732','Jeff Catania'),('A07582','Jeff Porcaro'),('A42760','Jeff Thomas'),('A91998','Jeffrey Bass'),('A92722','Jen Majura'),('A27921','Jeremy Alsop'),('A52613','Jermaine Jackson'),('A74734','Jerry Marcellino'),('A09180','Jerry Marotta'),('A15675','Jerry Speiser'),('A63946','Jesse Tunnell'),('A31627','Jim Gordon'),('A99571','Jim Messina'),('A05359','Jim Newman'),('A92795','Jim Paterson'),('A21590','Jim Vallance'),('A94535','Jimmy Thomas'),('A03885','Joe Berry'),('A58739','Joe White'),('A70012','Joey Tempest'),('A65163','John Ashton'),('A52937','John Bettis'),('A59165','John Ciambotti'),('A40109','John Deacon'),('A97742','John Korba'),('A65500','John LeCompt'),('A37939','John Leven'),('A95214','John McFee'),('A06453','John Norum'),('A74157','John Oates'),('A13320','John Pierce'),('A14325','John Purdell'),('A18481','John Rees'),('A85114','John Siegler'),('A42076','John Taylor'),('A12421','John Watson'),('A39264','Johnnie Bamont'),('A94214','Johnny Colla'),('A87999','Jon Moss'),('A88495','Jose Castellanos'),('A41229','Joseph Williams'),('A57494','Josh Freese'),('A27677','Kasim Sulton'),('A32222','Kathy Valentine'),('A53989','Kee Marcello'),('A83225','Keith Carlock'),('A52663','Keith Forsey'),('A80647','Keith Merritt'),('A67399','Ken \"Spider\"\" Sinnaeve\"'),('A52130','Kenny Loggins'),('A83547','Kenny Passarelli'),('A67682','Kevin Rowland'),('A32132','Kimberly Jones'),('A66171','Klyde Jones'),('A46809','Krist Novoselic'),('A11477','Kurt Cobain'),('A02591','Larry Sanders'),('A32712','Laurence Mullen Jr.'),('A81453','Lee Mouton'),('A89339','Leland Sklar'),('A51279','Leon Ware'),('A74995','Lisa Lopes'),('A48732','Lloyd Robertson'),('A69650','Lou Reed'),('A74384','Louis Johnson'),('A67619','Luis Resto'),('A12234','Lynn Boyd'),('A10930','Manny Elias'),('A67079','Marc Harismendy'),('A62458','Marcel East'),('A51119','Marcel Jacob'),('A25506','Margot Olavarria'),('A21680','Mario Cipollina'),('A41683','Mark Kennedy'),('A15279','Mark Konrad'),('A64049','Mark lee'),('A90345','Mark Mussler'),('A41154','Marlon Jackson'),('A24438','Marqueze Etheridge'),('A31132','Mars Williams'),('A13988','Marshall Mathers III'),('A77187','Martin Sandberg'),('A75359','Marvin Isley'),('A00563','Marvin McFadden'),('A94596','Matt Atiken'),('A27567','Matt Frenette'),('A8832','Matt Smith'),('A15458','Maurice Starr'),('A57534','Mel Larson'),('A95016','Mic Michaeli'),('A28017','Michael Jackson'),('A29505','Michael Schreiner'),('A89973','Mickey Curry'),('A71397','Mike Braun'),('A08383','Mike Chapman'),('A65754','Mike Duke'),('A73836','Mike Grose'),('A90319','Mike Klvana'),('A75234','Mike Porcaro'),('A13413','Mike Reno'),('A03052','Mike Stock'),('A84862','Mikey Craig'),('A85677','Miles Jaye'),('A90432','Monique Powell'),('A06380','Morgan Fisher'),('A62100','Nathan East'),('A45956','Neil Fairclough'),('A10026','Nick Rhodes'),('A47140','Nicky Chinn'),('A85726','O\'Kelly Isley'),('A65322','O\'Kelly Isley, Jr.'),('A43496','Oliver Zavala'),('A36770','Patrick Ferguson'),('A34741','Paul Dean'),('A15829','Paul Garisto'),('A46835','Paul Hewson'),('A62812','Paul McCartney'),('A84764','Paul Pesco'),('A89136','Paul Rodgers'),('A23613','Paul Williamson'),('A53339','Paul Wilson'),('A62606','Paula Jean Brown'),('A36379','Pete Waterman'),('A82996','Peter Maslen'),('A05318','Peter Olsson'),('A09385','Peter Whitehead'),('A08187','Pharrell Williams'),('A57289','Phil Cody'),('A07648','Phil Collen'),('A48305','Phil Collins'),('A09028','Phil Hurtt'),('A19130','Phil Pickett'),('A06665','Philip Hawk'),('A02962','Porter Carroll'),('A03118','Py Douglas'),('A24676','Quincy Jones'),('A73938','Randy Jackson'),('A00120','Randy Jones'),('A22136','Ray Murray'),('A10437','Ray Simpson'),('A43080','Ray Stephens'),('A83630','Raymond Davies'),('A66841','Rich Good'),('A12416','Richard Butler'),('A31756','Richie Kotzen'),('A02681','Rick Astley'),('A49871','Rick Grossman'),('A52840','Rick James'),('A92206','Rico Wade'),('A16302','Rikki Rockett'),('A21265','Ritchie Cordell'),('A96369','Rob Sudduth'),('A18621','Robbie Michael'),('A97956','Robert Bloom'),('A15420','Robert Hazard'),('A57808','Robert John Lange'),('A61355','Rocky Gray'),('A82409','Rod Temperton'),('A06924','Roderick Rancifer'),('A35837','Rodrigo Aravena'),('A22966','Roger Morris'),('A23511','Roger Pope'),('A30473','Roger Taylor'),('A98466','Roger Taylor'),('A51186','Roland Orzabal'),('A03271','Ron Stallings'),('A95193','Ron Strykert'),('A51386','Ronald Isley'),('A81278','Rosa Soy'),('A28531','Roy Hay'),('A84056','Rudolph Isley'),('A52384','Rudy Clark'),('A12632','Rufus Tiger Taylor'),('A96549','Sara Allen'),('A27803','Scott Smith'),('A37998','Sean Combs'),('A59702','Sean Hopper'),('A34443','Shane \"Da Pain\"\" Carter\"'),('A74529','Shane Theriot'),('A71873','Sheldon Allman'),('A63551','Simon Colley'),('A94404','Simon Hosford'),('A07704','Simon Le Bon'),('A61426','Simon Phillips'),('A15735','Sleepy Brown'),('A09407','Smokey Robinson'),('A33343','Spike Edney'),('A40931','Stan Worth'),('A77120','Stanley Burrell'),('A57497','Stef Burns'),('A17583','Stephen Dees'),('A67943','Stephen Duffy'),('A66498','Stephen Hadley'),('A41665','Stephen Hewitt'),('A30930','Stephen Jacobs'),('A36942','Stephen Perry'),('A23585','Sterling Campbell'),('A18839','Steve Carter'),('A45776','Steve Cordero'),('A19655','Steve Lukather'),('A46265','Steve Porcaro'),('A57983','Steve Stevens'),('A67902','Steve White'),('A49011','Stevie Wonder'),('A42862','Stevland Morris'),('A68703','Stewart Copeland'),('A94604','Sting'),('A13506','Stu Simone'),('A98999','Susaye Green'),('A25625','T. Hall'),('A88514','Tamy Smith'),('A31999','T-Bone Willy'),('A21228','T-Boy Ross'),('A42808','Terry Balsamo'),('A17873','Thomas Kelly'),('A28458','Tim Butler'),('A42617','Tim McCord'),('A61183','Tito Jackson'),('A60768','Todd Sharp'),('A20565','Tom \"T-Bone\"\" Wolk\"'),('A71295','Tom Bahler'),('A16613','Tom Petty'),('A16840','Tommy James'),('A54262','Tony Floyd'),('A45405','Tony Reno'),('A97177','Tracii Guns'),('A51212','Troy McLawhorn'),('A55485','Vernon Isley'),('A92945','Victor Willis'),('A44993','Victor Young'),('A16949','Vince Ely'),('A96314','Walter Scharf'),('A76590','Warren Cuccurullo'),('A95136','Warren Trout'),('A88460','Weldon Dean Parks'),('A98242','Will B. Hunt'),('A95488','Will Boyd'),('A09355','Will Doughty'),('A98462','Will Hunt'),('A18894','William Miller'),('A52048','William Steinberg'),('A60597','Willie Hutch'),('A01506','Willie Wilcox'),('A54996','Zach Williams'),('A58770','Zev Katz');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band` (
  `bandID` text,
  `bandName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Band
--

DELIMITER //
CREATE TRIGGER prime_band BEFORE INSERT
 ON band
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from band
		where band.bandID = new.bandID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES ('B36190','\"Weird Al\"\" Yankovic\"'),('B61967','Billy Idol'),('B05921','Culture Club'),('B53513','Cyndi Lauper'),('B39945','Duran Duran'),('B78730','Europe'),('B25807','Eurythmics'),('B57698','Evanescence'),('B75381','Gloria Gaynor'),('B87963','Hall and Oates'),('B78243','Huey Lewis and the News'),('B67107','Loverboy'),('B87010','Men at Work'),('B43480','Michael Jackson'),('B24019','Phil Collins'),('B60704','Poison'),('B97748','Queen'),('B35122','Rick Astley'),('B96605','Save Ferris'),('B39016','Tears for Fears'),('B49843','The Go-Go\'s'),('B07436','The Jackson 5'),('B48954','The Police'),('B86189','The Psychedelic Furs'),('B58851','Toto'),('B25370','Village People'),('B02950','Wham!');
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `artistID` text,
  `bandID` text,
  `yearJoined` int(11) DEFAULT NULL,
  `yearLeft` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Member
--
/* Can't have this since an artist can be part of multiple band. 
DELIMITER //
CREATE TRIGGER prime_member BEFORE INSERT
 ON member
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from member
		where member.artistID = new.artistID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;
*/
--
-- Foregin key constraint 
--

DELIMITER //
CREATE TRIGGER foregin_member_on_artist BEFORE INSERT
 ON member
 FOR EACH ROW
 BEGIN
	IF (select count(*) 
		from artist
		where artist.artistID = new.artistID) = 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;


DELIMITER //
CREATE TRIGGER foregin_member_on_band BEFORE INSERT
 ON member
 FOR EACH ROW
 BEGIN
	IF (select count(*) 
		from band
		where band.bandID = new.bandID) = 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('A00120','B25370',1978,1980),('A00120','B25370',1987,1991),('A00351','B96605',1995,2002),('A01142','B25370',1978,1986),('A01142','B25370',1987,1995),('A02681','B35122',1985,1993),('A03118','B25370',1985,1985),('A03271','B78243',1994,2009),('A03885','B96605',2013,2015),('A04652','B39945',1979,1987),('A04652','B39945',2001,2006),('A04872','B49843',1990,1990),('A04872','B49843',1994,1994),('A04872','B49843',1997,1985),('A04872','B49843',1999,2016),('A04980','B25370',1977,1986),('A05310','B96605',2013,2015),('A05318','B78730',1979,1981),('A06380','B97748',1982,1982),('A06453','B78730',1979,1986),('A06453','B78730',1999,1999),('A06712','B39945',1979,1980),('A07582','B58851',1977,1992),('A07648','B60704',2009,2009),('A09385','B25370',1977,1977),('A10268','B25807',1980,1990),('A10268','B25807',1999,2005),('A10437','B25370',1979,1982),('A10570','B25370',1978,1982),('A10570','B25370',1987,2013),('A10930','B39016',1981,1986),('A12416','B86189',1997,1991),('A12421','B87010',1996,1997),('A13413','B67107',1979,1988),('A13413','B67107',1989,1989),('A13506','B60704',1999,2000),('A13508','B97748',1982,1982),('A14325','B60704',2002,2002),('A15007','B02950',1981,1986),('A15279','B60704',1990,1991),('A15675','B87010',1979,1984),('A15829','B86189',1997,1991),('A16949','B86189',1997,1991),('A18481','B87010',1980,1984),('A19012','B87010',1978,1986),('A19012','B87010',1996,2002),('A19599','B57698',1999,2002),('A19655','B58851',1977,2008),('A21680','B78243',1979,1995),('A22258','B87010',1985,1986),('A22966','B86189',1997,1991),('A23457','B07436',1964,1989),('A23457','B07436',2001,2001),('A23457','B07436',2012,2013),('A23585','B39945',1988,1991),('A23613','B87010',1985,1986),('A24578','B87010',1998,1999),('A24936','B78730',1984,1992),('A24936','B78730',1999,1999),('A25506','B49843',1990,1990),('A25506','B49843',1994,1994),('A25506','B49843',1997,1985),('A25506','B49843',1999,2016),('A25784','B57698',2002,2002),('A27567','B67107',1979,1988),('A27567','B67107',1989,1989),('A27803','B67107',1979,1988),('A27803','B67107',1989,1989),('A27803','B67107',1991,2000),('A27921','B87010',1985,1986),('A28017','B07436',1964,1984),('A28017','B07436',2001,2001),('A28017','B43480',1964,2009),('A28458','B86189',1997,1991),('A28531','B05921',1981,1986),('A28531','B05921',1998,2002),('A29624','B97748',1970,1991),('A31132','B86189',1997,1991),('A31756','B60704',1991,1993),('A31999','B96605',1996,2002),('A32222','B49843',1990,1990),('A32222','B49843',1994,1994),('A32222','B49843',1997,1985),('A32222','B49843',1999,2016),('A32396','B86189',1997,1991),('A34741','B67107',1979,1988),('A34741','B67107',1989,1989),('A35837','B87010',2000,2001),('A37662','B96605',1998,2002),('A37939','B78730',1981,1981),('A37939','B78730',1981,1992),('A37939','B78730',1999,1999),('A40109','B97748',1971,1997),('A41154','B07436',1964,1985),('A41154','B07436',2001,2001),('A41154','B07436',2012,2013),('A41229','B58851',1986,1989),('A41229','B58851',1998,1998),('A41665','B25370',2013,2013),('A41674','B39016',1981,1991),('A41683','B87010',1985,1985),('A42076','B39945',1978,1997),('A42760','B39945',1980,1980),('A42808','B57698',2003,2015),('A42960','B87010',1979,1985),('A42960','B87010',1996,2002),('A43080','B25370',1985,1986),('A43496','B96605',2000,2002),('A43715','B60704',1993,1996),('A44085','B60704',1985,1991),('A45405','B78730',1979,1984),('A45721','B60704',2009,2009),('A45776','B96605',1995,1995),('A46265','B58851',1977,1987),('A46265','B58851',1998,1998),('A48305','B24019',1968,2001),('A49871','B87010',1998,2000),('A51119','B78730',1981,1981),('A51561','B96605',1995,2002),('A52613','B07436',1964,1975),('A52613','B07436',1983,1989),('A52613','B07436',2001,2001),('A52613','B07436',2012,2013),('A53339','B86189',1997,1991),('A53658','B60704',2009,2009),('A53989','B78730',1986,1992),('A53989','B78730',1999,1999),('A54110','B25807',1980,1990),('A54110','B25807',1999,2005),('A54262','B87010',1997,1998),('A54262','B87010',1999,2000),('A54362','B58851',1977,1982),('A54362','B58851',1999,1999),('A54362','B58851',2009,2009),('A54362','B58851',2014,2014),('A54855','B87010',2000,2001),('A55714','B97748',2005,2009),('A56415','B97748',1970,1971),('A56840','B58851',1990,1990),('A57494','B57698',2002,2002),('A61183','B07436',1964,1989),('A61183','B07436',2001,2001),('A61183','B07436',2012,2013),('A61355','B57698',2002,2007),('A61426','B58851',1992,2008),('A61426','B58851',2010,2014),('A62249','B67107',1979,1988),('A62249','B67107',1989,1989),('A62606','B49843',1990,1990),('A62606','B49843',1994,1994),('A62606','B49843',1997,1985),('A62606','B49843',1999,2016),('A63551','B39945',1978,1980),('A63787','B60704',2009,2009),('A63946','B96605',1995,1996),('A64049','B25370',1982,1986),('A64962','B39945',1979,1980),('A65013','B25370',2001,2003),('A65163','B86189',1997,1991),('A65500','B57698',2002,2007),('A66316','B48954',1977,1977),('A66498','B87010',1996,1988),('A66498','B87010',2001,2001),('A66841','B86189',1997,1991),('A67079','B96605',1995,1998),('A67283','B57698',1995,2003),('A67902','B96605',2002,2002),('A67943','B39945',1978,1979),('A68703','B48954',1977,1986),('A68703','B48954',2003,2003),('A68703','B48954',2007,2008),('A68942','B58851',1977,1984),('A68942','B58851',1989,1989),('A68942','B58851',1998,2008),('A70012','B78730',1979,1992),('A70012','B78730',1999,1999),('A71269','B39016',1981,1987),('A73836','B97748',1970,1970),('A73938','B07436',1976,1989),('A73938','B07436',2001,2001),('A74180','B60704',2009,2009),('A74180','B60704',2012,2012),('A75234','B58851',1982,2007),('A76590','B39945',1986,2001),('A78076','B96605',1995,2002),('A82996','B87010',1998,1999),('A83225','B58851',2014,2015),('A83228','B58851',1984,1985),('A83360','B25370',1977,1978),('A83624','B87010',1979,1979),('A84004','B86189',1997,1991),('A84081','B05921',1981,1986),('A84081','B05921',1998,2002),('A84862','B05921',1981,1986),('A84862','B05921',1998,2002),('A85240','B58851',1977,2008),('A85677','B25370',1983,1984),('A86816','B49843',1990,1990),('A86816','B49843',1994,1994),('A86816','B49843',1997,1985),('A86816','B49843',1999,2016),('A87999','B05921',1981,1986),('A87999','B05921',1998,2002),('A8832','B60704',1980,1985),('A88495','B96605',1995,2002),('A88622','B97748',1971,1971),('A89136','B97748',2004,2009),('A89466','B78243',1979,2001),('A90082','B02950',1981,1986),('A90345','B25370',1977,1978),('A90712','B58851',2003,2008),('A90825','B25370',1980,1986),('A90825','B25370',1991,2013),('A91289','B97748',1998,2009),('A91801','B49843',1990,1990),('A91801','B49843',1994,1994),('A91801','B49843',1997,1985),('A91801','B49843',1999,2016),('A92173','B87010',1985,1986),('A92574','B96605',1995,1996),('A92945','B25370',1977,1980),('A92945','B25370',1982,1983),('A94404','B87010',1996,1998),('A94404','B87010',1999,2001),('A94604','B48954',1977,1986),('A94604','B48954',2003,2003),('A94604','B48954',2007,2008),('A94814','B49843',1990,1990),('A94814','B49843',1994,1994),('A94814','B49843',1997,1985),('A94814','B49843',1999,2016),('A94820','B87010',1985,1986),('A95016','B78730',1984,1992),('A95016','B78730',1999,1999),('A95136','B87010',2001,2001),('A95193','B87010',1978,1985),('A95488','B57698',2003,2006),('A96264','B25370',1977,1986),('A96526','B48954',1977,1986),('A96526','B48954',2003,2003),('A96526','B48954',2007,2008),('A97177','B60704',2000,2000),('A98462','B57698',2007,2010),('A98466','B39945',1979,1986),('A98466','B39945',1995,1995),('A99611','B49843',1990,1990),('A99611','B49843',1994,1994),('A99611','B49843',1997,1985),('A99611','B49843',1999,2016);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `songID` text,
  `songName` text,
  `songYearReleased` int(11) DEFAULT NULL,
  `songGenre` text,
  `songLength` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Song
--

DELIMITER //
CREATE TRIGGER prime_song BEFORE INSERT
 ON song
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from song
		where song.songID = new.songID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('S00081','Trash Day',2003,'Comedy','03:12'),('S00502','Buckingham Blues',1983,'Comedy','03:13'),('S00617','The Reflex',1983,'Rock','05:29'),('S00659','It Goes On',1981,'Rock','03:52'),('S00706','Cable TV',1985,'Comedy','03:38'),('S01334','I Want Action',1986,'Rock','03:05'),('S01370','Nobody But Me',1997,'Rock','03:05'),('S01397','Lithium',2006,'Rock','03:44'),('S02375','My Baby\'s in Love with Eddie Vedder',1999,'Comedy','03:25'),('S02555','So Little Kindess',1996,'Rock','04:14'),('S02715','The Girl Is Mine',1982,'Pop','03:43'),('S03214','Every Rose Has Its Thorn',1988,'Rock','04:17'),('S03520','I Take the Dice',1983,'Rock','03:18'),('S04073','Melanie',1988,'Comedy','03:58'),('S04320','Princes of the Universe',1986,'Rock','03:32'),('S04333','Look but You Can\'t Touch',1988,'Rock','03:25'),('S04729','Danger on the Track',1986,'Rock','03:45'),('S04908','The World Is New',1996,'Rock','02:11'),('S04992','George of the Jungle',1985,'Comedy','01:05'),('S05058','Pretty Fly for a Rabbi',1999,'Comedy','03:02'),('S05184','Stuck in a Closet with Vanna White',1988,'Comedy','04:58'),('S05523','Off the Wall',1980,'Pop','04:05'),('S06352','Billie Jean',1982,'Pop','04:54'),('S06362','Oceans',2011,'Rock','03:38'),('S06962','Make Believe',1982,'Rock','03:43'),('S07020','Talk Dirty to Me',1986,'Rock','03:44'),('S07570','Get Up and Go',1990,'Rock','03:17'),('S07744','I Remember Larry',1996,'Comedy','03:56'),('S07792','Like a Baby',1984,'Pop','04:12'),('S07833','Bank on Your Love',1984,'Pop','04:18'),('S07839','The Life of the Party',1995,'Pop','02:34'),('S07990','What You See Is What You Get',1999,'Rock','03:18'),('S08562','Wanna Be Startin\' Somethin\'',1982,'Pop','06:04'),('S08921','Our Lips Are Sealed',1990,'Rock','02:44'),('S09196','Sugar Daddy',1995,'Pop','02:32'),('S09421','Girls Just Want to Have Lunch',1985,'Comedy','02:48'),('S09479','Strange Days of Uncle Jack',1990,'Rock','01:40'),('S09731','One More Night',1985,'Pop','04:47'),('S09844','I Want a New Duck',1985,'Comedy','03:04'),('S10338','In Hollywood (Everybody is a Star)',1994,'Pop','04:53'),('S10562','I Can\'t Watch This',1992,'Comedy','03:31'),('S10650','Mothers Talk',1985,'Rock','05:09'),('S10692','Out of Touch',1984,'Pop','04:21'),('S11230','Ricky',1983,'Comedy','02:36'),('S11622','Credit Card Baby',1984,'Pop','05:08'),('S11939','Valley of Lost Souls',1990,'Rock','03:58'),('S11946','I\'ll Be There',1995,'Pop','03:57'),('S12457','Thriller',1982,'Pop','05:58'),('S12698','I Won\'t Hold You Back',1982,'Rock','04:53'),('S12833','Helpless Automaton',1981,'Rock','03:23'),('S13007','Y.M.C.A.',1994,'Pop','04:46'),('S13300','Call Me When You\'re Sober',2006,'Rock','03:34'),('S13397','Why Does This Always Happen to Me',2003,'Comedy','04:52'),('S13610','Tea in the Sahara',1983,'Rock','04:11'),('S13635','(Flesh & Blood) Sacrifice',1990,'Rock','04:40'),('S14245','Sick',2011,'Rock','03:30'),('S14425','Girls Just Want to Have Fun',1983,'Pop','03:51'),('S14636','It\'s All About the Pentiums',1999,'Comedy','03:34'),('S15220','Tearin\' Down the Walls',1988,'Rock','03:50'),('S15301','Everything She Wants',1984,'Pop','05:01'),('S15377','Imaginary',2003,'Rock','04:16'),('S15402','Girls on Film',1981,'Rock','03:32'),('S16220','We Got the Beat',1990,'Rock','02:30'),('S16309','One More Minute',1985,'Comedy','04:04'),('S16537','The Lady in My Life',1982,'Pop','04:59'),('S16805','Victims',1983,'Rock','04:55'),('S17179','Wrap It Up',1983,'Pop','03:33'),('S17360','Get on the Floor',1979,'Pop','04:39'),('S17687','Off the Wall',1979,'Pop','04:06'),('S17782','Wake Me Up Before You Go-Go',1984,'Pop','03:50'),('S18121','Pretty in Pink',1981,'Rock','03:59'),('S18182','The Alternative Polka',1996,'Comedy','04:50'),('S18580','To the Shore',1981,'Rock','03:51'),('S18765','Human Nature',1982,'Pop','04:07'),('S18945','When It\'s Over',1981,'Rock','05:08'),('S18968','People Just Love to Play with Words',1981,'Rock','03:33'),('S19254','Mr. Jones',1981,'Rock','04:03'),('S20286','Africa',1982,'Rock','04:55'),('S20742','Superspy',1996,'Rock','02:46'),('S20881','I Could Give You (A Mirror)',1983,'Pop','03:51'),('S20894','Want Some, Need Some',1986,'Rock','03:39'),('S21303','It\'s Your Life',1981,'Rock','04:05'),('S21880','San Francisco (You\'ve Got Me)',1994,'Pop','05:19'),('S22384','Angry White Boy Polka',2003,'Comedy','05:04'),('S22524','Get It Together',1995,'Pop','02:48'),('S22536','Shadows on Your Side',1983,'Rock','04:03'),('S22762','Mistaken',1999,'Rock','03:24'),('S22842','Gangs in the Street',1981,'Rock','04:35'),('S23070','So Run Down',1981,'Rock','02:51'),('S23197','I Will Survive',1978,'Pop','03:15'),('S23235','Black Money',1983,'Rock','05:19'),('S23486','The Night Santa Went Crazy',1996,'Comedy','04:03'),('S23575','Haunted',2003,'Rock','03:05'),('S24037','Bob',2003,'Comedy','02:29'),('S24041','When I Fall in Love',1987,'Pop','02:59'),('S24047','Holding On',1999,'Rock','03:26'),('S24057','It\'s a Feeling',1982,'Rock','03:05'),('S24101','Crank Call',1983,'Rock','03:56'),('S24299','Union of the Snake',1983,'Rock','04:20'),('S24352','Another One Rides the Bus',1983,'Comedy','02:40'),('S24467','It Would Take a Strong Strong Man',1987,'Pop','03:39'),('S24720','Carrie',1986,'Rock','04:30'),('S24856','Stuck with You',1996,'Rock','04:26'),('S24869','Baby Be Mine',1982,'Pop','04:21'),('S25014','The Love You Save',1995,'Pop','03:04'),('S25302','Angry Situation',1999,'Rock','03:38'),('S25619','It\'s So Cruel',1982,'Rock','05:20'),('S25858','Couch Potato',2003,'Comedy','04:18'),('S26063','Take Me Home',1985,'Pop','05:51'),('S26443','Key West',1994,'Pop','05:44'),('S26696','Polka Your Eyes Out',1992,'Comedy','03:50'),('S26713','100 Years from Now',1996,'Rock','03:46'),('S26772','Shout',1985,'Rock','06:32'),('S27354','(Do Not) Stand in the Shadows',1983,'Rock','03:10'),('S27419','Girlfriend',1979,'Pop','03:06'),('S27472','P.Y.T. (Pretty Young Thing)',1982,'Pop','03:58'),('S27568','Everything You Know Is Wrong',1996,'Comedy','03:48'),('S27666','The Other Side',2011,'Rock','04:05'),('S27750','Love Calling',1982,'Rock','04:48'),('S27988','Ride the Wind',1990,'Rock','03:50'),('S28510','Sound of Thunder',1981,'Rock','04:07'),('S28514','Head Over Heels',1990,'Rock','03:36'),('S28527','Germs',1999,'Comedy','04:38'),('S28581','Under 21',1996,'Rock','02:40'),('S28777','Of Crime and Passion',1983,'Rock','03:50'),('S28962','Turn to You',1990,'Rock','03:50'),('S29147','Never Can Say Goodbye',1995,'Pop','03:00'),('S29161','Gimme the Prize (Kurgan\'s Theme)',1986,'Rock','04:34'),('S29701','Careless Memories',1981,'Rock','03:55'),('S29774','Billie Jean',1983,'Pop','04:54'),('S30102','Your Friend',1999,'Rock','03:42'),('S30382','Snow White Queen',2006,'Rock','04:22'),('S30399','It\'s Your Thing',1995,'Pop','03:41'),('S31005','One Vision',1986,'Rock','05:10'),('S31195','Congo Man (Reprise of \"Love Calling\"\")\"',1982,'Rock','01:08'),('S31251','Never Gonna Give You Up',1987,'Pop','03:32'),('S31370','Daytime Drama',1983,'Rock','04:02'),('S31415','Catch My Fall',1983,'Rock','03:57'),('S31477','Beat It',1982,'Pop','04:18'),('S31670','Velvet Elvis',1988,'Comedy','04:30'),('S32035','Good Love',1988,'Rock','02:51'),('S32093','Like You',2006,'Rock','04:16'),('S32216','Mercenary',1990,'Rock','03:35'),('S32550','Beat It',1983,'Rock','04:18'),('S33189','Fat',1988,'Comedy','03:37'),('S33216','Jennifer',1983,'Pop','05:06'),('S33301','Inside out',1985,'Pop','05:14'),('S33463','#1 Bad Boy',1986,'Rock','03:14'),('S33469','Don\'t Give Up an Inch',1990,'Rock','03:43'),('S33589','Your Horoscope for Today',1999,'Comedy','03:59'),('S33651','My Last Breath',2003,'Rock','04:07'),('S34259','Come On, Come On',1982,'Rock','04:00'),('S34501','Dumb Waiters',1981,'Rock','05:09'),('S34811','The Weird Al Show Theme',1999,'Comedy','01:14'),('S34924','Lookin\' Through the Windows',1995,'Pop','03:38'),('S35040','The Final Countdown',1986,'Rock','05:12'),('S35045','Mama\'s Pearl',1995,'Pop','03:12'),('S35200','Ninja',1986,'Rock','03:46'),('S35285','It\'s Alright',1996,'Rock','03:04'),('S35393','Go West (12\" Version)\"',1994,'Pop','06:53'),('S35790','Spam',1997,'Rock','02:28'),('S36366','Only You Know and I Know',1985,'Pop','04:20'),('S36508','ABC',1995,'Pop','02:58'),('S36518','Dance on Your Knees',1984,'Pop','01:27'),('S36671','No Love',1999,'Rock','04:48'),('S36770','Hole in the Wall',1982,'Rock','04:14'),('S36923','I Want You Back',1995,'Pop','02:58'),('S37155','Lucky Ones',1981,'Rock','03:51'),('S37462','The Only One',2006,'Rock','04:40'),('S37631','Never Go Back',2011,'Rock','04:27'),('S37809','It\'s Your Thing (The J5 in \'95 Extended Remix)',1995,'Pop','05:57'),('S38101','Ball and Chain',1990,'Rock','04:22'),('S38732','Let Me Go to the Show',1986,'Rock','02:45'),('S38783','Who\'s Lovin\' You',1995,'Pop','04:01'),('S39295','I Wanna Be Where You Are',1995,'Pop','02:57'),('S39507','Working for the Weekend',1981,'Rock','03:42'),('S39524','The Walk',1983,'Pop','04:40'),('S39691','Whisper',2003,'Rock','05:27'),('S39981','Pain Is So Close to Pleasure',1986,'Rock','04:21'),('S40052','Vacation',1990,'Rock','03:00'),('S40133','Come on Eileen',1997,'Rock','04:11'),('S40268','Some Things Are Better Left Unsaid',1984,'Pop','05:26'),('S40510','Planet Earth',1981,'Rock','04:03'),('S40643','Nothin\' but a Good Time',1988,'Rock','03:43'),('S41330','Sweet Sacrifice',2006,'Rock','03:05'),('S41506','Bad to Be Good',1988,'Rock','04:03'),('S41561','You Make Me',1988,'Comedy','03:06'),('S41737','Listen',1985,'Rock','06:48'),('S41824','Turn It Up',1999,'Rock','03:03'),('S41911','Bite Me',1992,'Comedy','00:06'),('S42258','Gump',1996,'Comedy','02:11'),('S42425','Take Me to the Top',1981,'Rock','06:13'),('S43637','The Change',2011,'Rock','03:42'),('S43852','Such a Groovy Guy',1983,'Comedy','03:02'),('S43928','Got to Be There',1995,'Pop','03:23'),('S43953','When I Was Your Age',1992,'Comedy','04:35'),('S44173','Spam',1996,'Rock','02:23'),('S44282','I am Love, Pts. 1 and 2',1995,'Pop','07:28'),('S44389','I\'m So Sick of You',1996,'Comedy','03:26'),('S44718','Possession Obsession',1984,'Pop','04:36'),('S44967','Maybe Tomorrow',1995,'Pop','04:46'),('S45015','Your Mama Don\'t Dance',1988,'Rock','02:59'),('S45087','Daddy\'s Home',1995,'Pop','03:03'),('S45733','Sorry My Friend',1996,'Rock','03:12'),('S46196','I\'m the Only One',1990,'Rock','03:33'),('S46253','One More Try',1999,'Rock','01:06'),('S46493','If This Is It',1996,'Rock','03:52'),('S46744','Something to Believe In',1990,'Rock','05:28'),('S47287','Gotta Boogie',1983,'Comedy','02:14'),('S47305','Lust to Love',1990,'Rock','04:03'),('S47797','Good Old Days',1988,'Comedy','03:21'),('S47875','A Complicated Song',2003,'Comedy','03:39'),('S47879','Airline Amy',1992,'Comedy','03:50'),('S48360','Hot in the City',1982,'Rock','03:40'),('S48438','Life Goes On',1990,'Rock','04:47'),('S48439','Mr. Frump in the Iron Lung',1983,'Comedy','01:54'),('S48669','Ready for the 80\'s (12\" Version)\"',1994,'Pop','06:52'),('S48893','Let It Play',1990,'Rock','04:21'),('S49075','Whenever You Need Somebody',1987,'Pop','03:52'),('S49544','I Don\'t Wanna Know',1985,'Pop','04:12'),('S49638','Unskinny Bop',1990,'Rock','03:47'),('S50093','Village People',1994,'Pop','05:08'),('S50098','I Can\'t Help It',1979,'Pop','04:30'),('S50161','I Think I\'m a Clone Now',1988,'Comedy','03:20'),('S50355','A Kind of Magic',1986,'Rock','04:24'),('S50469','Heart of Stone',1986,'Rock','03:46'),('S51106','(This Song\'s Just) Six Words Long',1988,'Comedy','03:37'),('S51405','Macho Man (12\" Version)\"',1994,'Pop','05:12'),('S51513','Every Breath You Take',1983,'Rock','04:13'),('S51803','We Made It',1982,'Rock','03:56'),('S51921','Emotional',1981,'Rock','04:55'),('S51986','Slime Creatures from Outer Space',1985,'Comedy','04:23'),('S52171','Rebel Yell',1983,'Rock','04:45'),('S52336','Church of the Poison Mind',1983,'Rock','03:30'),('S52365','The Check\'s in the Mail',1983,'Comedy','03:13'),('S52462','Into You Like a Train',1981,'Rock','04:35'),('S52598','I Can See It in Your Eyes',1981,'Rock','03:32'),('S53020','When the Time Has Come',1996,'Rock','04:26'),('S53239','Eyes Without a Face',1983,'Rock','04:58'),('S54055','Mother',1983,'Rock','03:05'),('S54075','Method of Modern Love',1984,'Pop','05:34'),('S54798','Party at the Leper Colony',2003,'Comedy','03:38'),('S55378','Let Me In',1999,'Rock','06:13'),('S55391','I Love Rocky Road',1983,'Comedy','02:36'),('S55487','The Love Has Gone',1987,'Pop','04:20'),('S55494','You Don\'t Love Me Anymore',1992,'Comedy','04:00'),('S55684','Phony Calls',1996,'Comedy','03:22'),('S55739','Amish Paradise',1996,'Comedy','03:20'),('S55766','I\'ll Be Mellow When I\'m Dead',1983,'Comedy','03:39'),('S55908','In the Navy',1994,'Pop','03:43'),('S55912','Syndicated Inc.',1996,'Comedy','03:54'),('S55914','Y.M.C.A. (12\" Version)\"',1994,'Pop','06:46'),('S55924','Miss Gradenko',1983,'Rock','02:00'),('S55945','Jerry Springer',1999,'Comedy','02:46'),('S56098','This Town',1990,'Rock','03:18'),('S56173','Love Is a Stranger',1983,'Rock','03:43'),('S56272','Taking Over Me',2003,'Rock','03:49'),('S56489','Made of Stone',2011,'Rock','03:32'),('S56987','I Was Only Kidding',1992,'Comedy','03:31'),('S57305','Cloud Nine',2006,'Rock','04:22'),('S57366','If You Were There',1984,'Pop','03:38'),('S58284','Do You Believe in Love',1996,'Rock','03:28'),('S58655','Erase This',2011,'Rock','03:55'),('S58714','Twister',1988,'Comedy','01:03'),('S59181','Lost in Paradise',2011,'Rock','04:42'),('S59210','Look What the Cat Dragged In',1986,'Rock','03:10'),('S59240','Freedom',1984,'Pop','05:05'),('S59642','The Working Hour',1985,'Rock','06:30'),('S59648','Bad Is Bad',1996,'Rock','03:47'),('S60040','Don\'t Stop \'Til You Get Enough',1979,'Pop','06:06'),('S60954','Sorry My Friend',1997,'Rock','03:05'),('S61006','Burn This Disco Out',1979,'Pop','03:41'),('S61309','Callin\' in Sick',1996,'Comedy','03:40'),('S61523','Anyone Out There',1981,'Rock','04:02'),('S61681','Cavity Search',1996,'Comedy','04:19'),('S61871','All American Girl',1984,'Pop','04:28'),('S62872','Down by the Sea',1981,'Rock','06:53'),('S62933','Thriller',1984,'Pop','05:57'),('S63001','Goodbye',1997,'Rock','03:42'),('S63242','Be Good Johnny',1981,'Rock','03:39'),('S63518','I Want a New Drug',1996,'Rock','04:45'),('S63928','The Only Way To Be',1999,'Rock','03:18'),('S64205','New Moon on Monday',1983,'Rock','04:16'),('S64269','Everybody Wants to Rule the World',1985,'Rock','04:10'),('S64436','Good for You',1982,'Rock','03:17'),('S64721','You and Me',1996,'Rock','02:29'),('S64849','Shooting Stars',1982,'Rock','04:30'),('S64861','Broken',1985,'Rock','02:38'),('S64910','Waiting for Your Love',1982,'Rock','04:12'),('S65025','On the Loose',1986,'Rock','03:08'),('S65391','Play Dirty',1986,'Rock','04:08'),('S65564','Head over Heels/Broken (Live)',1985,'Rock','05:01'),('S65587','Fallen Angel',1988,'Rock','03:56'),('S65681','Catch a Star',1981,'Rock','03:31'),('S65766','Watch Out',1981,'Rock','04:02'),('S65944','Alimony',1988,'Comedy','03:16'),('S66107','Tourniquet',2003,'Rock','04:38'),('S66247','Trouble in Paradise',1996,'Rock','04:32'),('S66576','Flesh for Fantasy',1983,'Rock','04:37'),('S66589','Underground',1981,'Rock','03:07'),('S66730','Heart and Soul',1996,'Rock','04:12'),('S66912','Hooked on Polkas',1985,'Comedy','03:53'),('S67274','Like a Surgeon',1985,'Comedy','03:32'),('S67306','Night Boat',1981,'Rock','05:24'),('S67795','Cold Dark and Yesterday',1984,'Pop','04:40'),('S68038','Don\'t Lose My Number',1985,'Pop','04:46'),('S68224','The White Stuff',1992,'Comedy','02:43'),('S68303','This Is the House',1983,'Pop','04:56'),('S68494','It\'s a Miracle',1983,'Rock','03:25'),('S69116','Dare to Be Stupid',1985,'Comedy','03:25'),('S69310','I Believe',1985,'Rock','04:53'),('S69422','It\'s the Falling in Love',1979,'Pop','03:48'),('S69493','No More Looking for Love',1987,'Pop','03:15'),('S70486','For Your',1996,'Rock','02:20'),('S70712','Who Can it Be Now?',1981,'Rock','03:25'),('S70758','What You Want',2011,'Rock','03:41'),('S70855','Since You\'ve Been Gone',1996,'Comedy','01:20'),('S70980','Poor Boy Blues',1990,'Rock','04:52'),('S71437','Working Day and Night',1979,'Pop','05:14'),('S71619','I\'ve Got an Angel',1983,'Pop','02:45'),('S71637','Truck Drivin\' Song',1999,'Comedy','02:27'),('S71760','Rockin\' Robin',1995,'Pop','02:32'),('S71981','Time Has Come',1986,'Rock','04:01'),('S72139','Just a Little Bit of You',1995,'Pop','03:12'),('S72215','I Wanna Sleep with You',1981,'Rock','03:17'),('S72366','My Bologna',1983,'Comedy','02:01'),('S72763','No Tears',1981,'Rock','03:14'),('S72793','Heartbeat',1984,'Pop','04:42'),('S72812','Synchronicity II',1983,'Rock','05:00'),('S73909','Superspy',1997,'Rock','03:00'),('S74605','Modified',1999,'Rock','03:47'),('S74659','Changing Every Day',1983,'Rock','03:17'),('S74716','Don\'t Say Goodbye',1987,'Pop','04:02'),('S74751','Grapefruit Diet',1999,'Comedy','03:30'),('S75115','Mister Man',1983,'Rock','03:36'),('S75278','Afraid of Love',1982,'Rock','03:52'),('S75360','Everybody\'s Fool',2003,'Rock','03:16'),('S75471','Careless Whisper',1984,'Pop','06:30'),('S75569','The Power of Love',1996,'Rock','03:54'),('S75787','You Thought',1990,'Rock','04:18'),('S76370','Back to the Rocking Horse',1988,'Rock','03:34'),('S76950','Rosanna',1982,'Rock','05:31'),('S77276','Don\'t Stop \'Til You Get Enough',1979,'Pop','03:58'),('S77308','She\'s Out of My Life',1979,'Pop','03:38'),('S77346','Wanna B Ur Lovr',2003,'Comedy','06:14'),('S77426','Come Hell or High Water',1990,'Rock','05:01'),('S77731','Miss Me Blind',1983,'Rock','04:30'),('S77777','Somebody Told Me',1983,'Pop','03:29'),('S77788','Friends Will Be Friends',1986,'Rock','04:07'),('S77844','Walking in Your Footsteps',1983,'Rock','03:36'),('S78213','Lies',1997,'Rock','03:54'),('S78429','Little Differences',1997,'Rock','02:42'),('S78449','Karma Chameleon',1983,'Rock','04:12'),('S78604','Dead on Arrival',1982,'Rock','03:54'),('S78707','In the  (12\" Version)\"',1994,'Pop','06:12'),('S79027','Doesn\'t Anybody Stay Together Anymore',1985,'Pop','04:18'),('S79039','Wanna Be Startin\' Somethin\'',1983,'Pop','04:21'),('S79243','Hello',2003,'Rock','03:40'),('S79257','(I\'m Looking For) Cracks in the Pavement',1983,'Rock','03:38'),('S79613','Don\'t Lose Your Head',1986,'Rock','04:38'),('S79637','The World Is New',1997,'Rock','02:12'),('S79668','This Is the Life',1985,'Comedy','03:06'),('S79681','Albuquerque',1999,'Comedy','11:23'),('S79981','Together Forever',1987,'Pop','03:24'),('S80940','You Move Me',1987,'Pop','03:40'),('S81659','Jump',1981,'Rock','03:41'),('S81690','Everything I Want To Be',1997,'Rock','03:48'),('S81846','Stop Draggin\' My Care Around',1983,'Comedy','03:16'),('S81873','Sweet Dreams (Are Made of This)',1983,'Pop','03:36'),('S81906','Cry Tough',1986,'Rock','03:36'),('S82041','White Wedding (Part 1)',1982,'Rock','04:11'),('S82947','Who Wants to Live Forever',1986,'Rock','05:15'),('S83185','Blue Highway',1983,'Rock','05:05'),('S83217','Long Long Way to Go',1985,'Pop','04:20'),('S83287','King of Pain',1983,'Rock','04:59'),('S83359','Blame It on You',1986,'Rock','02:32'),('S83440','She Is Mine',1981,'Rock','03:51'),('S83882','Touching the Untouchables',1981,'Rock','03:41'),('S84349','End of the Dream',2011,'Rock','03:49'),('S84449','My Immortal',2003,'Rock','04:23'),('S84796','Love on the Rocks',1988,'Rock','03:33'),('S85046','The Heart of Rock & Roll',1996,'Rock','05:04'),('S85465','Can\'t Stop the Music',1994,'Pop','03:36'),('S86783','I Won\'t Forget You',1986,'Rock','03:35'),('S86942','O My God',1983,'Rock','04:02'),('S86967','One Year of Love',1986,'Rock','04:26'),('S87016','Ode to a Superhero',2003,'Comedy','04:53'),('S87553','Hot Cop',1994,'Pop','06:20'),('S87736','Good Enough',2006,'Rock','05:32'),('S87787','Your Star',2006,'Rock','04:43'),('S87872','Slipping Away',1987,'Pop','03:52'),('S88025','Ben',1972,'Pop','02:44'),('S88466','The Saga Begins',1999,'Comedy','05:27'),('S88478','Synchronicity I',1983,'Rock','03:23'),('S89169','Cherokee',1986,'Rock','04:20'),('S89352','That\'s the Way (I\'m Only Trying to Help You)',1983,'Rock','02:45'),('S89460','How Much More',1990,'Rock','03:04'),('S90045','The Seventh Stranger',1983,'Rock','05:24'),('S90569','Sussudio',1985,'Pop','04:23'),('S90971','The Plumbing Song',1992,'Comedy','04:08'),('S91454','Genius in France',2003,'Comedy','08:58'),('S91486','Bring Me to Life',2003,'Rock','03:56'),('S91514','Friends of Mine',1981,'Rock','05:43'),('S91690','Stormkeeper',1983,'Rock','02:46'),('S91808','Doing It All for My Baby',1996,'Rock','03:37'),('S91891','Cool Jerk',1990,'Rock','03:07'),('S91945','The Dead Next Door',1983,'Rock','03:45'),('S92126','Trigger Happy',1992,'Comedy','03:46'),('S92618','All That I\'m Living For',2006,'Rock','03:48'),('S92809','I\'m Not Cryin\' For You',1999,'Rock','04:03'),('S93101','All of This and Nothing',1981,'Rock','06:25'),('S93226','Going Thru the Motions',1984,'Pop','05:40'),('S93471','Wrapped Around Your Finger',1983,'Rock','05:13'),('S93658','Rock with You',1979,'Pop','03:40'),('S94002','Nobody\'s Business',1982,'Rock','04:06'),('S94027','Hardware Store',2003,'Comedy','03:45'),('S94948','Under 21',1997,'Rock','02:36'),('S95095','This City Never Sleeps',1983,'Pop','06:33'),('S95493','Polka Power!',1999,'Comedy','04:21'),('S95812','Swimming Home',2011,'Rock','03:43'),('S95862','Who Said I Would',1985,'Pop','04:01'),('S95879','Lover Chaser',1986,'Rock','03:27'),('S96021','Life Loves a Tragedy',1990,'Rock','05:14'),('S96171','Lacrymosa',2006,'Rock','03:37'),('S96309','Dancing Machine',1995,'Pop','02:36'),('S96492','Lose Control',2006,'Rock','04:50'),('S96671','Beatnik Beach',1990,'Rock','02:50'),('S96744','Tiger Tiger',1983,'Rock','03:20'),('S96893','Lovers in the Night',1982,'Rock','04:25'),('S96930','My Heart Is Broken',2011,'Rock','04:29'),('S97073','Taco Grande',1992,'Comedy','03:44'),('S97148','Fire Island',1994,'Pop','05:16'),('S97364','Tel Aviv',1981,'Rock','05:20'),('S97837','Workin\' for a Livin\'',1996,'Rock','02:39'),('S98383','Happy Birthday',1983,'Comedy','02:28'),('S98388','Weight of the World',2006,'Rock','03:37'),('S98427','Down Under',1981,'Rock','03:45'),('S98475','Going Under',2003,'Rock','03:35'),('S98552','Swampjuice (Soul-O)',1990,'Rock','01:25'),('S98657','Yoda',1985,'Comedy','03:58'),('S98858','Rock the Night',1986,'Rock','04:03'),('S98901','Smells Like Nirvana',1992,'Comedy','03:42'),('S98980','eBay',2003,'Comedy','03:36'),('S99298','Lasagna',1988,'Comedy','02:46'),('S99978','Til the Day After',1996,'Rock','03:27');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write`
--

DROP TABLE IF EXISTS `write`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `write` (
  `artistID` text,
  `songID` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Write
--
/*
DELIMITER //
CREATE TRIGGER prime_write BEFORE INSERT
 ON `write`
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from `write`
		where `write`.songID = new.songID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;
*/
/*
DELIMITER //
CREATE TRIGGER prime_write BEFORE INSERT
 ON `write`
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from `write`
		where `write`.artistID = new.artistID) < 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;
*/
--
-- Foregin Key constraint
--

DELIMITER //
CREATE TRIGGER foregin_write_on_artist BEFORE INSERT
 ON `write`
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from artist
        where artist.artistID = new.artistID) = 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

/*write(songID) is not consisnt with song(songID)
DELIMITER //
CREATE TRIGGER test4 BEFORE INSERT
 on `write`
 FOR EACH ROW
 BEGIN
	IF (select count(*) 
		from song
		where song.songID = new.songID) <= 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;
*/
--
-- Dumping data for table `write`
--

LOCK TABLES `write` WRITE;
/*!40000 ALTER TABLE `write` DISABLE KEYS */;
INSERT INTO `write` VALUES ('A00351','S01370'),('A00351','S04908'),('A00351','S07990'),('A00351','S20742'),('A00351','S22762'),('A00351','S24047'),('A00351','S25302'),('A00351','S28581'),('A00351','S30102'),('A00351','S35790'),('A00351','S36671'),('A00351','S41824'),('A00351','S44173'),('A00351','S45733'),('A00351','S46253'),('A00351','S55378'),('A00351','S60954'),('A00351','S63001'),('A00351','S63928'),('A00351','S64721'),('A00351','S70486'),('A00351','S73909'),('A00351','S74605'),('A00351','S78213'),('A00351','S78429'),('A00351','S79637'),('A00351','S81690'),('A00351','S92809'),('A00351','S94948'),('A01954','S09196'),('A01954','S23197'),('A01954','S25014'),('A01954','S35045'),('A01954','S36508'),('A01954','S36923'),('A01954','S44967'),('A02522','S14636'),('A02591','S55739'),('A02681','S55487'),('A02681','S69493'),('A02681','S80940'),('A02681','S87872'),('A02786','S61681'),('A03052','S24467'),('A03052','S31251'),('A03052','S49075'),('A03052','S74716'),('A03052','S79981'),('A04652','S00617'),('A04652','S03520'),('A04652','S15402'),('A04652','S18580'),('A04652','S22536'),('A04652','S24299'),('A04652','S28510'),('A04652','S28777'),('A04652','S29701'),('A04652','S40510'),('A04652','S61523'),('A04652','S64205'),('A04652','S67306'),('A04652','S79257'),('A04652','S90045'),('A04652','S91514'),('A04652','S96744'),('A04652','S97364'),('A04872','S75787'),('A05356','A05356'),('A05356','S01397'),('A05356','S06362'),('A05356','S13300'),('A05356','S14245'),('A05356','S15377'),('A05356','S23575'),('A05356','S27666'),('A05356','S30382'),('A05356','S32093'),('A05356','S33651'),('A05356','S37462'),('A05356','S37631'),('A05356','S39691'),('A05356','S41330'),('A05356','S43637'),('A05356','S56272'),('A05356','S56489'),('A05356','S57305'),('A05356','S58655'),('A05356','S59181'),('A05356','S66107'),('A05356','S70758'),('A05356','S75360'),('A05356','S79243'),('A05356','S84449'),('A05356','S87736'),('A05356','S87787'),('A05356','S91486'),('A05356','S92618'),('A05356','S95812'),('A05356','S96171'),('A05356','S96492'),('A05356','S96930'),('A05356','S98388'),('A05356','S98475'),('A05715','S55391'),('A05954','S27472'),('A06415','S10338'),('A06415','S13007'),('A06415','S21880'),('A06415','S26443'),('A06415','S35393'),('A06415','S48669'),('A06415','S50093'),('A06415','S51405'),('A06415','S55908'),('A06415','S55914'),('A06415','S78707'),('A06415','S85465'),('A06415','S87553'),('A06415','S97148'),('A06665','S25619'),('A06924','S44282'),('A07582','S51803'),('A07582','S75278'),('A07704','S00617'),('A07704','S03520'),('A07704','S15402'),('A07704','S18580'),('A07704','S22536'),('A07704','S24299'),('A07704','S28510'),('A07704','S28777'),('A07704','S29701'),('A07704','S40510'),('A07704','S61523'),('A07704','S64205'),('A07704','S67306'),('A07704','S79257'),('A07704','S90045'),('A07704','S91514'),('A07704','S96744'),('A07704','S97364'),('A08187','S00081'),('A08218','S45087'),('A08383','S11230'),('A08383','S66730'),('A09028','S10338'),('A09028','S21880'),('A09028','S26443'),('A09028','S48669'),('A09028','S50093'),('A09028','S85465'),('A09028','S97148'),('A09385','S21880'),('A09385','S48669'),('A09385','S50093'),('A09385','S51405'),('A09385','S85465'),('A09385','S97148'),('A09407','S38783'),('A09881','S44718'),('A09881','S54075'),('A09881','S93226'),('A10268','S20881'),('A10268','S33216'),('A10268','S39524'),('A10268','S56173'),('A10268','S68303'),('A10268','S71619'),('A10268','S77777'),('A10268','S81873'),('A10268','S95095'),('A10819','S69422'),('A10930','S59642'),('A11232','S72366'),('A11477','S98901'),('A12416','S00659'),('A12416','S18121'),('A12416','S19254'),('A12416','S23070'),('A12416','S34501'),('A12416','S52462'),('A12416','S72215'),('A12416','S72763'),('A12416','S83440'),('A12416','S93101'),('A12872','S46196'),('A13413','S18945'),('A13413','S21303'),('A13413','S22842'),('A13413','S37155'),('A13413','S39507'),('A13413','S42425'),('A13413','S81659'),('A13988','S25858'),('A14737','S01334'),('A14737','S03214'),('A14737','S04333'),('A14737','S07020'),('A14737','S09479'),('A14737','S11939'),('A14737','S13635'),('A14737','S15220'),('A14737','S20894'),('A14737','S27988'),('A14737','S32035'),('A14737','S33463'),('A14737','S33469'),('A14737','S38101'),('A14737','S38732'),('A14737','S40643'),('A14737','S41506'),('A14737','S46744'),('A14737','S48438'),('A14737','S48893'),('A14737','S49638'),('A14737','S59210'),('A14737','S65391'),('A14737','S65587'),('A14737','S70980'),('A14737','S76370'),('A14737','S77426'),('A14737','S81906'),('A14737','S83359'),('A14737','S84796'),('A14737','S86783'),('A14737','S96021'),('A14737','S98552'),('A15007','S75471'),('A15420','S09421'),('A15420','S14425'),('A15458','S68224'),('A15675','S16805'),('A15675','S23235'),('A15675','S52336'),('A15675','S62872'),('A15675','S68494'),('A15675','S74659'),('A15675','S75115'),('A15675','S77731'),('A15675','S89352'),('A15675','S91690'),('A15735','S55684'),('A15760','S72366'),('A16302','S01334'),('A16302','S03214'),('A16302','S04333'),('A16302','S07020'),('A16302','S09479'),('A16302','S11939'),('A16302','S13635'),('A16302','S15220'),('A16302','S20894'),('A16302','S27988'),('A16302','S32035'),('A16302','S33463'),('A16302','S33469'),('A16302','S38101'),('A16302','S38732'),('A16302','S40643'),('A16302','S41506'),('A16302','S46744'),('A16302','S48438'),('A16302','S48893'),('A16302','S49638'),('A16302','S59210'),('A16302','S65391'),('A16302','S65587'),('A16302','S70980'),('A16302','S76370'),('A16302','S77426'),('A16302','S81906'),('A16302','S83359'),('A16302','S84796'),('A16302','S86783'),('A16302','S96021'),('A16302','S98552'),('A16613','S81846'),('A16840','S65944'),('A16949','S00659'),('A16949','S18121'),('A16949','S19254'),('A16949','S23070'),('A16949','S34501'),('A16949','S52462'),('A16949','S72215'),('A16949','S72763'),('A16949','S83440'),('A16949','S93101'),('A17873','S67274'),('A18379','S72139'),('A18767','S22524'),('A18767','S96309'),('A18839','S99978'),('A18894','S45087'),('A19012','S52598'),('A19012','S62872'),('A19012','S63242'),('A19012','S65681'),('A19012','S66589'),('A19012','S70712'),('A19012','S83882'),('A19012','S98427'),('A19090','S07833'),('A19090','S10692'),('A19090','S36518'),('A19090','S40268'),('A19090','S44718'),('A19090','S54075'),('A19090','S61871'),('A19090','S93226'),('A19130','S68494'),('A19130','S78449'),('A19599','S23575'),('A19599','S33651'),('A19599','S56272'),('A19599','S66107'),('A19599','S75360'),('A19599','S79243'),('A19599','S91486'),('A19599','S98475'),('A19655','S12698'),('A19655','S64436'),('A19655','S75278'),('A20682','S00081'),('A20682','S00502'),('A20682','S00706'),('A20682','S02375'),('A20682','S04073'),('A20682','S05058'),('A20682','S05184'),('A20682','S07744'),('A20682','S09421'),('A20682','S09844'),('A20682','S10562'),('A20682','S11230'),('A20682','S13397'),('A20682','S14636'),('A20682','S16309'),('A20682','S18182'),('A20682','S22384'),('A20682','S23486'),('A20682','S24037'),('A20682','S24352'),('A20682','S25858'),('A20682','S26696'),('A20682','S27568'),('A20682','S28527'),('A20682','S31670'),('A20682','S33189'),('A20682','S33589'),('A20682','S34811'),('A20682','S41561'),('A20682','S41911'),('A20682','S42258'),('A20682','S43852'),('A20682','S43953'),('A20682','S44389'),('A20682','S47287'),('A20682','S47797'),('A20682','S47875'),('A20682','S47879'),('A20682','S48439'),('A20682','S50161'),('A20682','S51106'),('A20682','S51986'),('A20682','S52365'),('A20682','S54798'),('A20682','S55391'),('A20682','S55494'),('A20682','S55684'),('A20682','S55739'),('A20682','S55766'),('A20682','S55912'),('A20682','S55945'),('A20682','S56987'),('A20682','S58714'),('A20682','S61309'),('A20682','S61681'),('A20682','S65944'),('A20682','S66912'),('A20682','S67274'),('A20682','S68224'),('A20682','S69116'),('A20682','S70855'),('A20682','S71637'),('A20682','S72366'),('A20682','S74751'),('A20682','S77346'),('A20682','S79668'),('A20682','S79681'),('A20682','S81846'),('A20682','S87016'),('A20682','S88466'),('A20682','S90971'),('A20682','S91454'),('A20682','S92126'),('A20682','S94027'),('A20682','S95493'),('A20682','S97073'),('A20682','S98383'),('A20682','S98657'),('A20682','S98901'),('A20682','S98980'),('A20682','S99298'),('A21222','S69422'),('A21228','S39295'),('A21265','S50161'),('A21265','S65944'),('A21442','S29147'),('A21442','S34924'),('A21590','S81659'),('A21680','S66247'),('A22136','S55684'),('A22766','S09196'),('A22766','S11946'),('A22766','S25014'),('A22766','S35045'),('A22766','S36508'),('A22766','S36923'),('A22766','S44967'),('A22766','S96309'),('A22876','S40133'),('A22966','S00659'),('A22966','S18121'),('A22966','S19254'),('A22966','S23070'),('A22966','S34501'),('A22966','S52462'),('A22966','S72215'),('A22966','S72763'),('A22966','S83440'),('A22966','S93101'),('A23957','S10562'),('A24438','S55684'),('A24676','S27472'),('A24855','S24101'),('A24855','S25619'),('A24855','S27354'),('A24855','S27750'),('A24855','S31195'),('A24855','S31370'),('A24855','S31415'),('A24855','S34259'),('A24855','S36770'),('A24855','S48360'),('A24855','S52171'),('A24855','S53239'),('A24855','S64849'),('A24855','S66576'),('A24855','S78604'),('A24855','S82041'),('A24855','S83185'),('A24855','S91945'),('A24855','S94002'),('A25495','S55391'),('A25625','S08921'),('A27567','S21303'),('A27567','S39507'),('A27567','S81659'),('A27624','S88025'),('A27803','S21303'),('A27803','S37155'),('A28017','S02715'),('A28017','S06352'),('A28017','S08562'),('A28017','S17360'),('A28017','S29774'),('A28017','S31477'),('A28017','S32550'),('A28017','S33189'),('A28017','S60040'),('A28017','S71437'),('A28017','S77276'),('A28017','S79039'),('A28458','S00659'),('A28458','S18121'),('A28458','S19254'),('A28458','S23070'),('A28458','S34501'),('A28458','S52462'),('A28458','S72215'),('A28458','S72763'),('A28458','S83440'),('A28458','S93101'),('A28531','S16805'),('A28531','S23235'),('A28531','S52336'),('A28531','S68494'),('A28531','S74659'),('A28531','S75115'),('A28531','S77731'),('A28531','S78449'),('A28531','S89352'),('A28531','S91690'),('A28708','S55739'),('A29442','S43928'),('A29505','S59648'),('A29624','S04320'),('A29624','S39981'),('A29624','S77788'),('A30473','S31005'),('A30473','S50355'),('A30473','S79613'),('A30930','S14636'),('A32132','S14636'),('A32222','S28514'),('A32222','S32216'),('A32222','S40052'),('A32222','S75787'),('A32594','S24041'),('A32712','S61681'),('A33519','S07839'),('A33519','S11946'),('A33519','S22524'),('A33519','S96309'),('A34741','S18945'),('A34741','S21303'),('A34741','S22842'),('A34741','S37155'),('A34741','S39507'),('A34741','S42425'),('A34741','S51921'),('A34741','S65766'),('A34741','S81659'),('A36379','S24467'),('A36379','S31251'),('A36379','S49075'),('A36379','S74716'),('A36379','S79981'),('A36942','S74751'),('A37524','S42258'),('A37608','S44282'),('A37812','S87016'),('A37877','S22524'),('A37998','S14636'),('A38152','S66247'),('A40051','S65944'),('A40109','S24352'),('A40109','S39981'),('A40109','S77788'),('A40109','S86967'),('A40931','S04992'),('A41674','S65564'),('A42076','S00617'),('A42076','S03520'),('A42076','S15402'),('A42076','S18580'),('A42076','S22536'),('A42076','S24299'),('A42076','S28510'),('A42076','S28777'),('A42076','S29701'),('A42076','S40510'),('A42076','S61523'),('A42076','S64205'),('A42076','S67306'),('A42076','S79257'),('A42076','S90045'),('A42076','S91514'),('A42076','S96744'),('A42076','S97364'),('A42210','S90971'),('A42607','S36366'),('A42607','S49544'),('A42607','S79027'),('A42617','A42617'),('A42617','S06362'),('A42617','S14245'),('A42617','S27666'),('A42617','S37631'),('A42617','S43637'),('A42617','S56489'),('A42617','S58655'),('A42617','S70758'),('A42617','S96930'),('A42808','A42808'),('A42808','S06362'),('A42808','S13300'),('A42808','S14245'),('A42808','S27666'),('A42808','S30382'),('A42808','S37462'),('A42808','S37631'),('A42808','S41330'),('A42808','S43637'),('A42808','S56489'),('A42808','S57305'),('A42808','S58655'),('A42808','S70758'),('A42808','S87787'),('A42808','S96171'),('A42808','S96492'),('A42808','S96930'),('A42808','S98388'),('A42862','S55739'),('A42960','S12833'),('A42960','S62872'),('A42960','S63242'),('A44085','S01334'),('A44085','S03214'),('A44085','S04333'),('A44085','S07020'),('A44085','S09479'),('A44085','S11939'),('A44085','S13635'),('A44085','S15220'),('A44085','S20894'),('A44085','S27988'),('A44085','S32035'),('A44085','S33463'),('A44085','S33469'),('A44085','S38101'),('A44085','S38732'),('A44085','S40643'),('A44085','S41506'),('A44085','S46744'),('A44085','S48438'),('A44085','S48893'),('A44085','S49638'),('A44085','S59210'),('A44085','S65391'),('A44085','S65587'),('A44085','S70980'),('A44085','S76370'),('A44085','S77426'),('A44085','S81906'),('A44085','S83359'),('A44085','S84796'),('A44085','S86783'),('A44085','S96021'),('A44085','S98552'),('A44862','S88466'),('A44993','S24041'),('A46265','S18765'),('A46265','S20286'),('A46265','S24057'),('A46809','S98901'),('A46835','S61681'),('A47140','S11230'),('A47140','S66730'),('A47508','S10338'),('A47508','S13007'),('A47508','S21880'),('A47508','S26443'),('A47508','S35393'),('A47508','S48669'),('A47508','S50093'),('A47508','S51405'),('A47508','S55908'),('A47508','S55914'),('A47508','S78707'),('A47508','S85465'),('A47508','S87553'),('A47508','S97148'),('A48305','S09731'),('A48305','S26063'),('A48305','S33301'),('A48305','S36366'),('A48305','S49544'),('A48305','S68038'),('A48305','S79027'),('A48305','S83217'),('A48305','S90569'),('A48305','S95862'),('A48732','S55945'),('A48984','S98980'),('A49011','S50098'),('A49360','S09196'),('A49360','S25014'),('A49360','S35045'),('A49360','S36508'),('A49360','S36923'),('A49360','S44967'),('A50792','S09844'),('A51186','S10650'),('A51186','S26772'),('A51186','S41737'),('A51186','S59642'),('A51186','S64269'),('A51186','S64861'),('A51186','S65564'),('A51186','S69310'),('A51212','S43637'),('A51212','S56489'),('A51212','S58655'),('A51279','S39295'),('A51386','S30399'),('A51386','S37809'),('A51386','S57366'),('A51422','S14636'),('A52048','S67274'),('A52130','S45015'),('A52384','S51106'),('A52663','S27750'),('A52840','S10562'),('A52937','S18765'),('A53034','S47875'),('A53842','S55739'),('A54058','S07839'),('A54110','S20881'),('A54110','S33216'),('A54110','S39524'),('A54110','S56173'),('A54110','S68303'),('A54110','S71619'),('A54110','S77777'),('A54110','S81873'),('A54110','S95095'),('A54996','S96930'),('A55167','S98901'),('A55485','S57366'),('A56820','S17179'),('A57021','S90971'),('A57063','S01334'),('A57063','S03214'),('A57063','S04333'),('A57063','S07020'),('A57063','S09479'),('A57063','S11939'),('A57063','S13635'),('A57063','S15220'),('A57063','S20894'),('A57063','S27988'),('A57063','S32035'),('A57063','S33463'),('A57063','S33469'),('A57063','S38101'),('A57063','S38732'),('A57063','S40643'),('A57063','S41506'),('A57063','S46744'),('A57063','S48438'),('A57063','S48893'),('A57063','S49638'),('A57063','S59210'),('A57063','S65391'),('A57063','S65587'),('A57063','S70980'),('A57063','S76370'),('A57063','S77426'),('A57063','S81906'),('A57063','S83359'),('A57063','S84796'),('A57063','S86783'),('A57063','S96021'),('A57063','S98552'),('A57289','S91808'),('A57534','S44282'),('A57534','S96309'),('A57808','S58284'),('A57983','S24101'),('A57983','S27354'),('A57983','S31370'),('A57983','S34259'),('A57983','S52171'),('A57983','S53239'),('A57983','S64849'),('A57983','S66576'),('A57983','S83185'),('A57983','S91945'),('A58739','S99978'),('A58856','S05058'),('A58890','S97073'),('A59165','S59648'),('A59702','S59648'),('A59702','S66247'),('A59702','S99978'),('A60597','S11946'),('A61355','S66107'),('A61603','S07570'),('A61603','S08921'),('A61603','S28962'),('A61603','S32216'),('A61603','S40052'),('A61603','S47305'),('A61603','S56098'),('A61603','S89460'),('A62100','S26713'),('A62249','S21303'),('A62249','S42425'),('A62249','S65766'),('A62458','S26713'),('A62812','S27419'),('A62998','S07570'),('A62998','S16220'),('A62998','S28514'),('A62998','S28962'),('A62998','S32216'),('A62998','S40052'),('A62998','S47305'),('A62998','S56098'),('A62998','S89460'),('A62998','S96671'),('A64339','S00081'),('A65163','S00659'),('A65163','S18121'),('A65163','S19254'),('A65163','S23070'),('A65163','S34501'),('A65163','S52462'),('A65163','S72215'),('A65163','S72763'),('A65163','S83440'),('A65163','S93101'),('A65322','S57366'),('A65500','S56272'),('A65500','S92618'),('A65754','S91808'),('A66935','S35285'),('A67283','S15377'),('A67283','S23575'),('A67283','S33651'),('A67283','S39691'),('A67283','S56272'),('A67283','S66107'),('A67283','S75360'),('A67283','S79243'),('A67283','S84449'),('A67283','S91486'),('A67283','S98475'),('A67619','S25858'),('A67682','S40133'),('A68703','S55924'),('A68942','S64436'),('A68942','S64910'),('A69056','S17179'),('A70012','S04729'),('A70012','S24720'),('A70012','S35040'),('A70012','S35200'),('A70012','S50469'),('A70012','S65025'),('A70012','S71981'),('A70012','S89169'),('A70012','S95879'),('A70012','S98858'),('A71012','S46196'),('A71269','S10650'),('A71269','S26772'),('A71269','S41737'),('A71269','S59642'),('A71269','S64269'),('A71295','S77308'),('A71873','S04992'),('A72327','S59648'),('A72445','S64269'),('A73074','S00081'),('A73177','S72139'),('A74157','S07833'),('A74157','S10692'),('A74157','S44718'),('A74157','S61871'),('A74157','S67795'),('A74157','S93226'),('A74384','S17360'),('A74734','S44282'),('A74734','S96309'),('A74995','S55684'),('A75359','S57366'),('A75517','S97073'),('A77120','S10562'),('A77170','S23197'),('A77187','S98980'),('A77926','S14636'),('A78888','S14636'),('A80984','S29161'),('A80984','S82947'),('A81062','S09196'),('A81062','S25014'),('A81062','S35045'),('A81062','S36508'),('A81062','S36923'),('A81062','S44967'),('A81278','S97073'),('A81967','S90971'),('A82409','S05523'),('A82409','S12457'),('A82409','S16537'),('A82409','S17687'),('A82409','S24869'),('A82409','S61006'),('A82409','S62933'),('A82409','S93658'),('A82818','S02555'),('A82818','S24856'),('A82818','S26713'),('A82818','S46493'),('A82818','S53020'),('A82818','S59648'),('A82818','S63518'),('A82818','S66247'),('A82818','S75569'),('A82818','S85046'),('A82818','S97837'),('A83620','S57366'),('A83630','S98657'),('A83763','S16805'),('A83763','S23235'),('A83763','S52336'),('A83763','S68494'),('A83763','S74659'),('A83763','S75115'),('A83763','S77731'),('A83763','S78449'),('A83763','S89352'),('A83763','S91690'),('A84004','S00659'),('A84004','S18121'),('A84004','S19254'),('A84004','S23070'),('A84004','S34501'),('A84004','S52462'),('A84004','S72215'),('A84004','S72763'),('A84004','S83440'),('A84004','S93101'),('A84056','S30399'),('A84056','S37809'),('A84056','S57366'),('A84862','S16805'),('A84862','S23235'),('A84862','S52336'),('A84862','S68494'),('A84862','S74659'),('A84862','S75115'),('A84862','S77731'),('A84862','S78449'),('A84862','S89352'),('A84862','S91690'),('A85240','S06962'),('A85240','S20286'),('A85240','S51803'),('A85240','S64910'),('A85240','S75278'),('A85240','S76950'),('A85240','S96893'),('A85726','S30399'),('A85726','S37809'),('A87734','S81659'),('A87999','S16805'),('A87999','S23235'),('A87999','S52336'),('A87999','S68494'),('A87999','S74659'),('A87999','S75115'),('A87999','S77731'),('A87999','S78449'),('A87999','S89352'),('A87999','S91690'),('A88176','S57366'),('A88360','S91891'),('A88460','S22524'),('A88514','S07839'),('A88887','S11946'),('A88950','S37155'),('A89466','S02555'),('A89466','S24856'),('A89466','S53020'),('A89466','S63518'),('A89466','S66247'),('A89466','S75569'),('A89466','S97837'),('A89812','S55912'),('A90082','S07792'),('A90082','S11622'),('A90082','S15301'),('A90082','S17782'),('A90082','S59240'),('A90082','S72793'),('A90082','S75471'),('A90432','S78213'),('A90432','S78429'),('A90432','S81690'),('A90432','S92809'),('A91386','S22524'),('A91998','S25858'),('A92206','S55684'),('A92795','S40133'),('A92911','S61681'),('A92945','S13007'),('A92945','S26443'),('A92945','S35393'),('A92945','S51405'),('A92945','S55908'),('A92945','S55914'),('A92945','S78707'),('A92945','S87553'),('A94214','S46493'),('A94214','S66247'),('A94214','S75569'),('A94214','S85046'),('A94535','S71760'),('A94596','S24467'),('A94596','S31251'),('A94596','S49075'),('A94596','S74716'),('A94596','S79981'),('A94604','S13610'),('A94604','S51513'),('A94604','S72812'),('A94604','S77844'),('A94604','S83287'),('A94604','S86942'),('A94604','S88478'),('A94604','S93471'),('A94814','S96671'),('A95016','S24720'),('A95117','S55487'),('A95193','S18968'),('A95193','S83882'),('A95193','S98427'),('A95214','S59648'),('A95814','S36518'),('A96314','S88025'),('A96369','S02555'),('A96526','S54055'),('A96549','S07833'),('A96549','S44718'),('A96549','S61871'),('A96549','S93226'),('A97405','S09844'),('A97956','S65944'),('A98242','A98242'),('A98242','S14245'),('A98242','S56489'),('A98242','S95812'),('A98462','A98462'),('A98462','S14245'),('A98462','S27666'),('A98462','S43637'),('A98462','S56489'),('A98462','S96930'),('A98466','S00617'),('A98466','S03520'),('A98466','S15402'),('A98466','S18580'),('A98466','S22536'),('A98466','S24299'),('A98466','S28510'),('A98466','S28777'),('A98466','S29701'),('A98466','S40510'),('A98466','S61523'),('A98466','S64205'),('A98466','S67306'),('A98466','S79257'),('A98466','S90045'),('A98466','S91514'),('A98466','S96744'),('A98466','S97364'),('A98999','S50098'),('A99571','S45015'),('A99711','S97073');
/*!40000 ALTER TABLE `write` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `create`
--

DROP TABLE IF EXISTS `create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `create` (
  `bandID` text,
  `songID` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Create
--

DELIMITER //
CREATE TRIGGER prime_create BEFORE INSERT
 ON `create`
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from `create`
		where `create`.songID = new.songID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Foregin Key constraint
--

DELIMITER //
CREATE TRIGGER foregin_create_on_band BEFORE INSERT
 ON `create`
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from band
        where band.bandID = new.bandID) = 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Dumping data for table `create`
--

LOCK TABLES `create` WRITE;
/*!40000 ALTER TABLE `create` DISABLE KEYS */;
INSERT INTO `create` VALUES ('B02950','S07792'),('B02950','S11622'),('B02950','S15301'),('B02950','S17782'),('B02950','S57366'),('B02950','S59240'),('B02950','S72793'),('B02950','S75471'),('B05921','S16805'),('B05921','S23235'),('B05921','S52336'),('B05921','S68494'),('B05921','S74659'),('B05921','S75115'),('B05921','S77731'),('B05921','S78449'),('B05921','S89352'),('B05921','S91690'),('B07436','S07839'),('B07436','S09196'),('B07436','S11946'),('B07436','S22524'),('B07436','S25014'),('B07436','S29147'),('B07436','S30399'),('B07436','S34924'),('B07436','S35045'),('B07436','S36508'),('B07436','S36923'),('B07436','S37809'),('B07436','S38783'),('B07436','S39295'),('B07436','S43928'),('B07436','S44282'),('B07436','S44967'),('B07436','S45087'),('B07436','S71760'),('B07436','S72139'),('B07436','S96309'),('B24019','S09731'),('B24019','S26063'),('B24019','S33301'),('B24019','S36366'),('B24019','S49544'),('B24019','S68038'),('B24019','S79027'),('B24019','S83217'),('B24019','S90569'),('B24019','S95862'),('B25370','S10338'),('B25370','S13007'),('B25370','S21880'),('B25370','S26443'),('B25370','S35393'),('B25370','S48669'),('B25370','S50093'),('B25370','S51405'),('B25370','S55908'),('B25370','S55914'),('B25370','S78707'),('B25370','S85465'),('B25370','S87553'),('B25370','S97148'),('B25807','S17179'),('B25807','S20881'),('B25807','S33216'),('B25807','S39524'),('B25807','S56173'),('B25807','S68303'),('B25807','S71619'),('B25807','S77777'),('B25807','S81873'),('B25807','S95095'),('B35122','S24041'),('B35122','S24467'),('B35122','S31251'),('B35122','S49075'),('B35122','S55487'),('B35122','S69493'),('B35122','S74716'),('B35122','S79981'),('B35122','S80940'),('B35122','S87872'),('B36190','S00081'),('B36190','S00502'),('B36190','S00706'),('B36190','S02375'),('B36190','S04073'),('B36190','S04992'),('B36190','S05058'),('B36190','S05184'),('B36190','S07744'),('B36190','S09421'),('B36190','S09844'),('B36190','S10562'),('B36190','S11230'),('B36190','S13397'),('B36190','S14636'),('B36190','S16309'),('B36190','S18182'),('B36190','S22384'),('B36190','S23486'),('B36190','S24037'),('B36190','S24352'),('B36190','S25858'),('B36190','S26696'),('B36190','S27568'),('B36190','S28527'),('B36190','S31670'),('B36190','S33189'),('B36190','S33589'),('B36190','S34811'),('B36190','S41561'),('B36190','S41911'),('B36190','S42258'),('B36190','S43852'),('B36190','S43953'),('B36190','S44389'),('B36190','S47287'),('B36190','S47797'),('B36190','S47875'),('B36190','S47879'),('B36190','S48439'),('B36190','S50161'),('B36190','S51106'),('B36190','S51986'),('B36190','S52365'),('B36190','S54798'),('B36190','S55391'),('B36190','S55494'),('B36190','S55684'),('B36190','S55739'),('B36190','S55766'),('B36190','S55912'),('B36190','S55945'),('B36190','S56987'),('B36190','S58714'),('B36190','S61309'),('B36190','S61681'),('B36190','S65944'),('B36190','S66912'),('B36190','S67274'),('B36190','S68224'),('B36190','S69116'),('B36190','S70855'),('B36190','S71637'),('B36190','S72366'),('B36190','S74751'),('B36190','S77346'),('B36190','S79668'),('B36190','S79681'),('B36190','S81846'),('B36190','S87016'),('B36190','S88466'),('B36190','S90971'),('B36190','S91454'),('B36190','S92126'),('B36190','S94027'),('B36190','S95493'),('B36190','S97073'),('B36190','S98383'),('B36190','S98657'),('B36190','S98901'),('B36190','S98980'),('B36190','S99298'),('B39016','S10650'),('B39016','S26772'),('B39016','S41737'),('B39016','S59642'),('B39016','S64269'),('B39016','S64861'),('B39016','S65564'),('B39016','S69310'),('B39945','S00617'),('B39945','S03520'),('B39945','S15402'),('B39945','S18580'),('B39945','S22536'),('B39945','S24299'),('B39945','S28510'),('B39945','S28777'),('B39945','S29701'),('B39945','S40510'),('B39945','S61523'),('B39945','S64205'),('B39945','S67306'),('B39945','S79257'),('B39945','S90045'),('B39945','S91514'),('B39945','S96744'),('B39945','S97364'),('B43480','S02715'),('B43480','S05523'),('B43480','S06352'),('B43480','S08562'),('B43480','S12457'),('B43480','S16537'),('B43480','S17360'),('B43480','S17687'),('B43480','S18765'),('B43480','S24869'),('B43480','S27419'),('B43480','S27472'),('B43480','S29774'),('B43480','S31477'),('B43480','S32550'),('B43480','S50098'),('B43480','S60040'),('B43480','S61006'),('B43480','S62933'),('B43480','S69422'),('B43480','S71437'),('B43480','S77276'),('B43480','S77308'),('B43480','S79039'),('B43480','S88025'),('B43480','S93658'),('B48954','S13610'),('B48954','S51513'),('B48954','S54055'),('B48954','S55924'),('B48954','S72812'),('B48954','S77844'),('B48954','S83287'),('B48954','S86942'),('B48954','S88478'),('B48954','S93471'),('B49843','S07570'),('B49843','S08921'),('B49843','S16220'),('B49843','S28514'),('B49843','S28962'),('B49843','S32216'),('B49843','S40052'),('B49843','S46196'),('B49843','S47305'),('B49843','S56098'),('B49843','S75787'),('B49843','S89460'),('B49843','S91891'),('B49843','S96671'),('B53513','S14425'),('B57698','S01397'),('B57698','S06362'),('B57698','S13300'),('B57698','S14245'),('B57698','S15377'),('B57698','S23575'),('B57698','S27666'),('B57698','S30382'),('B57698','S32093'),('B57698','S33651'),('B57698','S37462'),('B57698','S37631'),('B57698','S39691'),('B57698','S41330'),('B57698','S43637'),('B57698','S56272'),('B57698','S56489'),('B57698','S57305'),('B57698','S58655'),('B57698','S59181'),('B57698','S66107'),('B57698','S70758'),('B57698','S75360'),('B57698','S79243'),('B57698','S84349'),('B57698','S84449'),('B57698','S87736'),('B57698','S87787'),('B57698','S91486'),('B57698','S92618'),('B57698','S95812'),('B57698','S96171'),('B57698','S96492'),('B57698','S96930'),('B57698','S98388'),('B57698','S98475'),('B58851','S06962'),('B58851','S12698'),('B58851','S20286'),('B58851','S24057'),('B58851','S51803'),('B58851','S64436'),('B58851','S64910'),('B58851','S75278'),('B58851','S76950'),('B58851','S96893'),('B60704','S01334'),('B60704','S03214'),('B60704','S04333'),('B60704','S07020'),('B60704','S09479'),('B60704','S11939'),('B60704','S13635'),('B60704','S15220'),('B60704','S20894'),('B60704','S27988'),('B60704','S32035'),('B60704','S33463'),('B60704','S33469'),('B60704','S38101'),('B60704','S38732'),('B60704','S40643'),('B60704','S41506'),('B60704','S45015'),('B60704','S46744'),('B60704','S48438'),('B60704','S48893'),('B60704','S49638'),('B60704','S59210'),('B60704','S65391'),('B60704','S65587'),('B60704','S70980'),('B60704','S76370'),('B60704','S77426'),('B60704','S81906'),('B60704','S83359'),('B60704','S84796'),('B60704','S86783'),('B60704','S96021'),('B60704','S98552'),('B61967','S24101'),('B61967','S25619'),('B61967','S27354'),('B61967','S27750'),('B61967','S31195'),('B61967','S31370'),('B61967','S31415'),('B61967','S34259'),('B61967','S36770'),('B61967','S48360'),('B61967','S52171'),('B61967','S53239'),('B61967','S64849'),('B61967','S66576'),('B61967','S78604'),('B61967','S82041'),('B61967','S83185'),('B61967','S91945'),('B61967','S94002'),('B67107','S18945'),('B67107','S21303'),('B67107','S22842'),('B67107','S37155'),('B67107','S39507'),('B67107','S42425'),('B67107','S51921'),('B67107','S65766'),('B67107','S81659'),('B75381','S23197'),('B78243','S02555'),('B78243','S24856'),('B78243','S26713'),('B78243','S35285'),('B78243','S46493'),('B78243','S53020'),('B78243','S58284'),('B78243','S59648'),('B78243','S63518'),('B78243','S66247'),('B78243','S66730'),('B78243','S75569'),('B78243','S85046'),('B78243','S91808'),('B78243','S97837'),('B78243','S99978'),('B78730','S04729'),('B78730','S24720'),('B78730','S35040'),('B78730','S35200'),('B78730','S50469'),('B78730','S65025'),('B78730','S71981'),('B78730','S89169'),('B78730','S95879'),('B78730','S98858'),('B86189','S00659'),('B86189','S18121'),('B86189','S19254'),('B86189','S23070'),('B86189','S34501'),('B86189','S52462'),('B86189','S72215'),('B86189','S72763'),('B86189','S83440'),('B86189','S93101'),('B87010','S12833'),('B87010','S18968'),('B87010','S52598'),('B87010','S62872'),('B87010','S63242'),('B87010','S65681'),('B87010','S66589'),('B87010','S70712'),('B87010','S83882'),('B87010','S98427'),('B87963','S07833'),('B87963','S10692'),('B87963','S36518'),('B87963','S40268'),('B87963','S44718'),('B87963','S54075'),('B87963','S61871'),('B87963','S67795'),('B87963','S93226'),('B96605','S01370'),('B96605','S04908'),('B96605','S07990'),('B96605','S20742'),('B96605','S22762'),('B96605','S24047'),('B96605','S25302'),('B96605','S28581'),('B96605','S30102'),('B96605','S35790'),('B96605','S36671'),('B96605','S40133'),('B96605','S41824'),('B96605','S44173'),('B96605','S45733'),('B96605','S46253'),('B96605','S55378'),('B96605','S60954'),('B96605','S63001'),('B96605','S63928'),('B96605','S64721'),('B96605','S70486'),('B96605','S73909'),('B96605','S74605'),('B96605','S78213'),('B96605','S78429'),('B96605','S79637'),('B96605','S81690'),('B96605','S92809'),('B96605','S94948'),('B97748','S04320'),('B97748','S29161'),('B97748','S31005'),('B97748','S39981'),('B97748','S50355'),('B97748','S77788'),('B97748','S79613'),('B97748','S82947'),('B97748','S86967');
/*!40000 ALTER TABLE `create` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productID` text,
  `productName` text,
  `productType` text,
  `productYearReleased` int(11) DEFAULT NULL,
  `productGenre` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Primary Key on Product
--

DELIMITER //
CREATE TRIGGER prime_product BEFORE INSERT
 ON product
 FOR EACH ROW
 BEGIN
	IF (select count(*)
		from product
		where product.productID = new.productID) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P20666','Thriller','Album',1982,'Pop'),('P57737','Thriller','Single',1983,'Pop'),('P66614','The Open Door','Album',2006,'Rock'),('P91069','Greatest','Compilation',1990,'Rock'),('P01142','The Final Countdown','Album',1986,'Rock'),('P01643','Time Flies...','Compilation',1996,'Rock'),('P03969','Ben','Single',1972,'Pop'),('P08220','Business As Usual','Album',1981,'Rock'),('P08730','Off the Deep End','Album',1992,'Comedy'),('P09835','Synchronicity','Album',1983,'Rock'),('P11414','Colour By Numbers','Album',1983,'Rock'),('P13153','Don\'t Stop \'Til You Get Enough','Single',1979,'Pop'),('P13589','Bad Hair Day','Album',1996,'Comedy'),('P14362','Toto IV','Album',1982,'Rock'),('P15866','Big Bam Boom','Album',1984,'Pop'),('P18141','Introducing Save Ferris','Album',1996,'Rock'),('P19979','Get Lucky','Album',1981,'Rock'),('P26535','Songs from the Big Chair','Album',1985,'Rock'),('P26554','Rebel Yell','Album',1983,'Rock'),('P33936','No Jacket Required','Album',1985,'Pop'),('P34493','Billy Idol','Album',1982,'Rock'),('P35287','Evanescence','Album',2011,'Rock'),('P38554','\"Weird Al\"\" Yankovic\"','Album',1983,'Comedy'),('P40802','Jackson 5 - The Ultimate Collection','Compilation',1995,'Pop'),('P42487','Girls Just Want to Have Fun','Single',1983,'Pop'),('P47473','Sweet Dreams (Are Made of This)','Album',1983,'Pop'),('P48064','Even Worse','Album',1988,'Comedy'),('P50129','Running with Scissors','Album',1999,'Comedy'),('P50592','Wanna Be Startin\' Somethin\'','Single',1983,'Pop'),('P52336','Beat It','Single',1983,'Rock'),('P53704','Talk Talk Talk','Album',1981,'Rock'),('P54889','Off the Wall','Single',1980,'Pop'),('P54926','Modified','Album',1999,'Rock'),('P56513','Poodle Hat','Album',2003,'Comedy'),('P60963','The Best of Village People','Compilation',1994,'Pop'),('P62517','Make It Big','Album',1984,'Pop'),('P67153','Open Up and Say... Ahh!','Album',1988,'Rock'),('P68486','A Kind of Magic','Album',1986,'Rock'),('P69029','I Will Survive','Single',1978,'Pop'),('P73123','Look What the Cat Dragged In','Album',1986,'Rock'),('P77089','Fallen','Album',2003,'Rock'),('P77942','Off the Wall','Album',1979,'Pop'),('P79016','Dare to Be Stupid','Album',1985,'Comedy'),('P87225','Whenever You Need Somebody','Album',1987,'Pop'),('P87758','Duran Duran','Album',1981,'Rock'),('P92068','Flesh & Blood','Album',1990,'Rock'),('P93671','Billie Jean','Single',1983,'Pop'),('P95445','It Means Everything','Album',1997,'Rock'),('P97805','Seven and the Ragged Tiger','Album',1983,'Rock');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appear`
--

DROP TABLE IF EXISTS `appear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appear` (
  `songID` text,
  `productID` text,
  `TrackNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Foregin Key constraint
--

DELIMITER //
CREATE TRIGGER foregin_appear_on_song BEFORE INSERT
 on appear
 FOR EACH ROW
 BEGIN
	IF (select count(*) 
		from song
		where song.songID = new.songID) = 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER foregin_appear_on_product BEFORE INSERT
 on appear
 FOR EACH ROW
 BEGIN
	IF (select count(*) 
		from product
		where product.productID = new.productID) = 0 THEN
    SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 30001, MESSAGE_TEXT = 'Can\'t insert record. Foreign parent key does not exist!';
	END IF;
END //
DELIMITER ;
--
-- Dumping data for table `appear`
--

create index id_index on song(songYearReleased) using btree;

/*ALTER TABLE song DROP INDEX id_index;*/

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-05  9:49:06