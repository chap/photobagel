# Sequel Pro dump
# Version 1191
# http://code.google.com/p/sequel-pro
#
# Host: 0.0.0.0 (MySQL 5.0.51a-24+lenny1)
# Database: photobagel_production
# Generation Time: 2009-09-02 10:21:17 -0400
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` text,
  `taken_at` date default NULL,
  `camera_model` varchar(255) default NULL,
  `longitude` decimal(15,10) default NULL,
  `latitude` decimal(15,10) default NULL,
  `image_file_name` varchar(255) default NULL,
  `image_content_type` varchar(255) default NULL,
  `image_file_size` int(11) default NULL,
  `image_updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` (`id`,`user_id`,`name`,`description`,`taken_at`,`camera_model`,`longitude`,`latitude`,`image_file_name`,`image_content_type`,`image_file_size`,`image_updated_at`,`created_at`,`updated_at`)
VALUES
	(96,1,NULL,NULL,'2008-11-11','iPhone',-75.1343333333,39.9743333333,'IMG_0001.jpg','image/jpeg',302749,'2009-08-23 21:22:03','2009-08-23 21:22:04','2009-08-23 21:22:04'),
	(97,1,NULL,NULL,'2008-12-17','iPhone',-75.1343333333,39.9743333333,'IMG_0002.jpg','image/jpeg',299212,'2009-08-23 21:22:07','2009-08-23 21:22:08','2009-08-23 21:22:08'),
	(98,1,NULL,NULL,'2008-12-24','iPhone',NULL,NULL,'IMG_0003.jpg','image/jpeg',26011,'2009-08-23 21:22:11','2009-08-23 21:22:11','2009-08-23 21:22:11'),
	(99,1,NULL,NULL,'2008-12-25','iPhone',NULL,NULL,'IMG_0004.jpg','image/jpeg',50619,'2009-08-23 21:22:12','2009-08-23 21:22:12','2009-08-23 21:22:12'),
	(100,1,NULL,NULL,'2009-01-01','iPhone',-75.3398333333,40.2065000000,'IMG_0007.jpg','image/jpeg',268283,'2009-08-23 21:22:13','2009-08-23 21:22:14','2009-08-23 21:22:14'),
	(101,1,NULL,NULL,'2009-01-24','iPhone',-75.1306666667,39.9801666667,'IMG_0010.jpg','image/jpeg',412595,'2009-08-23 21:22:17','2009-08-23 21:22:17','2009-08-23 21:22:17'),
	(102,1,NULL,NULL,'2009-02-07','iPhone',NULL,NULL,'IMG_0015.jpg','image/jpeg',47832,'2009-08-23 21:22:21','2009-08-23 21:22:21','2009-08-23 21:22:21'),
	(103,1,NULL,NULL,'2009-02-15','iPhone',-75.0738333333,41.0630000000,'IMG_0020.jpg','image/jpeg',332742,'2009-08-23 21:22:22','2009-08-23 21:22:22','2009-08-23 21:22:22'),
	(104,1,NULL,NULL,'2009-02-18','iPhone',-86.8186666667,35.9591666667,'IMG_0029.jpg','image/jpeg',215647,'2009-08-23 21:22:26','2009-08-23 21:22:26','2009-08-23 21:22:26'),
	(105,1,NULL,NULL,'2009-02-19','iPhone',NULL,NULL,'IMG_0030.jpg','image/jpeg',220949,'2009-08-23 21:22:29','2009-08-23 21:22:30','2009-08-23 21:22:30'),
	(106,1,NULL,NULL,'2009-02-22','iPhone',-75.1343333333,39.9741666667,'IMG_0033.jpg','image/jpeg',280936,'2009-08-23 21:22:33','2009-08-23 21:22:33','2009-08-23 21:22:33'),
	(107,1,NULL,NULL,'2009-03-01','iPhone',-75.1320000000,39.9793333333,'IMG_0035.jpg','image/jpeg',255737,'2009-08-23 21:22:37','2009-08-23 21:22:37','2009-08-23 21:22:37'),
	(108,1,NULL,NULL,'2009-03-05','iPhone',NULL,NULL,'IMG_0038.jpg','image/jpeg',248922,'2009-08-23 21:22:41','2009-08-23 21:22:41','2009-08-23 21:22:41'),
	(109,1,NULL,NULL,'2009-03-09','iPhone',-75.4238333333,40.0456666667,'IMG_0039.jpg','image/jpeg',231223,'2009-08-23 21:22:44','2009-08-23 21:22:45','2009-08-23 21:22:45'),
	(110,1,NULL,NULL,'2009-03-15','iPhone',-75.7345000000,40.8670000000,'IMG_0040.jpg','image/jpeg',238722,'2009-08-23 21:22:48','2009-08-23 21:22:48','2009-08-23 21:22:48'),
	(111,1,NULL,NULL,'2009-03-16','iPhone',-75.7651666667,40.8855000000,'IMG_0047.jpg','image/jpeg',440666,'2009-08-23 21:22:55','2009-08-23 21:22:56','2009-08-23 21:22:56'),
	(112,1,NULL,NULL,'2009-03-21','iPhone',-75.1683333333,39.9546666667,'IMG_0048.jpg','image/jpeg',261683,'2009-08-23 21:23:01','2009-08-23 21:23:02','2009-08-23 21:23:02'),
	(113,1,NULL,NULL,'2009-04-04','iPhone',-75.1341666667,39.9741666667,'IMG_0050.jpg','image/jpeg',285077,'2009-08-23 21:23:05','2009-08-23 21:23:05','2009-08-23 21:23:05'),
	(114,1,NULL,NULL,'2009-04-11','iPhone',-75.1213333333,39.9773333333,'IMG_0051.jpg','image/jpeg',196459,'2009-08-23 21:23:17','2009-08-23 21:23:18','2009-08-23 21:23:18'),
	(115,1,NULL,NULL,'2009-04-26','iPhone',NULL,NULL,'IMG_0052.jpg','image/jpeg',58605,'2009-08-23 21:23:19','2009-08-23 21:23:19','2009-08-23 21:23:19'),
	(116,1,NULL,NULL,'2009-04-29','iPhone',NULL,NULL,'IMG_0053.jpg','image/jpeg',279721,'2009-08-23 21:23:22','2009-08-23 21:23:23','2009-08-23 21:23:23'),
	(117,1,NULL,NULL,'2009-05-08','iPhone',-81.0961666667,32.0800000000,'IMG_0054.jpg','image/jpeg',304936,'2009-08-23 21:23:26','2009-08-23 21:23:26','2009-08-23 21:23:26'),
	(118,1,NULL,NULL,'2009-05-10','iPhone',-81.0888333333,32.0700000000,'IMG_0061.jpg','image/jpeg',319876,'2009-08-23 21:23:29','2009-08-23 21:23:30','2009-08-23 21:23:30'),
	(119,1,NULL,NULL,'2009-06-11','iPhone',-75.1685000000,39.9550000000,'IMG_0065.jpg','image/jpeg',251274,'2009-08-23 21:23:32','2009-08-23 21:23:33','2009-08-23 21:23:33'),
	(120,1,NULL,NULL,'2009-06-22','iPhone',-75.1308333333,39.9806666667,'IMG_0066.jpg','image/jpeg',189830,'2009-08-23 21:23:35','2009-08-23 21:23:35','2009-08-23 21:23:35'),
	(121,1,NULL,NULL,'2009-07-04','iPhone',-79.3501666667,40.0855000000,'IMG_0073.jpg','image/jpeg',199546,'2009-08-23 21:23:37','2009-08-23 21:23:37','2009-08-23 21:23:37'),
	(122,1,NULL,NULL,'2009-07-05','iPhone',-79.2225000000,40.2301666667,'IMG_0079.jpg','image/jpeg',252628,'2009-08-23 21:23:39','2009-08-23 21:23:40','2009-08-23 21:23:40'),
	(123,1,NULL,NULL,'2009-07-06','iPhone',-79.8643333333,40.3850000000,'IMG_0085.jpg','image/jpeg',250685,'2009-08-23 21:23:42','2009-08-23 21:23:42','2009-08-23 21:23:42'),
	(124,1,NULL,NULL,'2009-07-07','iPhone',-80.0021666667,40.4495000000,'IMG_0101.jpg','image/jpeg',273166,'2009-08-23 21:23:46','2009-08-23 21:23:46','2009-08-23 21:23:46'),
	(125,1,NULL,NULL,'2009-07-08','iPhone',NULL,NULL,'IMG_0103.jpg','image/jpeg',45582,'2009-08-23 21:23:49','2009-08-23 21:23:49','2009-08-23 21:23:49'),
	(126,1,NULL,NULL,'2009-07-10','iPhone',-75.1395000000,39.9661666667,'IMG_0105.jpg','image/jpeg',222230,'2009-08-23 21:23:50','2009-08-23 21:23:51','2009-08-23 21:23:51'),
	(127,1,NULL,NULL,'2009-07-17','iPhone',-75.1745000000,39.9505000000,'IMG_0112.jpg','image/jpeg',263585,'2009-08-23 21:23:54','2009-08-23 21:23:54','2009-08-23 21:23:54'),
	(128,1,NULL,NULL,'2009-08-04','iPhone',NULL,NULL,'IMG_0141.jpg','image/jpeg',130700,'2009-08-23 21:23:57','2009-08-23 21:23:58','2009-08-23 21:23:58'),
	(129,1,NULL,NULL,'2009-08-06','iPhone',-94.8781666667,36.8721666667,'IMG_0145.jpg','image/jpeg',241000,'2009-08-23 21:23:59','2009-08-23 21:24:00','2009-08-23 21:24:00'),
	(130,1,NULL,NULL,'2009-08-07','iPhone',-94.9785000000,36.5275000000,'IMG_0170.jpg','image/jpeg',216603,'2009-08-23 21:24:02','2009-08-23 21:24:02','2009-08-23 21:24:02'),
	(131,1,NULL,NULL,'2009-08-09','iPhone',-75.1345000000,39.9745000000,'IMG_0187.jpg','image/jpeg',190292,'2009-08-23 21:24:05','2009-08-23 21:24:06','2009-08-23 21:24:06'),
	(132,1,NULL,NULL,'2009-08-10','iPhone',-75.1643333333,39.9498333333,'IMG_0188.jpg','image/jpeg',251185,'2009-08-23 21:24:08','2009-08-23 21:24:08','2009-08-23 21:24:08'),
	(133,1,NULL,NULL,'2009-08-11','iPhone',-75.1428333333,39.9666666667,'IMG_0189.jpg','image/jpeg',250474,'2009-08-23 21:24:11','2009-08-23 21:24:12','2009-08-23 21:24:12'),
	(134,1,NULL,NULL,'2009-08-12','iPhone',NULL,NULL,'IMG_0190.jpg','image/jpeg',27083,'2009-08-23 21:24:15','2009-08-23 21:24:15','2009-08-23 21:24:15'),
	(135,1,NULL,NULL,'2009-08-14','iPhone',NULL,NULL,'IMG_0191.jpg','image/jpeg',142787,'2009-08-23 21:24:16','2009-08-23 21:24:17','2009-08-23 21:24:17'),
	(136,1,NULL,NULL,'2009-08-16','iPhone',NULL,NULL,'IMG_0192.jpg','image/jpeg',292406,'2009-08-23 21:24:18','2009-08-23 21:24:19','2009-08-23 21:24:19'),
	(137,1,NULL,NULL,'2009-08-19','iPhone',NULL,NULL,'IMG_0193.jpg','image/jpeg',15560,'2009-08-23 21:24:21','2009-08-23 21:24:21','2009-08-23 21:24:21'),
	(138,1,NULL,NULL,'2009-08-21','iPhone',-71.0618333333,42.3558333333,'IMG_0208.jpg','image/jpeg',274714,'2009-08-23 21:24:23','2009-08-23 21:24:24','2009-08-23 21:24:24'),
	(140,1,'','','2009-08-22',NULL,NULL,NULL,'photo.jpg','image/jpeg',125235,'2009-08-23 22:03:38','2009-08-23 22:03:38','2009-08-23 22:03:38'),
	(145,8,'','','2009-08-15','iPhone',-73.9991666667,40.7480000000,'photo-1.jpg','image/jpeg',115275,'2009-08-23 23:25:56','2009-08-23 23:25:56','2009-08-23 23:25:56'),
	(150,1,'','','2009-08-23','iPhone',-71.0618333333,42.3560000000,'photo.jpg','image/jpeg',147331,'2009-08-23 23:50:56','2009-08-23 23:50:57','2009-08-23 23:50:57'),
	(151,1,'','','2009-08-23','iPhone',-71.0618333333,42.3560000000,'photo.jpg','image/jpeg',147331,'2009-08-23 23:50:58','2009-08-23 23:50:58','2009-08-23 23:50:58'),
	(152,14,'','','2009-08-23',NULL,NULL,NULL,'photo_2_.jpg','image/jpeg',136475,'2009-08-23 23:55:53','2009-08-23 23:55:54','2009-08-23 23:55:54'),
	(153,7,'','','2009-08-23','iPhone',-75.1450000000,39.9733333333,'photo.jpg','image/jpeg',164456,'2009-08-24 00:12:18','2009-08-24 00:12:18','2009-08-24 00:12:18'),
	(154,16,'','','2009-08-24','SGH-A867',NULL,NULL,'Photo0533.jpg','image/jpeg',354104,'2009-08-24 00:27:38','2009-08-24 00:27:38','2009-08-24 00:27:38'),
	(155,25,'today','Andy Mullins\r\nCreative Director\r\n\r\n From my iPhone','2009-08-23','iPhone',-95.8308333333,36.0296666667,'photo.jpg','image/jpeg',124000,'2009-08-24 00:33:48','2009-08-24 00:33:48','2009-08-24 00:33:48'),
	(156,18,'IMG00201.jpg','','2009-04-06','BlackBerry 8120',NULL,NULL,'_utf-8_B_SU1HMDAyMDEuanBn_.jpg','image/jpeg',247888,'2009-08-24 00:35:53','2009-08-24 00:35:54','2009-08-24 00:35:54'),
	(157,19,'','','2009-08-22','iPhone',-79.9981666667,32.8921666667,'photo.jpg','image/jpeg',112867,'2009-08-24 00:38:59','2009-08-24 00:38:59','2009-08-24 00:38:59'),
	(158,20,'','--\r\nhttp://jayunit.net\r\n(585) 216-5657\r\n(Sent from my mobile)','2009-08-23','iPhone',-71.0713333333,42.3521666667,'photo.jpg','image/jpeg',159647,'2009-08-24 12:39:19','2009-08-24 12:39:19','2009-08-24 12:39:19'),
	(159,21,'','','2009-08-23','iPhone',-78.5150000000,38.0125000000,'photo.jpg','image/jpeg',165247,'2009-08-24 12:39:25','2009-08-24 12:39:25','2009-08-24 12:39:25'),
	(160,22,'','','2009-08-23','iPhone',-104.9618333333,39.6898333333,'photo.jpg','image/jpeg',130558,'2009-08-24 12:39:30','2009-08-24 12:39:30','2009-08-24 12:39:30'),
	(162,23,'','Sent from my mobile phone','2009-08-24','iPhone',3.7380000000,51.0576666667,'photo.jpg','image/jpeg',127150,'2009-08-24 12:39:38','2009-08-24 12:39:38','2009-08-24 12:39:38'),
	(163,1,'','','2009-08-24','iPhone',-71.0523333333,42.3535000000,'photo.jpg','image/jpeg',94924,'2009-08-24 12:53:10','2009-08-24 12:53:10','2009-08-24 12:53:10'),
	(165,25,'today','Andy Mullins\r\nCreative Director\r\n\r\n From my iPhone','2009-08-24','iPhone',-95.9690000000,36.1405000000,'photo.jpg','image/jpeg',124436,'2009-08-24 14:07:30','2009-08-24 14:07:31','2009-08-24 14:07:31'),
	(166,20,'','--\r\nhttp://jayunit.net\r\n(585) 216-5657\r\n(Sent from my mobile)','2009-08-24','iPhone',-71.0618333333,42.3560000000,'photo.jpg','image/jpeg',132647,'2009-08-24 14:39:05','2009-08-24 14:39:05','2009-08-24 14:39:05'),
	(167,18,'IMG00239.jpg','','2009-08-24','BlackBerry 8120',NULL,NULL,'_utf-8_B_SU1HMDAyMzkuanBn_.jpg','image/jpeg',359128,'2009-08-24 15:27:58','2009-08-24 15:27:58','2009-08-24 15:27:58'),
	(168,26,'','','2009-08-24','iPhone',-71.0683333333,42.3596666667,'photo.jpg','image/jpeg',145938,'2009-08-24 22:04:41','2009-08-24 22:04:42','2009-08-24 22:04:42'),
	(169,9,'8/24','','2009-08-24','iPhone',-79.8243333333,32.9250000000,'photo.jpg','image/jpeg',123631,'2009-08-24 22:13:54','2009-08-24 22:13:54','2009-08-24 22:13:54'),
	(170,9,'Fwd: first photo','---------- Forwarded message ----------\r\nFrom: Michael Mcadams <mike.mcadams@mac.com>\r\nDate: Sun, Aug 23, 2009 at 7:32 PM\r\nSubject: first photo\r\nTo: Photo Bagel <photobagel@gmail.com>','2009-08-23','iPhone',NULL,NULL,'photo.jpg','image/jpeg',133609,'2009-08-24 22:17:00','2009-08-24 22:17:00','2009-08-24 22:17:00'),
	(171,19,'','','2009-08-24','iPhone',-79.9971666667,32.8923333333,'photo.jpg','image/jpeg',165802,'2009-08-24 22:45:31','2009-08-24 22:45:32','2009-08-24 22:45:32'),
	(172,28,'','--\r\nJoseph Silvashy\r\ntwitter.com/jpsilvashy','2009-08-24','iPhone',-122.3918333333,37.7888333333,'photo.jpg','image/jpeg',90967,'2009-08-25 00:15:06','2009-08-25 00:15:06','2009-08-25 00:15:06'),
	(173,29,'','','2009-08-24',NULL,NULL,NULL,'photo.jpg','image/jpeg',126384,'2009-08-25 00:25:19','2009-08-25 00:25:19','2009-08-25 00:25:19'),
	(174,7,'Monday night lights','','2009-08-24',NULL,NULL,NULL,'photo.jpg','image/jpeg',87974,'2009-08-25 02:37:36','2009-08-25 02:37:36','2009-08-25 02:37:36'),
	(175,22,'','','2009-08-24','iPhone',-104.9641666667,39.6950000000,'photo.jpg','image/jpeg',155501,'2009-08-25 06:05:05','2009-08-25 06:05:05','2009-08-25 06:05:05'),
	(176,18,'IMG00241.jpg','','2009-08-25','BlackBerry 8120',NULL,NULL,'_utf-8_B_SU1HMDAyNDEuanBn_.jpg','image/jpeg',425727,'2009-08-25 14:03:41','2009-08-25 14:03:41','2009-08-25 14:03:41'),
	(177,30,'Chap!','Cool web site! You built this in a day?','2008-11-13','iPhone',-95.8126666667,35.9690000000,'photo.jpg','image/jpeg',197586,'2009-08-25 14:16:59','2009-08-25 14:16:59','2009-08-25 14:16:59'),
	(178,31,'','','2009-08-25','iPhone',-3.7028333333,40.4218333333,'photo.jpg','image/jpeg',101642,'2009-08-25 15:08:55','2009-08-25 15:08:55','2009-08-25 15:08:55'),
	(179,32,'Illegal pete\'s','- Matt\r\n\r\nSent like \"whoa\" from my fist! (aka I\'m on a mobile device)','2009-08-25','iPhone',-105.0010000000,39.7505000000,'photo.jpg','image/jpeg',127654,'2009-08-25 19:18:28','2009-08-25 19:18:28','2009-08-25 19:18:28'),
	(180,33,'','An email from my phone!\r\nJosh','2009-08-25','iPhone',-76.8976666667,42.6621666667,'photo.jpg','image/jpeg',130042,'2009-08-25 20:26:40','2009-08-25 20:26:40','2009-08-25 20:26:40'),
	(181,9,'8/25','','2009-08-25',NULL,NULL,NULL,'photo.jpg','image/jpeg',117390,'2009-08-25 21:48:03','2009-08-25 21:48:03','2009-08-25 21:48:03'),
	(182,24,'','--------\r\nQuinn Shanahan\r\n641-233-1123','2009-08-23','iPhone',NULL,NULL,'photo.jpg','image/jpeg',144778,'2009-08-25 21:52:10','2009-08-25 21:52:10','2009-08-25 21:52:10'),
	(183,7,'','','2009-08-25','iPhone',-75.1450000000,39.9733333333,'photo.jpg','image/jpeg',160746,'2009-08-25 23:00:28','2009-08-25 23:00:28','2009-08-25 23:00:28'),
	(184,1,'','','2009-08-25','iPhone',-75.1326666667,39.9801666667,'photo.jpg','image/jpeg',107367,'2009-08-26 02:52:30','2009-08-26 02:52:30','2009-08-26 02:52:30'),
	(185,36,'Re: Photo a Day','On Tue, Aug 25, 2009 at 10:57 PM, Photo Bagel <photobagel@gmail.com> wrote:\r\n\r\n>\r\n>\r\n> ---------- Forwarded message ----------\r\n> From: Ryan Woolsey <ryanpwoolsey@gmail.com>\r\n> Date: Tue, Aug 25, 2009 at 10:46 PM\r\n> Subject: Photo a Day\r\n> To: photobagel@gmail.com\r\n>\r\n>\r\n>\r\n>\r\n>','2009-08-25','NIKON D90',NULL,NULL,'Yorktown1.jpg','image/jpeg',487031,'2009-08-26 03:06:51','2009-08-26 03:06:51','2009-08-26 03:06:51'),
	(186,1,'Fwd:','---------- Forwarded message ----------\r\nFrom: Chap Ambrose <chapambrose@gmail.com>\r\nDate: Wed, Aug 26, 2009 at 9:21 AM\r\nSubject:\r\nTo: Photobagel <photobagel@gmail.com>','2009-08-26','iPhone',-75.1793333333,39.8768333333,'photo.jpg','image/jpeg',108364,'2009-08-26 14:12:02','2009-08-26 14:12:02','2009-08-26 14:12:02'),
	(187,9,'Fwd: 8/26','---------- Forwarded message ----------\r\nFrom: Michael Mcadams <mike.mcadams@mac.com>\r\nDate: Wed, Aug 26, 2009 at 7:30 AM\r\nSubject: 8/26\r\nTo: Photo Bagel <photobagel@gmail.com>','2009-08-26','iPhone',-79.7808333333,32.9051666667,'photo.jpg','image/jpeg',145428,'2009-08-26 14:14:06','2009-08-26 14:14:07','2009-08-26 14:14:07'),
	(188,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-08-26','iPhone',-80.1431666667,25.7865000000,'photo.jpg','image/jpeg',149580,'2009-08-26 15:39:37','2009-08-26 15:39:37','2009-08-26 15:39:37'),
	(189,32,'','- Matt\r\n\r\nSent like \"whoa\" from my fist! (aka I\'m on a mobile device)','2009-08-26','iPhone',-105.0015000000,39.7501666667,'photo.jpg','image/jpeg',165150,'2009-08-26 16:22:22','2009-08-26 16:22:22','2009-08-26 16:22:22'),
	(190,22,'','','2009-08-19','iPhone',-104.9128333333,39.6960000000,'photo.jpg','image/jpeg',154455,'2009-08-26 17:12:13','2009-08-26 17:12:13','2009-08-26 17:12:13'),
	(191,22,'','','2009-08-16','iPhone',-107.2375000000,38.1155000000,'photo.jpg','image/jpeg',154015,'2009-08-26 17:13:17','2009-08-26 17:13:17','2009-08-26 17:13:17'),
	(192,22,'','','2009-08-06','iPhone',-104.9621666667,39.6898333333,'photo.jpg','image/jpeg',130538,'2009-08-26 17:16:23','2009-08-26 17:16:24','2009-08-26 17:16:24'),
	(193,22,'','','2009-08-26',NULL,NULL,NULL,'photo.jpg','image/jpeg',146029,'2009-08-26 17:16:27','2009-08-26 17:16:27','2009-08-26 17:16:27'),
	(194,22,'','','2009-07-09','iPhone',-104.9953333333,39.7565000000,'photo.jpg','image/jpeg',137771,'2009-08-26 17:17:31','2009-08-26 17:17:31','2009-08-26 17:17:31'),
	(195,22,'','','2009-07-06','iPhone',-104.9878333333,39.7536666667,'photo.jpg','image/jpeg',158410,'2009-08-26 17:17:34','2009-08-26 17:17:34','2009-08-26 17:17:34'),
	(196,22,'','','2009-06-28','iPhone',-87.1540000000,39.2001666667,'photo.jpg','image/jpeg',174360,'2009-08-26 17:17:37','2009-08-26 17:17:38','2009-08-26 17:17:38'),
	(197,22,'','','2009-06-23','iPhone',NULL,NULL,'photo.jpg','image/jpeg',136981,'2009-08-26 17:17:41','2009-08-26 17:17:41','2009-08-26 17:17:41'),
	(198,22,'','','2009-07-03','iPhone',-104.9616666667,39.6901666667,'photo.jpg','image/jpeg',154427,'2009-08-26 17:18:45','2009-08-26 17:18:45','2009-08-26 17:18:45'),
	(199,38,'','','2009-08-26','iPhone',-74.9520000000,39.9236666667,'photo.jpg','image/jpeg',109989,'2009-08-26 20:49:46','2009-08-26 20:49:46','2009-08-26 20:49:46'),
	(200,26,'','','2009-08-26','iPhone',-71.0911666667,42.3658333333,'photo.jpg','image/jpeg',224379,'2009-08-26 21:47:49','2009-08-26 21:47:50','2009-08-26 21:47:50'),
	(201,7,'','','2009-08-26','iPhone',-75.1341666667,39.9805000000,'photo.jpg','image/jpeg',122238,'2009-08-27 01:00:02','2009-08-27 01:00:02','2009-08-27 01:00:02'),
	(202,36,'Day2','','2009-08-26','NIKON D90',NULL,NULL,'PAD2.rv1.jpg','image/jpeg',1290698,'2009-08-27 01:45:48','2009-08-27 01:45:49','2009-08-27 01:45:49'),
	(203,9,'Fwd: 8/27','---------- Forwarded message ----------\r\nFrom: Michael Mcadams <mike.mcadams@mac.com>\r\nDate: Thu, Aug 27, 2009 at 6:45 AM\r\nSubject: 8/27\r\nTo: Photo Bagel <photobagel@gmail.com>','2009-08-27','iPhone',-79.7806666667,32.9051666667,'photo.jpg','image/jpeg',139651,'2009-08-27 12:27:10','2009-08-27 12:27:10','2009-08-27 12:27:10'),
	(204,39,'Fwd:','---------- Forwarded message ----------\r\nFrom: Justin Gehtland <justin@thinkrelevance.com>\r\nDate: Thu, Aug 27, 2009 at 7:25 AM\r\nSubject:\r\nTo: photobagel@gmail.com\r\n\r\n\r\n\r\n----------------------------------\r\nJustin Gehtland\r\nPresident\r\nRelevance, Inc.\r\nthinkrelevance.com\r\n\r\n919.442.3030 ofc\r\n919.824.5409 cel\r\n866.577.4607 fax','2008-06-05','Canon EOS-1D Mark III',NULL,NULL,'RelevanceLLC-1Z5O6402.jpg','image/jpeg',60407,'2009-08-27 12:27:13','2009-08-27 12:27:13','2009-08-27 12:27:13'),
	(205,40,'today@liberty','Andy Mullins\r\nCreative Director\r\n\r\n From my iPhone','2009-08-27','iPhone',-95.8518333333,36.0595000000,'photo.jpg','image/jpeg',90145,'2009-08-27 14:12:01','2009-08-27 14:12:01','2009-08-27 14:12:01'),
	(206,41,'','','2009-08-27','iPhone',-73.9846666667,40.7425000000,'photo.jpg','image/jpeg',92330,'2009-08-27 14:31:22','2009-08-27 14:31:22','2009-08-27 14:31:22'),
	(207,7,'','','2009-08-27','iPhone',-75.2956666667,40.0761666667,'photo.jpg','image/jpeg',123120,'2009-08-27 17:17:11','2009-08-27 17:17:11','2009-08-27 17:17:11'),
	(208,32,'','- Matt\r\n\r\nSent like \"whoa\" from my fist! (aka I\'m on a mobile device)','2009-08-27','iPhone',-105.0015000000,39.7500000000,'photo.jpg','image/jpeg',185504,'2009-08-27 18:56:53','2009-08-27 18:56:53','2009-08-27 18:56:53'),
	(209,42,'','Brent Collier\r\n(919) 564-6915','2009-08-27','iPhone',-78.8391666667,35.8571666667,'photo.jpg','image/jpeg',136031,'2009-08-27 21:53:51','2009-08-27 21:53:51','2009-08-27 21:53:51'),
	(210,19,'','','2009-08-28',NULL,NULL,NULL,'photo.jpg','image/jpeg',149787,'2009-08-28 03:14:23','2009-08-28 03:14:23','2009-08-28 03:14:23'),
	(211,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-08-27','iPhone',-80.1418333333,25.7903333333,'photo.jpg','image/jpeg',218167,'2009-08-28 05:05:15','2009-08-28 05:05:15','2009-08-28 05:05:15'),
	(212,22,'','','2008-03-09','iPhone',NULL,NULL,'photo.jpg','image/jpeg',146104,'2009-08-28 10:31:33','2009-08-28 10:31:33','2009-08-28 10:31:33'),
	(213,22,'','','2008-03-16','iPhone',NULL,NULL,'photo.jpg','image/jpeg',121619,'2009-08-28 10:31:35','2009-08-28 10:31:35','2009-08-28 10:31:35'),
	(214,22,'','','2008-03-20','iPhone',NULL,NULL,'photo.jpg','image/jpeg',185710,'2009-08-28 10:32:38','2009-08-28 10:32:38','2009-08-28 10:32:38'),
	(215,22,'','','2008-03-22','iPhone',NULL,NULL,'photo.jpg','image/jpeg',107644,'2009-08-28 10:32:40','2009-08-28 10:32:40','2009-08-28 10:32:40'),
	(216,22,'','','2008-05-14','iPhone',NULL,NULL,'photo.jpg','image/jpeg',138994,'2009-08-28 10:33:43','2009-08-28 10:33:43','2009-08-28 10:33:43'),
	(217,22,'','','2008-05-25','iPhone',NULL,NULL,'photo.jpg','image/jpeg',147192,'2009-08-28 10:34:46','2009-08-28 10:34:46','2009-08-28 10:34:46'),
	(218,22,'','','2008-06-09','iPhone',NULL,NULL,'photo.jpg','image/jpeg',162377,'2009-08-28 10:34:48','2009-08-28 10:34:48','2009-08-28 10:34:48'),
	(219,22,'','','2008-06-29','iPhone',NULL,NULL,'photo.jpg','image/jpeg',133618,'2009-08-28 10:35:51','2009-08-28 10:35:51','2009-08-28 10:35:51'),
	(220,22,'','','2008-07-14','iPhone',-95.9870000000,36.1570000000,'photo.jpg','image/jpeg',93669,'2009-08-28 10:38:56','2009-08-28 10:38:56','2009-08-28 10:38:56'),
	(221,22,'','','2008-07-17','iPhone',-95.8880000000,36.0183333333,'photo.jpg','image/jpeg',128164,'2009-08-28 10:39:59','2009-08-28 10:39:59','2009-08-28 10:39:59'),
	(222,22,'','','2008-07-25','iPhone',-95.9875000000,36.1615000000,'photo.jpg','image/jpeg',144451,'2009-08-28 10:42:03','2009-08-28 10:42:03','2009-08-28 10:42:03'),
	(223,22,'','','2008-07-28','iPhone',-95.8765000000,36.0373333333,'photo.jpg','image/jpeg',133158,'2009-08-28 10:43:07','2009-08-28 10:43:07','2009-08-28 10:43:07'),
	(224,22,'','','2008-07-29','iPhone',NULL,NULL,'photo.jpg','image/jpeg',124232,'2009-08-28 10:44:10','2009-08-28 10:44:10','2009-08-28 10:44:10'),
	(225,22,'','','2008-07-30','iPhone',-106.8040000000,37.4900000000,'photo.jpg','image/jpeg',146596,'2009-08-28 10:45:13','2009-08-28 10:45:13','2009-08-28 10:45:13'),
	(226,22,'','','2008-08-05','iPhone',-104.9873333333,39.7165000000,'photo.jpg','image/jpeg',123374,'2009-08-28 10:46:16','2009-08-28 10:46:16','2009-08-28 10:46:16'),
	(227,44,'','','2009-08-28',NULL,NULL,NULL,'photo.jpg','image/jpeg',163960,'2009-08-28 13:19:44','2009-08-28 13:19:45','2009-08-28 13:19:45'),
	(228,41,'','','2009-08-28','iPhone',-73.9846666667,40.7425000000,'photo.jpg','image/jpeg',97656,'2009-08-28 13:30:57','2009-08-28 13:30:57','2009-08-28 13:30:57'),
	(229,45,'','Cody.','2009-08-28','iPhone',-113.5320000000,53.5165000000,'photo.jpg','image/jpeg',126699,'2009-08-28 16:18:44','2009-08-28 16:18:44','2009-08-28 16:18:44'),
	(230,9,'8/28','','2009-08-28',NULL,NULL,NULL,'photo.jpg','image/jpeg',111052,'2009-08-28 22:56:13','2009-08-28 22:56:13','2009-08-28 22:56:13'),
	(231,16,'','','2009-08-29','SGH-A867',NULL,NULL,'Photo0567.jpg','image/jpeg',508857,'2009-08-29 01:05:23','2009-08-29 01:05:24','2009-08-29 01:05:24'),
	(232,1,'','','2009-08-28','iPhone',-75.1341666667,39.9741666667,'photo.jpg','image/jpeg',143097,'2009-08-29 01:37:58','2009-08-29 01:37:59','2009-08-29 01:37:59'),
	(233,19,'','','2009-08-29',NULL,NULL,NULL,'photo.jpg','image/jpeg',199123,'2009-08-29 02:21:43','2009-08-29 02:21:43','2009-08-29 02:21:43'),
	(234,18,'IMG00245.jpg','','2009-08-28','BlackBerry 8120',NULL,NULL,'_utf-8_B_SU1HMDAyNDUuanBn_.jpg','image/jpeg',478204,'2009-08-29 02:52:16','2009-08-29 02:52:16','2009-08-29 02:52:16'),
	(235,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-08-28','iPhone',-80.1430000000,25.7845000000,'photo.jpg','image/jpeg',111569,'2009-08-29 03:32:59','2009-08-29 03:32:59','2009-08-29 03:32:59'),
	(237,18,'Fwd:','---------- Forwarded message ----------\r\nFrom: Photo Bagel <photobagel@gmail.com>\r\nDate: Sat, Aug 29, 2009 at 11:12 AM\r\nSubject: Fwd:\r\nTo: Photo Bagel <photobagel@gmail.com>\r\n\r\n\r\n\r\n\r\n---------- Forwarded message ----------\r\nFrom: Photo Bagel <photobagel@gmail.com>\r\nDate: Sat, Aug 29, 2009 at 11:11 AM\r\nSubject:\r\nTo: Photo Bagel <photobagel@gmail.com>','2009-08-29','BlackBerry 8120',NULL,NULL,'IMG00246.jpg','image/jpeg',412685,'2009-08-29 15:15:11','2009-08-29 15:15:12','2009-08-29 15:15:12'),
	(238,9,'8/29','','2009-08-29','iPhone',-80.8128333333,33.5458333333,'photo.jpg','image/jpeg',99894,'2009-08-29 16:38:37','2009-08-29 16:38:37','2009-08-29 16:38:37'),
	(239,7,'','','2009-08-29','iPhone',-75.1450000000,39.9733333333,'photo.jpg','image/jpeg',139406,'2009-08-29 17:12:12','2009-08-29 17:12:12','2009-08-29 17:12:12'),
	(240,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-08-29','iPhone',-80.1433333333,25.7868333333,'photo.jpg','image/jpeg',103873,'2009-08-30 00:32:21','2009-08-30 00:32:21','2009-08-30 00:32:21'),
	(241,9,'Fwd: 8/30','---------- Forwarded message ----------\r\nFrom: Michael Mcadams <mike.mcadams@mac.com>\r\nDate: Sun, Aug 30, 2009 at 12:35 PM\r\nSubject: 8/30\r\nTo: Photo Bagel <photobagel@gmail.com>','2009-08-30','iPhone',-84.7031666667,33.9285000000,'photo.jpg','image/jpeg',151359,'2009-08-31 15:24:04','2009-08-31 15:24:05','2009-08-31 15:24:05'),
	(242,18,'Fwd: IMG00247.jpg','---------- Forwarded message ----------\r\nFrom: <sbrent@gmail.com>\r\nDate: Sun, Aug 30, 2009 at 3:27 PM\r\nSubject: IMG00247.jpg\r\nTo: Bagel <photobagel@gmail.com>','2009-08-29','BlackBerry 8120',NULL,NULL,'IMG00247.jpg','image/jpeg',385113,'2009-08-31 15:26:09','2009-08-31 15:26:09','2009-08-31 15:26:09'),
	(244,9,'Fwd: 8/31','---------- Forwarded message ----------\r\nFrom: Michael Mcadams <mike.mcadams@mac.com>\r\nDate: Mon, Aug 31, 2009 at 7:09 AM\r\nSubject: 8/31\r\nTo: Photo Bagel <photobagel@gmail.com>','2009-08-31','iPhone',-79.7808333333,32.9051666667,'photo.jpg','image/jpeg',157336,'2009-08-31 15:30:17','2009-08-31 15:30:17','2009-08-31 15:30:17'),
	(245,26,'Fwd:','---------- Forwarded message ----------\r\nFrom: Jonathan Yurek <jyurek@thoughtbot.com>\r\nDate: Sun, Aug 30, 2009 at 6:53 PM\r\nSubject:\r\nTo: \"photobagel@gmail.com\" <photobagel@gmail.com>','2009-08-30','iPhone',-71.2846666667,41.4888333333,'photo.jpg','image/jpeg',110022,'2009-08-31 15:36:25','2009-08-31 15:36:26','2009-08-31 15:36:26'),
	(246,7,'Fwd:','---------- Forwarded message ----------\r\nFrom: Ryan Jahn <ryanwilliamjahn@gmail.com>\r\nDate: Sun, Aug 30, 2009 at 7:19 PM\r\nSubject:\r\nTo: \"photobagel@gmail.com\" <photobagel@gmail.com>','2009-08-30','iPhone',-75.1343333333,39.9741666667,'photo.jpg','image/jpeg',152518,'2009-08-31 15:38:30','2009-08-31 15:38:31','2009-08-31 15:38:31'),
	(247,41,'Fwd:','---------- Forwarded message ----------\r\nFrom: Josh French <josh@digitalpulp.com>\r\nDate: Mon, Aug 31, 2009 at 10:13 AM\r\nSubject:\r\nTo: \"photobagel@gmail.com\" <photobagel@gmail.com>','2009-08-31','iPhone',-73.9845000000,40.7425000000,'photo.jpg','image/jpeg',89146,'2009-08-31 15:39:35','2009-08-31 15:39:35','2009-08-31 15:39:35'),
	(248,46,'Fwd:','---------- Forwarded message ----------\r\nFrom: Breck Kling <breckenridge@gmail.com>\r\nDate: Sat, Aug 29, 2009 at 5:41 PM\r\nSubject:\r\nTo: photobagel@gmail.com','2008-09-11','iPhone',-77.6270000000,43.0676666667,'atMovies.jpg','image/jpeg',336787,'2009-08-31 15:41:40','2009-08-31 15:41:41','2009-08-31 15:41:41'),
	(249,1,'','','2009-08-30','iPhone',-75.1326666667,39.9801666667,'photo.jpg','image/jpeg',127390,'2009-08-31 20:31:37','2009-08-31 20:31:37','2009-08-31 20:31:37'),
	(250,32,'','- Matt\r\n\r\nSent like \"whoa\" from my fist! (aka I\'m on a mobile device)','2009-08-31','iPhone',-105.0013333333,39.7501666667,'photo.jpg','image/jpeg',179946,'2009-08-31 21:38:45','2009-08-31 21:38:46','2009-08-31 21:38:46'),
	(251,7,'','','2009-08-31','iPhone',-75.1340000000,39.9803333333,'photo.jpg','image/jpeg',176822,'2009-08-31 22:52:58','2009-08-31 22:52:58','2009-08-31 22:52:58'),
	(252,26,'','','2009-09-01',NULL,NULL,NULL,'photo.jpg','image/jpeg',44098,'2009-09-01 22:37:07','2009-09-01 22:37:07','2009-09-01 22:37:07'),
	(253,41,'','','2009-09-01','iPhone',-73.9845000000,40.7425000000,'photo.jpg','image/jpeg',90698,'2009-09-01 22:38:09','2009-09-01 22:38:09','2009-09-01 22:38:09'),
	(260,7,'','','2009-09-01','iPhone',-75.1451666667,39.9726666667,'photo.jpg','image/jpeg',172396,'2009-09-01 22:47:48','2009-09-01 22:47:48','2009-09-01 22:47:48'),
	(261,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-08-31','iPhone',-80.1365000000,25.7903333333,'photo.jpg','image/jpeg',134388,'2009-09-02 01:05:32','2009-09-02 01:05:32','2009-09-02 01:05:32'),
	(265,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-09-01','iPhone',-80.1443333333,25.7888333333,'photo.jpg','image/jpeg',137441,'2009-09-02 01:08:17','2009-09-02 01:08:17','2009-09-02 01:08:17'),
	(266,37,'','Sent from my mailbox to your mailbox using iPhone technology.','2009-09-01','iPhone',-80.1443333333,25.7888333333,'photo.jpg','image/jpeg',137441,'2009-09-02 01:08:19','2009-09-02 01:08:19','2009-09-02 01:08:19');

/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`)
VALUES
	('20090822013926'),
	('20090822152127');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `full_email` varchar(255) default NULL,
  `email_name` varchar(255) default NULL,
  `permalink` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`full_email`,`email_name`,`permalink`,`created_at`,`updated_at`)
