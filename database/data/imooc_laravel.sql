# Host: localhost  (Version: 5.5.53)
# Date: 2019-12-13 15:40:59
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_permission_role"
#

CREATE TABLE `admin_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_permission_role"
#

REPLACE INTO `admin_permission_role` VALUES (1,1,1,NULL,NULL);

#
# Structure for table "admin_permissions"
#

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_permissions"
#

REPLACE INTO `admin_permissions` VALUES (1,'admin','',NULL,NULL);

#
# Structure for table "admin_role_user"
#

CREATE TABLE `admin_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_user"
#

REPLACE INTO `admin_role_user` VALUES (1,1,1);

#
# Structure for table "admin_roles"
#

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_roles"
#

REPLACE INTO `admin_roles` VALUES (1,'admin','',NULL,NULL);

#
# Structure for table "admin_users"
#

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_users"
#

REPLACE INTO `admin_users` VALUES (1,'admin','123456','VzGu3Jn0dlHZPJVKQhqpfy9WmLhtYfIQWpN5xMhJNPbnVhIDIThgKsdC8cWm','2019-11-28 00:00:00',NULL);

#
# Structure for table "comments"
#

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "comments"
#


#
# Structure for table "failed_jobs"
#

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "failed_jobs"
#


#
# Structure for table "fans"
#

CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL,
  `star_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "fans"
#


#
# Structure for table "jobs"
#

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "jobs"
#


#
# Structure for table "migrations"
#

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

REPLACE INTO `migrations` VALUES (1,'2017_04_09_100358_create_permission_and_roles',1),(2,'2019_12_13_144528_create_user_table',2),(3,'2019_12_13_145012_create_password_resets_table',3),(4,'2019_12_13_145116_create_posts_table',4),(5,'2019_12_13_145212_create_comment_table',5),(6,'2019_12_13_145257_create_zan_table',6),(7,'2019_12_13_145335_create_fan_table',7),(8,'2019_12_13_145622_create_topics_table',8),(9,'2019_12_13_145710_create_admin_user_table',9),(10,'2019_12_13_145748_alter_posts_table',10),(11,'2019_12_13_145830_create_notice_table',11),(12,'2019_12_13_145948_create_jobs_table',12),(13,'2019_12_13_150021_create_failed_jobs_table',13),(14,'2019_12_13_150126_alter_user_table_add_avatar',14);

#
# Structure for table "notices"
#

CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "notices"
#


#
# Structure for table "password_resets"
#

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "post_topics"
#

CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "post_topics"
#


#
# Structure for table "posts"
#

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1' COMMENT '0,1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "posts"
#

REPLACE INTO `posts` VALUES (1,'刘佳的文章','<p>这是我的测试文字<img src=\"http://api.map.baidu.com/staticimage?center=114.064094,22.645565&zoom=11&amp;width=478&amp;height=258&amp;markers=114.069843,22.536652\" style=\"max-width: 100%;\"><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/0b/tootha_thumb.gif\"></p><p><br></p>',1,'2019-12-13 15:07:33','2019-12-13 15:07:33',1);

#
# Structure for table "topics"
#

CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "topics"
#


#
# Structure for table "user_notice"
#

CREATE TABLE `user_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user_notice"
#


#
# Structure for table "users"
#

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

REPLACE INTO `users` VALUES (1,'liujia','liu34520jia@163.com','$2y$10$y42ZwUjRgESqrRlFifbpguPn99Qrq3ipoS9snZ3txHOBS4LzCJIV2','VzGu3Jn0dlHZPJVKQhqpfy9WmLhtYfIQWpN5xMhJNPbnVhIDIThgKsdC8cWm','2019-12-13 15:04:30','2019-12-13 15:04:30',''),(2,'Marilou Windler II','kaelyn41@example.org','$2y$10$Ne0Dx1zkUVBcKCoIfmwW5eQNNYpy3b7WLRzHfhJIMhC5c/WNMO7zG','p8yWwkSzYN','2019-12-13 15:30:44','2019-12-13 15:30:44',''),(3,'Dr. Cedrick Wehner MD','pborer@example.net','$2y$10$Ne0Dx1zkUVBcKCoIfmwW5eQNNYpy3b7WLRzHfhJIMhC5c/WNMO7zG','WBomM8ziUA','2019-12-13 15:30:44','2019-12-13 15:30:44',''),(4,'Leda Connelly','arvilla31@example.com','$2y$10$Ne0Dx1zkUVBcKCoIfmwW5eQNNYpy3b7WLRzHfhJIMhC5c/WNMO7zG','7BP7gZdzir','2019-12-13 15:30:44','2019-12-13 15:30:44',''),(5,'Talia Tromp','xmarvin@example.org','$2y$10$Ne0Dx1zkUVBcKCoIfmwW5eQNNYpy3b7WLRzHfhJIMhC5c/WNMO7zG','hy73NbuEg2','2019-12-13 15:30:44','2019-12-13 15:30:44',''),(6,'Mr. Einar Orn IV','schimmel.dana@example.net','$2y$10$Ne0Dx1zkUVBcKCoIfmwW5eQNNYpy3b7WLRzHfhJIMhC5c/WNMO7zG','4BCdjuXPI0','2019-12-13 15:30:44','2019-12-13 15:30:44','');

#
# Structure for table "zans"
#

CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "zans"
#

