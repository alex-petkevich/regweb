/*
SQLyog Ultimate v9.50 
MySQL - 5.1.63-community-log : Database - regweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `form_goal_21` */

DROP TABLE IF EXISTS `form_goal_21`;

CREATE TABLE `form_goal_21` (
  `form_id` int(11) unsigned NOT NULL,
  `goal_21` varchar(255) NOT NULL,
  PRIMARY KEY (`form_id`,`goal_21`),
  CONSTRAINT `fk_forms` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `form_goal_21` */

insert  into `form_goal_21`(`form_id`,`goal_21`) values (4,'Иная (указать)'),(5,'Иная (указать)'),(5,'Туризм'),(6,'Деловая'),(6,'Иная (указать)'),(8,'Деловая'),(8,'Иная (указать)');

/*Table structure for table `form_money_type_33` */

DROP TABLE IF EXISTS `form_money_type_33`;

CREATE TABLE `form_money_type_33` (
  `form_id` int(11) unsigned NOT NULL,
  `money_type_33` varchar(255) NOT NULL,
  PRIMARY KEY (`form_id`,`money_type_33`),
  CONSTRAINT `form_id` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `form_money_type_33` */

insert  into `form_money_type_33`(`form_id`,`money_type_33`) values (4,'Иные (указать)'),(4,'Кредитная карточка'),(4,'Наличные деньги'),(5,'Иные (указать)'),(5,'Кредитная карточка'),(5,'Наличные деньги'),(6,'Иные (указать)'),(6,'Кредитная карточка'),(6,'Наличные деньги'),(6,'Размещение'),(8,'Иные (указать)'),(8,'Кредитная карточка'),(8,'Наличные деньги'),(8,'Размещение');

/*Table structure for table `forms` */

DROP TABLE IF EXISTS `forms`;

CREATE TABLE `forms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  `is_registered` tinyint(1) DEFAULT '0',
  `surname_1` varchar(255) DEFAULT NULL,
  `surname_2` varchar(255) DEFAULT NULL,
  `name_3` varchar(255) DEFAULT NULL,
  `birthdate_4` varchar(30) DEFAULT NULL,
  `placedate_5` varchar(255) DEFAULT NULL,
  `country_6` varchar(255) DEFAULT NULL,
  `citizenship_7` varchar(255) DEFAULT NULL,
  `citizenship_born_8` varchar(255) DEFAULT NULL,
  `sex_9` varchar(10) DEFAULT NULL,
  `family_10` varchar(30) DEFAULT NULL,
  `identnum_11` varchar(40) DEFAULT NULL,
  `passdata_12` varchar(255) DEFAULT NULL,
  `passnum_13` varchar(30) DEFAULT NULL,
  `passissuedate_14` varchar(30) DEFAULT NULL,
  `passexpiration_15` varchar(30) DEFAULT NULL,
  `passby_16` varchar(255) DEFAULT NULL,
  `is_children` tinyint(1) DEFAULT '0',
  `citizenship_child` varchar(255) DEFAULT NULL,
  `name_child` varchar(255) DEFAULT NULL,
  `surname_child` varchar(255) DEFAULT NULL,
  `country_child` varchar(255) DEFAULT NULL,
  `state_child` varchar(255) DEFAULT NULL,
  `city_child` varchar(255) DEFAULT NULL,
  `index_child` varchar(10) DEFAULT NULL,
  `address_child` varchar(255) DEFAULT NULL,
  `country_17` varchar(255) DEFAULT NULL,
  `state_17` varchar(255) DEFAULT NULL,
  `city_17` varchar(255) DEFAULT NULL,
  `index_17` varchar(10) DEFAULT NULL,
  `address_17` varchar(255) DEFAULT NULL,
  `email_17` varchar(255) DEFAULT NULL,
  `preftel_17` varchar(10) DEFAULT NULL,
  `tel_17` varchar(30) DEFAULT NULL,
  `countryvisitor_18` varchar(10) DEFAULT NULL,
  `visitdoc_18` varchar(255) DEFAULT NULL,
  `expdate_18` varchar(30) DEFAULT NULL,
  `profession_19` varchar(255) DEFAULT NULL,
  `employee_20` varchar(255) DEFAULT NULL,
  `country_20` varchar(255) DEFAULT NULL,
  `state_20` varchar(255) DEFAULT NULL,
  `city_20` varchar(255) DEFAULT NULL,
  `index_20` varchar(10) DEFAULT NULL,
  `address_20` varchar(255) DEFAULT NULL,
  `preftel_20` varchar(10) DEFAULT NULL,
  `tel_20` varchar(30) DEFAULT NULL,
  `title_20` varchar(255) DEFAULT NULL,
  `email_20` varchar(255) DEFAULT NULL,
  `preffax_20` varchar(10) DEFAULT NULL,
  `fax_20` varchar(30) DEFAULT NULL,
  `goal_21` varchar(255) DEFAULT NULL,
  `goalother_21` varchar(255) DEFAULT NULL,
  `dest_country_22` varchar(255) DEFAULT NULL,
  `first_country_23` varchar(255) DEFAULT NULL,
  `typevisa_24` tinyint(1) DEFAULT '1',
  `lenvisa_25` tinyint(3) DEFAULT '90',
  `startvisa_29` varchar(30) DEFAULT NULL,
  `endvisa_30` varchar(30) DEFAULT NULL,
  `prevvisastart1_26` varchar(20) DEFAULT NULL,
  `prevvisaend1_26` varchar(20) DEFAULT NULL,
  `prevvisastart2_26` varchar(20) DEFAULT NULL,
  `prevvisaend2_26` varchar(20) DEFAULT NULL,
  `prevvisastart3_26` varchar(20) DEFAULT NULL,
  `prevvisaend3_26` varchar(20) DEFAULT NULL,
  `invite_31` tinyint(1) DEFAULT '0',
  `title_31` varchar(255) DEFAULT NULL,
  `name_31` varchar(255) DEFAULT NULL,
  `surname_31` varchar(255) DEFAULT NULL,
  `country_31` varchar(255) DEFAULT NULL,
  `city_31` varchar(255) DEFAULT NULL,
  `index_31` varchar(10) DEFAULT NULL,
  `preftel_31` varchar(10) DEFAULT NULL,
  `tel_31` varchar(30) DEFAULT NULL,
  `preffax_31` varchar(10) DEFAULT NULL,
  `fax_31` varchar(30) DEFAULT NULL,
  `address_31` varchar(255) DEFAULT NULL,
  `building_31` varchar(255) DEFAULT NULL,
  `flat_31` varchar(255) DEFAULT NULL,
  `email_31` varchar(255) DEFAULT NULL,
  `expencies_33` varchar(255) DEFAULT NULL,
  `expenciesother_33` varchar(255) DEFAULT NULL,
  `money_type_33` varchar(255) DEFAULT NULL,
  `money_type_other_33` varchar(255) DEFAULT NULL,
  `inshurance_33` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `forms` */

insert  into `forms`(`id`,`user_id`,`added`,`is_registered`,`surname_1`,`surname_2`,`name_3`,`birthdate_4`,`placedate_5`,`country_6`,`citizenship_7`,`citizenship_born_8`,`sex_9`,`family_10`,`identnum_11`,`passdata_12`,`passnum_13`,`passissuedate_14`,`passexpiration_15`,`passby_16`,`is_children`,`citizenship_child`,`name_child`,`surname_child`,`country_child`,`state_child`,`city_child`,`index_child`,`address_child`,`country_17`,`state_17`,`city_17`,`index_17`,`address_17`,`email_17`,`preftel_17`,`tel_17`,`countryvisitor_18`,`visitdoc_18`,`expdate_18`,`profession_19`,`employee_20`,`country_20`,`state_20`,`city_20`,`index_20`,`address_20`,`preftel_20`,`tel_20`,`title_20`,`email_20`,`preffax_20`,`fax_20`,`goal_21`,`goalother_21`,`dest_country_22`,`first_country_23`,`typevisa_24`,`lenvisa_25`,`startvisa_29`,`endvisa_30`,`prevvisastart1_26`,`prevvisaend1_26`,`prevvisastart2_26`,`prevvisaend2_26`,`prevvisastart3_26`,`prevvisaend3_26`,`invite_31`,`title_31`,`name_31`,`surname_31`,`country_31`,`city_31`,`index_31`,`preftel_31`,`tel_31`,`preffax_31`,`fax_31`,`address_31`,`building_31`,`flat_31`,`email_31`,`expencies_33`,`expenciesother_33`,`money_type_33`,`money_type_other_33`,`inshurance_33`) values (4,NULL,'2013-04-01 16:45:01',0,'asdfasdf','afadsfasdf','asdfasdfasdf','1983-03-30','asdfasdf','AZE','XXA','ABW','M','SP','33333333333333','1','fffffffff','2013-04-16','2013-04-15','sadfasdfasdfasdf',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DZA','Asdfasfsd','sdfasdfdas','333333','asdfasdfdfadf','asfasdf@cccc.cc','23','23523523543','Nie','','','32','PRA','AUS','sadfasdf','asdfasdf','333333','asdfsdfasdf','333','asdfasdfas','afsdfasfasdf','','233','232323232',NULL,'asfasdfdasf','AUT','IRL',3,33,'2013-04-09','2015-04-09','2009-04-07','2013-04-25','2006-04-19','2013-04-16','','',2,'asdfasfdasdf',NULL,NULL,'XXA','asdfadsf','333333','333','333333','','','asfasdfasdf','333','33','asdfa@ccc.cc','1','',NULL,'asdfasdf','2013-04-02'),(5,NULL,'2013-04-02 11:10:39',1,'asdfasdf','afadsfasdf','asdfasdfasdf','1983-03-30','asdfasdf','AZE','XXA','ABW','M','SP','33333333333333','1','fffffffff','2013-04-16','2013-04-15','sadfasdfasdfasdf',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DZA','Asdfasfsd','sdfasdfdas','333333','asdfasdfdfadf','asfasdf@cccc.cc','23','23523523543','Nie','','','32','PRA','AUS','sadfasdf','asdfasdf','333333','asdfsdfasdf','333','asdfasdfas','afsdfasfasdf','','233','232323232',NULL,'asfasdfdasf','AUT','IRL',3,33,'2013-04-09','2015-04-09','2009-04-07','2013-04-25','2006-04-19','2013-04-16','','',2,'asdfasfdasdf',NULL,NULL,'XXA','asdfadsf','333333','333','333333','','','asfasdfasdf','333','33','asdfa@ccc.cc','1','',NULL,'asdfasdf','2013-04-02'),(6,NULL,'2013-04-02 11:10:55',0,'asdfasdf','afadsfasdf','asdfasdfasdf','1983-03-30','asdfasdf','AZE','XXA','ABW','M','SP','33333333333333','1','fffffffff','2013-04-16','2013-04-15','sadfasdfasdfasdf',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DZA','Asdfasfsd','sdfasdfdas','333333','asdfasdfdfadf','asfasdf@cccc.cc','23','23523523543','Nie','','','32','PRA','AUS','sadfasdf','asdfasdf','333333','asdfsdfasdf','333','asdfasdfas','afsdfasfasdf','','233','232323232',NULL,'asfasdfdasf','AUT','IRL',3,33,'2013-04-09','2015-04-09','2009-04-07','2013-04-25','2006-04-19','2013-04-16','','',2,'asdfasfdasdf',NULL,NULL,'XXA','asdfadsf','333333','333','333333','','','asfasdfasdf','333','33','asdfa@ccc.cc','1','',NULL,'asdfasdf','2013-04-02'),(8,'admin','2013-04-02 12:32:29',0,'asdfasdf','afadsfasdf','asdfasdfasdf','1983-03-30','asdfasdf','AZE','XXA','ABW','M','SP','33333333333333','1','fffffffff','2013-04-16','2013-04-15','sadfasdfasdfasdf',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DZA','Asdfasfsd','sdfasdfdas','333333','asdfasdfdfadf','asfasdf@cccc.cc','23','23523523543','Nie','','','32','PRA','AUS','sadfasdf','asdfasdf','333333','asdfsdfasdf','333','asdfasdfas','afsdfasfasdf','','233','232323232',NULL,'asfasdfdasf','AUT','IRL',3,33,'2013-04-09','2015-04-09','2009-04-07','2013-04-25','2006-04-19','2013-04-16','','',2,'asdfasfdasdf',NULL,NULL,'XXA','asdfadsf','333333','333','333333','','','asfasdfasdf','333','33','asdfa@ccc.cc','1','',NULL,'asdfasdf','2013-04-02');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`role_name`) values (1,'ROLE_ANONYMOUS'),(2,'ROLE_USER'),(3,'ROLE_ADMIN');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `added` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`type`,`added`,`enabled`) values (1,'admin','admin@test.cc','admin',0,NULL,1);

/*Table structure for table `users_roles` */

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `username` varchar(200) NOT NULL,
  `role_id` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_roles` */

insert  into `users_roles`(`username`,`role_id`) values ('admin',2),('admin',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
