/*
Navicat MySQL Data Transfer

Source Server         : Homestead
Source Server Version : 50721
Source Host           : 192.168.10.100:3306
Source Database       : restapp

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-14 18:10:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `choices`
-- ----------------------------
DROP TABLE IF EXISTS `choices`;
CREATE TABLE `choices` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `questions_id` int(20) unsigned NOT NULL,
  `choice` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of choices
-- ----------------------------
INSERT INTO `choices` VALUES ('1', '1', 'Ward Representative');
INSERT INTO `choices` VALUES ('2', '1', 'Senator');
INSERT INTO `choices` VALUES ('3', '1', 'Governor');
INSERT INTO `choices` VALUES ('4', '1', 'Member of Paliament');
INSERT INTO `choices` VALUES ('5', '2', 'Chief Justice');
INSERT INTO `choices` VALUES ('6', '2', 'Chief Whip');
INSERT INTO `choices` VALUES ('7', '2', 'Attorney General');
INSERT INTO `choices` VALUES ('8', '2', 'Head of the Civil Service');
INSERT INTO `choices` VALUES ('9', '3', 'Spears');
INSERT INTO `choices` VALUES ('10', '3', 'A Cockerel');
INSERT INTO `choices` VALUES ('11', '3', 'An Axe');
INSERT INTO `choices` VALUES ('12', '3', 'The Nyayo Motto');
INSERT INTO `choices` VALUES ('13', '4', 'Christian Marriage');
INSERT INTO `choices` VALUES ('14', '4', 'Hindus Marriage');
INSERT INTO `choices` VALUES ('15', '4', 'Islamic Marriage');
INSERT INTO `choices` VALUES ('16', '4', 'Civil Marriage');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_05_14_101521_adds_api_token_to_users_table', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `answer_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'The senior most county official in Kenya is?', '3');
INSERT INTO `questions` VALUES ('2', 'The chief legal advisor to the government of Kenya is the:', '7');
INSERT INTO `questions` VALUES ('3', 'Which of these items is not found in our Kenyan coat of arms?', '12');
INSERT INTO `questions` VALUES ('4', 'Which type of these marriages allows polygamy?', '15');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Safaricom', 'user@saf.com', '$2y$10$Zu2uqxTpn1K219r8nYckdePnsbRarmLVoCe3fZNBwijUSAKRauZ.y', null, '2018-05-14 11:07:37', '2018-05-14 11:07:38', '41UkqILubMuzdmgP3wMHZZLD7ztVPUFrA8aoEcUUELqHzyNtoDTLsNHIIJmP');
