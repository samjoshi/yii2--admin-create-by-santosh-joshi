/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.25 : Database - yii2-baseframe
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth` */

DROP TABLE IF EXISTS `auth`;

CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-auth-user_id-user-id` (`user_id`),
  CONSTRAINT `fk-auth-user_id-user-id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `auth` */

insert  into `auth`(`id`,`user_id`,`source`,`source_id`) values (1,1,'github','1791660');

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

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('Registered','13',1464266458),('Registered','14',1476339588),('Registered','15',1484479134),('Registered','16',1484480747),('Registered','2',1434796680),('Registered','3',1458356057),('Super Admin','1',1434782780);

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

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/*',2,NULL,NULL,NULL,1434782684,1434782684),('/admin/*',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/assignment/*',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/assignment/assign',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/assignment/index',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/assignment/revoke',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/assignment/search',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/assignment/view',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/default/*',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/default/index',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/menu/*',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/menu/create',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/menu/delete',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/menu/index',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/menu/update',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/menu/view',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/*',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/permission/assign',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/create',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/delete',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/index',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/remove',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/permission/search',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/update',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/permission/view',2,NULL,NULL,NULL,1434782682,1434782682),('/admin/role/*',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/assign',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/create',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/delete',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/index',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/remove',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/role/search',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/update',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/role/view',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/route/*',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/route/assign',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/route/create',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/route/index',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/route/refresh',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/route/remove',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/route/search',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/rule/*',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/rule/create',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/rule/delete',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/rule/index',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/rule/update',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/rule/view',2,NULL,NULL,NULL,1434782683,1434782683),('/admin/user/*',2,NULL,NULL,NULL,1464239924,1464239924),('/admin/user/activate',2,NULL,NULL,NULL,1464239924,1464239924),('/admin/user/change-password',2,NULL,NULL,NULL,1464239924,1464239924),('/admin/user/delete',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/user/index',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/user/login',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/user/logout',2,NULL,NULL,NULL,1464239923,1464239923),('/admin/user/request-password-reset',2,NULL,NULL,NULL,1464239924,1464239924),('/admin/user/reset-password',2,NULL,NULL,NULL,1464239924,1464239924),('/admin/user/signup',2,NULL,NULL,NULL,1464239924,1464239924),('/admin/user/view',2,NULL,NULL,NULL,1464239923,1464239923),('/backend/*',2,NULL,NULL,NULL,1434784125,1434784125),('/backend/default/*',2,NULL,NULL,NULL,1434784125,1434784125),('/backend/default/index',2,NULL,NULL,NULL,1434784125,1434784125),('/backend/page/*',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/page/create',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/page/delete',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/page/index',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/page/update',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/page/view',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/setting/*',2,NULL,NULL,NULL,1464239914,1464239914),('/backend/setting/create',2,NULL,NULL,NULL,1464239914,1464239914),('/backend/setting/delete',2,NULL,NULL,NULL,1464239914,1464239914),('/backend/setting/index',2,NULL,NULL,NULL,1464239914,1464239914),('/backend/setting/update',2,NULL,NULL,NULL,1464239914,1464239914),('/backend/setting/view',2,NULL,NULL,NULL,1464239914,1464239914),('/backend/user/*',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/user/create',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/user/delete',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/user/index',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/user/update',2,NULL,NULL,NULL,1445838084,1445838084),('/backend/user/view',2,NULL,NULL,NULL,1445838084,1445838084),('/debug/*',2,NULL,NULL,NULL,1434782683,1434782683),('/debug/default/*',2,NULL,NULL,NULL,1434782683,1434782683),('/debug/default/db-explain',2,NULL,NULL,NULL,1445838084,1445838084),('/debug/default/download-mail',2,NULL,NULL,NULL,1434782683,1434782683),('/debug/default/index',2,NULL,NULL,NULL,1434782683,1434782683),('/debug/default/toolbar',2,NULL,NULL,NULL,1434782683,1434782683),('/debug/default/view',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/*',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/default/*',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/default/action',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/default/diff',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/default/index',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/default/preview',2,NULL,NULL,NULL,1434782683,1434782683),('/gii/default/view',2,NULL,NULL,NULL,1434782683,1434782683),('/site/*',2,NULL,NULL,NULL,1434782684,1434782684),('/site/about',2,NULL,NULL,NULL,1434782684,1434782684),('/site/captcha',2,NULL,NULL,NULL,1434782683,1434782683),('/site/contact',2,NULL,NULL,NULL,1434782684,1434782684),('/site/error',2,NULL,NULL,NULL,1434782683,1434782683),('/site/image',2,NULL,NULL,NULL,1464239914,1464239914),('/site/index',2,NULL,NULL,NULL,1434782683,1434782683),('/site/login',2,NULL,NULL,NULL,1434782684,1434782684),('/site/logout',2,NULL,NULL,NULL,1434782684,1434782684),('/site/page',2,NULL,NULL,NULL,1445838084,1445838084),('/site/request-password-reset',2,NULL,NULL,NULL,1434782684,1434782684),('/site/reset-password',2,NULL,NULL,NULL,1434782684,1434782684),('/site/signup',2,NULL,NULL,NULL,1434782684,1434782684),('/test/*',2,NULL,NULL,NULL,1464239914,1464239914),('/test/index',2,NULL,NULL,NULL,1464239914,1464239914),('/userprofile/*',2,NULL,NULL,NULL,1435043170,1435043170),('/userprofile/changepassword',2,NULL,NULL,NULL,1445838084,1445838084),('/userprofile/index',2,NULL,NULL,NULL,1435043170,1435043170),('/userprofile/update',2,NULL,NULL,NULL,1435043170,1435043170),('Registered',1,'Registered',NULL,NULL,1434782654,1434782654),('Super Admin',1,'Super Admin',NULL,NULL,1434782626,1434782626);

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

insert  into `auth_item_child`(`parent`,`child`) values ('Super Admin','/*'),('Super Admin','/admin/*'),('Super Admin','/admin/assignment/*'),('Super Admin','/admin/assignment/assign'),('Super Admin','/admin/assignment/index'),('Super Admin','/admin/assignment/search'),('Super Admin','/admin/assignment/view'),('Super Admin','/admin/default/*'),('Super Admin','/admin/default/index'),('Super Admin','/admin/menu/*'),('Super Admin','/admin/menu/create'),('Super Admin','/admin/menu/delete'),('Super Admin','/admin/menu/index'),('Super Admin','/admin/menu/update'),('Super Admin','/admin/menu/view'),('Super Admin','/admin/permission/*'),('Super Admin','/admin/permission/assign'),('Super Admin','/admin/permission/create'),('Super Admin','/admin/permission/delete'),('Super Admin','/admin/permission/index'),('Super Admin','/admin/permission/search'),('Super Admin','/admin/permission/update'),('Super Admin','/admin/permission/view'),('Super Admin','/admin/role/*'),('Super Admin','/admin/role/assign'),('Super Admin','/admin/role/create'),('Super Admin','/admin/role/delete'),('Super Admin','/admin/role/index'),('Super Admin','/admin/role/search'),('Super Admin','/admin/role/update'),('Super Admin','/admin/role/view'),('Super Admin','/admin/route/*'),('Super Admin','/admin/route/assign'),('Super Admin','/admin/route/create'),('Super Admin','/admin/route/index'),('Super Admin','/admin/route/search'),('Super Admin','/admin/rule/*'),('Super Admin','/admin/rule/create'),('Super Admin','/admin/rule/delete'),('Super Admin','/admin/rule/index'),('Super Admin','/admin/rule/update'),('Super Admin','/admin/rule/view'),('Super Admin','/backend/*'),('Super Admin','/backend/default/*'),('Super Admin','/backend/default/index'),('Super Admin','/backend/page/*'),('Super Admin','/backend/page/create'),('Super Admin','/backend/page/delete'),('Super Admin','/backend/page/index'),('Super Admin','/backend/page/update'),('Super Admin','/backend/page/view'),('Super Admin','/backend/user/*'),('Super Admin','/backend/user/create'),('Super Admin','/backend/user/delete'),('Super Admin','/backend/user/index'),('Super Admin','/backend/user/update'),('Super Admin','/backend/user/view'),('Registered','/debug/*'),('Super Admin','/debug/*'),('Registered','/debug/default/*'),('Super Admin','/debug/default/*'),('Super Admin','/debug/default/db-explain'),('Registered','/debug/default/download-mail'),('Super Admin','/debug/default/download-mail'),('Registered','/debug/default/index'),('Super Admin','/debug/default/index'),('Registered','/debug/default/toolbar'),('Super Admin','/debug/default/toolbar'),('Registered','/debug/default/view'),('Super Admin','/debug/default/view'),('Super Admin','/gii/*'),('Super Admin','/gii/default/*'),('Super Admin','/gii/default/action'),('Super Admin','/gii/default/diff'),('Super Admin','/gii/default/index'),('Super Admin','/gii/default/preview'),('Super Admin','/gii/default/view'),('Registered','/site/*'),('Super Admin','/site/*'),('Registered','/site/about'),('Super Admin','/site/about'),('Registered','/site/captcha'),('Super Admin','/site/captcha'),('Registered','/site/contact'),('Super Admin','/site/contact'),('Registered','/site/error'),('Super Admin','/site/error'),('Registered','/site/index'),('Super Admin','/site/index'),('Registered','/site/login'),('Super Admin','/site/login'),('Registered','/site/logout'),('Super Admin','/site/logout'),('Registered','/site/page'),('Super Admin','/site/page'),('Registered','/site/request-password-reset'),('Super Admin','/site/request-password-reset'),('Registered','/site/reset-password'),('Super Admin','/site/reset-password'),('Registered','/site/signup'),('Super Admin','/site/signup'),('Registered','/userprofile/*'),('Super Admin','/userprofile/*'),('Registered','/userprofile/changepassword'),('Super Admin','/userprofile/changepassword'),('Registered','/userprofile/index'),('Super Admin','/userprofile/index'),('Registered','/userprofile/update'),('Super Admin','/userprofile/update');

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

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1434781292),('m140506_102106_rbac_init',1434782281);

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `content` text,
  `alias` varchar(255) DEFAULT NULL,
  `add_date` int(22) NOT NULL,
  `modify_date` int(22) DEFAULT NULL,
  `published` enum('Published','Unpublished') NOT NULL DEFAULT 'Published',
  PRIMARY KEY (`id`),
  KEY `fk_page_category_id` (`category_id`),
  CONSTRAINT `fk_page_category_id` FOREIGN KEY (`category_id`) REFERENCES `page_category` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `page` */

insert  into `page`(`id`,`category_id`,`title`,`content`,`alias`,`add_date`,`modify_date`,`published`) values (1,1,'About Us','Morbi mattis quam eu dolor fermentum, semper hendrerit neque eleifend. Ut feugiat ante vitae dolor auctor interdum? Suspendisse feugiat tempor semper. Aliquam pharetra erat sed consectetur facilisis. Proin faucibus dolor ac arcu mattis suscipit. Nunc vulputate tortor eros; a tristique purus interdum id! Aenean venenatis metus et ultrices fringilla! Quisque quis quam pulvinar, fermentum elit in, bibendum eros. Fusce nec diam rhoncus, cursus nulla a, faucibus diam. Nam feugiat elit ligula? Nullam malesuada massa vitae arcu egestas varius. Nulla tortor tortor, dignissim vel justo nec, congue facilisis leo. Praesent consequat varius diam vel consequat. Praesent ac ipsum id turpis commodo varius? Etiam id mauris eu enim blandit sodales. In pharetra leo quis ex faucibus, et pretium nisi vehicula.<br><br>Aliquam eu gravida lorem! In pharetra sodales purus, eget dapibus tellus ullamcorper a. Mauris pharetra neque vel sollicitudin tempor. Mauris aliquam purus sit amet consequat lacinia. Nunc semper lorem a purus volutpat lacinia. Proin fringilla nisi in nisi pellentesque imperdiet. Morbi dignissim condimentum purus, a elementum nisl condimentum a.<br><br>Vestibulum non nulla nunc. Nullam ut orci lectus. Maecenas vulputate nibh vitae hendrerit vehicula. Etiam vel dictum libero! Etiam vitae ultricies sapien. Fusce porttitor massa at sodales fringilla? Cras sollicitudin; arcu vitae pellentesque venenatis, tellus felis vulputate massa, vel pulvinar ipsum elit eget sem. In ullamcorper rhoncus tempor. Sed at enim tincidunt quam malesuada finibus.<br><br>','about-us',1435051452,1435051526,'Published'),(2,1,'Privacy Policy','Morbi sed quam et eros laoreet interdum id quis risus! Morbi id congue magna, sit amet blandit enim. Fusce dolor eros, eleifend ultricies auctor vel, egestas sit amet tellus. Suspendisse non orci congue, malesuada diam non, pretium justo. Morbi in congue mauris. Sed ullamcorper diam at velit faucibus, eget hendrerit arcu sodales. Suspendisse vitae odio at metus congue molestie. Quisque porttitor felis urna, blandit fringilla velit pharetra vitae.<br><br>Morbi eu porttitor odio. Integer id ipsum vel mi aliquam congue! Aenean fringilla nibh at consectetur congue. Curabitur finibus aliquam turpis, ac faucibus urna consectetur et? Nulla scelerisque nibh sed dignissim tristique. Vivamus quis magna turpis. Praesent vitae consequat risus. Donec sagittis, tortor eu suscipit faucibus, quam ligula tempus orci, ac tincidunt quam risus nec neque. Etiam fringilla tellus et purus hendrerit pulvinar? Fusce velit sapien, condimentum sit amet faucibus facilisis, malesuada sit amet lorem. Vivamus et porttitor odio. Vivamus leo leo; tincidunt sit amet mollis eu, tristique et tortor. Integer suscipit sapien mauris, id lobortis nisi fringilla vitae. Donec commodo lacinia ligula sed maximus.<br><br>Etiam laoreet nulla metus, faucibus convallis ligula gravida in. Vestibulum nunc lorem, fermentum quis dui cursus; gravida aliquam metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris euismod; ligula sed ultrices laoreet, elit felis dapibus ipsum, sit amet congue eros ligula ac nibh. Aenean malesuada malesuada ligula vel congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Mauris lacinia ante varius dui imperdiet imperdiet. Suspendisse elementum, odio eu finibus elementum; nunc metus varius sem, nec mattis lectus risus eget mauris. Ut vel metus venenatis, venenatis nisl a, sodales elit. Sed lacinia scelerisque condimentum. Nullam fermentum sapien ut vulputate viverra! Curabitur porta pellentesque lectus non pulvinar.<br><br>','privacy-policy',1435051646,NULL,'Published'),(3,1,'Terms And Conditions','Aliquam egestas porta mollis. In facilisis aliquam quam. Donec eget ligula orci. Quisque varius metus dui, pulvinar condimentum sapien facilisis sit amet. Nullam arcu libero, luctus vitae neque vel, dapibus dignissim magna. Integer malesuada rhoncus eros, vel posuere nisi condimentum eget. Praesent convallis semper mi! Integer tellus ex, commodo id lacinia a, dictum quis risus. Phasellus felis arcu, efficitur et mollis ultricies, dignissim eget tortor. Praesent sit amet nisi eu nisi egestas interdum in sit amet eros. Fusce congue leo non mattis dapibus. Maecenas porta quam in maximus varius. Pellentesque convallis elementum ultricies.<br><br>Aenean nisi mi, faucibus et velit in; congue efficitur arcu. Cras porta, magna et auctor consequat, mauris purus facilisis orci, eu finibus lorem leo et nibh. Donec ac dapibus magna, nec luctus lectus. Sed porttitor viverra odio a vestibulum. Aenean vitae purus eros. Vivamus tortor ligula, dictum vitae pulvinar non, porta in tortor. Quisque diam dui, bibendum non est sed; posuere bibendum ante! Nam tincidunt, sapien non cursus viverra, augue elit sodales magna, in lobortis justo arcu eget magna.<br><br>Fusce eleifend ac sem et blandit. Nulla facilisi. Fusce posuere tristique iaculis. Etiam feugiat, risus eu faucibus imperdiet, quam elit commodo velit, ac mollis dui augue id magna. Nullam vel nisl aliquam, fermentum massa sed, vulputate lorem? Pellentesque in tincidunt dui! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pretium leo ligula, eget suscipit neque pretium non. Aenean ornare nisi blandit, laoreet nibh et, lacinia tortor. Nulla facilisi. Ut tincidunt purus ut vehicula porttitor. Phasellus dignissim ipsum a massa porta tempus. Donec at lectus eget erat semper aliquam non in erat! Pellentesque cursus ipsum risus; at maximus dolor suscipit eu. Phasellus at dapibus urna, in vestibulum tellus.<br><br>','terms-and-conditions',1435051973,NULL,'Published'),(4,2,'My Sample page','<p>this is sampkle content.</p>\r\n','testmy-sample-page',1485841616,1485848657,'Published');

/*Table structure for table `page_category` */

DROP TABLE IF EXISTS `page_category`;

CREATE TABLE `page_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `page_category` */

