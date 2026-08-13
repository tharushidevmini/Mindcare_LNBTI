-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2026 at 09:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mindcare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_relief_requests`
--

CREATE TABLE `academic_relief_requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `accommodation_type` varchar(200) NOT NULL,
  `forwarded_by_id` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `reject_reason` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_relief_requests`
--

INSERT INTO `academic_relief_requests` (`id`, `student_id`, `token`, `accommodation_type`, `forwarded_by_id`, `status`, `reviewed_by`, `reviewed_at`, `created_at`) VALUES
(1, 2, 'STU0001', 'Assignment Deadline Extension (7 days)', 4, 'pending', NULL, NULL, '2026-06-20 12:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `session_type` enum('physical','online') NOT NULL,
  `preferred_date` date NOT NULL,
  `preferred_time` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('pending','accepted','postponed','completed','cancelled') DEFAULT 'pending',
  `reschedule_reason` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `student_id`, `counselor_id`, `guardian_id`, `session_type`, `preferred_date`, `preferred_time`, `notes`, `status`, `reschedule_reason`, `created_at`) VALUES
(1, 2, 4, NULL, 'physical', '2026-06-24', '9:00 AM', 'Test', 'accepted', '', '2026-06-24 13:35:19'),
(2, 2, 5, NULL, 'physical', '2026-06-24', '2:00 PM', 'Test', 'pending', NULL, '2026-06-24 13:37:25'),
(3, 2, 4, NULL, 'physical', '2026-06-25', '9:00 AM', '', 'accepted', '', '2026-06-25 09:55:30'),
(4, 2, 5, NULL, 'online', '2026-06-25', '3:00 PM', '', 'pending', NULL, '2026-06-25 09:56:01'),
(5, 2, 4, NULL, 'online', '2026-06-25', '10:30 AM', '', 'accepted', '', '2026-06-25 09:57:49'),
(6, 2, 5, NULL, 'physical', '2026-06-25', '2:30 PM', '', 'pending', NULL, '2026-06-25 10:00:25'),
(7, 2, 5, NULL, 'physical', '2026-06-25', '3:00 PM', 'Test block', 'pending', NULL, '2026-06-25 10:03:16'),
(8, 2, 5, NULL, 'online', '2026-06-25', '9:30 AM', '', 'pending', NULL, '2026-06-25 10:08:06'),
(9, 2, 4, NULL, 'physical', '2026-06-25', '2:00 PM', '', 'accepted', '', '2026-06-25 10:09:04'),
(11, 1, 4, NULL, 'physical', '2026-06-25', '11:00 AM', 'emergency block', 'accepted', '', '2026-06-25 10:20:50'),
(12, 2, 5, NULL, 'online', '2026-06-25', '2:00 PM', '', 'pending', NULL, '2026-06-25 11:43:47'),
(13, 2, 2, NULL, 'physical', '2026-06-26', '10:00 AM', 'Exam stress', 'pending', NULL, '2026-06-26 03:31:39'),
(14, 2, 5, NULL, 'physical', '2026-06-28', '9:00 AM', '', 'pending', NULL, '2026-06-28 13:59:26'),
(15, 2, 4, NULL, 'online', '2026-06-30', '10:30 AM', '', 'accepted', '', '2026-06-30 08:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `counselor_notes`
--

CREATE TABLE `counselor_notes` (
  `id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `notes` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_checkins`
--

CREATE TABLE `daily_checkins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sleep_quality` tinyint(4) NOT NULL,
  `energy_level` tinyint(4) NOT NULL,
  `stress_level` tinyint(4) NOT NULL,
  `anxiety_level` tinyint(4) NOT NULL,
  `social_engagement` tinyint(4) NOT NULL,
  `mood_emoji` varchar(10) DEFAULT NULL,
  `checkin_date` date NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_checkins`
--

