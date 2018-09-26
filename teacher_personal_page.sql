-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2017 at 08:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacher_personal_page`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `t_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `file_name` int(11) NOT NULL,
  `file_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `t_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_test`
--

CREATE TABLE `class_test` (
  `t_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `e_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `year` int(11) NOT NULL,
  `miscellaneous` text NOT NULL,
  `miscellaneous_link` text NOT NULL,
  `inst_link` text NOT NULL,
  `institution` text NOT NULL,
  `t_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`e_id`, `title`, `year`, `miscellaneous`, `miscellaneous_link`, `inst_link`, `institution`, `t_id`) VALUES
(1, 'Master of Science in Computer Science', 2012, 'Department of Mathematics, Statistics and Computer Science', '', '', 'St. Francis Xavier University, Antigonish, NS, Canada.', 1),
(2, 'Bachelor of Science in Computer Science and Engineering', 2007, 'Department of Computer Science and Engineering', '', '', 'Khulna University, Khulna, Bangladesh.', 1),
(3, 'Higher Secondary Certificate (HSC)', 2001, 'Group : Science.', '', '', 'Jhenidah Cadet College, Jhenidah, Bangladesh.', 1),
(4, 'Secondary School Certificate (SSC)', 1999, 'Group : Science.', '', '', 'Jhenidah Cadet College, Jhenidah, Bangladesh.', 1),
(5, 'Secondary School Certificate (SSC)', 1992, 'Group : Science.', '', '', 'data missing', 4),
(6, 'Secondary School Certificate (SSC)', 1988, 'Group : Science.', '', '', 'Pirojpur Government School', 3),
(7, 'Secondary School Certificate (SSC)', 1998, 'Group : Science.', '', '', 'Data is not found', 2),
(8, 'Higher Secondary Certificate (HSC)', 2000, 'Group : Science.', '', '', 'data missing', 2),
(9, 'Higher Secondary Certificate (HSC)', 1990, 'Group : Science.', '', '', 'Sohrawardi College', 3),
(10, 'Higher Secondary Certificate (HSC)', 1994, 'Group : Science.', '', '', 'data missing', 4),
(11, 'Bachelor of Science in Computer Science and Engineering', 2005, 'Department of Computer Science and Engineering', '', '', 'Khulna University, Khulna, Bangladesh.', 2),
(12, 'Bachelor of Science in Computer Science and Engineering', 1995, 'Department of Computer Science and Engineering', '', '', 'Khulna University, Khulna, Bangladesh.', 3),
(13, 'Bachelor of Science in Computer Science and Engineering', 1999, 'Department of Computer Science and Engineering', '', '', 'Khulna University, Khulna, Bangladesh.', 4),
(14, 'Master of Science in Computer Science', 2010, 'data missing', '', '', 'UofO Canada', 2),
(15, 'Master of Science in Computer Science', 2000, 'data missing', '', '', 'Asian Institute of Technology, Technical University of Dresden', 3),
(16, 'Master of Science in Computer Science', 2004, 'data missing', '', '', 'National University of Singapore (NUS), Singapore', 4),
(17, 'Ph.D. Candidate', 2017, '', '', '', 'UofO Canada', 2),
(18, 'PhD in Computer Science', 2011, 'data missing', '', '', 'University of Ottawa', 3),
(19, 'D.Eng. (Information Engineering)', 2008, 'data missing', '', '', 'Hiroshima University, Japan.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `p_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `info` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`p_id`, `t_id`, `info`, `link`) VALUES
(1, 1, 'MS Thesis: A tableau-based workflow verification framework for Computation Tree Logic (CTL)Supervisor: Dr. Wendy MacCaull', ''),
(2, 1, 'B.Sc. Thesis: A new matchmaking algorithm for resource discovery on grid. Supervisor: Dr. Rafiqul Islam', ''),
(3, 1, 'Md. Zahidul Islam, Ahemd Shah Mashiyat, Kashif Nizam Khan and SM Masud Karim,"A Tableau Based Automated Theorem Prover Using High Performance Computing", in International Journal of Computers, Volume 7, Number 3, March 2012, pp. 597-607, Academy Publisher, Oulu, Finland.', ''),
(4, 1, 'Md. Rafiqul Islam, Md. Zahidul Islam and Nazia Leyla, "A tree based approach to matchmaking algorithms for Resource Discovery", in International Journal of Network Management, Volume 18, Issue 5, pp. 427-436, September/October 2008, Wiley Publishers, Print ISSN: 1055-7148, DOI:10.1002/nem.686.', ''),
(5, 1, 'Md. Zahidul Islam and Amit Kumar Mondal,"Towards a Standard Bangla PhotoOCR: Text Detection and Localization", in Proceedings of 17th International Conference on Computer and Information Technology (ICCIT), 22-23 December, 2014, Dhaka, Bangladesh, pp.198-203.', ''),
(6, 1, 'Md. Zahidul Islam and Wendy MacCaull,"A One-Pass Tableau-Based Workflow Verification Framework", in The Third Workshop on Practical Aspects of Automated Reasoning (PAAR-12), associated with the 6th International Joint Conference on Automated Reasoning (IJCAR-2012), Manchester, UK', ''),
(7, 1, 'Md. Zahidul Islam, Ahemd Shah Mashiyat, Kashif Nizam Khan and SM Masud Karim,"Towards A Tableau Based High Performance Automated Theorem Prover", in proceedings of The 14th International Conference on Computer and Information Technology (ICCIT 2010), Dhaka, Bangladesh.', ''),
(8, 1, 'Md. Rafiqul Islam, Md. Zahidul Islam and Nazia Leyla,"A Matchmaking Algorithm for Resource Discovery on Grid", in proceedings of The International Conference on Information and Communication Technology, 7-9 March, 2007, Dhaka, Bangladesh, pp.193-196.', ''),
(9, 1, 'Kashif Nizam Khan, Md. Zahidul Islam, Jinat Rehana and Md. Saidur Rahman,"Development of a Bangla Speech Driven Application", in proceedings of The International Conference on Computer and Information Technology, 28-30 December, Islamic University of Technology, Gazipur-1704, Bangladesh, pp.1015-1020.', ''),
(10, 3, 'In the Proc. of the Alberto Mendelzon Workshop on Foundations of Data Management (AMW), 2009.', ''),
(11, 3, 'Rahman A., Masud M., Kiringa I., and El Saddik A., "A Peer Data Sharing System Combining Schema and Data Level Mappings". In International Journal of Semantic Computing 3(1): 105-129, 2009.', ''),
(12, 3, 'Md. Anisur Rahman, Anwar Hossain, Iluju Kiringa, Abdulmotaleb El Saddik, "Towards an ontology for MPEG-7 Semantic Descriptions". In Proc. Intelligent Interactive Learning Object Repositories (I2LOR) Conference, Montreal, QC, Canada, November 2006.', ''),
(13, 3, 'M. Anwar Hossain, Md. Anisur Rahman, Iluju Kiringa and Abdulmotaleb El Saddik, "MeTaMaF: Metadata Tagging and Mapping Framework for Managing Multimedia Content", IEEE International Symposium on Multimedia (ISM 2006), December 11-13, 2006, San Diego, California, USA.', ''),
(14, 3, 'Md. Anisur Rahman, M. Anwar Hossain, Iluju Kiringa and Abdulmotaleb El Saddik, "Ontology-based Unification of MPEG-7 Semantic Descriptions", IEEE ICECE, Dhaka, Bangladesh, 2006.', ''),
(15, 3, 'Rahman M.A., Kiringa I., and El Saddik A., "Generalization of an Algorithm for Checking Consistency of Mapping Tables in a P2P System". In Proceedings of the 7th International Conference on Computer and Information Technology (ICCIT 2004), Dhaka, Bangladesh, Dec. 2004.', ''),
(16, 3, 'A S M Mahfujur Rahman, S. M. Rafizul Haque, Md. Iqbal Aziz Khan, Md. Anisur Rahman, "Multi-resolution Level-Of-Detail Terrain Rendering with fast hierarchical visibility Algorithm" - Proceedings in the 7th International Conference on Computer and Information Technology (ICCIT), pp 7-12, December 2004.', ''),
(17, 3, 'Md Anisur Rahman, A S M Mahfujur Rahman, Md. Abul Kalam Azad, Bikash Kumar Nandi, "Real-Time Fast Level-of-Detail Terrain Rendering Algorithm" - Proceedings in the 5th International Conference on Computer and Information Technology (ICCIT), 2003.', ''),
(18, 3, 'Md Anisur Rahman, A S M Mahfujur Rahman, Md. Abul Kalam Azad, Bikash Kumar Nandi, "Application of Different Algorithms on the Development of a Graphics Renderer using OpenGL" - Proceedings in the 5th International Conference on Computer and Information Technology (ICCIT), December 2003.', ''),
(19, 0, '', ''),
(20, 4, 'Kamrul Hasan Talukder and Koichi Harada, "Communication Among Multiple Threads in the Concurrent Wavelet Transformation for Image Compression", Proceedings of the 12th ACIS International Conference on Software Engineering, Artificial Intelligence, Networking and Parallel/Distributed Computing (SNPD 2011), July 06-08, 2011, Sydney, Australia, IEEE Computer Society.', ''),
(21, 4, 'Kamrul Hasan Talukder, Sheikh Hasib Bin Zaman, Rifat Ahmmad Rashid, " A formally verified concurrent wavelet transform based image compression and transmission technique ”, International Journal of Computing, Communication and Networking Research, Vol. 2, No. 2, 2013.', ''),
(22, 4, 'Kamrul Hasan Talukder and Koichi Harada, "Modeling the Communications in the Multi-threaded System for Concurrent wavelet to Compress the Image ”, Proceedings of the 8th International Conference on Information Technology: New Generations (ITNG 2011), April 11-13, 2011, Las Vegas, Nevada, USA. IEEE Computer Society.', ''),
(23, 4, 'Kamrul Hasan Talukder and Koichi Harada, "2D Image Compression using Concurrent Wavelet Transform”, Proceedings of the 2010 IEEE International Conference on Graphic and Image Processing (ICGIP 2010)", Manila, Philippines, 4-5 December 2010, pp. 269-272, IEEE Catalog Number: CFP1083L-PRT, ISBN: 978-1-4244-9016-5, IEEE Xplore.', ''),
(24, 4, 'Kamrul Hasan Talukder, Md. Mustaneer Rahman and Toukir Ahmed, “An Efficient Speech Generation Method Based on Character and Modifier of Bangla PDF Document”, Proceedings of the 13th International Conference on Computer and Information Technology (ICCIT 2010), 23-25 December 2010, Dhaka, Bangladesh,IEEE Xplore.', ''),
(25, 4, 'Md. Sayem Chowdury, G. M. Rokibul Hasan and Kamrul Hasan Talukder, “A Composition Technique of Multiple Switching Functions Based on BDD”, Proceedings of the 13th International Conference on Computer and Information Technology (ICCIT 2010), 23-25 December 2010, Dhaka, Bangladesh, IEEE Xplore.', ''),
(26, 4, 'Kamrul Hasan Talukder and Koichi Harada, "A Scheme of Model Verification of the Concurrent Discrete Wavelet Transform (DWT) for Image Compression", International Journal of Signal Processing, Volume 5, Number 1, 2009, ISSN: 1304-4478.', ''),
(27, 4, 'Kamrul Hasan Talukder and Koichi Harada, "Use of Concurrent Wavelet Transform (WT) to Image Compression and a Verification Analysis of Communicating Threads for Concurrent WT", Engineering Letters, Volume 16, Issue 2, 2008, pp. 202-209, DBLP.', ''),
(28, 4, 'Kamrul Hasan Talukder, Ahmed Shah Mashiyat and Rezoanoor Rahman, "Design and Implementation of a Model of a Specification Language for Formal Verification", Published in the Research Journal of Applied Sciences, Vol. 3, Num. 4, 2008, Page 288-293, ISSN: 1815-932X.', ''),
(29, 4, 'Kamrul Hasan Talukder and Koichi Harada, "Message Sequence Charts to Specify the Communicating Threads for Concurrent Discrete Wavelet Transform Based Image Compression and a Verification Analysis", Proceedings of the SNPD, August 2008, Phuket, Thailand. pp. 218-225, IEEE Computer Society. Indexed by ACM, IEEE and DBLP.', ''),
(30, 2, 'This is a dummy data 1.', ''),
(31, 2, 'This is a dummy 2.', '');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `r_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `interest` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`r_id`, `t_id`, `interest`) VALUES
(1, 1, 'Machine Learning'),
(2, 1, 'Computer Vision'),
(3, 1, 'Formal Verification and Model Checking'),
(4, 1, 'High Performance Computing'),
(5, 1, 'Artificial Intelligence'),
(6, 4, 'Image Processing'),
(7, 4, 'Formal Verification'),
(8, 4, 'Software Engineering'),
(9, 3, 'Database System'),
(10, 3, 'Multimedia'),
(11, 2, 'Ubiquitous Computing'),
(12, 2, 'Cyber-Physical Systems'),
(13, 2, 'Internet-of-Things'),
(14, 2, 'Internet-of-Vehicles'),
(15, 2, 'Smart City Applications');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `designation` varchar(20) NOT NULL,
  `inst` varchar(100) NOT NULL,
  `discipline` varchar(100) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `name`, `email`, `photo`, `about`, `designation`, `inst`, `discipline`, `phone`, `password`, `last_login`) VALUES
(1, 'Md Zahidul Islam', 'zahid@cseku.ac.bd', 'images/zahid1.png', 'I am Md. Zahidul Islam. I am working as an assistant professor of Computer Science and Engineering discipline at Khulna University. \r\n\r\nI have completed an MS in Computer Science from the Department of Mathematics, Statistics and Computer Science of St. Francis Xavier University, NS, Canada. I have completed my B.Sc. in Computer Science and Engineering from Khulna University, Bangladesh. \r\n\r\nDuring my MS study, I worked as a research assistant at Centre for Logic and Information under the supervision of Dr. Wendy MacCull. As a part of my research I developed a One-Pass Tableau based model checker to verify CTL properties of healthcare workflow models. \r\n\r\nMy areas of interest include Machine Learning,Computer Vision,Formal Verification,Model Checking,High Performance Computing and Artificial Intelligence.', 'Assistant Professor', 'Khulna University', 'CSE discipline', 171000000, '18b2d8ac9b09455f4aa614aac0505cda', '0000-00-00 00:00:00'),
(2, 'Kazi Masudul Alam', 'kazimasudulalam@gmail.com', 'images/kmalam1.png', 'I am Kazi Masudul Alam, Assistant Professor of cse discipline , Khulna university.', 'Assistant Professor', 'Khulna university', 'cse discipline', 1710000000, 'f30cba40ff1284d56b6dd5955e7b4499', '0000-00-00 00:00:00'),
(3, 'Dr. Md. Anisur Rahman', 'anis@cseku.ac.bd', 'images/anis1.png', 'I am Dr. Md. Anisur Rahman, Professor of cse discipline , Khulna university.', 'Professor', 'Khulna university', 'cse discipline', 1700000000, '1d3e6d12f356eac378bd4779bad76bbe', '0000-00-00 00:00:00'),
(4, 'Dr. Kamrul Hasan Talukder', 'khtalukder@gmail.com', 'images/kamrul1.png', 'I am Dr. Kamrul Hasan Talukder. I am working as an professor of Computer Science and Engineering discipline at Khulna University. ', 'Professor', 'Khulna University', 'Computer Science and Engineering discipline', 1700000000, '28be24e87567190da030b360530e6c65', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`t_id`,`c_id`,`file_name`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`t_id`,`c_id`,`day`);

--
-- Indexes for table `class_test`
--
ALTER TABLE `class_test`
  ADD PRIMARY KEY (`t_id`,`date`,`c_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