insert  into `page_category`(`id`,`parent_id`,`title`,`alias`,`status`) values (1,0,'System','system',1),(2,0,'General','general',1);

/*Table structure for table `session` */

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `session` */

insert  into `session`(`id`,`expire`,`data`) values ('574j478e7ip9jrlstpv4d5l050',1485955871,'__flash|a:0:{}__id|i:1;'),('8e4hpma6tv64g3umj86tohqik0',1485957539,'__flash|a:0:{}yii\\authclient\\clients\\GitHub_github_authState|s:64:\"93ba88768546f4dd41be7393bc974769bce24a7145964e7f441f7251c8260313\";__id|i:1;'),('kj82fsqjfnm9m8mmrlcvcfe2j0',1485843181,'__flash|a:0:{}__id|i:1;'),('pmck3rl30ufnt0fgomm3ig4fe0',1485854109,'__flash|a:0:{}__id|i:1;'),('umksrb8ofdq4po9r3qvdv9sb84',1485853393,'__flash|a:0:{}');

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

insert  into `setting`(`id`,`title`,`key`,`value`) values (1,'Records Per Page (Pagination)','record_per_page','10'),(2,'Admin Email Address','admin_email','admin@localhost.com'),(3,'Support Email Address','support_email','admin@localhost.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`role`,`status`,`created_at`,`updated_at`,`reg_key`) values (1,'admin','eCB8J032--bZftCRw36_8K9W_AoEMmgA','$2y$13$6nP94ys9NK8UTxZ6Qje4k..AUTj5OOZg3Nm5cxsGt65hSsT1Za1Ue',NULL,'admin@localhost.com',10,10,1434781175,1434781175,NULL),(2,'test1','E2VmqIJhJbmecJVIcQjPGuKvhvNXNJH6','$2y$13$LQT4apb6CWgtOuVm87PUMOH//fgzavVfxvaOHs0GBPYcEpw3.fYKy',NULL,'test1@localhost.com',10,10,1434796679,1461909350,NULL),(3,'test2','4mmzAe0jYWB1Im5LiDmVnUJDiT4QFDp2','$2y$13$bhTDPrNMU3VE9gQ9aI0GM.5COeLU.pkJjlCri8MUof8Y0.aFOMEXK',NULL,'test2@localhost.com',10,10,1458356057,1458356154,'fgmvRs1lO2XJ_i1iEO1dJ7JBRgCakJ5N145835605731287'),(14,'test112','hpsZXB8ZXvQskQJWRIcEWkzersvQ1Md2','$2y$13$KsUc.GLAOwg1O9Us5/IuMeXJD6gOgcbxlpJYeRaK4j3idKl9gOFny',NULL,'test112@localhost.com',10,10,1476339587,1476339587,'ldBdStljHxNt4RfJwcZ1J3QbeWjXCcg2147633958719273'),(16,'deepaksinghkushwah@gmail.com','rI9SKlvsHeUlXqhAvfP2ay75fPtDGlmM','$2y$13$P1lEnmnLrIw9DrQxFb15xuhCEn5BxO5964ivkB1ChLXSAeBGm/vOi','ej-4t7HRG9gBFYKR7n61efx97kZg3oZu_1484480747','deepaksinghkushwah@gmail.com',10,10,1484480747,1484480747,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `userprofile` */

insert  into `userprofile`(`id`,`user_id`,`fullname`,`contact_mobile`,`address_line1`,`city`,`county`,`postcode`,`country`,`image`) values (1,1,'Administrator','8233142631','111, Kushwah Sadan','Alwar','Rajasthan','301001','','55c9e5b29dd6a.jpg'),(2,2,'Test One','1234567890','Test Address','Test City','Test County','301001','India','558908d4cc34a.jpg'),(3,3,'test2','8233142631','Kushwah Sadan','Alwar','Rajasthan','301001','India','56ecbf59b7dba.jpg'),(10,14,'test112','123456789','','','','','','57ff2784077b8.jpg'),(12,16,'deepaksinghkushwah@gmail.com','','','','','','','589016babde7a.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
