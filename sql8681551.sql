-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql8.freemysqlhosting.net
-- Generation Time: Feb 02, 2024 at 12:28 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql8680542`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `name`, `surname`, `account_id`) VALUES
(1, 'Busi', 'Mbatha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alumni_record`
--

CREATE TABLE `alumni_record` (
  `alumni_rec_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_role` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `account_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni_record`
--

INSERT INTO `alumni_record` (`alumni_rec_id`, `company_name`, `company_role`, `start_date`, `end_date`, `account_id`) VALUES
(1, 'ICEP', 'Developer', '2022-04-04', '2023-04-05', 2),
(2, 'TUT', 'Lecture', '2023-08-20', '2023-12-21', 2),
(3, 'Amazon', 'DevOps', '2024-01-10', '2024-01-31', 11);

-- --------------------------------------------------------

--
-- Table structure for table `alumni_space_account`
--

CREATE TABLE `alumni_space_account` (
  `account_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni_space_account`
--

INSERT INTO `alumni_space_account` (`account_id`, `email`, `password`, `role`) VALUES
(1, 'admin@email.com', '123', 'Admin'),
(2, 'mhlongo@gmail.com', '123', 'Alumni'),
(3, 'mnisi@gmail.com', '123', 'Alumni'),
(4, 'mashao@gmail.com', '123', 'Alumni'),
(5, 'mashia@gmail.com', '123', 'Alumni'),
(6, 'masuku@gmail.com', '123', 'Alumni'),
(7, 'lehlojane@gmail.com', '123', 'Alumni'),
(8, 'malobane@gmail.com', '123', 'Alumni'),
(9, 'mnyalo@gmail.com', '123', 'Alumni'),
(10, 'nkadimeng@gmail.com', '123', 'Alumni'),
(11, '219093066@tut4life.ac.za', '12345678', 'Alumni');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `savejob_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_description` varchar(50) NOT NULL,
  `application_status` varchar(50) NOT NULL,
  `application_date` datetime DEFAULT NULL,
  `id_document` varchar(255) DEFAULT NULL,
  `additional_document` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`savejob_id`, `account_id`, `job_title`, `job_description`, `application_status`, `application_date`, `id_document`, `additional_document`) VALUES
(1, 5, 'Junior Developer', 'Develop web applications', 'pending', '2024-01-30 00:00:00', NULL, NULL),
(2, 11, 'Intern Software Developer', 'Work-Integrated Learning for Students', 'pending', '2024-01-30 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `certificateId` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `certificateName` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `connection_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` int(11) DEFAULT NULL,
  `following_id` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `alumni_id` int(11) DEFAULT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_description` varchar(100) NOT NULL,
  `date_posted` datetime DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `event_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `alumni_id`, `event_title`, `event_description`, `date_posted`, `event_date`, `deadline`, `event_file`) VALUES
(4, NULL, 'Hackthon', 'A hackathon is a brief, intensive event where diverse teams collaborate to solve challenges or creat', '2023-11-16 10:02:16', '2023-11-24 16:00:00', '2023-12-02 23:59:59', 'event.jpg'),
(5, NULL, 'Studython', 'A studython is a concentrated study event where students collaboratively work on coursework and exa', '2023-11-16 10:02:40', '2023-11-30 13:00:00', '2023-12-02 23:59:59', 'studython.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `joblisting`
--

CREATE TABLE `joblisting` (
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `Organisation` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `workplace_type` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `job_type` varchar(50) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `date_posted` datetime DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `required_Skills` varchar(255) NOT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joblisting`
--

INSERT INTO `joblisting` (`job_id`, `account_id`, `Organisation`, `job_title`, `workplace_type`, `location`, `job_type`, `job_description`, `date_posted`, `deadline`, `experience`, `required_Skills`, `salary`) VALUES
(1, NULL, 'Openserve', 'Junior Software Developer', 'Onsite', 'Pretoria', 'Full-time', 'Developing web applications', '2024-01-30 08:35:10', '2024-02-29 00:40:00', 'Diploma in Computer Science\n*1 year relevant experience', 'Java\n*CSS\n*HTML', 0),
(3, NULL, 'Openserve', 'Intern Software Developer', 'Onsite', 'Soshanguve', 'Full-time', 'Work-Integrated Learning for Students', '2024-01-30 12:18:52', '2024-02-28 20:30:00', 'Diploma in Computer Science \n*0-1 year experience', 'Java\n*Css\n*Html\n*Git', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `idmessage` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `sender` varchar(45) NOT NULL,
  `room` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `sender`, `receiver`, `message`, `date`) VALUES
(1, 1, 3, 'Go to EC for more information', '2024-01-30 09:32:50'),
(2, 0, 6, 'Kefentse Mnisi has Followed You', '2024-01-30 11:14:39'),
(3, 0, 10, 'Kefentse Mnisi has Followed You', '2024-01-30 11:14:40'),
(4, 1, 5, 'Yes you ask ', '2024-01-30 12:19:38'),
(5, 0, 2, 'Aphiwe Maluleke has Followed You', '2024-01-30 12:24:07'),
(6, 0, 3, 'Aphiwe Maluleke has Followed You', '2024-01-30 12:24:17'),
(7, 0, 6, 'Aphiwe Maluleke has Followed You', '2024-01-30 12:24:20'),
(8, 0, 11, 'Your application for Intern Software Developer was Rejected, Reason: Do not meet job requirements', '2024-01-30 12:26:55'),
(9, 1, 11, 'Sorry you didn\'t meet the requirements', '2024-01-30 12:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `idpost` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_postion` varchar(45) NOT NULL,
  `institution` varchar(45) NOT NULL,
  `post_time` varchar(45) NOT NULL,
  `text_message` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `query_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `query_text` varchar(255) NOT NULL,
  `query_response` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`query_id`, `account_id`, `query_text`, `query_response`, `status`, `date`) VALUES
(1, 3, 'please help with Studython applications', 'Go to EC for more information', 'Answered', '2024-01-30 09:32:22'),
(2, 5, 'Can I ask a question?', 'Yes you ask ', 'Answered', '2024-01-30 11:32:55'),
(3, 11, 'I would like to do follow-up on my application ', 'Sorry you didn\'t meet the requirements', 'Answered', '2024-01-30 12:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `tut_alumni`
--

CREATE TABLE `tut_alumni` (
  `alumni_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tut_alumni`
--

INSERT INTO `tut_alumni` (`alumni_id`, `name`, `surname`, `account_id`) VALUES
(2, 'Sihle', 'Mlongo', 2),
(3, 'Kefentse', 'Mnisi', 3),
(4, 'Patience', 'Malobane', 8),
(5, 'Snenhlanhla', 'Masuku', 6),
(6, 'Berlinah', 'Nkadimeng', 10),
(7, 'Noxolo', 'Mnyalo', 9),
(8, 'Elias', 'Mashia', 5),
(9, 'Kgaogelo', 'Mashao', 4),
(10, 'Kabelo', 'Lehlojane', 7),
(12, 'Aphiwe', 'Maluleke', 11);

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(50) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `employment_status` varchar(50) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `bio` varchar(50) NOT NULL,
  `pic_file` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`user_id`, `location`, `qualification`, `employment_status`, `skills`, `experience`, `interest`, `bio`, `pic_file`, `position`, `company`, `account_id`, `date_created`) VALUES
(1, '', '', 'Employed', '', '', '', '', 'aboutPic.jpg', 'Tester', 'ICEP', 2, '2023-12-11'),
(2, 'Soshanguve', 'PHD', 'Employed', 'Java,React,Angular,NodeJS,MySQL Database', '6 Years', 'Coding/Full-Stack', 'team player and hackerthon master', 'Sihle.jpg', 'Developer', 'ABSA', 4, NULL),
(3, 'Hammanskraal', 'Doctrate', 'Employed', 'C#,Java,React,Angular,NodeJS,MySQL Database', '12 Years', 'Full-Stack', ' hackerthon master', 'Kfentse.jpg', 'Developer', '', 10, NULL),
(4, 'Kwazulu-Natal', 'Diploma', 'UnEmployed', 'Java,MySQL Database', '0', 'Business Analyst', 'like attending hackerthon', 'Patience.jpg', 'Tester', '', 5, NULL),
(5, 'Sandton', 'masters', 'Self-Employed', 'Java,AWS Deploying,MySQL Database,Azure', '2 months', 'Scrum Master', ' hackerthon Master', 'Sneh.jpg', 'Tester', '', 6, NULL),
(6, '', 'Developer', '', '', '', '', '', 'Berlinah.jpg', 'BA', 'ABSA', 3, '2023-10-15'),
(7, '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(8, '', '', '', '', '', '', '', 'Kgaogelo.jpg', '', '', NULL, NULL),
(9, '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(10, '266 Weststreet Pretoria North', 'Business Analyst ', 'Unemployed', 'Analytical Skills, Communication Skills, Problem-S', '2', 'Coding, Hackerthons', 'John Doe Is A Seasoned Business Analyst With Over ', 'default-avatar.jpg', 'DevOps', 'Amazon', 11, '2024-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `alumni_record`
--
ALTER TABLE `alumni_record`
  ADD PRIMARY KEY (`alumni_rec_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `alumni_space_account`
--
ALTER TABLE `alumni_space_account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`savejob_id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`certificateId`);

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`connection_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `joblisting`
--
ALTER TABLE `joblisting`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`idmessage`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`query_id`);

--
-- Indexes for table `tut_alumni`
--
ALTER TABLE `tut_alumni`
  ADD PRIMARY KEY (`alumni_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alumni_record`
--
ALTER TABLE `alumni_record`
  MODIFY `alumni_rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `alumni_space_account`
--
ALTER TABLE `alumni_space_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `savejob_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `certificateId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `connection_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `joblisting`
--
ALTER TABLE `joblisting`
  MODIFY `job_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `idmessage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `query_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tut_alumni`
--
ALTER TABLE `tut_alumni`
  MODIFY `alumni_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `alumni_space_account` (`account_id`);

--
-- Constraints for table `alumni_record`
--
ALTER TABLE `alumni_record`
  ADD CONSTRAINT `alumni_record_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `alumni_space_account` (`account_id`);

--
-- Constraints for table `tut_alumni`
--
ALTER TABLE `tut_alumni`
  ADD CONSTRAINT `tut_alumni_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `alumni_space_account` (`account_id`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `alumni_space_account` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
