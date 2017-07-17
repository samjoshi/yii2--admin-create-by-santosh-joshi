/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.25 : Database - yii2-baseframe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','11',1445841595);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','12',1445841802);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','13',1445841860);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','14',1445842234);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','15',1445842301);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','16',1445842450);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','17',1445842504);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','18',1445842617);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','19',1445842694);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','2',1434796680);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','20',1445842730);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','21',1445842818);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','22',1445846768);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','23',1445846829);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','24',1445846882);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','25',1445847073);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','26',1445930843);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','27',1445930950);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','28',1445932219);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','29',1445932306);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','30',1445932516);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','31',1445932553);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','32',1445932598);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','33',1445933129);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','34',1445933228);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','35',1445933307);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','36',1445933436);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','37',1446269075);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','38',1446269158);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','39',1446269262);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','4',1445837929);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','40',1446269386);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','41',1446269490);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','42',1446269543);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Super Admin','1',1434782780);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/*',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/*',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/assign',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/index',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/search',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/view',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/default/*',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/default/index',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/*',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/create',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/delete',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/index',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/update',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/view',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/assign',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/create',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/delete',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/index',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/search',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/update',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/view',2,NULL,NULL,NULL,1434782682,1434782682);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/assign',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/create',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/delete',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/index',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/search',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/update',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/view',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/assign',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/create',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/index',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/search',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/create',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/delete',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/index',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/update',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/view',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/*',2,NULL,NULL,NULL,1434784125,1434784125);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/default/*',2,NULL,NULL,NULL,1434784125,1434784125);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/default/index',2,NULL,NULL,NULL,1434784125,1434784125);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/page/*',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/page/create',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/page/delete',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/page/index',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/page/update',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/page/view',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/user/*',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/user/create',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/user/delete',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/user/index',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/user/update',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/backend/user/view',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/db-explain',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/download-mail',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/index',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/toolbar',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/view',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/*',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/action',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/diff',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/index',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/preview',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/view',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/*',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/about',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/captcha',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/contact',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/error',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/index',2,NULL,NULL,NULL,1434782683,1434782683);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/login',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/logout',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/page',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/request-password-reset',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/reset-password',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/signup',2,NULL,NULL,NULL,1434782684,1434782684);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/userprofile/*',2,NULL,NULL,NULL,1435043170,1435043170);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/userprofile/changepassword',2,NULL,NULL,NULL,1445838084,1445838084);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/userprofile/index',2,NULL,NULL,NULL,1435043170,1435043170);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/userprofile/update',2,NULL,NULL,NULL,1435043170,1435043170);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('Registered',1,'Registered',NULL,NULL,1434782654,1434782654);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('Super Admin',1,'Super Admin',NULL,NULL,1434782626,1434782626);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/assignment/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/assignment/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/assignment/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/assignment/search');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/assignment/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/menu/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/menu/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/menu/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/menu/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/menu/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/menu/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/search');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/permission/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/search');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/role/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/route/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/route/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/route/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/route/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/route/search');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/rule/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/rule/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/rule/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/rule/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/rule/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/admin/rule/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/page/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/page/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/page/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/page/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/page/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/page/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/user/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/user/create');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/user/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/user/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/user/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/backend/user/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/debug/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/debug/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/default/db-explain');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/debug/default/download-mail');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/default/download-mail');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/debug/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/debug/default/toolbar');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/default/toolbar');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/debug/default/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/debug/default/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/default/action');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/default/diff');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/default/preview');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/gii/default/view');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/about');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/about');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/captcha');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/captcha');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/contact');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/contact');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/error');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/error');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/login');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/login');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/logout');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/logout');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/page');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/page');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/request-password-reset');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/request-password-reset');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/reset-password');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/reset-password');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/site/signup');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/site/signup');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/userprofile/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/userprofile/*');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/userprofile/changepassword');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/userprofile/changepassword');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/userprofile/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/userprofile/index');
insert  into `auth_item_child`(`parent`,`child`) values ('Registered','/userprofile/update');
insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/userprofile/update');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1434781292);
insert  into `migration`(`version`,`apply_time`) values ('m140506_102106_rbac_init',1434782281);

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `alias` varchar(255) DEFAULT NULL,
  `add_date` int(22) NOT NULL,
  `modify_date` int(22) DEFAULT NULL,
  `published` enum('Published','Unpublished') NOT NULL DEFAULT 'Published',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `page` */

