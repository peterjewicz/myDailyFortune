# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: us-cdbr-iron-east-03.cleardb.net (MySQL 5.5.56-log)
# Database: heroku_fad3790d5f6a5c9
# Generation Time: 2018-07-24 02:43:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table fortunes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fortunes`;

CREATE TABLE `fortunes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

LOCK TABLES `fortunes` WRITE;
/*!40000 ALTER TABLE `fortunes` DISABLE KEYS */;

INSERT INTO `fortunes` (`id`, `message`)
VALUES
	(3,'Those who ask are those that know'),
	(4,'Nothing beats peace of mind'),
	(5,'Never tease a live gator'),
	(6,'Those who think quick win'),
	(7,'Think carefully on your next decision'),
	(8,'What is does not always stay'),
	(9,'This life is yours'),
	(10,'Culture is your strong suit'),
	(11,'You always see the good side of things'),
	(12,'Change is sometimes needed'),
	(13,'Go on to inspire others '),
	(14,'Be on the lookout for good news'),
	(15,'Don\'t let your comfort zone hold you back'),
	(16,'Work hard and prosper'),
	(17,'Be open to new ideas'),
	(18,'A change is on its way'),
	(19,'Good ideas are all around you'),
	(20,'Don\'t let negativity get to you'),
	(21,'Take a moment for yourself '),
	(22,'Be on the lookout for oppurtinity '),
	(23,'Never compromise on your morals'),
	(24,'Past mistakes can\'t ruin today'),
	(25,'Live a long healthy life'),
	(26,'Health is insurance for life'),
	(27,'Be confident'),
	(28,'Never falter in your beliefs'),
	(32,'Take some time to respect yourself'),
	(42,'A good adventure never waits'),
	(52,'A bad time isn\'t always lost'),
	(62,'A calculated risk can lead to great reward'),
	(72,'Knowing is half the battle'),
	(82,'Being wrong is sometimes right'),
	(92,'A good breakfast is a good day'),
	(102,'Failure is always on the road to success '),
	(112,'Hard work is always worth it'),
	(122,'Giving up is the only true failure'),
	(132,'Don\'t Doubt Your Worth'),
	(142,'Strength Comes From Within'),
	(152,'Your Peoples Skills are Excellent'),
	(162,'Take Some Time For Yourself'),
	(172,'Great Things Are Not Rushed');

/*!40000 ALTER TABLE `fortunes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