INSERT INTO `daily_checkins` (`id`, `user_id`, `sleep_quality`, `energy_level`, `stress_level`, `anxiety_level`, `social_engagement`, `mood_emoji`, `checkin_date`, `created_at`) VALUES
(1, 2, 3, 3, 3, 3, 3, '', '2026-06-24', '2026-06-24 11:19:49'),
(2, 2, 3, 3, 3, 3, 3, '', '2026-06-25', '2026-06-25 09:39:45'),
(3, 4, 3, 3, 3, 3, 3, '', '2026-06-25', '2026-06-25 10:55:48'),
(4, 2, 1, 1, 5, 5, 1, '', '2026-06-28', '2026-06-28 13:55:22'),
(5, 2, 3, 2, 4, 3, 2, '😢', '2026-06-30', '2026-06-30 08:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `diary_entries`
--

CREATE TABLE `diary_entries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text NOT NULL,
  `share_with_counselor` tinyint(1) DEFAULT 0,
  `share_with_guardian` tinyint(1) DEFAULT 0,
  `mood_emoji` varchar(10) DEFAULT NULL,
  `entry_date` date NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diary_entries`
--

INSERT INTO `diary_entries` (`id`, `user_id`, `title`, `content`, `share_with_counselor`, `share_with_guardian`, `mood_emoji`, `entry_date`, `created_at`) VALUES
(1, 2, 'MONDAY', '7f9XuGSIvrfPtev3pkl1hQ==::/SVa3NFiOGsX9EoTxaBL84weZW4GoZXiQxc2Ro71Feo=', 0, 0, NULL, '2026-06-24', '2026-06-24 11:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `anon_key` varchar(20) NOT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `is_reported` tinyint(1) DEFAULT 0,
  `is_removed` tinyint(1) DEFAULT 0,
  `is_approved` tinyint(1) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `user_id`, `anon_key`, `display_name`, `content`, `category`, `is_reported`, `is_removed`, `is_approved`, `likes`, `created_at`) VALUES
(1, 2, 'User#1234', NULL, 'Feeling overwhelmed with assignments this week. Anyone else?', 'Academic Pressure', 1, 0, 1, 0, '2026-06-24 17:20:28'),
(2, 4, 'User#4545', NULL, 'wishing your a good day', 'General', 1, 0, 1, 0, '2026-06-25 10:57:51'),
(3, 5, 'User#1123', NULL, 'wishing you a good day', 'General', 0, 1, 0, 0, '2026-06-25 11:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_sessions`
--

CREATE TABLE `guardian_sessions` (
  `id` int(11) NOT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(255) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `otp_code` varchar(6) NOT NULL,
  `otp_expires` datetime NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keyword_rules`
--

CREATE TABLE `keyword_rules` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `language` enum('english','sinhala','tamil') NOT NULL,
  `severity` enum('medium','high','critical') NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyword_rules`
--

INSERT INTO `keyword_rules` (`id`, `keyword`, `language`, `severity`, `is_active`) VALUES
(1, 'kill myself', 'english', 'critical', 1),
(2, 'end my life', 'english', 'critical', 1),
(3, 'no reason to live', 'english', 'critical', 1),
(4, 'want to die', 'english', 'high', 1),
(5, 'suicide', 'english', 'high', 1),
(6, 'self harm', 'english', 'high', 1),
(7, 'hopeless', 'english', 'high', 1),
(8, 'worthless', 'english', 'medium', 1),
(9, 'cant take it', 'english', 'medium', 1),
(10, 'overwhelmed', 'english', 'medium', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meditation_types`
--

CREATE TABLE `meditation_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `steps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`steps`)),
  `guidance` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`guidance`)),
  `sound_url` text DEFAULT NULL,
  `stroke_color` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meditation_types`
--

INSERT INTO `meditation_types` (`id`, `name`, `icon`, `description`, `steps`, `guidance`, `sound_url`, `stroke_color`, `is_active`, `created_by`, `created_at`) VALUES
(1, 'Focus', '🎯', 'Clear your mind before studying or an exam', '[\"Sit upright and close your eyes gently\",\"Take 3 deep breaths to settle your body\",\"Focus your attention on your breath\",\"When thoughts arise, gently return to your breath\",\"Let clarity build naturally with each breath\"]', '[{\"time\":0,\"text\":\"Lets begin. Find a comfortable position and gently close your eyes.\"},{\"time\":10,\"text\":\"Take a long, deep breath in through your nose...\"},{\"time\":35,\"text\":\"Bring your attention to your breath. Simply notice each inhale and exhale.\"},{\"time\":70,\"text\":\"If your mind wanders, gently bring it back.\"},{\"time\":120,\"text\":\"You are doing beautifully. Continue breathing slowly.\"}]', 'https://cdn.pixabay.com/download/audio/2022/03/10/audio_270f41e9bd.mp3', '#2D9B6A', 1, 1, '2026-06-26 03:40:24'),
(2, 'Anxiety Relief', '🌿', 'Calm racing thoughts and reduce tension', '[\"Find a comfortable position and relax your shoulders\",\"Place one hand on your chest, one on your belly\",\"Breathe slowly — feel your belly rise first\",\"With each exhale, consciously release tension\",\"Remind yourself: this feeling will pass\"]', '[{\"time\":0,\"text\":\"You are safe. Lets begin together.\"},{\"time\":10,\"text\":\"Place one hand gently on your belly. Take a slow breath in...\"},{\"time\":35,\"text\":\"With every breath out, release a little more tension.\"},{\"time\":70,\"text\":\"You dont need to fight your thoughts. Simply let them pass.\"},{\"time\":130,\"text\":\"This feeling will pass. You are safe in this moment.\"}]', 'https://cdn.pixabay.com/download/audio/2021/09/06/audio_6def761615.mp3', '#388E3C', 1, 1, '2026-06-26 03:40:24'),
(3, 'Sleep Prep', '🌙', 'Wind down and prepare for restful sleep', '[\"Lie down and let your body sink into the surface\",\"Starting from your toes, relax each part of your body\",\"Breathe slowly — inhale for 4, exhale for 6\",\"Let your thoughts drift without following them\",\"Allow yourself to feel heavy, warm, and safe\"]', '[{\"time\":0,\"text\":\"Its time to rest. Lie down and let your body be completely supported.\"},{\"time\":12,\"text\":\"Starting from your toes — let them relax completely.\"},{\"time\":50,\"text\":\"Your shoulders, your arms, your hands... completely at rest.\"},{\"time\":130,\"text\":\"Let your thoughts drift by without following them.\"}]', 'https://cdn.pixabay.com/download/audio/2022/03/24/audio_946df0d016.mp3', '#3D5A99', 1, 1, '2026-06-26 03:40:24'),
(4, 'Morning Reset', '🌅', 'Start your day with clarity and intention', '[\"Sit quietly before checking your phone\",\"Take 5 deep breaths and feel yourself wake up gently\",\"Set one intention for the day ahead\",\"Visualise yourself moving through the day with calm\",\"Open your eyes slowly and begin\"]', '[{\"time\":0,\"text\":\"Good morning. Before the day begins, take this moment just for you.\"},{\"time\":12,\"text\":\"Take a long, deep breath in and feel your body wake up gently.\"},{\"time\":45,\"text\":\"Think of one thing youre grateful for this morning.\"},{\"time\":80,\"text\":\"Set a simple intention for today.\"}]', 'https://cdn.pixabay.com/download/audio/2021/11/25/audio_91b32d278e.mp3', '#F57C00', 1, 1, '2026-06-26 03:40:24'),
(5, 'Stress Relief', '💆', 'Release tension after a difficult day', '[\"Sit or lie in a comfortable position\",\"Inhale deeply and tense your whole body for 5 seconds\",\"Exhale and release everything at once\",\"Notice the difference between tension and release\",\"Repeat — each cycle carries stress away\"]', '[{\"time\":0,\"text\":\"Youve made it through. This time is yours.\"},{\"time\":12,\"text\":\"Take a deep breath in and gently tense your whole body...\"},{\"time\":18,\"text\":\"Now let it all go. Exhale completely. Feel the release.\"},{\"time\":70,\"text\":\"Your body knows how to rest. Trust it.\"}]', 'https://cdn.pixabay.com/download/audio/2022/05/27/audio_1808fbf07a.mp3', '#C2185B', 1, 1, '2026-06-26 03:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `music_tracks`
--

CREATE TABLE `music_tracks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` enum('calm','sleep','energy','water','bowl') DEFAULT 'calm',
  `cover_url` text DEFAULT NULL,
  `audio_url` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `music_tracks`
--

INSERT INTO `music_tracks` (`id`, `title`, `category`, `cover_url`, `audio_url`, `is_active`, `created_by`, `created_at`) VALUES
(1, 'Gentle Rain', 'calm', 'https://images.unsplash.com/photo-1465146344425-f00d5f5c8f07?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2022/05/27/audio_1808fbf07a.mp3', 1, 1, '2026-06-26 03:40:24'),
(2, 'Forest Morning', 'calm', 'https://images.unsplash.com/photo-1448375240586-882707db888b?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2021/09/06/audio_6def761615.mp3', 1, 1, '2026-06-26 03:40:24'),
(3, 'Soft Piano', 'calm', 'https://images.unsplash.com/photo-1520523839897-bd0b52f945a0?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2021/11/25/audio_91b32d278e.mp3', 1, 1, '2026-06-26 03:40:24'),
(4, 'Ocean Waves', 'sleep', 'https://images.unsplash.com/photo-1505118380757-91f5f5632de0?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2022/03/24/audio_946df0d016.mp3', 1, 1, '2026-06-26 03:40:24'),
(5, 'Night Rain', 'sleep', 'https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2022/03/10/audio_270f41e9bd.mp3', 1, 1, '2026-06-26 03:40:24'),
(6, 'Morning Light', 'energy', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2021/11/25/audio_91b32d278e.mp3', 1, 1, '2026-06-26 03:40:24'),
(7, 'River Flow', 'water', 'https://images.unsplash.com/photo-1501854140801-50d01698950b?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2022/03/24/audio_946df0d016.mp3', 1, 1, '2026-06-26 03:40:24'),
(8, 'Tibetan Bowls', 'bowl', 'https://images.unsplash.com/photo-1545389336-cf090694435e?w=600&q=80', 'https://cdn.pixabay.com/download/audio/2022/03/10/audio_270f41e9bd.mp3', 1, 1, '2026-06-26 03:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `relaxation_exercises`
--

CREATE TABLE `relaxation_exercises` (
  `id` int(11) NOT NULL,
  `type` enum('breathing','meditation') NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(10) DEFAULT NULL,
  `phases` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`phases`)),
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relaxation_exercises`
--

INSERT INTO `relaxation_exercises` (`id`, `type`, `name`, `description`, `icon`, `phases`, `is_active`, `created_by`, `created_at`) VALUES
(1, 'breathing', '4-7-8 Breathing', 'Inhale for 4 counts, hold for 7, exhale for 8. Reduces anxiety instantly.', '😮‍💨', '[{\"text\":\"Breathe In\",\"voice\":\"Breathe in slowly through your nose\",\"dur\":4,\"scale\":\"1.35\",\"bg\":\"#98E3B4\"},{\"text\":\"Hold\",\"voice\":\"Hold gently\",\"dur\":7,\"scale\":\"1.35\",\"bg\":\"#E9DBC4\"},{\"text\":\"Breathe Out\",\"voice\":\"Exhale completely through your mouth\",\"dur\":8,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"}]', 1, 1, '2026-06-26 03:40:24'),
(2, 'breathing', 'Box Breathing', 'Inhale 4, hold 4, exhale 4, hold 4. Used by Navy SEALs for focus under pressure.', '⬜', '[{\"text\":\"Breathe In\",\"voice\":\"Inhale slowly\",\"dur\":4,\"scale\":\"1.35\",\"bg\":\"#B3C6E7\"},{\"text\":\"Hold\",\"voice\":\"Hold\",\"dur\":4,\"scale\":\"1.35\",\"bg\":\"#E9DBC4\"},{\"text\":\"Breathe Out\",\"voice\":\"Exhale slowly\",\"dur\":4,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"},{\"text\":\"Hold\",\"voice\":\"Hold again\",\"dur\":4,\"scale\":\"1.0\",\"bg\":\"#f5e0d0\"}]', 1, 1, '2026-06-26 03:40:24'),
(3, 'breathing', 'Deep Belly', 'Breathe deeply into your belly. Activates natural relaxation response.', '🫁', '[{\"text\":\"Belly In\",\"voice\":\"Breathe deep into your belly\",\"dur\":5,\"scale\":\"1.4\",\"bg\":\"#C8E6C9\"},{\"text\":\"Breathe Out\",\"voice\":\"Release slowly and fully\",\"dur\":6,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"}]', 1, 1, '2026-06-26 03:40:24'),
(4, 'breathing', 'Energising', 'Short sharp inhales followed by full release. Wakes up body and mind.', '⚡', '[{\"text\":\"Quick In\",\"voice\":\"Sharp inhale\",\"dur\":2,\"scale\":\"1.2\",\"bg\":\"#FFE0B2\"},{\"text\":\"Quick In\",\"voice\":\"And again\",\"dur\":2,\"scale\":\"1.35\",\"bg\":\"#FFD08A\"},{\"text\":\"Release\",\"voice\":\"Full exhale — release\",\"dur\":4,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"}]', 1, 1, '2026-06-26 03:40:24'),
(5, 'breathing', 'Sleep Breath', 'Long slow exhales prepare body for rest.', '🌙', '[{\"text\":\"Breathe In\",\"voice\":\"Inhale gently\",\"dur\":4,\"scale\":\"1.3\",\"bg\":\"#B0C4DE\"},{\"text\":\"Breathe Out\",\"voice\":\"Exhale slowly and completely\",\"dur\":8,\"scale\":\"1.0\",\"bg\":\"#d0e8f5\"},{\"text\":\"Rest\",\"voice\":\"Rest... let your body feel heavy\",\"dur\":3,\"scale\":\"1.0\",\"bg\":\"#e8e0f5\"}]', 1, 1, '2026-06-26 03:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `resource_type` enum('article','audio','video') NOT NULL,
  `file_path` varchar(300) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `risk_alerts`
--

CREATE TABLE `risk_alerts` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `diary_entry_id` int(11) DEFAULT NULL,
  `keywords_found` text DEFAULT NULL,
  `severity` enum('medium','high','critical') NOT NULL,
  `status` enum('open','reviewed') DEFAULT 'open',
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(200) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`id`, `user_id`, `action`, `ip_address`, `created_at`) VALUES
(1, 2, 'login', '::1', '2026-06-24 14:18:48'),
(2, 2, 'login', '::1', '2026-06-24 14:34:19'),
(3, 2, 'login', '::1', '2026-06-25 09:10:51'),
(4, 4, 'login', '::1', '2026-06-25 09:12:48'),
(5, 4, 'login', '::1', '2026-06-25 09:14:02'),
(6, 6, 'login', '::1', '2026-06-25 09:16:25'),
(7, 4, 'login', '::1', '2026-06-25 09:18:13'),
(8, 1, 'login', '::1', '2026-06-25 09:19:04'),
(9, 4, 'login', '::1', '2026-06-25 10:11:07'),
(10, 2, 'login', '::1', '2026-06-25 11:42:14'),
(11, 4, 'login', '::1', '2026-06-25 11:49:18'),
(12, 4, 'login', '::1', '2026-06-25 11:49:54'),
(13, 6, 'login', '::1', '2026-06-25 11:51:38'),
(14, 1, 'login', '::1', '2026-06-25 11:52:39'),
(15, 4, 'login', '::1', '2026-06-25 11:56:05'),
(16, 2, 'login', '::1', '2026-06-25 22:35:39'),
(17, 4, 'login', '::1', '2026-06-28 10:17:56'),
(18, 2, 'login', '::1', '2026-06-28 10:41:50'),
(19, 4, 'login', '::1', '2026-06-28 10:57:53'),
(20, 2, 'login', '::1', '2026-06-28 12:26:21'),
(21, 4, 'login', '::1', '2026-06-28 12:27:11'),
(22, 6, 'login', '::1', '2026-06-28 12:27:42'),
(23, 6, 'login', '::1', '2026-06-28 12:28:09'),
(24, 1, 'login', '::1', '2026-06-28 12:28:27'),
(25, 4, 'login', '::1', '2026-06-28 12:33:31'),
(26, 2, 'login', '::1', '2026-06-28 12:43:48'),
(27, 2, 'login', '::1', '2026-06-28 13:54:49'),
(28, 4, 'login', '::1', '2026-06-28 14:04:32'),
(29, 6, 'login', '::1', '2026-06-28 14:06:46'),
(30, 1, 'login', '::1', '2026-06-28 14:09:13'),
(31, 2, 'login', '::1', '2026-06-30 08:31:08'),
(32, 4, 'login', '::1', '2026-06-30 08:32:50'),
(33, 6, 'login', '::1', '2026-06-30 08:33:45'),
(34, 1, 'login', '::1', '2026-06-30 08:34:19'),
(35, 4, 'login', '::1', '2026-06-30 08:43:03'),
(36, 2, 'login', '::1', '2026-06-30 08:44:33'),
(37, 4, 'login', '::1', '2026-06-30 08:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','counselor','learning_advisor','admin') NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `specialty` varchar(150) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `student_id`, `phone`, `photo_url`, `specialty`, `is_active`, `created_at`) VALUES
(1, 'System Admin', 'admin@edu.lnbti.lk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', NULL, NULL, NULL, NULL, 1, '2026-06-20 12:14:15'),
(2, 'Heshali Kaluarachchi', 'Heshali.uog09@edu.lnbti.lk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'UOG0923007', NULL, NULL, NULL, 1, '2026-06-20 12:14:16'),
(3, 'Tharushi Devmini', 'tharushi.uog09@edu.lnbti.lk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'student', 'UOG0923003', NULL, NULL, NULL, 1, '2026-06-20 12:14:16'),
(4, 'Miss Dhanushi Perera', 'Dhanushi@edu.lnbti.lk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'counselor', NULL, '+94 70 539 8145', 'dhanushi.jpg', 'Head Counselor', 1, '2026-06-20 12:14:16'),
(5, 'Miss Mekala Harshani', 'mekala@edu.lnbti.lk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'counselor', NULL, '076 450 4263', 'mekala.jpg', 'Assistant Counselor', 1, '2026-06-20 12:14:16'),
(6, 'Dr. Karunarathna', 'learningadvisor@edu.lnbti.lk', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'learning_advisor', NULL, NULL, NULL, NULL, 1, '2026-06-20 12:14:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_relief_requests`
--
ALTER TABLE `academic_relief_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `forwarded_by_id` (`forwarded_by_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `counselor_id` (`counselor_id`);

--
-- Indexes for table `counselor_notes`
--
ALTER TABLE `counselor_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counselor_id` (`counselor_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `daily_checkins`
--
ALTER TABLE `daily_checkins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `diary_entries`
--
ALTER TABLE `diary_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `guardian_sessions`
--
ALTER TABLE `guardian_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `keyword_rules`
--
ALTER TABLE `keyword_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meditation_types`
--
ALTER TABLE `meditation_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `music_tracks`
--
ALTER TABLE `music_tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `relaxation_exercises`
--
ALTER TABLE `relaxation_exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `risk_alerts`
--
ALTER TABLE `risk_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_relief_requests`
--
ALTER TABLE `academic_relief_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `counselor_notes`
--
ALTER TABLE `counselor_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_checkins`
--
ALTER TABLE `daily_checkins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `diary_entries`
--
ALTER TABLE `diary_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guardian_sessions`
--
ALTER TABLE `guardian_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `keyword_rules`
--
ALTER TABLE `keyword_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meditation_types`
--
ALTER TABLE `meditation_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `music_tracks`
--
ALTER TABLE `music_tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `relaxation_exercises`
--
ALTER TABLE `relaxation_exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `risk_alerts`
--
ALTER TABLE `risk_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_relief_requests`
--
ALTER TABLE `academic_relief_requests`
  ADD CONSTRAINT `academic_relief_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `academic_relief_requests_ibfk_2` FOREIGN KEY (`forwarded_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `counselor_notes`
--
ALTER TABLE `counselor_notes`
  ADD CONSTRAINT `counselor_notes_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `counselor_notes_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `daily_checkins`
--
ALTER TABLE `daily_checkins`
  ADD CONSTRAINT `daily_checkins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diary_entries`
--
ALTER TABLE `diary_entries`
  ADD CONSTRAINT `diary_entries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `guardian_sessions`
--
ALTER TABLE `guardian_sessions`
  ADD CONSTRAINT `guardian_sessions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meditation_types`
--
ALTER TABLE `meditation_types`
  ADD CONSTRAINT `meditation_types_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `music_tracks`
--
ALTER TABLE `music_tracks`
  ADD CONSTRAINT `music_tracks_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `relaxation_exercises`
--
ALTER TABLE `relaxation_exercises`
  ADD CONSTRAINT `relaxation_exercises_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `risk_alerts`
--
ALTER TABLE `risk_alerts`
  ADD CONSTRAINT `risk_alerts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Table structure for table `ai_chat_messages`
-- (AI Counselor conversation history, per student)
--
CREATE TABLE `ai_chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` enum('user','assistant') NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ai_chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `blocked_slots`
-- (Counselor-reserved / emergency-blocked time slots)
--
CREATE TABLE `blocked_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counselor_id` int(11) NOT NULL,
  `block_date` date NOT NULL,
  `block_time` varchar(20) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `counselor_id` (`counselor_id`),
  CONSTRAINT `blocked_slots_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `recurring_slots`
-- (Weekly recurring appointment slots reserved for a specific student)
--
CREATE TABLE `recurring_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counselor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `day_of_week` tinyint(1) NOT NULL COMMENT '0=Sunday .. 6=Saturday',
  `slot_time` varchar(20) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `counselor_id` (`counselor_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `recurring_slots_ibfk_1` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `recurring_slots_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `advisor_email_log`
-- (Emails the Learning Advisor sends to counselors from the dashboard)
--
CREATE TABLE `advisor_email_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advisor_id` int(11) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sent_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `advisor_id` (`advisor_id`),
  KEY `counselor_id` (`counselor_id`),
  CONSTRAINT `advisor_email_log_ibfk_1` FOREIGN KEY (`advisor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `advisor_email_log_ibfk_2` FOREIGN KEY (`counselor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `system_settings`
-- (Admin-editable contact numbers/emails shown on public pages)
--
CREATE TABLE `system_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `password_resets`
-- (Self-service "Forgot Password" OTP codes)
--
CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `otp_expires` datetime NOT NULL,
  `is_used` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
