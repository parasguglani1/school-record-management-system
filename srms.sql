-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 09:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm_form`
--

CREATE TABLE `adm_form` (
  `S.No` int(5) NOT NULL,
  `Name` text NOT NULL,
  `DOB` date NOT NULL,
  `Father's Name` text NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Address` text NOT NULL,
  `District` text NOT NULL,
  `State` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adm_form`
--

INSERT INTO `adm_form` (`S.No`, `Name`, `DOB`, `Father's Name`, `Gender`, `Mobile`, `Address`, `District`, `State`, `dt`) VALUES
(1, 'Paras Guglani', '2001-08-22', 'Baldev Raj', 'M', '+91 8630539308', '329,Ghanta Ghar', 'Meerut', 'Uttar Pradesh', '2021-07-07 10:03:27'),
(2, 'Rohit Beniwal', '2001-03-31', 'abcd', 'M', '9818846229', '323,', 'Noida', 'Uttar Pradesh', '2021-07-08 16:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `meadmin`
--

CREATE TABLE `meadmin` (
  `id` int(12) NOT NULL,
  `admin_username` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `t_staff_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meadmin`
--

INSERT INTO `meadmin` (`id`, `admin_username`, `admin_password`, `t_staff_type`) VALUES
(1, 'paras', 'paras', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

CREATE TABLE `st_info` (
  `st_id` int(12) NOT NULL,
  `st_fullname` varchar(100) NOT NULL,
  `st_username` varchar(30) NOT NULL,
  `st_password` varchar(100) NOT NULL,
  `st_grade` int(5) NOT NULL,
  `roll_no` varchar(20) NOT NULL,
  `st_dob` varchar(20) NOT NULL,
  `st_address` varchar(100) NOT NULL,
  `st_district` varchar(100) NOT NULL,
  `st_gender` varchar(12) NOT NULL,
  `st_father` varchar(100) NOT NULL,
  `st_mother` varchar(100) NOT NULL,
  `st_parents_contact` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`) VALUES
(1, 'Paras Guglani', 'paras22', 'paras22', 8, '20BCS9403', '22-08-2001', '329,Mandir wali Gali Ghantaghar', 'Meerut', 'Male', 'Baldev Raj', 'Poonam Guglani', '8630539308'),
(2, 'Prateek Sharma', 'prateek27', 'prateek27', 8, '20BCS9383', '27-11-2001', 'H-174/1-A Azad Nagar  Bhilwara Rajasthan', 'Bhilwara', 'Male', 'Rajesh Sharma', 'Meena Sharma', '9799932815'),
(3, 'Rohit Beniwal', 'rohit21', 'rohit21', 8, '20BCS9388', '21-04-2002', 'B2-1602 Gardenia glory sector 46, Noida', 'Noida', 'Male', 'Rakesh Kumar', 'Neeru Devi', '9818946229'),
(4, 'Rohan Ghosh', 'rohan25', 'rohan25', 8, '20BCS9671', '25-01-2001', 'VILLAGE AND PO-KALUPUR, PS BONGAON, NORTH 24 PARGANAS, WEST BENGAL-743235', 'Parganas', 'Male', 'Krishna Pada Ghosh', 'Poly Ghosh', '7407337008'),
(5, 'Paras Guglani', 'paras', 'paras', 10, '21', '22-08-2001', '331,Mandir Wali Gali,GhantaGhar', 'Meerut', 'Male', 'Baldev Raj', 'Poonam Guglani', '8630539308'),
(6, 'Diksha Bhardwaz', 'Diksha Bhardwaz', 'Diksha Bhardwaz', 10, '20BCS9382', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(7, 'Prateek Sharma', 'Prateek Sharma', 'Prateek Sharma', 10, '20BCS9383', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(8, 'TANYA', 'TANYA', 'TANYA', 10, '20BCS9386', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(9, 'Nimish Sahni', 'Nimish Sahni', 'Nimish Sahni', 10, '20BCS9387', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(10, 'Rohit Beniwal', 'Rohit Beniwal', 'Rohit Beniwal', 10, '20BCS9388', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(11, 'Abhishek raj', 'Abhishek raj', 'Abhishek raj', 10, '20BCS9389', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(12, 'PRASHANT SHARMA', 'PRASHANT SHARMA', 'PRASHANT SHARMA', 10, '20BCS9390', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(13, 'Nitish Agarwal', 'Nitish Agarwal', 'Nitish Agarwal', 10, '20BCS9392', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(14, 'SATYAM LAL', 'SATYAM LAL', 'SATYAM LAL', 10, '20BCS9393', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(15, 'NAGENDRA SINGH', 'NAGENDRA SINGH', 'NAGENDRA SINGH', 10, '20BCS9395', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(16, 'Aman kumar Ansh', 'Aman kumar Ansh', 'Aman kumar Ansh', 10, '20BCS9396', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(17, 'Prince Kumar Singh', 'Prince Kumar Singh', 'Prince Kumar Singh', 10, '20BCS9397', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(18, 'Kanishk Soni', 'Kanishk Soni', 'Kanishk Soni', 10, '20BCS9398', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(19, 'AKSHAT SRIVASTAVA', 'AKSHAT SRIVASTAVA', 'AKSHAT SRIVASTAVA', 10, '20BCS9399', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(20, 'Paras Guglani', 'Paras Guglani', 'Paras Guglani', 10, '20BCS9403', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(21, 'Himanshu', 'Himanshu', 'Himanshu', 10, '20BCS9655', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(22, 'Himanshu Raj', 'Himanshu Raj', 'Himanshu Raj', 10, '20BCS9659', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(23, 'Prabhakar sharma', 'Prabhakar sharma', 'Prabhakar sharma', 10, '20BCS9660', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(24, 'Vikash Pandey', 'Vikash Pandey', 'Vikash Pandey', 10, '20BCS9662', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(25, 'RAMIT ROSHAN', 'RAMIT ROSHAN', 'RAMIT ROSHAN', 10, '20BCS9667', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(26, 'Rohan Ghosh', 'Rohan Ghosh', 'Rohan Ghosh', 10, '20BCS9671', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(27, 'GAURAV KUMAR', 'GAURAV KUMAR', 'GAURAV KUMAR', 10, '20BCS9672', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(28, 'RAGHAV SHARMA', 'RAGHAV SHARMA', 'RAGHAV SHARMA', 10, '20BCS9673', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(29, 'ABHINAV PANDEY', 'ABHINAV PANDEY', 'ABHINAV PANDEY', 10, '20BCS9676', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(30, 'Aman Kumar', 'Aman Kumar', 'Aman Kumar', 10, '20BCS9678', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(31, 'Jasdeep Singh', 'Jasdeep Singh', 'Jasdeep Singh', 10, '20BCS9680', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(32, 'Amrit Raj', 'Amrit Raj', 'Amrit Raj', 10, '20BCS9681', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(33, 'VIVEK RANJAN', 'VIVEK RANJAN', 'VIVEK RANJAN', 10, '20BCS9684', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(34, 'apoorv pandey', 'apoorv pandey', 'apoorv pandey', 10, '20BCS9685', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(35, 'shashvat kumar', 'shashvat kumar', 'shashvat kumar', 10, '20BCS9686', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(36, 'CHANPREET SINGH', 'CHANPREET SINGH', 'CHANPREET SINGH', 10, '20BCS9688', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(37, 'Nagendra Kumar', 'Nagendra Kumar', 'Nagendra Kumar', 10, '20BCS9689', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(38, 'GOURAV RANA', 'GOURAV RANA', 'GOURAV RANA', 10, '20BCS9690', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(39, 'ROHAN KANOJIA', 'ROHAN KANOJIA', 'ROHAN KANOJIA', 10, '20BCS9691', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(40, 'Pushp Ranjan', 'Pushp Ranjan', 'Pushp Ranjan', 10, '20BCS9692', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(41, 'Harsh Tandiya', 'Harsh Tandiya', 'Harsh Tandiya', 10, '20BCS9693', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(42, 'MD TAUSIF ALAM', 'MD TAUSIF ALAM', 'MD TAUSIF ALAM', 10, '20BCS9694', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(43, 'Anukriti singh', 'Anukriti singh', 'Anukriti singh', 10, '20BCS9695', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(44, 'Suraj', 'Suraj', 'Suraj', 10, '20BCS9698', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(45, 'Kushagra Varshney', 'Kushagra Varshney', 'Kushagra Varshney', 10, '20BCS9700', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(46, 'Somdhar Dubey', 'Somdhar Dubey', 'Somdhar Dubey', 10, '20BCS9702', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(47, 'AMAN KANSAL', 'AMAN KANSAL', 'AMAN KANSAL', 10, '20BCS9704', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(48, 'Priya', 'Priya', 'Priya', 10, '20BCS9705', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(49, 'Mihir panchal', 'Mihir panchal', 'Mihir panchal', 10, '20BCS9706', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(50, 'Kartik Guleria', 'Kartik Guleria', 'Kartik Guleria', 10, '20BCS9707', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(51, 'Sakshi Thakur', 'Sakshi Thakur', 'Sakshi Thakur', 10, '20BCS9708', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(52, 'Apurva S datta', 'Apurva S datta', 'Apurva S datta', 10, '20BCS9709', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(53, 'Rishikesh kumar yadav', 'Rishikesh kumar yadav', 'Rishikesh kumar yadav', 10, '20BCS9710', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(54, 'Nitish Kumar Singh', 'Nitish Kumar Singh', 'Nitish Kumar Singh', 10, '20BCS9713', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(55, 'Sagar Gupta', 'Sagar Gupta', 'Sagar Gupta', 10, '20BCS9714', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(56, 'Anirudh', 'Anirudh', 'Anirudh', 10, '20BCS9715', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(57, 'SANJAY', 'SANJAY', 'SANJAY', 10, '20BCS9718', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(58, 'shakir hussain', 'shakir hussain', 'shakir hussain', 10, '20BCS9719', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(59, 'SNEHIL RAI', 'SNEHIL RAI', 'SNEHIL RAI', 10, '20BCS9722', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(60, 'Kambham Satwik', 'Kambham Satwik', 'Kambham Satwik', 10, '20BCS9724', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(61, 'SARTHAK MAHAJAN', 'SARTHAK MAHAJAN', 'SARTHAK MAHAJAN', 10, '20BCS9726', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(62, 'Modassir Imran', 'Modassir Imran', 'Modassir Imran', 10, '20BCS9727', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(63, 'Akash Rawat', 'Akash Rawat', 'Akash Rawat', 10, '20BCS9728', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(64, 'PRIYANSHI SINGHAL', 'PRIYANSHI SINGHAL', 'PRIYANSHI SINGHAL', 10, '20BCS9729', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(65, 'Priya pahal', 'Priya pahal', 'Priya pahal', 10, '20BCS9730', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Female', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(66, 'Siddharth Kothiyal', 'Siddharth Kothiyal', 'Siddharth Kothiyal', 10, '20BCS9731', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(67, 'Gurkeerat Singh', 'Gurkeerat Singh', 'Gurkeerat Singh', 10, '20BCS9733', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(68, 'ABHAS RAWAT', 'ABHAS RAWAT', 'ABHAS RAWAT', 10, '20BCS9734', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(69, 'TANISHQ AGRAWAL', 'TANISHQ AGRAWAL', 'TANISHQ AGRAWAL', 10, '20BCS9735', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(70, 'ISHAN SHARMA', 'ISHAN SHARMA', 'ISHAN SHARMA', 10, '20BCS9736', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(71, 'parteek', 'parteek', 'parteek', 10, '20BCS9737', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(72, 'Priyanshu prince', 'Priyanshu prince', 'Priyanshu prince', 10, '20BCS9738', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(73, 'ANIKET', 'ANIKET', 'ANIKET', 10, '20BCS9739', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(74, 'Naitik Monga', 'Naitik Monga', 'Naitik Monga', 10, '20BCS9740', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx'),
(75, 'Rohit Kaushik', 'Rohit Kaushik', 'Rohit Kaushik', 10, '20BCS9741', '01-01-2000', 'H.No xxx, Street No.xx,Landmark,XX', 'Chandigarh', 'Male', 'yyyy', 'xxxx', 'xxxxxxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_info`
--

CREATE TABLE `subjects_info` (
  `id` int(12) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `t_fullname` varchar(200) NOT NULL,
  `t_email` varchar(200) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `time` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects_info`
--

INSERT INTO `subjects_info` (`id`, `subject_name`, `t_fullname`, `t_email`, `grade`, `time`) VALUES
(1, 'PCS', 'Lalit Aditya Kaushal', 'lalit@cumail.in', '10', '9:00AM - 9:45AM'),
(5, 'DBMS', 'Loveneet Kaur', 'loveneet.e10341@cumail.in', '10', '12:50PM - 2:30PM'),
(6, 'Web Development', 'Shalini kumari', 'shalini.e10593@cumail.in', '10', '02:50PM - 4:30PM'),
(2, 'BEEE', 'Deepa Kumari', 'deepa@cumail.in', '10', '10:00AM - 10:45AM'),
(3, 'QSP', 'Sheenam Sachdeva', 'Sheenam@cumail.in', '10', '11:00AM - 11:45AM'),
(4, 'CPP', 'Gurpreet singh', 'Gurpreet@cumail.in', '10', '12:00PM - 12:45PM'),
(7, 'C', 'Jaswinder', 'Jaswinder@cumail.in', '10', '04:40PM - 05:25PM'),
(9, 'PCS', 'Lalit Aditya Kaushal', 'lalit@cumail.in', '8', '10:00AM - 10:45AM'),
(10, 'BEEE', 'Deepa Kumari', 'deepa@cumail.in', '8', '11:00AM - 11:45AM'),
(11, 'QSP', 'Sheenam Sachdeva', 'Sheenam@cumail.in', '8', '12:00PM - 12:45PM'),
(12, 'CPP', 'Gurpreet singh', 'Gurpreet@cumail.in', '8', '12:50PM - 2:30PM\r\n'),
(13, 'DBMS', 'Loveneet Kaur', 'loveneet.e10341@cumail.in', '8', '02:50PM - 4:30PM'),
(14, 'Web Development', 'Shalini kumari', 'shalini.e10593@cumail.in', '8', '04:40PM - 05:25PM'),
(8, 'C', 'Jaswinder', 'Jaswinder@cumail.in', '8', '9:00AM - 9:45AM');

-- --------------------------------------------------------

--
-- Table structure for table `sub_class_name`
--

CREATE TABLE `sub_class_name` (
  `id` int(12) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_class_name`
--

INSERT INTO `sub_class_name` (`id`, `subject`, `class`) VALUES
(1, 'DBMS', '1'),
(2, 'WEB_D', '2'),
(3, 'C', '3'),
(4, 'CPP', '4'),
(5, 'Math', '5'),
(6, 'Data_Structures', '6'),
(7, 'QSP', '7'),
(8, 'BEEE', '8'),
(9, 'PCS', '9'),
(10, 'IOT', '10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `t_id` int(12) NOT NULL,
  `t_fullname` varchar(150) NOT NULL,
  `t_address` varchar(200) NOT NULL,
  `t_email` varchar(100) NOT NULL,
  `t_username` varchar(150) NOT NULL,
  `t_pass` varchar(50) NOT NULL,
  `t_father` varchar(150) NOT NULL,
  `t_mother` varchar(150) NOT NULL,
  `t_dob` varchar(50) NOT NULL,
  `t_qualification` varchar(800) NOT NULL,
  `t_contact` varchar(255) NOT NULL,
  `t_staff_type` varchar(200) NOT NULL,
  `t_gender` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`t_id`, `t_fullname`, `t_address`, `t_email`, `t_username`, `t_pass`, `t_father`, `t_mother`, `t_dob`, `t_qualification`, `t_contact`, `t_staff_type`, `t_gender`) VALUES
(1, 'Loveneet Kaur', 'chandigarh', 'loveneet.e10341@cumail.in', 'loveneet', 'loveneet', 'yyyy', 'yyyy', '01 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(2, 'Paras Guglani', '331,Mandir Wali Gali,GhantaGhar', 'parasguglani1@gmail.com', 'paras', 'paras', 'Baldev Raj Guglani', 'Poonam Guglani', '22 aug 2001', '+2', '8630539308', 'Admin', 'Male'),
(7, 'jaswinder', 'chandigarh', 'jaswinder@cumail.in', 'jaswinder', 'jaswinder', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'male'),
(3, 'Sheenam', 'chandigarh', 'Sheenam@cumail.in', 'Sheenam', 'Sheenam', 'yyyy', 'yyyy', '01 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(4, 'Gurpreet', 'chandigarh', 'Gurpreet@cumail.in', 'Gurpreet', 'Gurpreet', 'yyyy', 'yyyy', '01 01 1990', 'Phd', '9999999999', 'Teacher', 'male'),
(5, 'Shalini', 'chandigarh', 'Shalini@cumail.in', 'Shalini', 'Shalini', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(6, 'lalit', 'chandigarh', 'lalit@cumail.in', 'lalit', 'lalit', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'male'),
(8, 'Deepa', 'chandigarh', 'Deepa@cumail.in', 'Deepa', 'Deepa', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(9, 'Meenakshi', 'chandigarh', 'Meenakshi@cumail.in', 'Meenakshi', 'Meenakshi', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(10, 'Amita Sehni', 'chandigarh', 'AmitaSehni@cumail.in', 'AmitaSehni', 'AmitaSehni', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(11, 'Heena Sharma', 'chandigarh', 'HeenaSharma@cumail.in', 'HeenaSharma', 'HeenaSharma', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(12, 'Mandeep', 'chandigarh', 'Mandeep@cumail.in', 'Mandeep', 'Mandeep', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(13, 'Ruchi sharma', 'chandigarh', 'Ruchisharma@cumail.in', 'Ruchisharma', 'Ruchisharma', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'female'),
(14, 'jaipraksh Dwivedi', 'chandigarh', 'jaiprakshDwivedi@cumail.in', 'jaiprakshDwivedi', 'jaiprakshDwivedi', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'male'),
(15, 'Shubham Soni', 'chandigarh', 'ShubhamSoni@cumail.in', 'ShubhamSoni', 'ShubhamSoni', 'yyyy', 'yyyy', '1 01 1990', 'Phd', '9999999999', 'Teacher', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_form`
--
ALTER TABLE `adm_form`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `meadmin`
--
ALTER TABLE `meadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `subjects_info`
--
ALTER TABLE `subjects_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_class_name`
--
ALTER TABLE `sub_class_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_form`
--
ALTER TABLE `adm_form`
  MODIFY `S.No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `meadmin`
--
ALTER TABLE `meadmin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `st_info`
--
ALTER TABLE `st_info`
  MODIFY `st_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `subjects_info`
--
ALTER TABLE `subjects_info`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `sub_class_name`
--
ALTER TABLE `sub_class_name`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `t_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
