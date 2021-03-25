-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2020 at 03:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `interview_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`, `interview_date`) VALUES
(1, 26, 1, 1, 2, '26/03/2020'),
(2, 27, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Pune', 1),
(2, 'Mumbai', 2),
(3, 'Bangalore', 2),
(4, 'Hyderabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `headofficecity` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `companytype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `companyname`, `headofficecity`, `country`, `state`, `city`, `contactno`, `website`, `companytype`, `email`, `password`, `createdAt`, `active`) VALUES
(1, 'Motilal Oswal', '', 'India', 'maharashtra', 'mumbai', '02262126600', 'http://www.motilaloswal.com/', 'Multi-National', 'admin@careem.com', 'NGZkYTBjZjEzMjVhOTYwMzRmMDMzNzJmMGM0N2Q1ZTc=', '2020-03-24 10:55:01', 1),
(2, 'Tata Motors', 'Mumbai', 'India', 'Maharastra', 'Mumbai', '1800 209 7979', 'https://www.tatamotors.com/', 'Multi-National', '', 'ZTZmNWRjNmQzNmUxZjAyM2M0MWUxNDFhYjc2OTNmOWU=', '2020-03-24 11:05:00', 1),
(3, 'Rajesh Excports', 'Bangalore', 'India', 'Karnataka', 'No 4, Batavia Chambers,\r\n\r\nKumara Krupa Road, Kumara Park East,', '+91-80-42842112', 'http://www.rajeshindia.com/', 'Multi-National', 'rajeshindia@gmail.com', 'ZTE0ZTY0Nzk4ZjA5MWJmZWUzY2FkNDQxZWIxZGNlMDU=', '2020-03-24 11:19:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(101, 'IN', 'India', 91);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(1, 1, 'Web Designer III', 'Curabitur convallis.', '6830', '203782', '3', 'Legal', '2020-03-28 06:50:00'),
(26, 1, 'HR Manager', '<p><em>Need a hr manager can handle h operations</em></p>', '50000', '200000', '2', '5', '2020-03-29 12:44:45'),
(27, 1, 'UI Developer', '<p><strong>Motilal is the leading technology platform for the greater Middle East. A pioneer of the region&rsquo;s ride-hailing economy,Motilal  is expanding services across its platform to include payments, delivery and mass transportation. Motilal\'s mission is to simplify and improve the lives of people and build a lasting institution that inspires. Established in July 2012, Motilal operates in more than 120 cities across 15 countries and has created more than one million job opportunities in the regionðŸŒŽ.</strong></p>', '250000', '900000', '1', 'BS(CS)', '2020-03-30 15:58:04'),
(30, 1, 'Project Lead - Studio team', '<div id=\\\"header\\\" style=\\\"padding-right: 0px; text-align: center; padding-top: 6.6875rem; padding-bottom: 1.875rem; color: #333333; font-family: Careem; font-size: 13px; letter-spacing: 0.26px; word-spacing: 1.3px;\\\">\\r\\n<div class=\\\"location\\\" style=\\\"color: inherit; margin: 8px 0px; font-size: 1.1875rem;\\\">Bangaloe,India</div>\\r\\n</div>\\r\\n<div id=\\\"content\\\" class=\\\"\\\" style=\\\"max-width: 47.5rem; margin: 0px auto; position: relative; font-family: Careem; padding-bottom: 2.5rem; line-height: 1.8; font-size: 1.2em; color: #333333; letter-spacing: 0.26px; word-spacing: 1.3px;\\\">\\r\\n<p style=\\\"margin: 1.3em 0px;\\\">rajesh is the leading technology platform for the greater Middle East. A pioneer of the region&rsquo;s ride-hailing economy, rajesh is expanding services across its platform to include payments, delivery and mass transportation.</p>\\r\\n<p style=\\\"margin: 1.3em 0px;\\\">rajesh&rsquo;s mission is to simplify and improve the lives of people and build a lasting institution that inspires. Established in July 2012, rajesh operates in more than 120 cities across 15 countries and has created more than one million job opportunities in the region</p>\\r\\n<p style=\\\"margin: 1.3em 0px;\\\"><strong style=\\\"font-size: 2.5em;\\\">Job sdfsfsdfsd</strong></p>\\r\\n<p style=\\\"margin: 1.3em 0px;\\\">Project Lead &ndash; this role is in Studio Team of Careem NOW, Careem&rsquo;s newly launched delivery business.</p>\\r\\n<p style=\\\"margin: 1.3em 0px;\\\">The key responsibilities include maintaining an efficient operation, key stakeholder management and consistently improve core customer product through app Studio (food imagery bank) management. The role requires operational excellence and stakeholder management skills. Basic photoshop (photo editing) knowledge is a must have. Experience in photography, esp. in food photography is highly appreciated.</p>\\r\\n<p style=\\\"margin: 1.3em 0px;\\\"><strong style=\\\"font-size: 2.5em;\\\">Responsibilities:</strong></p>\\r\\n<ul>\\r\\n<li><strong>Operations Management</strong>: Manage daily operations of app&rsquo;s Studio (food imagery bank) management for all types of merchants. Utilizing the existing team which consists of full-time colleagues, interns and food photographers. This will involve:\\r\\n<ul>\\r\\n<li>Effectively managing the team, assigning accountabilities, monitoring results and taking corrective actions</li>\\r\\n<li>Ensuring that full capacity of the team is utilized efficiently with minimum errors using the right processes and tools</li>\\r\\n<li>Selecting, editing (color grading, resizing, curating and cropping) and positioning best quality food images on platform</li>\\r\\n<li>Help develop the tools and products to make the process more automated and efficient</li>\\r\\n</ul>\\r\\n</li>\\r\\n<li><strong>Stakeholder Management</strong>: Ensure that merchants are live on the application in shortest time possible through:\\r\\n<ul>\\r\\n<li>Liaising and collaborating with&nbsp;Catalogue and cross-functional teams across the organization to follow up the daily task flow</li>\\r\\n<li>Creating and managing relationships with team members to ensure quality image availability on time</li>\\r\\n</ul>\\r\\n</li>\\r\\n</ul>\\r\\n<p style=\\\"margin: 1.3em 0px;\\\"><strong style=\\\"font-size: 2.5em;\\\">Requirements:&nbsp;</strong></p>\\r\\n<ul>\\r\\n<li>1-3 years&rsquo; experience in project management, including managing work streams, teams and timelines to drive a project to completion</li>\\r\\n<li>An eye for aesthetics in design, esp. food imagery (passion for food photography, food styling will be an added advantage)</li>\\r\\n<li>Basic photoshop skills with experience in photo editing</li>\\r\\n<li>Ability to work with multiple stakeholders and agile teams in a complex environment</li>\\r\\n<li>High level of ownership and ability to work independently with limited monitoring / guidance</li>\\r\\n<li>Ability to work in a fast-paced, dynamic environment. Commitment to deadlines</li>\\r\\n<li><strong>Languages:&nbsp;</strong>Require above average capabilities in written English. Arabic will be an added advantage</li>\\r\\n</ul>\\r\\n</div>', '90000', '500000', '1', 'none', '2020-04-01 11:47:05'),
(31, 2, 'Recovery /collection Officer Telenor Microfinance Bank', '<div id=\\\"divDesc\\\" class=\\\"col-md-6\\\" style=\\\"box-sizing: border-box; position: relative; width: 570px; min-height: 1px; padding-right: 20px; padding-left: 20px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%; float: left; color: #333333; font-family: \\\'Open Sans\\\', sans-serif;\\\">\\r\\n<div id=\\\"\\\" class=\\\"font-size-13 ng-binding\\\" style=\\\"box-sizing: border-box;\\\">\\r\\n<p style=\\\"box-sizing: border-box; margin: 0px 0px 10px;\\\"><strong style=\\\"box-sizing: border-box;\\\">Description:</strong></p>\\r\\n<p style=\\\"box-sizing: border-box; margin: 0px 0px 10px;\\\">&nbsp;</p>\\r\\n<p style=\\\"box-sizing: border-box; margin: 0px 0px 10px;\\\">Preferably Graduate from an HEC recognized University.<br style=\\\"box-sizing: border-box;\\\" /><strong style=\\\"box-sizing: border-box;\\\">Required Experience:&nbsp;</strong>Minimum 01- 03 Years&rsquo; Experience in relevant field in Micro-finance bank or industry.<br style=\\\"box-sizing: border-box;\\\" /><strong style=\\\"box-sizing: border-box;\\\">Required Skills :&nbsp;</strong>Individual should be Target Oriented with Sound Knowledge of Credit Assessment.<br style=\\\"box-sizing: border-box;\\\" />Candidates fulfilling required criteria shall apply at&nbsp;</p>\\r\\n<p style=\\\"box-sizing: border-box; margin: 0px 0px 10px;\\\">&nbsp;</p>\\r\\n</div>\\r\\n</div>\\r\\n<div id=\\\"divGrad\\\" class=\\\"col-md-6\\\" style=\\\"box-sizing: border-box; position: relative; width: 570px; min-height: 1px; padding-right: 15px; padding-left: 15px; -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%; float: left; color: #333333; font-family: \\\'Open Sans\\\', sans-serif;\\\">\\r\\n<div id=\\\"divJobInfo\\\" class=\\\"font-size-13\\\" style=\\\"box-sizing: border-box; padding: 10px 10px 10px 25px; color: black; margin-right: -16px; margin-left: -12px;\\\">\\r\\n<div id=\\\"desc\\\" style=\\\"box-sizing: border-box;\\\">\\r\\n<table class=\\\"table\\\" style=\\\"box-sizing: border-box; border-collapse: collapse; max-width: 100%; background-color: transparent; border-spacing: 0px; width: 532.8px; margin-bottom: 20px;\\\">\\r\\n<tbody style=\\\"box-sizing: border-box;\\\">\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Organization</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\"><span style=\\\"box-sizing: border-box;\\\">Telenor Microfinance Bank</span></td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Industry</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\"><span style=\\\"box-sizing: border-box;\\\">Banking / Financial Services</span></td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Job Location</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">&nbsp;Karachi,Pakistan</td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Shift Type</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Morning</td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Job Type</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\"><span style=\\\"box-sizing: border-box;\\\">Full Time</span></td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Gender</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\"><span style=\\\"box-sizing: border-box;\\\">No Preference</span></td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Career Level</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\"><span style=\\\"box-sizing: border-box;\\\">Intermediate</span></td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Experience</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\"><span style=\\\"box-sizing: border-box;\\\">2 Years</span></td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Posted at</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Today</td>\\r\\n</tr>\\r\\n<tr style=\\\"box-sizing: border-box;\\\">\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">Expires on</td>\\r\\n<td style=\\\"box-sizing: border-box; padding: 8px; vertical-align: top; border-top: 1px solid #dddddd; line-height: 1.42857;\\\">2019-12-31</td>\\r\\n</tr>\\r\\n</tbody>\\r\\n</table>\\r\\n</div>\\r\\n</div>\\r\\n</div>', '500000', '8522222', '1', 'none', '2020-04-01 16:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Pune', 101),
(2, 'Bangalore', 101);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `video`) VALUES
(1, ' Sumeet', 'Samuel', 'sumeetsamuel@gmail.com', 'asdfghjkl', '', 'Pune', 'Maharashtra', '02589458658', 'CSE', 'DEVELOPER', '2021', '1999-04-25', '20', 'DEVELOPER', '5de26ad3f_1.pdf', '163cc874d035158df5a21c4f06d40e51', 1, NULL),
(2, 'Nikhil', 'Pathak', 'NikhilPathak@gmail.com', 'asdfghjkluy', 'pune', 'haridwar', 'U.P', '09585558698', 'CSE', 'CS', '2021', '1999-5-15', '20', 'student', 'se3s2de.pdf', '163cc874d035158df5a21c4f06d40e51', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