VALUES
	(1,'chapambrose@gmail.com','chapambrose','chap','2009-08-23 18:56:05','2009-08-23 18:56:05'),
	(4,'matthew.vince@gmail.com','matthew.vince','matthewvince','2009-08-23 21:25:27','2009-08-23 21:25:27'),
	(7,'ryanwilliamjahn@gmail.com','ryanwilliamjahn','ryanwilliamjahn','2009-08-23 23:15:17','2009-08-23 23:15:17'),
	(9,'mike.mcadams@mac.com','mike.mcadams','mikemcadams','2009-08-23 23:33:07','2009-08-23 23:33:07'),
	(15,'chap@photobagel.com','chap','chap-2','2009-08-24 00:13:22','2009-08-24 00:13:22'),
	(16,'9124813510@mms.att.net','9124813510','9124813510','2009-08-24 00:27:38','2009-08-24 00:27:38'),
	(18,'sbrent@gmail.com','sbrent','sbrent','2009-08-24 00:35:53','2009-08-24 00:35:53'),
	(19,'allison.nadeau@gmail.com','allison.nadeau','allisonnadeau','2009-08-24 00:38:59','2009-08-24 00:38:59'),
	(20,'jason.p.morrison@gmail.com','jason.p.morrison','jasonpmorrison','2009-08-24 12:39:17','2009-08-24 12:39:17'),
	(21,'dep4b@yahoo.com','dep4b','dep4b','2009-08-24 12:39:23','2009-08-24 12:39:23'),
	(22,'hijustinclark@gmail.com','hijustinclark','justin','2009-08-24 12:39:28','2009-08-24 12:39:28'),
	(23,'info@jorendegroof.be','info','info','2009-08-24 12:39:36','2009-08-24 12:39:36'),
	(24,'q.shanahan@gmail.com','q.shanahan','quinn','2009-08-24 13:38:58','2009-08-24 13:38:58'),
	(25,'andy@novsun.com','andy','andy','2009-08-24 14:07:30','2009-08-24 14:07:30'),
	(26,'jyurek@thoughtbot.com','jyurek','jyurek','2009-08-24 22:04:41','2009-08-24 22:04:41'),
	(28,'joseph.silvashy@newgoldleaf.com','joseph.silvashy','josephsilvashy','2009-08-25 00:15:05','2009-08-25 00:15:05'),
	(29,'nathankula@me.com','nathankula','nathankula','2009-08-25 00:25:19','2009-08-25 00:25:19'),
	(30,'john.urban@lambslist.com','john.urban','johnurban','2009-08-25 14:16:59','2009-08-25 14:16:59'),
	(31,'zukunft@gmail.com','zukunft','zukunft','2009-08-25 15:08:55','2009-08-25 15:08:55'),
	(32,'matt.gist@gmail.com','matt.gist','mattgist','2009-08-25 19:18:27','2009-08-25 19:18:27'),
	(33,'joshgoleman@gmail.com','joshgoleman','joshgoleman','2009-08-25 20:26:40','2009-08-25 20:26:40'),
	(34,'2676643080@vzwpix.com','2676643080','2676643080','2009-08-25 22:41:03','2009-08-25 22:41:03'),
	(35,'photobagel@gmail.com','photobagel','photobagel','2009-08-25 22:44:08','2009-08-25 22:44:08'),
	(36,'ryanpwoolsey@gmail.com','ryanpwoolsey','ryanpwoolsey','2009-08-26 02:47:23','2009-08-26 02:47:23'),
	(37,'coryfoote@gmail.com','coryfoote','coryfoote','2009-08-26 15:39:37','2009-08-26 15:39:37'),
	(38,'jwinter@gmail.com','jwinter','jwinter','2009-08-26 20:49:45','2009-08-26 20:49:45'),
	(39,'justin@thinkrelevance.com','justin','justingehtland',NULL,NULL),
	(40,'shepboy@shepboy.com','shepboy','shepboy','2009-08-27 14:12:01','2009-08-27 14:12:01'),
	(41,'josh@digitalpulp.com','josh','josh','2009-08-27 14:31:22','2009-08-27 14:31:22'),
	(42,'brentmc79@gmail.com','brentmc79','brentmc79','2009-08-27 21:53:51','2009-08-27 21:53:51'),
	(43,'services@ants.otherinbox.com','services','services','2009-08-28 09:33:36','2009-08-28 09:33:36'),
	(44,'email2ants@gmail.com','email2ants','email2ants','2009-08-28 13:19:44','2009-08-28 13:19:44'),
	(45,'crayment16@gmail.com','crayment16','crayment16','2009-08-28 16:18:44','2009-08-28 16:18:44'),
	(46,'breckenridge@gmail.com','breckenridge','breckenridge',NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
