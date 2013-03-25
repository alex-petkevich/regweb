/*
SQLyog Ultimate v9.50 
MySQL - 5.5.28-log : Database - regweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `forms` */

DROP TABLE IF EXISTS `forms`;

CREATE TABLE `forms` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0',
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
  `sex_9` tinyint(1) DEFAULT NULL,
  `family_10` tinyint(1) DEFAULT NULL,
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
  `countryvisitor_18` tinyint(1) DEFAULT '0',
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
  `dest_country_22` varchar(255) DEFAULT NULL,
  `first_country_23` varchar(255) DEFAULT NULL,
  `typevisa_24` tinyint(1) DEFAULT '1',
  `lenvisa_25` tinyint(3) DEFAULT '90',
  `startvisa_29` varchar(30) DEFAULT NULL,
  `endvisa_30` varchar(30) DEFAULT NULL,
  `prevvisas_26` varchar(255) DEFAULT NULL,
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
  `money_type_33` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `forms` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`role_name`) values (1,'ROLE_ANONYMOUS');
insert  into `roles`(`id`,`role_name`) values (2,'ROLE_USER');
insert  into `roles`(`id`,`role_name`) values (3,'ROLE_ADMIN');

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

insert  into `users_roles`(`username`,`role_id`) values ('admin',2);
insert  into `users_roles`(`username`,`role_id`) values ('admin',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