insert  into `page`(`id`,`title`,`content`,`alias`,`add_date`,`modify_date`,`published`) values (1,'About Us','Morbi mattis quam eu dolor fermentum, semper hendrerit neque eleifend. Ut feugiat ante vitae dolor auctor interdum? Suspendisse feugiat tempor semper. Aliquam pharetra erat sed consectetur facilisis. Proin faucibus dolor ac arcu mattis suscipit. Nunc vulputate tortor eros; a tristique purus interdum id! Aenean venenatis metus et ultrices fringilla! Quisque quis quam pulvinar, fermentum elit in, bibendum eros. Fusce nec diam rhoncus, cursus nulla a, faucibus diam. Nam feugiat elit ligula? Nullam malesuada massa vitae arcu egestas varius. Nulla tortor tortor, dignissim vel justo nec, congue facilisis leo. Praesent consequat varius diam vel consequat. Praesent ac ipsum id turpis commodo varius? Etiam id mauris eu enim blandit sodales. In pharetra leo quis ex faucibus, et pretium nisi vehicula.<br><br>Aliquam eu gravida lorem! In pharetra sodales purus, eget dapibus tellus ullamcorper a. Mauris pharetra neque vel sollicitudin tempor. Mauris aliquam purus sit amet consequat lacinia. Nunc semper lorem a purus volutpat lacinia. Proin fringilla nisi in nisi pellentesque imperdiet. Morbi dignissim condimentum purus, a elementum nisl condimentum a.<br><br>Vestibulum non nulla nunc. Nullam ut orci lectus. Maecenas vulputate nibh vitae hendrerit vehicula. Etiam vel dictum libero! Etiam vitae ultricies sapien. Fusce porttitor massa at sodales fringilla? Cras sollicitudin; arcu vitae pellentesque venenatis, tellus felis vulputate massa, vel pulvinar ipsum elit eget sem. In ullamcorper rhoncus tempor. Sed at enim tincidunt quam malesuada finibus.<br><br>','about-us',1435051452,1435051526,'Published');
insert  into `page`(`id`,`title`,`content`,`alias`,`add_date`,`modify_date`,`published`) values (2,'Privacy Policy','Morbi sed quam et eros laoreet interdum id quis risus! Morbi id congue magna, sit amet blandit enim. Fusce dolor eros, eleifend ultricies auctor vel, egestas sit amet tellus. Suspendisse non orci congue, malesuada diam non, pretium justo. Morbi in congue mauris. Sed ullamcorper diam at velit faucibus, eget hendrerit arcu sodales. Suspendisse vitae odio at metus congue molestie. Quisque porttitor felis urna, blandit fringilla velit pharetra vitae.<br><br>Morbi eu porttitor odio. Integer id ipsum vel mi aliquam congue! Aenean fringilla nibh at consectetur congue. Curabitur finibus aliquam turpis, ac faucibus urna consectetur et? Nulla scelerisque nibh sed dignissim tristique. Vivamus quis magna turpis. Praesent vitae consequat risus. Donec sagittis, tortor eu suscipit faucibus, quam ligula tempus orci, ac tincidunt quam risus nec neque. Etiam fringilla tellus et purus hendrerit pulvinar? Fusce velit sapien, condimentum sit amet faucibus facilisis, malesuada sit amet lorem. Vivamus et porttitor odio. Vivamus leo leo; tincidunt sit amet mollis eu, tristique et tortor. Integer suscipit sapien mauris, id lobortis nisi fringilla vitae. Donec commodo lacinia ligula sed maximus.<br><br>Etiam laoreet nulla metus, faucibus convallis ligula gravida in. Vestibulum nunc lorem, fermentum quis dui cursus; gravida aliquam metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod; ligula sed ultrices laoreet, elit felis dapibus ipsum, sit amet congue eros ligula ac nibh. Aenean malesuada malesuada ligula vel congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Mauris lacinia ante varius dui imperdiet imperdiet. Suspendisse elementum, odio eu finibus elementum; nunc metus varius sem, nec mattis lectus risus eget mauris. Ut vel metus venenatis, venenatis nisl a, sodales elit. Sed lacinia scelerisque condimentum. Nullam fermentum sapien ut vulputate viverra! Curabitur porta pellentesque lectus non pulvinar.<br><br>','privacy-policy',1435051646,NULL,'Published');
insert  into `page`(`id`,`title`,`content`,`alias`,`add_date`,`modify_date`,`published`) values (3,'Terms And Conditions','Aliquam egestas porta mollis. In facilisis aliquam quam. Donec eget ligula orci. Quisque varius metus dui, pulvinar condimentum sapien facilisis sit amet. Nullam arcu libero, luctus vitae neque vel, dapibus dignissim magna. Integer malesuada rhoncus eros, vel posuere nisi condimentum eget. Praesent convallis semper mi! Integer tellus ex, commodo id lacinia a, dictum quis risus. Phasellus felis arcu, efficitur et mollis ultricies, dignissim eget tortor. Praesent sit amet nisi eu nisi egestas interdum in sit amet eros. Fusce congue leo non mattis dapibus. Maecenas porta quam in maximus varius. Pellentesque convallis elementum ultricies.<br><br>Aenean nisi mi, faucibus et velit in; congue efficitur arcu. Cras porta, magna et auctor consequat, mauris purus facilisis orci, eu finibus lorem leo et nibh. Donec ac dapibus magna, nec luctus lectus. Sed porttitor viverra odio a vestibulum. Aenean vitae purus eros. Vivamus tortor ligula, dictum vitae pulvinar non, porta in tortor. Quisque diam dui, bibendum non est sed; posuere bibendum ante! Nam tincidunt, sapien non cursus viverra, augue elit sodales magna, in lobortis justo arcu eget magna.<br><br>Fusce eleifend ac sem et blandit. Nulla facilisi. Fusce posuere tristique iaculis. Etiam feugiat, risus eu faucibus imperdiet, quam elit commodo velit, ac mollis dui augue id magna. Nullam vel nisl aliquam, fermentum massa sed, vulputate lorem? Pellentesque in tincidunt dui! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pretium leo ligula, eget suscipit neque pretium non. Aenean ornare nisi blandit, laoreet nibh et, lacinia tortor. Nulla facilisi. Ut tincidunt purus ut vehicula porttitor. Phasellus dignissim ipsum a massa porta tempus. Donec at lectus eget erat semper aliquam non in erat! Pellentesque cursus ipsum risus; at maximus dolor suscipit eu. Phasellus at dapibus urna, in vestibulum tellus.<br><br>','terms-and-conditions',1435051973,NULL,'Published');

