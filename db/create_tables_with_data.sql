# MySQL-Front 3.2  (Build 9.14)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES latin1 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: localhost    Database: photos_development
# ------------------------------------------------------
# Server version 4.1.9-max

#
# Table structure for table categories
#

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table categories
#

INSERT INTO `categories` VALUES (1,'All',NULL);
INSERT INTO `categories` VALUES (2,'People',1);
INSERT INTO `categories` VALUES (3,'Animals',1);
INSERT INTO `categories` VALUES (4,'Places',1);
INSERT INTO `categories` VALUES (5,'Things',1);
INSERT INTO `categories` VALUES (6,'Friends',2);
INSERT INTO `categories` VALUES (7,'Family',2);


#
# Table structure for table categories_photos
#

DROP TABLE IF EXISTS `categories_photos`;
CREATE TABLE `categories_photos` (
  `category_id` int(11) default NULL,
  `photo_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table categories_photos
#

INSERT INTO `categories_photos` VALUES (1,1);
INSERT INTO `categories_photos` VALUES (1,2);
INSERT INTO `categories_photos` VALUES (1,3);
INSERT INTO `categories_photos` VALUES (1,4);
INSERT INTO `categories_photos` VALUES (1,5);
INSERT INTO `categories_photos` VALUES (1,6);
INSERT INTO `categories_photos` VALUES (1,7);
INSERT INTO `categories_photos` VALUES (1,8);
INSERT INTO `categories_photos` VALUES (1,9);
INSERT INTO `categories_photos` VALUES (4,1);
INSERT INTO `categories_photos` VALUES (3,2);
INSERT INTO `categories_photos` VALUES (3,3);
INSERT INTO `categories_photos` VALUES (4,4);
INSERT INTO `categories_photos` VALUES (5,5);
INSERT INTO `categories_photos` VALUES (3,6);
INSERT INTO `categories_photos` VALUES (2,7);
INSERT INTO `categories_photos` VALUES (4,8);
INSERT INTO `categories_photos` VALUES (4,9);
INSERT INTO `categories_photos` VALUES (4,7);


#
# Table structure for table photos
#

DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `thumbnail` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table photos
#

INSERT INTO `photos` VALUES (1,'train.jpg','2005-12-29 15:20:49','train_t.jpg','');
INSERT INTO `photos` VALUES (2,'lighthouse.jpg','2005-12-29 15:20:49','lighthouse_t.jpg','');
INSERT INTO `photos` VALUES (3,'gargoyle.jpg','2005-12-29 15:20:49','gargoyle_t.jpg','');
INSERT INTO `photos` VALUES (4,'cat.jpg','2005-12-29 15:20:49','cat_t.jpg','');
INSERT INTO `photos` VALUES (5,'cappucino.jpg','2005-12-29 15:20:49','cappucino_t.jpg','');
INSERT INTO `photos` VALUES (6,'building.jpg','2005-12-29 15:20:49','building_t.jpg','');
INSERT INTO `photos` VALUES (7,'bridge.jpg','2005-12-29 15:20:49','bridge_t.jpg','');
INSERT INTO `photos` VALUES (8,'bear.jpg','2005-12-29 15:20:50','bear_t.jpg','');
INSERT INTO `photos` VALUES (9,'baskets.jpg','2005-12-29 15:20:50','baskets_t.jpg','');


#
# Table structure for table schema_info
#

DROP TABLE IF EXISTS `schema_info`;
CREATE TABLE `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table schema_info
#

INSERT INTO `schema_info` VALUES (4);


#
# Table structure for table slides
#

DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL auto_increment,
  `position` int(11) default NULL,
  `photo_id` int(11) default NULL,
  `slideshow_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table slides
#

INSERT INTO `slides` VALUES (1,1,1,1);
INSERT INTO `slides` VALUES (2,2,2,1);
INSERT INTO `slides` VALUES (3,3,3,1);
INSERT INTO `slides` VALUES (4,4,4,1);
INSERT INTO `slides` VALUES (5,5,5,1);
INSERT INTO `slides` VALUES (6,6,6,1);
INSERT INTO `slides` VALUES (7,7,7,1);
INSERT INTO `slides` VALUES (8,8,8,1);
INSERT INTO `slides` VALUES (9,9,9,1);


#
# Table structure for table slideshows
#

DROP TABLE IF EXISTS `slideshows`;
CREATE TABLE `slideshows` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table slideshows
#

INSERT INTO `slideshows` VALUES (1,'Interesting pictures','2005-12-29 13:20:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
