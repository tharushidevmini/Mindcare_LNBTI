-- MindCare database backup
-- Generated: 2026-08-06 02:57:46
-- Database: mindcare_db

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table: academic_relief_requests
-- ----------------------------
DROP TABLE IF EXISTS `academic_relief_requests`;
CREATE TABLE `academic_relief_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `accommodation_type` varchar(200) NOT NULL,
  `forwarded_by_id` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `forwarded_by_id` (`forwarded_by_id`),
  CONSTRAINT `academic_relief_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  CONSTRAINT `academic_relief_requests_ibfk_2` FOREIGN KEY (`forwarded_by_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `academic_relief_requests` (`id`,`student_id`,`token`,`accommodation_type`,`forwarded_by_id`,`status`,`reviewed_by`,`reviewed_at`,`created_at`) VALUES ('1','2','STU0001','Assignment Deadline Extension (7 days)','4','pending',NULL,NULL,'2026-06-20 12:14:16');

-- ----------------------------
-- Table: ai_chat_messages
-- ----------------------------
DROP TABLE IF EXISTS `ai_chat_messages`;
CREATE TABLE `ai_chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` enum('user','assistant') NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ai_chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('1','2','user','I feel anxious','2026-07-31 18:36:47');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('2','2','user','HI','2026-07-31 18:36:52');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('3','2','user','i need support','2026-07-31 18:38:21');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('4','2','user','i need a support from u..','2026-07-31 18:42:44');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('5','2','assistant','I\'m having a little trouble connecting right now. If you need immediate support, call Sumithrayo: 011-2692909 💚','2026-07-31 18:42:45');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('6','2','user','hi','2026-07-31 18:43:55');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('7','2','assistant','I\'m having a little trouble connecting right now. If you need immediate support, call Sumithrayo: 011-2692909 💚','2026-07-31 18:43:55');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('8','2','user','hi','2026-07-31 18:48:51');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('9','2','assistant','I\'m having a little trouble connecting right now. If you need immediate support, call Sumithrayo: 011-2692909 💚','2026-07-31 18:48:52');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('10','2','user','HI','2026-07-31 19:25:31');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('11','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-07-31 19:25:35');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('12','2','user','IM NOT Well.so stressed.my exams are coming tomorrow.what can I do to manage this situation.','2026-07-31 19:34:21');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('13','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-07-31 19:34:21');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('14','2','user','HI','2026-07-31 19:50:27');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('15','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-07-31 19:50:28');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('16','2','user','TEST','2026-07-31 19:54:34');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('17','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-07-31 19:54:35');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('18','2','user','Hello.','2026-07-31 20:00:21');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('19','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-07-31 20:00:31');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('20','2','user','HI','2026-08-01 21:52:49');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('21','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-08-01 21:53:00');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('22','2','user','HI','2026-08-01 21:54:55');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('23','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-08-01 21:55:09');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('24','2','user','I NEED SOME?','2026-08-01 22:02:17');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('25','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-08-01 22:02:29');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('26','2','user','HI','2026-08-01 22:04:34');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('27','2','assistant','I\'m getting a lot of requests right now, but I don\'t want to leave you without support. While I catch up, please reach out to a real counselor or try a calming exercise — you deserve care right now. 💚','2026-08-01 22:04:47');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('28','2','user','HELLO','2026-08-01 22:29:35');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('29','2','assistant','Hello! 🙏 I\'m here to listen and help. You mentioned earlier that you\'re feeling stressed about your exams, which are coming up tomorrow. That can be really overwhelming. Would you like to talk about what\'s been going on and how you\'re feeling? Sometimes sharing your thoughts and emotions can help you feel a bit better. 💬','2026-08-01 22:29:36');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('30','2','user','i\'m so stressed','2026-08-01 22:40:30');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('31','2','assistant','I can totally understand why you\'d be feeling stressed with your exams coming up tomorrow 😬. It\'s normal to feel that way, and it doesn\'t mean you\'re not prepared. Take a deep breath with me 🌟... inhale... exhale... Sometimes, our brains can get a bit cluttered with worries and \"what-ifs\". Can you tell me what\'s been going through your mind that\'s making you feel stressed? Is it a specific subject, or something else? 💡','2026-08-01 22:40:53');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('32','2','user','Amoda rashmika is hurting me','2026-08-04 09:48:07');
INSERT INTO `ai_chat_messages` (`id`,`user_id`,`role`,`content`,`created_at`) VALUES ('33','2','assistant','I\'m so sorry to hear that Amoda Rashmika is hurting you 😔. It takes a lot of courage to share something like that. It sounds like you might be going through a tough time, and I\'m here to listen and offer support 🤗. Can you tell me more about what\'s been going on with Amoda Rashmika? How are they hurting you, and how are you feeling about it? Remember, you don\'t have to face this alone 🌟. If you need to talk to someone who can help, I can also suggest reaching out to a counselor or a trusted adult ⚊️.','2026-08-04 09:48:08');

-- ----------------------------
-- Table: appointments
-- ----------------------------
DROP TABLE IF EXISTS `appointments`;
CREATE TABLE `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `session_type` enum('physical','online') NOT NULL,
  `preferred_date` date NOT NULL,
  `preferred_time` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('pending','confirmed','cancelled','completed') DEFAULT 'pending',
  `reschedule_reason` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `counselor_id` (`counselor_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('2','2','5',NULL,'physical','2026-06-24','2:00 PM','Test','cancelled','','2026-06-24 13:37:25');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('4','2','5',NULL,'online','2026-06-25','3:00 PM','','cancelled','','2026-06-25 09:56:01');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('6','2','5',NULL,'physical','2026-06-25','2:30 PM','','cancelled','','2026-06-25 10:00:25');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('7','2','5',NULL,'physical','2026-06-25','3:00 PM','Test block','cancelled','','2026-06-25 10:03:16');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('8','2','5',NULL,'online','2026-06-25','9:30 AM','','cancelled','','2026-06-25 10:08:06');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('11','1','4',NULL,'physical','2026-06-25','11:00 AM','emergency block','','','2026-06-25 10:20:50');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('12','2','5',NULL,'online','2026-06-25','2:00 PM','','cancelled','','2026-06-25 11:43:47');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('13','2','2',NULL,'physical','2026-06-26','10:00 AM','Exam stress','cancelled','','2026-06-26 03:31:39');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('14','2','5',NULL,'physical','2026-06-28','9:00 AM','','cancelled','','2026-06-28 13:59:26');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('18','2','5','58','physical','2026-08-02','2:00 PM','GUARDIAN EMERGENCY BOOKING: vvgg','cancelled','','2026-08-02 18:49:00');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('19','2','5','58','physical','2026-08-02','2:00 PM','GUARDIAN EMERGENCY BOOKING: vvgg','cancelled','','2026-08-02 18:49:10');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('21','2','5',NULL,'physical','2026-08-05','3:30 PM','','cancelled','','2026-08-05 10:15:02');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('22','2','5',NULL,'physical','2026-08-05','3:00 PM','','cancelled','','2026-08-05 11:50:28');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('24','2','5','80','physical','2026-08-05','4:00 PM','GUARDIAN EMERGENCY BOOKING: hghg','cancelled','','2026-08-05 12:09:32');
INSERT INTO `appointments` (`id`,`student_id`,`counselor_id`,`guardian_id`,`session_type`,`preferred_date`,`preferred_time`,`notes`,`status`,`reschedule_reason`,`created_at`) VALUES ('33','2','4',NULL,'physical','2026-08-06','2:30 PM','','cancelled','busy','2026-08-06 00:19:09');

-- ----------------------------
-- Table: blocked_slots
-- ----------------------------
DROP TABLE IF EXISTS `blocked_slots`;
CREATE TABLE `blocked_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counselor_id` int(11) NOT NULL,
  `block_date` date NOT NULL,
  `block_time` varchar(20) NOT NULL,
  `reason` varchar(255) DEFAULT 'Reserved',
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_slot` (`counselor_id`,`block_date`,`block_time`),
  CONSTRAINT `blocked_slots_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2050 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1027','5','2026-08-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1028','5','2026-08-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1029','5','2026-08-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1030','5','2026-08-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1031','5','2026-08-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1032','5','2026-08-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1033','5','2026-08-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1034','5','2026-08-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1035','5','2026-08-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1036','5','2026-08-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1037','5','2026-08-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1038','5','2026-08-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1039','5','2026-08-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1041','4','2026-08-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1042','4','2026-08-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1043','4','2026-08-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1044','4','2026-08-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1045','4','2026-08-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1046','4','2026-08-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1047','4','2026-08-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1048','4','2026-08-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1049','4','2026-08-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1050','4','2026-08-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1051','4','2026-08-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1052','4','2026-08-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1053','5','2026-08-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1054','5','2026-08-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1055','5','2026-08-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1056','5','2026-08-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1057','5','2026-08-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1058','5','2026-08-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1059','5','2026-08-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1060','5','2026-08-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1061','5','2026-08-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1062','5','2026-08-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1063','5','2026-08-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1064','5','2026-08-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1065','5','2026-08-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1066','4','2026-08-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1067','4','2026-08-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1068','4','2026-08-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1069','4','2026-08-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1070','4','2026-08-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1071','4','2026-08-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1072','4','2026-08-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1073','4','2026-08-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1074','4','2026-08-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1075','4','2026-08-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1076','4','2026-08-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1077','4','2026-08-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1078','4','2026-08-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1079','5','2026-08-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1080','5','2026-09-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1081','5','2026-09-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1082','5','2026-09-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1083','5','2026-09-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1084','5','2026-09-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1085','5','2026-09-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1086','5','2026-09-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1087','5','2026-09-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1088','5','2026-09-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1089','5','2026-09-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1090','5','2026-09-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1091','5','2026-09-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1092','4','2026-08-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1093','4','2026-09-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1094','4','2026-09-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1095','4','2026-09-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1096','4','2026-09-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1097','4','2026-09-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1098','4','2026-09-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1099','4','2026-09-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1100','4','2026-09-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1101','4','2026-09-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1102','4','2026-09-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1103','4','2026-09-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1104','4','2026-09-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1105','5','2026-09-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1106','5','2026-09-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1107','5','2026-09-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1108','5','2026-09-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1109','5','2026-09-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1110','5','2026-09-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1111','5','2026-09-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1112','5','2026-09-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1113','5','2026-09-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1114','5','2026-09-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1115','5','2026-09-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1116','5','2026-09-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1117','5','2026-09-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1118','4','2026-09-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1119','4','2026-09-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1120','4','2026-09-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1121','4','2026-09-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1122','4','2026-09-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1123','4','2026-09-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1124','4','2026-09-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1125','4','2026-09-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1126','4','2026-09-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1127','4','2026-09-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1128','4','2026-09-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1129','4','2026-09-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1130','4','2026-09-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1131','5','2026-09-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1132','5','2026-09-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1133','5','2026-09-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1134','5','2026-09-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1135','5','2026-09-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1136','5','2026-10-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1137','5','2026-10-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1138','5','2026-10-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1139','5','2026-10-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1140','5','2026-10-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1141','5','2026-10-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1142','5','2026-10-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1143','5','2026-10-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1144','4','2026-09-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1145','4','2026-09-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1146','4','2026-09-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1147','4','2026-09-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1148','4','2026-09-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1149','4','2026-10-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1150','4','2026-10-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1151','4','2026-10-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1152','4','2026-10-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1153','4','2026-10-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1154','4','2026-10-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1155','4','2026-10-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1156','4','2026-10-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1157','5','2026-10-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1158','5','2026-10-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1159','5','2026-10-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1160','5','2026-10-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1161','5','2026-10-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1162','5','2026-10-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1163','5','2026-10-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1164','5','2026-10-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1165','5','2026-10-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1166','5','2026-10-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1167','5','2026-10-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1168','5','2026-10-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1169','5','2026-10-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1170','4','2026-10-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1171','4','2026-10-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1172','4','2026-10-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1173','4','2026-10-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1174','4','2026-10-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1175','4','2026-10-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1176','4','2026-10-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1177','4','2026-10-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1178','4','2026-10-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1179','4','2026-10-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1180','4','2026-10-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1181','4','2026-10-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1182','4','2026-10-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1183','5','2026-10-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1184','5','2026-10-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1185','5','2026-10-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1186','5','2026-10-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1187','5','2026-10-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1188','5','2026-10-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1189','5','2026-10-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1190','5','2026-10-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1191','5','2026-10-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1192','5','2026-10-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1193','5','2026-11-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1194','5','2026-11-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1195','5','2026-11-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1196','4','2026-10-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1197','4','2026-10-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1198','4','2026-10-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1199','4','2026-10-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1200','4','2026-10-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1201','4','2026-10-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1202','4','2026-10-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1203','4','2026-10-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1204','4','2026-10-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1205','4','2026-10-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1206','4','2026-11-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1207','4','2026-11-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1208','4','2026-11-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1209','5','2026-11-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1210','5','2026-11-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1211','5','2026-11-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1212','5','2026-11-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1213','5','2026-11-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1214','5','2026-11-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1215','5','2026-11-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1216','5','2026-11-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1217','5','2026-11-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1218','5','2026-11-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1219','5','2026-11-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1220','5','2026-11-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1221','5','2026-11-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1222','4','2026-11-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1223','4','2026-11-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1224','4','2026-11-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1225','4','2026-11-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1226','4','2026-11-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1227','4','2026-11-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1228','4','2026-11-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1229','4','2026-11-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1230','4','2026-11-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1231','4','2026-11-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1232','4','2026-11-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1233','4','2026-11-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1234','4','2026-11-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1235','5','2026-11-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1236','5','2026-11-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1237','5','2026-11-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1238','5','2026-11-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1239','5','2026-11-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1240','5','2026-11-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1241','5','2026-11-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1242','5','2026-11-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1243','5','2026-11-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1244','5','2026-11-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1245','5','2026-11-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1246','5','2026-11-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1247','5','2026-11-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1248','4','2026-11-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1249','4','2026-11-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1250','4','2026-11-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1251','4','2026-11-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1252','4','2026-11-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1253','4','2026-11-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1254','4','2026-11-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1255','4','2026-11-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1256','4','2026-11-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1257','4','2026-11-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1258','4','2026-11-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1259','4','2026-11-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1260','4','2026-11-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1261','5','2026-11-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1262','5','2026-12-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1263','5','2026-12-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1264','5','2026-12-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1265','5','2026-12-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1266','5','2026-12-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1267','5','2026-12-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1268','5','2026-12-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1269','5','2026-12-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1270','5','2026-12-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1271','5','2026-12-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1272','5','2026-12-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1273','5','2026-12-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1274','4','2026-11-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1275','4','2026-12-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1276','4','2026-12-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1277','4','2026-12-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1278','4','2026-12-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1279','4','2026-12-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1280','4','2026-12-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1281','4','2026-12-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1282','4','2026-12-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1283','4','2026-12-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1284','4','2026-12-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1285','4','2026-12-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1286','4','2026-12-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1287','5','2026-12-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1288','5','2026-12-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1289','5','2026-12-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1290','5','2026-12-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1291','5','2026-12-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1292','5','2026-12-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1293','5','2026-12-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1294','5','2026-12-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1295','5','2026-12-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1296','5','2026-12-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1297','5','2026-12-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1298','5','2026-12-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1299','5','2026-12-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1300','4','2026-12-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1301','4','2026-12-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1302','4','2026-12-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1303','4','2026-12-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1304','4','2026-12-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1305','4','2026-12-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1306','4','2026-12-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1307','4','2026-12-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1308','4','2026-12-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1309','4','2026-12-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1310','4','2026-12-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1311','4','2026-12-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1312','4','2026-12-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1313','5','2026-12-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1314','5','2026-12-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1315','5','2026-12-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1316','5','2026-12-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1317','5','2026-12-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1318','5','2026-12-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1319','5','2027-01-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1320','5','2027-01-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1321','5','2027-01-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1322','5','2027-01-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1323','5','2027-01-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1324','5','2027-01-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1325','5','2027-01-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1326','4','2026-12-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1327','4','2026-12-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1328','4','2026-12-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1329','4','2026-12-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1330','4','2026-12-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1331','4','2026-12-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1332','4','2027-01-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1333','4','2027-01-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1334','4','2027-01-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1335','4','2027-01-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1336','4','2027-01-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1337','4','2027-01-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1338','4','2027-01-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1339','5','2027-01-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1340','5','2027-01-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1341','5','2027-01-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1342','5','2027-01-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1343','5','2027-01-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1344','5','2027-01-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1345','5','2027-01-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1346','5','2027-01-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1347','5','2027-01-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1348','5','2027-01-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1349','5','2027-01-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1350','5','2027-01-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1351','5','2027-01-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1352','4','2027-01-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1353','4','2027-01-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1354','4','2027-01-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1355','4','2027-01-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1356','4','2027-01-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1357','4','2027-01-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1358','4','2027-01-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1359','4','2027-01-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1360','4','2027-01-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1361','4','2027-01-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1362','4','2027-01-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1363','4','2027-01-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1364','4','2027-01-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1365','5','2027-01-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1366','5','2027-01-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1367','5','2027-01-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1368','5','2027-01-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1369','5','2027-01-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1370','5','2027-01-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1371','5','2027-01-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1372','5','2027-01-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1373','5','2027-01-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1374','5','2027-01-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1375','5','2027-01-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1376','5','2027-02-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1377','5','2027-02-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1378','4','2027-01-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1379','4','2027-01-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1380','4','2027-01-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1381','4','2027-01-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1382','4','2027-01-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1383','4','2027-01-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1384','4','2027-01-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1385','4','2027-01-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1386','4','2027-01-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1387','4','2027-01-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1388','4','2027-01-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1389','4','2027-02-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1390','4','2027-02-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1391','5','2027-02-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1392','5','2027-02-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1393','5','2027-02-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1394','5','2027-02-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1395','5','2027-02-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1396','5','2027-02-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1397','5','2027-02-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1398','5','2027-02-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1399','5','2027-02-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1400','5','2027-02-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1401','5','2027-02-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1402','5','2027-02-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1403','5','2027-02-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1404','4','2027-02-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1405','4','2027-02-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1406','4','2027-02-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1407','4','2027-02-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1408','4','2027-02-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1409','4','2027-02-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1410','4','2027-02-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1411','4','2027-02-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1412','4','2027-02-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1413','4','2027-02-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1414','4','2027-02-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1415','4','2027-02-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1416','4','2027-02-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1417','5','2027-02-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1418','5','2027-02-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1419','5','2027-02-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1420','5','2027-02-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1421','5','2027-02-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1422','5','2027-02-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1423','5','2027-02-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1424','5','2027-02-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1425','5','2027-02-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1426','5','2027-02-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1427','5','2027-02-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1428','5','2027-02-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1429','5','2027-02-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1430','4','2027-02-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1431','4','2027-02-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1432','4','2027-02-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1433','4','2027-02-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1434','4','2027-02-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1435','4','2027-02-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1436','4','2027-02-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1437','4','2027-02-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1438','4','2027-02-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1439','4','2027-02-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1440','4','2027-02-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1441','4','2027-02-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1442','4','2027-02-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1443','5','2027-03-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1444','5','2027-03-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1445','5','2027-03-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1446','5','2027-03-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1447','5','2027-03-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1448','5','2027-03-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1449','5','2027-03-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1450','5','2027-03-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1451','5','2027-03-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1452','5','2027-03-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1453','5','2027-03-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1454','5','2027-03-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1455','5','2027-03-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1456','4','2027-03-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1457','4','2027-03-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1458','4','2027-03-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1459','4','2027-03-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1460','4','2027-03-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1461','4','2027-03-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1462','4','2027-03-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1463','4','2027-03-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1464','4','2027-03-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1465','4','2027-03-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1466','4','2027-03-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1467','4','2027-03-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1468','4','2027-03-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1469','5','2027-03-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1470','5','2027-03-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1471','5','2027-03-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1472','5','2027-03-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1473','5','2027-03-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1474','5','2027-03-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1475','5','2027-03-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1476','5','2027-03-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1477','5','2027-03-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1478','5','2027-03-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1479','5','2027-03-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1480','5','2027-03-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1481','5','2027-03-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1482','4','2027-03-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1483','4','2027-03-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1484','4','2027-03-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1485','4','2027-03-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1486','4','2027-03-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1487','4','2027-03-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1488','4','2027-03-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1489','4','2027-03-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1490','4','2027-03-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1491','4','2027-03-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1492','4','2027-03-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1493','4','2027-03-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1494','4','2027-03-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1495','5','2027-03-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1496','5','2027-03-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1497','5','2027-03-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1498','5','2027-03-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1499','5','2027-03-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1500','5','2027-04-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1501','5','2027-04-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1502','5','2027-04-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1503','5','2027-04-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1504','5','2027-04-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1505','5','2027-04-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1506','5','2027-04-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1507','5','2027-04-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1508','4','2027-03-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1509','4','2027-03-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1510','4','2027-03-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1511','4','2027-03-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1512','4','2027-03-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1513','4','2027-04-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1514','4','2027-04-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1515','4','2027-04-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1516','4','2027-04-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1517','4','2027-04-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1518','4','2027-04-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1519','4','2027-04-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1520','4','2027-04-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1521','5','2027-04-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1522','5','2027-04-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1523','5','2027-04-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1524','5','2027-04-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1525','5','2027-04-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1526','5','2027-04-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1527','5','2027-04-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1528','5','2027-04-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1529','5','2027-04-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1530','5','2027-04-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1531','5','2027-04-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1532','5','2027-04-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1533','5','2027-04-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1534','4','2027-04-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1535','4','2027-04-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1536','4','2027-04-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1537','4','2027-04-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1538','4','2027-04-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1539','4','2027-04-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1540','4','2027-04-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1541','4','2027-04-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1542','4','2027-04-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1543','4','2027-04-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1544','4','2027-04-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1545','4','2027-04-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1546','4','2027-04-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1547','5','2027-04-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1548','5','2027-04-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1549','5','2027-04-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1550','5','2027-04-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1551','5','2027-04-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1552','5','2027-04-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1553','5','2027-04-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1554','5','2027-04-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1555','5','2027-04-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1556','5','2027-05-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1557','5','2027-05-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1558','5','2027-05-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1559','5','2027-05-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1560','4','2027-04-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1561','4','2027-04-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1562','4','2027-04-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1563','4','2027-04-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1564','4','2027-04-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1565','4','2027-04-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1566','4','2027-04-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1567','4','2027-04-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1568','4','2027-04-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1569','4','2027-05-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1570','4','2027-05-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1571','4','2027-05-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1572','4','2027-05-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1573','5','2027-05-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1574','5','2027-05-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1575','5','2027-05-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1576','5','2027-05-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1577','5','2027-05-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1578','5','2027-05-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1579','5','2027-05-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1580','5','2027-05-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1581','5','2027-05-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1582','5','2027-05-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1583','5','2027-05-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1584','5','2027-05-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1585','5','2027-05-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1586','4','2027-05-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1587','4','2027-05-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1588','4','2027-05-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1589','4','2027-05-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1590','4','2027-05-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1591','4','2027-05-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1592','4','2027-05-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1593','4','2027-05-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1594','4','2027-05-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1595','4','2027-05-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1596','4','2027-05-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1597','4','2027-05-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1598','4','2027-05-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1599','5','2027-05-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1600','5','2027-05-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1601','5','2027-05-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1602','5','2027-05-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1603','5','2027-05-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1604','5','2027-05-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1605','5','2027-05-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1606','5','2027-05-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1607','5','2027-05-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1608','5','2027-05-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1609','5','2027-05-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1610','5','2027-05-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1611','5','2027-05-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1612','4','2027-05-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1613','4','2027-05-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1614','4','2027-05-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1615','4','2027-05-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1616','4','2027-05-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1617','4','2027-05-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1618','4','2027-05-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1619','4','2027-05-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1620','4','2027-05-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1621','4','2027-05-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1622','4','2027-05-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1623','4','2027-05-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1624','4','2027-05-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1625','5','2027-05-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1626','5','2027-06-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1627','5','2027-06-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1628','5','2027-06-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1629','5','2027-06-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1630','5','2027-06-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1631','5','2027-06-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1632','5','2027-06-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1633','5','2027-06-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1634','5','2027-06-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1635','5','2027-06-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1636','5','2027-06-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1637','5','2027-06-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1638','4','2027-05-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1639','4','2027-06-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1640','4','2027-06-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1641','4','2027-06-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1642','4','2027-06-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1643','4','2027-06-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1644','4','2027-06-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1645','4','2027-06-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1646','4','2027-06-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1647','4','2027-06-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1648','4','2027-06-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1649','4','2027-06-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1650','4','2027-06-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1651','5','2027-06-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1652','5','2027-06-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1653','5','2027-06-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1654','5','2027-06-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1655','5','2027-06-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1656','5','2027-06-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1657','5','2027-06-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1658','5','2027-06-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1659','5','2027-06-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1660','5','2027-06-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1661','5','2027-06-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1662','5','2027-06-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1663','5','2027-06-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1664','4','2027-06-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1665','4','2027-06-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1666','4','2027-06-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1667','4','2027-06-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1668','4','2027-06-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1669','4','2027-06-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1670','4','2027-06-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1671','4','2027-06-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1672','4','2027-06-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1673','4','2027-06-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1674','4','2027-06-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1675','4','2027-06-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1676','4','2027-06-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1677','5','2027-06-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1678','5','2027-06-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1679','5','2027-06-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1680','5','2027-06-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1681','5','2027-06-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1682','5','2027-07-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1683','5','2027-07-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1684','5','2027-07-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1685','5','2027-07-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1686','5','2027-07-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1687','5','2027-07-06','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1688','5','2027-07-07','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1689','5','2027-07-08','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1690','4','2027-06-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1691','4','2027-06-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1692','4','2027-06-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1693','4','2027-06-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1694','4','2027-06-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1695','4','2027-07-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1696','4','2027-07-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1697','4','2027-07-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1698','4','2027-07-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1699','4','2027-07-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1700','4','2027-07-06','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1701','4','2027-07-07','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1702','4','2027-07-08','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1703','5','2027-07-09','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1704','5','2027-07-10','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1705','5','2027-07-11','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1706','5','2027-07-12','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1707','5','2027-07-13','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1708','5','2027-07-14','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1709','5','2027-07-15','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1710','5','2027-07-16','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1711','5','2027-07-17','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1712','5','2027-07-18','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1713','5','2027-07-19','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1714','5','2027-07-20','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1715','5','2027-07-21','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1716','4','2027-07-09','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1717','4','2027-07-10','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1718','4','2027-07-11','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1719','4','2027-07-12','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1720','4','2027-07-13','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1721','4','2027-07-14','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1722','4','2027-07-15','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1723','4','2027-07-16','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1724','4','2027-07-17','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1725','4','2027-07-18','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1726','4','2027-07-19','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1727','4','2027-07-20','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1728','4','2027-07-21','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1729','5','2027-07-22','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1730','5','2027-07-23','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1731','5','2027-07-24','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1732','5','2027-07-25','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1733','5','2027-07-26','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1734','5','2027-07-27','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1735','5','2027-07-28','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1736','5','2027-07-29','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1737','5','2027-07-30','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1738','5','2027-07-31','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1739','5','2027-08-01','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1740','5','2027-08-02','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1741','5','2027-08-03','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1742','4','2027-07-22','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1743','4','2027-07-23','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1744','4','2027-07-24','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1745','4','2027-07-25','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1746','4','2027-07-26','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1747','4','2027-07-27','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1748','4','2027-07-28','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1749','4','2027-07-29','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1750','4','2027-07-30','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1751','4','2027-07-31','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1752','4','2027-08-01','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1753','4','2027-08-02','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1754','4','2027-08-03','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1755','5','2027-08-04','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1756','5','2027-08-05','9:30 AM','Emergency reserve — Miss Mekala','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1757','4','2027-08-04','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');
INSERT INTO `blocked_slots` (`id`,`counselor_id`,`block_date`,`block_time`,`reason`,`created_at`) VALUES ('1758','4','2027-08-05','2:00 PM','Emergency reserve — Miss Dhanushi','2026-08-05 23:34:06');

-- ----------------------------
-- Table: counselor_notes
-- ----------------------------
DROP TABLE IF EXISTS `counselor_notes`;
CREATE TABLE `counselor_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counselor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `notes` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `counselor_id` (`counselor_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `counselor_notes_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `counselor_notes_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `counselor_notes` (`id`,`counselor_id`,`student_id`,`notes`,`created_at`) VALUES ('1','4','2','ghhgjhgg','2026-08-05 14:52:31');
INSERT INTO `counselor_notes` (`id`,`counselor_id`,`student_id`,`notes`,`created_at`) VALUES ('2','4','7','HESHALI ia a good girl','2026-07-31 17:29:15');
INSERT INTO `counselor_notes` (`id`,`counselor_id`,`student_id`,`notes`,`created_at`) VALUES ('3','2','2','jhjhjh','2026-08-04 10:47:09');

-- ----------------------------
-- Table: daily_checkins
-- ----------------------------
DROP TABLE IF EXISTS `daily_checkins`;
CREATE TABLE `daily_checkins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sleep_quality` tinyint(4) DEFAULT NULL,
  `energy_level` tinyint(4) DEFAULT NULL,
  `stress_level` tinyint(4) DEFAULT NULL,
  `anxiety_level` tinyint(4) DEFAULT NULL,
  `social_engagement` tinyint(4) DEFAULT NULL,
  `mood_emoji` varchar(10) DEFAULT NULL,
  `checkin_date` date NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `q1_interest` tinyint(4) DEFAULT NULL,
  `q2_mood` tinyint(4) DEFAULT NULL,
  `q3_sleep` tinyint(4) DEFAULT NULL,
  `q4_energy` tinyint(4) DEFAULT NULL,
  `q5_appetite` tinyint(4) DEFAULT NULL,
  `q6_selfworth` tinyint(4) DEFAULT NULL,
  `q7_concentration` tinyint(4) DEFAULT NULL,
  `q8_restlessness` tinyint(4) DEFAULT NULL,
  `q9_selfharm` tinyint(4) DEFAULT NULL,
  `total_score` tinyint(4) DEFAULT NULL,
  `severity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `daily_checkins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('1','2','3','3','3','3','3','','2026-06-24','2026-06-24 11:19:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('2','2','3','3','3','3','3','','2026-06-25','2026-06-25 09:39:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('3','4','3','3','3','3','3','','2026-06-25','2026-06-25 10:55:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('4','2','1','1','5','5','1','','2026-06-28','2026-06-28 13:55:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('5','2','3','2','4','3','2','😢','2026-06-30','2026-06-30 08:45:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('6','2','3','2','3','3','3','','2026-07-06','2026-07-06 11:11:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('7','2','3','3','3','3','3','','2026-07-10','2026-07-10 10:09:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('8','2','3','3','3','3','3','','2026-08-01','2026-08-01 23:03:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('9','2',NULL,NULL,NULL,NULL,NULL,'😢','2026-08-02','2026-08-02 21:58:12','3','0','0','0','0','1','0','0','2','6','Mild');
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('10','2',NULL,NULL,NULL,NULL,NULL,'','2026-08-03','2026-08-03 16:50:46','1','2','2','0','2','1','1','2','1','12','Moderate');
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('11','2',NULL,NULL,NULL,NULL,NULL,'😐','2026-08-04','2026-08-04 09:47:20','3','3','3','2','0','0','3','0','3','17','Moderately severe');
INSERT INTO `daily_checkins` (`id`,`user_id`,`sleep_quality`,`energy_level`,`stress_level`,`anxiety_level`,`social_engagement`,`mood_emoji`,`checkin_date`,`created_at`,`q1_interest`,`q2_mood`,`q3_sleep`,`q4_energy`,`q5_appetite`,`q6_selfworth`,`q7_concentration`,`q8_restlessness`,`q9_selfharm`,`total_score`,`severity`) VALUES ('12','2',NULL,NULL,NULL,NULL,NULL,'','2026-08-05','2026-08-05 14:43:58','1','2','0','1','0','0','1','2','0','7','Mild');

-- ----------------------------
-- Table: diary_entries
-- ----------------------------
DROP TABLE IF EXISTS `diary_entries`;
CREATE TABLE `diary_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text NOT NULL,
  `share_with_counselor` tinyint(1) DEFAULT 0,
  `mood_emoji` varchar(10) DEFAULT NULL,
  `entry_date` date NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_pinned` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `diary_entries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('1','2','MONDAY','7f9XuGSIvrfPtev3pkl1hQ==::/SVa3NFiOGsX9EoTxaBL84weZW4GoZXiQxc2Ro71Feo=','1',NULL,'2026-06-24','2026-06-24 11:43:24','0');
INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('6','2','mm','htjvlBnZ1Uf3l5SAnJgvdw==::u8smReyeRztjsmtUBlRIZw==','1',NULL,'2026-08-04','2026-08-04 21:33:31','0');
INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('7','2','nnnnn','SH4SnygxreVTL6S7+izBgg==::DnIn5V9s4kbScXyTHD50BQ==','1',NULL,'2026-08-04','2026-08-04 21:35:30','0');
INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('10','2','Bad day','ro7XeG58M77JYp6COs65/w==::CC7ObOx7hfWLOCFWJSKMK+1Tn7iMh1Jg0R2Oc10+/TJuXZMj+o+t2rF/4J4yKnjC','0',NULL,'2026-08-05','2026-08-06 00:49:44','0');
INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('11','2','nn','wYEsChxxeWjKtBOjRt+K0w==::F+P1BXT62zROmPvYrmgVzA==','0',NULL,'2026-08-05','2026-08-06 00:52:09','0');
INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('12','2','hel','RiRIFUs0BH0PT8kHJY4UjA==::rlmJGzWjE5X79T3lQFsG8g==','0',NULL,'2026-08-05','2026-08-06 00:52:58','0');
INSERT INTO `diary_entries` (`id`,`user_id`,`title`,`content`,`share_with_counselor`,`mood_emoji`,`entry_date`,`created_at`,`is_pinned`) VALUES ('13','2','kkkkkk','5SkyhG/OTJUr7wUmzEWqVA==::2pF2w0+VYu4XVlJIusgDRIbB8D8uDlXUBmyicZUOSLByMqvK0kXG9g7Y2wTVktnk','0',NULL,'2026-08-05','2026-08-06 00:54:43','0');

-- ----------------------------
-- Table: forum_posts
-- ----------------------------
DROP TABLE IF EXISTS `forum_posts`;
CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `anon_key` varchar(20) NOT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `is_reported` tinyint(1) DEFAULT 0,
  `is_removed` tinyint(1) DEFAULT 0,
  `is_approved` tinyint(1) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('1','2','User#1234',NULL,'Feeling overwhelmed with assignments this week. Anyone else?','Academic Pressure','1','0','0','0','2026-06-24 17:20:28');
INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('2','4','User#4545',NULL,'wishing your a good day','General','1','0','1','0','2026-06-25 10:57:51');
INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('3','5','User#1123',NULL,'wishing you a good day','General','0','1','0','0','2026-06-25 11:08:45');
INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('4','2','User#1234',NULL,'today is a good day','Exam Stress','0','0','1','0','2026-07-06 11:17:14');
INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('5','2','User#1234',NULL,'hi hhfhf','General','0','0','0','0','2026-07-06 11:21:45');
INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('6','2','User#1234',NULL,'hjhjh','General','0','0','1','0','2026-08-05 11:52:28');
INSERT INTO `forum_posts` (`id`,`user_id`,`anon_key`,`display_name`,`content`,`category`,`is_reported`,`is_removed`,`is_approved`,`likes`,`created_at`) VALUES ('7','2','User#1234',NULL,'hkkkkkk','Relationships','0','0','1','0','2026-08-05 11:53:15');

-- ----------------------------
-- Table: forum_replies
-- ----------------------------
DROP TABLE IF EXISTS `forum_replies`;
CREATE TABLE `forum_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `anon_key` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `forum_replies_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `forum_replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table: guardian_sessions
-- ----------------------------
DROP TABLE IF EXISTS `guardian_sessions`;
CREATE TABLE `guardian_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(20) NOT NULL,
  `student_id` int(11) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `otp_expires` datetime NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('38',NULL,'761314057','2','141564','2026-08-01 19:45:30','0','2026-08-01 23:10:30');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('39',NULL,'heshakaluarachchi@gm','2','134245','2026-08-02 08:39:04','0','2026-08-02 12:04:04');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('40',NULL,'heshakaluarachchi@gm','2','707111','2026-08-02 08:39:11','0','2026-08-02 12:04:11');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('41',NULL,'heshakaluarachchi@gm','2','985014','2026-08-02 08:39:16','0','2026-08-02 12:04:16');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('42',NULL,'heshakaluarachchi@gm','2','142867','2026-08-02 08:39:22','0','2026-08-02 12:04:22');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('43',NULL,'heshakaluarachchi@gm','2','553841','2026-08-02 08:39:28','0','2026-08-02 12:04:28');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('44',NULL,'heshakaluarachchi@gm','2','682706','2026-08-02 08:39:52','0','2026-08-02 12:04:52');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('45',NULL,'heshakaluarachchi@gm','2','781792','2026-08-02 08:39:58','0','2026-08-02 12:04:58');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('46',NULL,'heshakaluarachchi@gm','2','025032','2026-08-02 08:40:20','0','2026-08-02 12:05:20');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('47',NULL,'heshakaluarachchi@gm','2','395274','2026-08-02 12:15:17','0','2026-08-02 12:10:17');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('48',NULL,'heshakaluarachchi@gm','2','954919','2026-08-02 12:15:23','0','2026-08-02 12:10:23');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('49',NULL,'heshakaluarachchi@gm','2','942368','2026-08-02 12:15:29','0','2026-08-02 12:10:29');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('50',NULL,'heshakaluarachchi@gm','2','494963','2026-08-02 12:15:35','0','2026-08-02 12:10:35');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('51',NULL,'heshakaluarachchi@gm','2','830321','2026-08-02 12:15:43','0','2026-08-02 12:10:43');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('52',NULL,'heshakaluarachchi@gm','2','241716','2026-08-02 12:15:48','0','2026-08-02 12:10:48');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('53',NULL,'heshakaluarachchi@gm','2','568306','2026-08-02 12:16:50','0','2026-08-02 12:11:50');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('54',NULL,'heshdon08@gmail.com','2','983164','2026-08-02 12:35:47','1','2026-08-02 12:30:47');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('55',NULL,'heshakaluarachchi@gm','2','976457','2026-08-02 12:44:39','0','2026-08-02 12:39:39');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('56',NULL,'heshakaluarachchi@gm','2','911923','2026-08-02 18:44:49','0','2026-08-02 18:39:49');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('57',NULL,'heshakaluarachchi@gm','2','759711','2026-08-02 18:48:01','0','2026-08-02 18:43:01');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('58',NULL,'heshdon08@gmail.com','2','666426','2026-08-02 18:49:43','1','2026-08-02 18:44:43');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('65',NULL,'sanjaya.uog09@edu.ln','0','257064','2026-08-02 17:02:28','0','2026-08-02 20:27:28');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('66',NULL,'tharushi.uog09@edu.l','0','826031','2026-08-02 17:23:05','0','2026-08-02 20:48:05');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('67',NULL,'amoda.bsc.se03@edu.l','0','547483','2026-08-02 17:33:02','0','2026-08-02 20:58:02');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('68',NULL,'heshali.uog09@edu.ln','2','800077','2026-08-05 05:39:43','0','2026-08-05 05:34:43');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('69',NULL,'heshakaluarachchi@gm','2','070437','2026-08-05 05:41:11','0','2026-08-05 05:36:11');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('70',NULL,'heshdon08@gmasil.com','2','572693','2026-08-05 05:44:06','0','2026-08-05 05:39:06');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('71',NULL,'heshakaluarachchi@gm','2','949875','2026-08-05 05:44:28','0','2026-08-05 05:39:28');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('72',NULL,'heshdon08@gmail.com','2','971465','2026-08-05 05:45:08','1','2026-08-05 05:40:08');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('73',NULL,'heshakaluarachchi@gm','2','598336','2026-08-05 10:09:48','0','2026-08-05 10:04:48');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('74',NULL,'heshakaluarachchi@gm','2','078885','2026-08-05 10:09:56','0','2026-08-05 10:04:56');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('75',NULL,'heshdon08@gmail.com','2','015231','2026-08-05 10:11:19','1','2026-08-05 10:06:19');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('76',NULL,'heshdon08@gmail.com','2','366369','2026-08-05 10:12:03','0','2026-08-05 10:07:03');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('77',NULL,'heshdon08@gmail.com','2','420685','2026-08-05 10:12:31','1','2026-08-05 10:07:31');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('78',NULL,'tharushi.uog09@edu.l','0','193126','2026-08-05 06:44:33','0','2026-08-05 10:09:33');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('79',NULL,'tharushi.uog09@edu.l','0','036241','2026-08-05 06:47:23','0','2026-08-05 10:12:23');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('80',NULL,'heshdon08@gmail.com','2','567667','2026-08-05 12:12:39','1','2026-08-05 12:07:39');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('81',NULL,'heshdon08@gmail.com','2','391092','2026-08-05 15:01:32','1','2026-08-05 14:56:32');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('82',NULL,'heshdon08@gmail.com','2','763615','2026-08-05 18:43:58','0','2026-08-05 18:38:58');
INSERT INTO `guardian_sessions` (`id`,`guardian_name`,`guardian_phone`,`student_id`,`otp_code`,`otp_expires`,`is_verified`,`created_at`) VALUES ('83',NULL,'heshdon08@gmail.com','2','902095','2026-08-05 18:44:06','1','2026-08-05 18:39:06');

-- ----------------------------
-- Table: keyword_rules
-- ----------------------------
DROP TABLE IF EXISTS `keyword_rules`;
CREATE TABLE `keyword_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `language` enum('english','sinhala','tamil') NOT NULL,
  `severity` enum('medium','high','critical') NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('1','kill myself','english','critical','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('2','end my life','english','critical','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('3','no reason to live','english','critical','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('4','want to die','english','high','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('5','suicide','english','high','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('6','self harm','english','high','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('7','hopeless','english','high','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('8','worthless','english','medium','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('9','cant take it','english','medium','1');
INSERT INTO `keyword_rules` (`id`,`keyword`,`language`,`severity`,`is_active`) VALUES ('10','overwhelmed','english','medium','1');

-- ----------------------------
-- Table: meditation_types
-- ----------------------------
DROP TABLE IF EXISTS `meditation_types`;
CREATE TABLE `meditation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `icon` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `steps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`steps`)),
  `guidance` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`guidance`)),
  `sound_url` text DEFAULT NULL,
  `stroke_color` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `meditation_types_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `meditation_types` (`id`,`name`,`icon`,`description`,`steps`,`guidance`,`sound_url`,`stroke_color`,`is_active`,`created_by`,`created_at`) VALUES ('1','Focus','🎯','Clear your mind before studying or an exam','[\"Sit upright and close your eyes gently\",\"Take 3 deep breaths to settle your body\",\"Focus your attention on your breath\",\"When thoughts arise, gently return to your breath\",\"Let clarity build naturally with each breath\"]','[{\"time\":0,\"text\":\"Lets begin. Find a comfortable position and gently close your eyes.\"},{\"time\":10,\"text\":\"Take a long, deep breath in through your nose...\"},{\"time\":35,\"text\":\"Bring your attention to your breath. Simply notice each inhale and exhale.\"},{\"time\":70,\"text\":\"If your mind wanders, gently bring it back.\"},{\"time\":120,\"text\":\"You are doing beautifully. Continue breathing slowly.\"}]','https://cdn.pixabay.com/download/audio/2022/03/10/audio_270f41e9bd.mp3','#2D9B6A','1','1','2026-06-26 03:40:24');
INSERT INTO `meditation_types` (`id`,`name`,`icon`,`description`,`steps`,`guidance`,`sound_url`,`stroke_color`,`is_active`,`created_by`,`created_at`) VALUES ('2','Anxiety Relief','🌿','Calm racing thoughts and reduce tension','[\"Find a comfortable position and relax your shoulders\",\"Place one hand on your chest, one on your belly\",\"Breathe slowly — feel your belly rise first\",\"With each exhale, consciously release tension\",\"Remind yourself: this feeling will pass\"]','[{\"time\":0,\"text\":\"You are safe. Lets begin together.\"},{\"time\":10,\"text\":\"Place one hand gently on your belly. Take a slow breath in...\"},{\"time\":35,\"text\":\"With every breath out, release a little more tension.\"},{\"time\":70,\"text\":\"You dont need to fight your thoughts. Simply let them pass.\"},{\"time\":130,\"text\":\"This feeling will pass. You are safe in this moment.\"}]','https://cdn.pixabay.com/download/audio/2021/09/06/audio_6def761615.mp3','#388E3C','1','1','2026-06-26 03:40:24');
INSERT INTO `meditation_types` (`id`,`name`,`icon`,`description`,`steps`,`guidance`,`sound_url`,`stroke_color`,`is_active`,`created_by`,`created_at`) VALUES ('3','Sleep Prep','🌙','Wind down and prepare for restful sleep','[\"Lie down and let your body sink into the surface\",\"Starting from your toes, relax each part of your body\",\"Breathe slowly — inhale for 4, exhale for 6\",\"Let your thoughts drift without following them\",\"Allow yourself to feel heavy, warm, and safe\"]','[{\"time\":0,\"text\":\"Its time to rest. Lie down and let your body be completely supported.\"},{\"time\":12,\"text\":\"Starting from your toes — let them relax completely.\"},{\"time\":50,\"text\":\"Your shoulders, your arms, your hands... completely at rest.\"},{\"time\":130,\"text\":\"Let your thoughts drift by without following them.\"}]','https://cdn.pixabay.com/download/audio/2022/03/24/audio_946df0d016.mp3','#3D5A99','1','1','2026-06-26 03:40:24');
INSERT INTO `meditation_types` (`id`,`name`,`icon`,`description`,`steps`,`guidance`,`sound_url`,`stroke_color`,`is_active`,`created_by`,`created_at`) VALUES ('4','Morning Reset','🌅','Start your day with clarity and intention','[\"Sit quietly before checking your phone\",\"Take 5 deep breaths and feel yourself wake up gently\",\"Set one intention for the day ahead\",\"Visualise yourself moving through the day with calm\",\"Open your eyes slowly and begin\"]','[{\"time\":0,\"text\":\"Good morning. Before the day begins, take this moment just for you.\"},{\"time\":12,\"text\":\"Take a long, deep breath in and feel your body wake up gently.\"},{\"time\":45,\"text\":\"Think of one thing youre grateful for this morning.\"},{\"time\":80,\"text\":\"Set a simple intention for today.\"}]','https://cdn.pixabay.com/download/audio/2021/11/25/audio_91b32d278e.mp3','#F57C00','1','1','2026-06-26 03:40:24');
INSERT INTO `meditation_types` (`id`,`name`,`icon`,`description`,`steps`,`guidance`,`sound_url`,`stroke_color`,`is_active`,`created_by`,`created_at`) VALUES ('5','Stress Relief','💆','Release tension after a difficult day','[\"Sit or lie in a comfortable position\",\"Inhale deeply and tense your whole body for 5 seconds\",\"Exhale and release everything at once\",\"Notice the difference between tension and release\",\"Repeat — each cycle carries stress away\"]','[{\"time\":0,\"text\":\"Youve made it through. This time is yours.\"},{\"time\":12,\"text\":\"Take a deep breath in and gently tense your whole body...\"},{\"time\":18,\"text\":\"Now let it all go. Exhale completely. Feel the release.\"},{\"time\":70,\"text\":\"Your body knows how to rest. Trust it.\"}]','https://cdn.pixabay.com/download/audio/2022/05/27/audio_1808fbf07a.mp3','#C2185B','1','1','2026-06-26 03:40:24');

-- ----------------------------
-- Table: music_tracks
-- ----------------------------
DROP TABLE IF EXISTS `music_tracks`;
CREATE TABLE `music_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category` enum('calm','sleep','energy','water','bowl') DEFAULT 'calm',
  `cover_url` text DEFAULT NULL,
  `audio_url` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `music_tracks_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('1','Gentle Rain','calm','https://images.unsplash.com/photo-1465146344425-f00d5f5c8f07?w=600&q=80','https://cdn.pixabay.com/download/audio/2022/05/27/audio_1808fbf07a.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('2','Forest Morning','calm','https://images.unsplash.com/photo-1448375240586-882707db888b?w=600&q=80','https://cdn.pixabay.com/download/audio/2021/09/06/audio_6def761615.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('3','Soft Piano','calm','https://images.unsplash.com/photo-1520523839897-bd0b52f945a0?w=600&q=80','https://cdn.pixabay.com/download/audio/2021/11/25/audio_91b32d278e.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('4','Ocean Waves','sleep','https://images.unsplash.com/photo-1505118380757-91f5f5632de0?w=600&q=80','https://cdn.pixabay.com/download/audio/2022/03/24/audio_946df0d016.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('5','Night Rain','sleep','https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?w=600&q=80','https://cdn.pixabay.com/download/audio/2022/03/10/audio_270f41e9bd.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('6','Morning Light','energy','https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&q=80','https://cdn.pixabay.com/download/audio/2021/11/25/audio_91b32d278e.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('7','River Flow','water','https://images.unsplash.com/photo-1501854140801-50d01698950b?w=600&q=80','https://cdn.pixabay.com/download/audio/2022/03/24/audio_946df0d016.mp3','1','1','2026-06-26 03:40:24');
INSERT INTO `music_tracks` (`id`,`title`,`category`,`cover_url`,`audio_url`,`is_active`,`created_by`,`created_at`) VALUES ('8','Tibetan Bowls','bowl','https://images.unsplash.com/photo-1545389336-cf090694435e?w=600&q=80','https://cdn.pixabay.com/download/audio/2022/03/10/audio_270f41e9bd.mp3','1','1','2026-06-26 03:40:24');

-- ----------------------------
-- Table: recurring_slots
-- ----------------------------
DROP TABLE IF EXISTS `recurring_slots`;
CREATE TABLE `recurring_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counselor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `day_of_week` tinyint(4) NOT NULL COMMENT '0=Sunday, 1=Monday, ... 6=Saturday',
  `slot_time` varchar(20) NOT NULL,
  `reason` varchar(255) DEFAULT 'Ongoing weekly support',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `counselor_id` (`counselor_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `recurring_slots_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `recurring_slots_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `recurring_slots` (`id`,`counselor_id`,`student_id`,`day_of_week`,`slot_time`,`reason`,`is_active`,`created_at`) VALUES ('1','4','2','1','9:00 AM','Ongoing weekly support','0','2026-07-31 17:43:13');
INSERT INTO `recurring_slots` (`id`,`counselor_id`,`student_id`,`day_of_week`,`slot_time`,`reason`,`is_active`,`created_at`) VALUES ('2','4','2','2','9:00 AM','Ongoing weekly support','1','2026-07-31 17:45:18');

-- ----------------------------
-- Table: relaxation_exercises
-- ----------------------------
DROP TABLE IF EXISTS `relaxation_exercises`;
CREATE TABLE `relaxation_exercises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('breathing','meditation') NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(10) DEFAULT NULL,
  `phases` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`phases`)),
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `relaxation_exercises_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `relaxation_exercises` (`id`,`type`,`name`,`description`,`icon`,`phases`,`is_active`,`created_by`,`created_at`) VALUES ('1','breathing','4-7-8 Breathing','Inhale for 4 counts, hold for 7, exhale for 8. Reduces anxiety instantly.','😮‍💨','[{\"text\":\"Breathe In\",\"voice\":\"Breathe in slowly through your nose\",\"dur\":4,\"scale\":\"1.35\",\"bg\":\"#98E3B4\"},{\"text\":\"Hold\",\"voice\":\"Hold gently\",\"dur\":7,\"scale\":\"1.35\",\"bg\":\"#E9DBC4\"},{\"text\":\"Breathe Out\",\"voice\":\"Exhale completely through your mouth\",\"dur\":8,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"}]','1','1','2026-06-26 03:40:24');
INSERT INTO `relaxation_exercises` (`id`,`type`,`name`,`description`,`icon`,`phases`,`is_active`,`created_by`,`created_at`) VALUES ('2','breathing','Box Breathing','Inhale 4, hold 4, exhale 4, hold 4. Used by Navy SEALs for focus under pressure.','⬜','[{\"text\":\"Breathe In\",\"voice\":\"Inhale slowly\",\"dur\":4,\"scale\":\"1.35\",\"bg\":\"#B3C6E7\"},{\"text\":\"Hold\",\"voice\":\"Hold\",\"dur\":4,\"scale\":\"1.35\",\"bg\":\"#E9DBC4\"},{\"text\":\"Breathe Out\",\"voice\":\"Exhale slowly\",\"dur\":4,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"},{\"text\":\"Hold\",\"voice\":\"Hold again\",\"dur\":4,\"scale\":\"1.0\",\"bg\":\"#f5e0d0\"}]','1','1','2026-06-26 03:40:24');
INSERT INTO `relaxation_exercises` (`id`,`type`,`name`,`description`,`icon`,`phases`,`is_active`,`created_by`,`created_at`) VALUES ('3','breathing','Deep Belly','Breathe deeply into your belly. Activates natural relaxation response.','🫁','[{\"text\":\"Belly In\",\"voice\":\"Breathe deep into your belly\",\"dur\":5,\"scale\":\"1.4\",\"bg\":\"#C8E6C9\"},{\"text\":\"Breathe Out\",\"voice\":\"Release slowly and fully\",\"dur\":6,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"}]','1','1','2026-06-26 03:40:24');
INSERT INTO `relaxation_exercises` (`id`,`type`,`name`,`description`,`icon`,`phases`,`is_active`,`created_by`,`created_at`) VALUES ('4','breathing','Energising','Short sharp inhales followed by full release. Wakes up body and mind.','⚡','[{\"text\":\"Quick In\",\"voice\":\"Sharp inhale\",\"dur\":2,\"scale\":\"1.2\",\"bg\":\"#FFE0B2\"},{\"text\":\"Quick In\",\"voice\":\"And again\",\"dur\":2,\"scale\":\"1.35\",\"bg\":\"#FFD08A\"},{\"text\":\"Release\",\"voice\":\"Full exhale — release\",\"dur\":4,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"}]','1','1','2026-06-26 03:40:24');
INSERT INTO `relaxation_exercises` (`id`,`type`,`name`,`description`,`icon`,`phases`,`is_active`,`created_by`,`created_at`) VALUES ('5','breathing','Sleep Breath','Long slow exhales prepare body for rest.','🌙','[{\"text\":\"Breathe In\",\"voice\":\"Inhale gently\",\"dur\":4,\"scale\":\"1.3\",\"bg\":\"#B0C4DE\"},{\"text\":\"Breathe Out\",\"voice\":\"Exhale slowly and completely\",\"dur\":8,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"},{\"text\":\"Rest\",\"voice\":\"Rest... let your body feel heavy\",\"dur\":3,\"scale\":\"1.0\",\"bg\":\"#e8e0f5\"}]','1','1','2026-06-26 03:40:24');

-- ----------------------------
-- Table: resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploaded_by` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `resource_type` enum('article','audio','video') NOT NULL,
  `file_path` varchar(300) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `uploaded_by` (`uploaded_by`),
  CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table: risk_alerts
-- ----------------------------
DROP TABLE IF EXISTS `risk_alerts`;
CREATE TABLE `risk_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `diary_entry_id` int(11) DEFAULT NULL,
  `keywords_found` text DEFAULT NULL,
  `severity` enum('medium','high','critical') NOT NULL,
  `status` enum('open','reviewed') DEFAULT 'open',
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `risk_alerts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `risk_alerts` (`id`,`student_id`,`diary_entry_id`,`keywords_found`,`severity`,`status`,`reviewed_by`,`reviewed_at`,`created_at`) VALUES ('1','2',NULL,'PHQ-9 check-in: thoughts of self-harm — \"More than half the days\"','critical','reviewed','4','2026-08-06 00:51:04','2026-08-02 21:58:12');
INSERT INTO `risk_alerts` (`id`,`student_id`,`diary_entry_id`,`keywords_found`,`severity`,`status`,`reviewed_by`,`reviewed_at`,`created_at`) VALUES ('2','2',NULL,'PHQ-9 check-in: thoughts of self-harm — \"Several days\"','high','reviewed','4','2026-08-06 00:51:27','2026-08-03 16:50:46');
INSERT INTO `risk_alerts` (`id`,`student_id`,`diary_entry_id`,`keywords_found`,`severity`,`status`,`reviewed_by`,`reviewed_at`,`created_at`) VALUES ('3','2',NULL,'PHQ-9 check-in: thoughts of self-harm — \"Nearly every day\"','critical','reviewed','4','2026-08-06 00:50:59','2026-08-04 09:47:20');
INSERT INTO `risk_alerts` (`id`,`student_id`,`diary_entry_id`,`keywords_found`,`severity`,`status`,`reviewed_by`,`reviewed_at`,`created_at`) VALUES ('4','2','10','want to die,hopeless','high','reviewed','4','2026-08-06 00:51:25','2026-08-06 00:49:44');
INSERT INTO `risk_alerts` (`id`,`student_id`,`diary_entry_id`,`keywords_found`,`severity`,`status`,`reviewed_by`,`reviewed_at`,`created_at`) VALUES ('5','2','13','want to die,hopeless','high','open',NULL,NULL,'2026-08-06 00:54:43');

-- ----------------------------
-- Table: system_logs
-- ----------------------------
DROP TABLE IF EXISTS `system_logs`;
CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(200) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('1','2','login','::1','2026-06-24 14:18:48');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('2','2','login','::1','2026-06-24 14:34:19');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('3','2','login','::1','2026-06-25 09:10:51');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('4','4','login','::1','2026-06-25 09:12:48');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('5','4','login','::1','2026-06-25 09:14:02');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('6','6','login','::1','2026-06-25 09:16:25');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('7','4','login','::1','2026-06-25 09:18:13');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('8','1','login','::1','2026-06-25 09:19:04');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('9','4','login','::1','2026-06-25 10:11:07');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('10','2','login','::1','2026-06-25 11:42:14');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('11','4','login','::1','2026-06-25 11:49:18');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('12','4','login','::1','2026-06-25 11:49:54');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('13','6','login','::1','2026-06-25 11:51:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('14','1','login','::1','2026-06-25 11:52:39');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('15','4','login','::1','2026-06-25 11:56:05');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('16','2','login','::1','2026-06-25 22:35:39');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('17','4','login','::1','2026-06-28 10:17:56');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('18','2','login','::1','2026-06-28 10:41:50');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('19','4','login','::1','2026-06-28 10:57:53');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('20','2','login','::1','2026-06-28 12:26:21');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('21','4','login','::1','2026-06-28 12:27:11');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('22','6','login','::1','2026-06-28 12:27:42');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('23','6','login','::1','2026-06-28 12:28:09');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('24','1','login','::1','2026-06-28 12:28:27');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('25','4','login','::1','2026-06-28 12:33:31');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('26','2','login','::1','2026-06-28 12:43:48');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('27','2','login','::1','2026-06-28 13:54:49');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('28','4','login','::1','2026-06-28 14:04:32');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('29','6','login','::1','2026-06-28 14:06:46');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('30','1','login','::1','2026-06-28 14:09:13');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('31','2','login','::1','2026-06-30 08:31:08');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('32','4','login','::1','2026-06-30 08:32:50');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('33','6','login','::1','2026-06-30 08:33:45');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('34','1','login','::1','2026-06-30 08:34:19');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('35','4','login','::1','2026-06-30 08:43:03');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('36','2','login','::1','2026-06-30 08:44:33');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('37','4','login','::1','2026-06-30 08:46:17');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('38','2','login','::1','2026-07-01 16:14:29');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('39','2','login','::1','2026-07-01 16:18:54');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('40','2','login','::1','2026-07-06 09:31:01');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('41','2','login','::1','2026-07-06 10:40:52');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('42','4','login','::1','2026-07-06 10:42:14');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('43','2','login','::1','2026-07-06 10:45:03');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('44','6','login','::1','2026-07-06 10:55:54');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('45','6','login','::1','2026-07-06 10:59:41');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('46','6','login','::1','2026-07-06 11:05:07');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('47','2','login','::1','2026-07-06 11:09:06');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('48','4','login','::1','2026-07-06 11:17:47');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('49','2','login','::1','2026-07-06 11:21:27');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('50','4','login','::1','2026-07-06 11:22:04');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('51','6','login','::1','2026-07-06 11:26:54');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('52','4','login','::1','2026-07-06 11:30:57');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('53','1','login','::1','2026-07-06 11:41:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('54','2','login','::1','2026-07-06 13:42:13');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('55','1','login','::1','2026-07-09 11:26:49');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('56','1','login','::1','2026-07-09 11:40:11');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('57','2','login','::1','2026-07-10 10:08:42');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('58','4','login','::1','2026-07-10 10:11:21');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('59','4','login','::1','2026-07-10 10:12:21');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('60','6','login','::1','2026-07-10 10:13:47');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('61','6','login','::1','2026-07-10 10:14:32');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('62','1','login','::1','2026-07-10 10:15:28');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('63','2','login','::1','2026-07-10 10:19:29');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('64','2','login','::1','2026-07-10 10:25:35');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('65','1','login','::1','2026-07-10 10:26:44');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('66','4','login','::1','2026-07-19 15:44:37');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('67','2','login','::1','2026-07-20 10:11:42');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('68','2','login','::1','2026-07-20 10:14:20');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('69','2','login','::1','2026-07-20 10:26:28');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('70','4','login','::1','2026-07-21 09:39:10');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('71','2','login','::1','2026-07-21 09:40:20');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('72','4','login','::1','2026-07-21 09:42:49');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('73','2','login','::1','2026-07-21 09:48:40');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('74','4','login','::1','2026-07-21 10:01:26');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('75','4','login','::1','2026-07-31 16:33:31');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('76','2','login','::1','2026-07-31 16:34:22');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('77','4','login','::1','2026-07-31 16:36:08');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('78','2','login','::1','2026-07-31 16:58:08');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('79','4','login','::1','2026-07-31 17:01:02');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('80','2','login','::1','2026-07-31 17:12:34');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('81','4','login','::1','2026-07-31 17:25:28');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('82','2','login','::1','2026-07-31 17:39:17');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('83','4','login','::1','2026-07-31 17:41:37');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('84','2','login','::1','2026-07-31 18:06:03');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('85','2','login','::1','2026-07-31 19:25:17');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('86','2','login','::1','2026-08-01 23:03:26');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('87','4','login','::1','2026-08-01 23:05:15');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('88',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-02 12:31:15');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('89',NULL,'guardian_emergency_booking slot:1','::1','2026-08-02 12:37:53');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('90',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-02 18:45:18');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('91',NULL,'guardian_emergency_booking slot:2','::1','2026-08-02 18:49:00');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('92',NULL,'guardian_emergency_booking slot:2','::1','2026-08-02 18:49:10');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('93','2','login','::1','2026-08-02 20:30:23');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('94','3','login','::1','2026-08-02 20:31:00');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('95','2','login','::1','2026-08-02 20:55:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('96','2','login','::1','2026-08-02 21:36:56');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('97','2','login','::1','2026-08-02 21:37:33');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('98','2','login','::1','2026-08-02 21:39:00');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('99','2','login','::1','2026-08-03 18:23:08');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('100','4','login','::1','2026-08-03 18:23:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('101','4','login','::1','2026-08-03 18:41:22');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('102','2','login','::1','2026-08-04 09:46:48');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('103','4','login','::1','2026-08-04 09:57:51');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('104','2','login','::1','2026-08-04 10:13:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('105','4','login','::1','2026-08-04 13:06:04');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('106','2','login','::1','2026-08-04 16:21:01');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('107','4','login','::1','2026-08-04 20:50:06');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('108','2','login','::1','2026-08-04 21:03:13');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('109','4','login','::1','2026-08-04 21:08:11');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('110','2','login','::1','2026-08-04 21:28:49');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('111','2','login','::1','2026-08-04 21:32:08');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('112','2','login','::1','2026-08-04 21:38:40');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('113','4','login','::1','2026-08-04 21:39:29');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('114','6','login','::1','2026-08-05 05:30:21');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('115','1','login','::1','2026-08-05 05:32:24');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('116',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-05 05:40:30');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('117',NULL,'guardian_emergency_booking slot:3','::1','2026-08-05 05:41:30');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('118','4','login','::1','2026-08-05 05:42:36');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('119','4','login','::1','2026-08-05 06:55:19');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('120',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-05 10:06:42');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('121',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-05 10:08:01');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('122','2','login','::1','2026-08-05 10:13:59');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('123','4','login','::1','2026-08-05 10:15:33');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('124','4','login','::1','2026-08-05 10:17:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('125','1','login','::1','2026-08-05 10:18:26');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('126','2','login','::1','2026-08-05 11:04:42');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('127','2','login','::1','2026-08-05 11:48:38');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('128','2','login','::1','2026-08-05 11:56:15');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('129','4','login','::1','2026-08-05 11:56:43');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('130','6','login','::1','2026-08-05 12:01:37');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('131','1','login','::1','2026-08-05 12:02:53');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('132',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-05 12:08:13');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('133',NULL,'guardian_emergency_booking slot:3','::1','2026-08-05 12:09:32');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('134','1','login','::1','2026-08-05 12:10:15');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('135','2','login','::1','2026-08-05 12:26:19');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('136','2','login','::1','2026-08-05 12:55:28');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('137','2','login','::1','2026-08-05 14:43:35');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('138','4','login','::1','2026-08-05 14:48:22');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('139','4','login','::1','2026-08-05 14:52:10');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('140','4','login','::1','2026-08-05 14:53:51');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('141','1','login','::1','2026-08-05 14:54:43');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('142','6','login','::1','2026-08-05 14:55:27');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('143',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-05 14:57:51');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('144','2','login','::1','2026-08-05 18:07:05');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('145','2','login','::1','2026-08-05 18:30:32');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('146',NULL,'guardian_otp_verified for student_id:UOG0923007','::1','2026-08-05 18:39:34');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('147','2','login','::1','2026-08-05 18:40:11');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('148','4','login','::1','2026-08-05 19:33:10');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('149','2','login','::1','2026-08-05 19:33:34');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('150','2','login','::1','2026-08-05 19:34:59');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('151','4','login','::1','2026-08-05 19:35:14');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('152','2','login','::1','2026-08-05 19:43:15');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('153','4','login','::1','2026-08-06 00:01:06');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('154','2','login','::1','2026-08-06 00:16:16');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('155','4','login','::1','2026-08-06 00:17:21');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('156','2','login','::1','2026-08-06 00:18:12');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('157','4','login','::1','2026-08-06 00:19:55');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('158','2','login','::1','2026-08-06 00:48:12');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('159','4','login','::1','2026-08-06 00:50:25');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('160','2','login','::1','2026-08-06 00:51:53');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('161','4','login','::1','2026-08-06 00:53:26');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('162','2','login','::1','2026-08-06 00:54:15');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('163','4','login','::1','2026-08-06 00:55:39');
INSERT INTO `system_logs` (`id`,`user_id`,`action`,`ip_address`,`created_at`) VALUES ('164','1','login','::1','2026-08-06 01:07:21');

-- ----------------------------
-- Table: users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','counselor','learning_advisor','admin') NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('1','System Admin','admin@edu.lnbti.lk','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','admin',NULL,NULL,'1','2026-06-20 12:14:15');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('2','Heshali Kaluarachchi','Heshali.uog09@edu.lnbti.lk','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','student','UOG0923007',NULL,'1','2026-06-20 12:14:16');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('4','Miss Dhanushi Perera','Dhanushi@edu.lnbti.lk','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','counselor',NULL,NULL,'1','2026-06-20 12:14:16');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('5','Miss Mekala Harshani','mekala@edu.lnbti.lk','$2y$10$xwuFAbB.dT48O7i1mog5AOXhvWNjU/22//kzzMDfgYyKXx1FPhZOG','counselor',NULL,NULL,'1','2026-06-20 12:14:16');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('6','Dr. Karunarathna','learningadvisor@edu.lnbti.lk','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','learning_advisor',NULL,NULL,'1','2026-06-20 12:14:16');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('7','dd','kasun@edu.lnbti.lk','$2y$10$PNjLza.owA9B64Jv6T6D5OdavrCAC9uA1oBYSpJVGhFgmHnd03mR.','student',NULL,NULL,'1','2026-07-09 11:42:13');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('8','Tharushi Dewmini','Tharushi.uog09@edu.lnbti.lk','$2y$10$.MNgdxKRVQ0sY5BojTt8XuQNMxNlYrBMko3sW1zxIsx1A36Pc1jMO','student',NULL,NULL,'1','2026-08-05 10:19:13');
INSERT INTO `users` (`id`,`full_name`,`email`,`password`,`role`,`student_id`,`phone`,`is_active`,`created_at`) VALUES ('9','amal','amal@gmail.com','$2y$10$znWuedneYS74WwTCf7muiOVwU6hG5qXWbqlaH0NIjjTKma6OnDzTK','student',NULL,NULL,'1','2026-08-05 12:03:36');

SET FOREIGN_KEY_CHECKS=1;