/*Table structure for table `session` */

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `session` */

insert  into `session`(`id`,`expire`,`data`) values ('0i3s15j9h57jum95394dftaoc0',1451990505,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('47fs1c1rap180mqnve7iohjft6',1450948878,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('53gtakg6qs3a8g2oc1qco6vu46',1449496685,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('dqcv8i1rpj8iasvuenaf5vbrj1',1449043043,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('eguu39t16p6s95bpuma7bkl836',1454731619,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('gaj9ursr8eje92cvufehl91b25',1454568828,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('gl517ca4865t2bf5hi1rle5765',1450869127,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('jffv8qtijdlu30rl6g97aqsss5',1450247059,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('jim1sll4ibulg4ako9cfs8spg1',1448123633,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('nu9m8iprum37i9ufd2ccrtpgv5',1448087017,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('ptoorfgk90bd6l6tviaecoer60',1453382438,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('pukn1i6r5hs0v49iv9hafvoth1',1457529117,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('qfulrli8l9ib42qb97b91mb2c2',1455870469,'__flash|a:0:{}__id|i:1;');
insert  into `session`(`id`,`expire`,`data`) values ('t5cenk9bohrvv899g71ceim6a2',1448516286,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('tajfgss5v4o8o9teetndr1lsk4',1448341945,'__flash|a:0:{}');
insert  into `session`(`id`,`expire`,`data`) values ('tkm059cnbu1772erjcqhoo8df0',1457691843,'__flash|a:0:{}__id|i:1;');

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `setting` */

insert  into `setting`(`id`,`title`,`key`,`value`) values (1,'Records Per Page (Pagination)','record_per_page','10');
insert  into `setting`(`id`,`title`,`key`,`value`) values (2,'Admin Email Address','admin_email','admin@localhost.com');
insert  into `setting`(`id`,`title`,`key`,`value`) values (3,'Support Email Address','support_email','admin@localhost.com');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `reg_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`role`,`status`,`created_at`,`updated_at`,`reg_key`) values (1,'admin','eCB8J032--bZftCRw36_8K9W_AoEMmgA','$2y$13$6nP94ys9NK8UTxZ6Qje4k..AUTj5OOZg3Nm5cxsGt65hSsT1Za1Ue',NULL,'admin@localhost.com',10,10,1434781175,1434781175,NULL);
insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`role`,`status`,`created_at`,`updated_at`,`reg_key`) values (2,'test1','E2VmqIJhJbmecJVIcQjPGuKvhvNXNJH6','$2y$13$LQT4apb6CWgtOuVm87PUMOH//fgzavVfxvaOHs0GBPYcEpw3.fYKy',NULL,'test1@localhost.com',10,10,1434796679,1439959907,NULL);

/*Table structure for table `userprofile` */

DROP TABLE IF EXISTS `userprofile`;

CREATE TABLE `userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `contact_mobile` varchar(255) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_UP_USER_ID` (`user_id`),
  CONSTRAINT `FK_UP_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `userprofile` */

insert  into `userprofile`(`id`,`user_id`,`fullname`,`contact_mobile`,`address_line1`,`city`,`county`,`postcode`,`country`,`image`) values (1,1,'Administrator','8233142631','111, Kushwah Sadan','Alwar','Rajasthan','301001','','55c9e5b29dd6a.jpg');
insert  into `userprofile`(`id`,`user_id`,`fullname`,`contact_mobile`,`address_line1`,`city`,`county`,`postcode`,`country`,`image`) values (2,2,'Test One','1234567890','Test Address','Test City','Test County','301001','India','558908d4cc34a.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
