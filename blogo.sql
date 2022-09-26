-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 06:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `admin_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `admin_id`, `name`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(2, 1, 'admin', 'Hackers Exploited Zero-Day RCE Vulnerability in Sophos Firewall — Patch Released', 'Security software company Sophos has released a patch update for its firewall product after it was discovered that attackers were exploiting a new critical zero-day vulnerability to attack its customers&#39; network.\r\n\r\nThe issue, tracked as CVE-2022-3236 (CVSS score: 9.8), impacts Sophos Firewall v19.0 MR1 (19.0.1) and older and concerns a code injection vulnerability in the User Portal and Webadmin components that could result in remote code execution.\r\n\r\nThe company said it &#34;has observed this vulnerability being used to target a small set of specific organizations, primarily in the South Asia region,&#34; adding it directly notified these entities.\r\n\r\nAs a workaround, Sophos is recommending that users take steps to ensure that the User Portal and Webadmin are not exposed to WAN. Alternatively, users can update to the latest supported version -\r\n\r\n    - v19.5 GA\r\n    - v19.0 MR2 (19.0.2)\r\n    - v19.0 GA, MR1, and MR1-1\r\n    - v18.5 MR5 (18.5.5)\r\n    - v18.5 GA, MR1, MR1-1, MR2, MR3, and MR4\r\n    - v18.0 MR3, MR4, MR5, and MR6\r\n    - v17.5 MR12, MR13, MR14, MR15, MR16, and MR17\r\n    - v17.0 MR10\r\n\r\nUsers running older versions of Sophos Firewall are required to upgrade to receive the latest protections and the relevant fixes.\r\n\r\nThe development marks the second time a Sophos Firewall vulnerability has come under active attacks within a year. Earlier this March, another flaw (CVE-2022-1040) was used to target organizations in the South Asia region.\r\n\r\nThen in June 2022, cybersecurity firm Volexity shared more details of the attack campaign, pinning the intrusions on a Chinese advanced persistent threat (APT) known as DriftingCloud.\r\n\r\nSophos firewall appliances have also previously come under attack to deploy what&#39;s called the Asnarök trojan in an attempt to siphon sensitive information.', 'technology', 'firewall.jpg', '2022-09-25', 'active'),
(3, 1, 'admin', 'Hackers Using Fake CircleCI Notifications to Hack GitHub Accounts', 'GitHub has put out an advisory detailing what may be an ongoing phishing campaign targeting its users to steal credentials and two-factor authentication (2FA) codes by impersonating the CircleCI DevOps platform.\r\n\r\nThe Microsoft-owned code hosting service said it learned of the attack on September 16, 2022, adding the campaign impacted &#34;many victim organizations.&#34;\r\n\r\nThe fraudulent messages claim to notify users that their CircleCI sessions have expired and that they should log in using GitHub credentials by clicking on a link.\r\n\r\nAnother bogus email revealed by CircleCI prompts users to sign in to their GitHub accounts to accept the company&#39;s new Terms of Use and Privacy Policy by following the link embedded in the message.\r\n\r\nRegardless of the lure, doing so redirects the target to a lookalike GitHub login page designed to steal and exfiltrate the entered credentials as well as the Time-based One Time Password (TOTP) codes in real-time to the attacker, effectively allowing a 2FA bypass.\r\n\r\n&#34;Accounts protected by hardware security keys are not vulnerable to this attack,&#34; GitHub&#39;s Alexis Wales said.\r\n\r\nAmong other tactics embraced by the threat actor upon gaining unauthorized access to the user account include creating GitHub personal access tokens (PATs), authorizing OAuth applications, or adding SSH keys to maintain access even after a password change.\r\n\r\nThe attacker has also been spotted downloading private repository contents, and even creating and adding new GitHub accounts to an organization should the compromised account have organization management permissions.\r\n\r\nGitHub said it has taken steps to reset passwords and remove maliciously-added credentials for impacted users, alongside notifying those affected and suspending the actor-controlled accounts. It did not disclose the scale of the attack.\r\n\r\nThe company is further urging organizations to consider using phishing-resistant hardware security keys to prevent such attacks.\r\n\r\nThe latest phishing attack comes a little over five months after GitHub suffered a highly targeted campaign that resulted in the abuse of third-party OAuth user tokens maintained by Heroku and Travis CI to download private repositories.', 'technology', 'github.webp', '2022-09-25', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
