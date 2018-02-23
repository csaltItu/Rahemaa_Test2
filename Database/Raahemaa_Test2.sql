# Host: 127.0.0.1  (Version 5.6.24)
# Date: 2017-07-31 16:43:46
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "feedback"
#

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `Call_ID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `Call_ID` (`Call_ID`),
  KEY `uid_2` (`uid`,`Call_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for table "log"
#

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `action` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Call_ID` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63495 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Structure for table "menu_log"
#

DROP TABLE IF EXISTS `menu_log`;
CREATE TABLE `menu_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `call_id` int(11) NOT NULL,
  `file_status` bit(1) NOT NULL,
  `duration` int(11) NOT NULL,
  `partial_menu` bit(1) NOT NULL,
  `complete_menu` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Structure for table "quiz"
#

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(11) NOT NULL,
  `Call_ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `correct` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26779 DEFAULT CHARSET=latin1;
