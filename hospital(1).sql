-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2021 at 06:39 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `insurance_id` varchar(200) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `nextvist` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `name`, `insurance_id`, `doctor`, `purpose`, `nextvist`, `status`) VALUES
(33, 300, ' \r\n    KINYANGA REDEMPTA    ', '', 'Jacob Nthiwa', 'males', '2018-04-17', ''),
(34, 329, 'ERICK MUTISYA WAMBUA    ', 'CASH', 'Jacob Nthiwa', 'chhhh', '2018-04-18', ''),
(35, 329, ' \r\n    ERICK MUTISYA WAMBUA    ', 'CASH', 'Jacob Nthiwa', 'njqwnerjt', '2018-04-17', '');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE IF NOT EXISTS `bed` (
  `bed_id` int(11) NOT NULL AUTO_INCREMENT,
  `bed_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext NOT NULL COMMENT 'ward,cabin,ICU',
  `status` varchar(20) NOT NULL DEFAULT 'Unoccupied',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`bed_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `bed_number`, `type`, `status`, `description`, `price`) VALUES
(1, '10', 'General Ward Obstetrics/gyno', 'Unoccupied', 'Obstetrics Ward', 750),
(2, '10', 'Private Ward Surgical', 'Unoccupied', 'Surgical Ward', 2000),
(3, '10', 'Private Ward Pediatrics', 'Unoccupied', 'Pediatrics Ward', 2000),
(4, '4', 'General Ward Obstetrics ', 'Occupied', 'Obstetrics Ward', 750),
(5, '4', 'General Ward Surgical', 'Unoccupied', 'Surgical Ward', 750),
(6, '5', 'General Ward Pediatrics', 'Unoccupied', 'Pediatrics Ward', 750),
(7, '6', 'General Ward Maternity', 'Unoccupied', 'Maternity Ward', 750),
(8, '9', 'General ward Male', 'Occupied', 'Male Ward', 750),
(9, '4', 'General ward Female', 'Occupied', 'Female Ward', 750),
(10, '', ' Private maternity Ward', 'Unoccupied', ' private maternity', 2000),
(11, '', ' Private Male Ward', 'Unoccupied', ' private Male', 2000),
(12, '', ' Private Female Ward', 'Unoccupied', ' Female Ward', 2000),
(14, '4', 'uuuuu', 'Unoccupied', 'Male', 30),
(15, '', '', 'Unoccupied', '', 0),
(16, '', '', 'Unoccupied', '', 0),
(17, '', '', 'Unoccupied', '', 0),
(18, '', '', 'Unoccupied', '', 0),
(19, '', '', 'Unoccupied', '', 0),
(20, '', '', 'Unoccupied', '', 0),
(21, '', '', 'Unoccupied', '', 0),
(22, '4', '', 'Unoccupied', 'Female Ward', 100),
(23, '', '', 'Unoccupied', '', 0),
(24, '', '', 'Unoccupied', '', 0),
(25, '', '', 'Unoccupied', '', 0),
(26, '', '', 'Unoccupied', '', 0),
(27, '', '', 'Unoccupied', '', 0),
(28, '', '', 'Unoccupied', '', 0),
(29, '', '', 'Unoccupied', '', 0),
(30, '', '', 'Unoccupied', '', 0),
(31, '', '', 'Unoccupied', '', 0),
(32, '', '', 'Unoccupied', '', 0),
(33, '', '', 'Unoccupied', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bed_allotment`
--

CREATE TABLE IF NOT EXISTS `bed_allotment` (
  `bed_allotment_id` int(11) NOT NULL AUTO_INCREMENT,
  `bed_id` varchar(100) DEFAULT NULL,
  `admission_dep` varchar(200) NOT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `history` varchar(1000) DEFAULT NULL,
  `dis_date` varchar(110) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `insurance_id` varchar(200) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `fee` varchar(100) DEFAULT 'Admission Fee',
  `date` varchar(30) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `diagnosis` varchar(100) DEFAULT NULL,
  `diagnosis1` varchar(200) DEFAULT NULL,
  `diagnosis2` varchar(200) DEFAULT NULL,
  `diagnosis3` varchar(200) DEFAULT NULL,
  `test1` varchar(100) DEFAULT NULL,
  `test2` varchar(100) DEFAULT NULL,
  `test3` varchar(100) DEFAULT NULL,
  `test4` varchar(100) DEFAULT NULL,
  `medication1` varchar(200) DEFAULT NULL,
  `desc1` varchar(200) DEFAULT NULL,
  `medication2` varchar(200) DEFAULT NULL,
  `desc2` varchar(200) DEFAULT NULL,
  `medication3` varchar(200) DEFAULT NULL,
  `desc3` varchar(200) DEFAULT NULL,
  `medication4` varchar(200) DEFAULT NULL,
  `desc4` varchar(200) DEFAULT NULL,
  `medication5` varchar(200) DEFAULT NULL,
  `desc5` varchar(200) DEFAULT NULL,
  `medication6` varchar(200) DEFAULT NULL,
  `desc6` varchar(200) DEFAULT NULL,
  `nextdate` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `in_date` varchar(100) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `cashier` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bed_allotment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE IF NOT EXISTS `blood_donor` (
  `blood_donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_donation_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`blood_donor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`blood_donor_id`, `name`, `blood_group`, `sex`, `age`, `phone`, `email`, `address`, `last_donation_timestamp`) VALUES
(1, 'Sudhir Thakur', 'A+', 'male', 25, '9800000000', 'donor@blooddonor.com', 'Mumbai, India', 1413237600);

-- --------------------------------------------------------

--
-- Table structure for table `ccn_inventory`
--

CREATE TABLE IF NOT EXISTS `ccn_inventory` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `price` varchar(100) NOT NULL,
  `c_price` int(11) NOT NULL,
  `form` varchar(50) NOT NULL,
  `experiy_date` varchar(15) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `new` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`transaction_id`, `date`, `name`, `invoice`, `amount`, `remarks`, `balance`) VALUES
(1, '06/07/2017', 'RS-352295', 'IN-3222333', '500', '', 4225),
(2, '06/07/2017', 'RS-352295', 'IN-332222', '4225', 'paid', 0),
(3, '06/07/2017', 'RS-223763', 'IN-05', '1000', '', 700),
(4, '06/07/2017', 'RS-223763', 'IN-03023062', '500', '', 200),
(5, '06/07/2017', 'RS-23303373', 'IN-3258358', '200', '', 305),
(6, '06/07/2017', 'RS-23303373', 'IN-02233223', '100', '', 205),
(7, '06/07/2017', 'RS-23303373', 'IN-23234322', '205', '', -300),
(8, '06/07/2017', 'RS-20233', 'IN-7320322', '600', '', 1700),
(9, '06/07/2017', 'RS-20233', 'IN-250033', '1700', '', -600),
(10, '06/07/2017', 'RS-2283522', 'IN-248028', '510', '', 0),
(11, '06/07/2017', 'RS-50022732', 'IN-33222988', '1000', '', 1000),
(12, '06/07/2017', 'RS-50022732', 'IN-33222988', '1000', '', 0),
(13, '06/07/2017', 'RS-50022732', 'IN-33222988', '1000', '', -1000),
(14, '06/07/2017', 'RS-0230220', 'IN-32832652', '1000', '', 420),
(15, '06/07/2017', 'RS-0230220', 'IN-08432222', '200', '', 220),
(16, '06/07/2017', 'RS-0230220', 'IN-08432222', '200', '', 20),
(17, '06/07/2017', 'RS-352295', 'IN-3233032', '2000', '', -2000),
(18, '06/07/2017', 'RS-3036423', 'IN-2222020', '1000', '', 1350),
(19, '06/07/2017', 'RS-3036423', 'IN-2220303', '1000', '', -1000),
(20, '06/07/2017', 'RS-382200', 'IN-723333', '200', '', 220),
(21, '06/07/2017', 'RS-382200', 'IN-723333', '200', '', 20),
(22, '06/07/2017', 'RS-382200', 'IN-23420232', '20', '', -400),
(23, '06/09/2017', 'RS-2087932', 'IN-0034423', '4725', '', 0),
(24, '06/11/2017', 'RS-265260', 'IN-23033332', '550', '', 0),
(25, '06/14/2017', 'RS-6058', 'IN-280300', '450', 'paid', 0),
(26, '06/15/2017', 'RS-2339', 'IN-33702533', '10', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `commoncomp`
--

CREATE TABLE IF NOT EXISTS `commoncomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `commoncomp`
--

INSERT INTO `commoncomp` (`id`, `code`, `name`) VALUES
(1, NULL, ''),
(2, NULL, 'Headache'),
(3, NULL, 'Abdominal Pain'),
(4, NULL, 'Breast Mass'),
(5, NULL, 'Burning with urination'),
(6, NULL, 'Chest pain'),
(7, NULL, 'Common cold'),
(8, NULL, 'Constipation'),
(9, NULL, 'cough'),
(10, NULL, 'Diarrhea'),
(11, NULL, 'Dizziness'),
(12, NULL, 'Earache'),
(13, NULL, 'Fatigue'),
(14, NULL, 'Fever'),
(15, NULL, 'Low back pain'),
(16, NULL, 'Rash'),
(17, NULL, 'Red eye'),
(18, NULL, 'Shortness of breath'),
(19, NULL, 'Sore throat'),
(20, NULL, 'Vaginal discharge'),
(21, '', 'Mumo'),
(22, '', 'GIT Infection');

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE IF NOT EXISTS `consultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(200) DEFAULT NULL,
  `nurse_id` varchar(100) DEFAULT NULL,
  `patient_id` varchar(200) NOT NULL,
  `creation_timestamp` varchar(300) NOT NULL,
  `consultation_type` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`id`, `doctor_id`, `nurse_id`, `patient_id`, `creation_timestamp`, `consultation_type`, `price`, `cost`, `date`) VALUES
(2, '4', NULL, '252', '1505738946', 'Removal of IUCD using Retriver (Theatre)', 10000, NULL, '18/09/2017'),
(3, NULL, '2', '252', '1505829431', 'catherterization', 200, NULL, '19/09/2017'),
(4, '7', NULL, '252', '1505903196', 'catheterization', 2000, NULL, '20/09/2017');

-- --------------------------------------------------------

--
-- Table structure for table `credit_orders`
--

CREATE TABLE IF NOT EXISTS `credit_orders` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `patient_id` varchar(100) NOT NULL,
  `bill` varchar(100) DEFAULT 'UNBILLED',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`) VALUES
(2, 'loise syomiti', 'N/A', '0701417887', '2'),
(3, 'Jeremiah mumo', 'Katangi', '0701415654', '5'),
(4, 'AON', 'PO BOX 89 NAIROBI', '0791417887', '5');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `description`) VALUES
(1, 'Anesthesiology', 'Anesthesiology'),
(2, 'Bacteriological Laboratory', 'Bacteriological Laboratory'),
(3, 'Physical Therapy', 'Physical Therapy'),
(4, 'Plastic Surgery', 'Plastic Surgery'),
(5, 'Clinical Oficer', 'Clinical Oficer'),
(6, 'X-Ray Doctor', 'X-Ray Doctor'),
(7, 'Dental Doctor', 'Dental Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE IF NOT EXISTS `diagnosis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `code`, `name`) VALUES
(1, '', ''),
(2, '', 'Dheorea'),
(3, '', 'Tubaclosis'),
(4, '', 'Dysentery (Bloody diarrhoea)'),
(5, '', 'Cholera'),
(6, '', 'Meningococcal Meningitis'),
(7, '', 'Other Meningitis'),
(8, '', 'Neonatal Tetanus'),
(9, '', 'Poliomyelitis(AFP)'),
(10, '', 'Chicken Pox'),
(11, '', 'Measles'),
(12, '', 'Hepatitis'),
(13, '', 'Mumps'),
(14, '', 'Fevers'),
(15, '', 'Suspected Malaria'),
(16, '', 'Confirmed malaria(only positive cases)'),
(17, '', 'Urinary Tract Infection'),
(18, '', 'Typhoid fever'),
(19, '', 'Bilharzia'),
(20, '', 'Intestinal worms'),
(21, '', 'Mualnutrition'),
(22, '', 'Anaemia'),
(23, '', 'Eye infections'),
(24, '', 'Other eye conditions'),
(25, '', 'Ear Infections/Conditions'),
(26, '', 'Upper Respiratory Tract Infections'),
(27, '', 'Asthma'),
(28, '', 'Tonsillities'),
(29, '', 'Pneumonia'),
(30, '', 'Other Dis. Of Respiratory System'),
(31, '', 'Mental Disorders'),
(32, '', 'Jiggers Infestation'),
(33, '', 'Diseases of the skin'),
(34, '', 'Chromosomal abnormalities'),
(35, '', 'Congenital Anomalies'),
(36, '', 'Poisoning'),
(37, '', 'Road Traffic Injuries'),
(38, '', 'Other Injuries'),
(39, '', 'Sexual Assault'),
(40, '', 'Burns'),
(41, '', 'Snake Bites'),
(42, '', 'Dog Bites'),
(43, '', 'Other Bites'),
(44, '', 'Diabetes'),
(45, '', 'Epilepsy'),
(46, '', 'Other Convulsive Disorders'),
(47, '', 'Newly Diagnosed HIV'),
(48, '', 'Brucellosis'),
(49, '', 'Rickets'),
(50, '', 'Cardiovascular conditions'),
(51, '', 'Violence related injuries'),
(52, '', 'Cerebral Palsy'),
(53, '', 'Autism'),
(54, '', 'Other Central Nervous System Conditions'),
(55, '', 'Tryponosomiasis'),
(56, '', 'Kalazar(Leishmaniasis)'),
(57, '', 'Dracunculosis'),
(58, '', 'Yellow Fever'),
(59, '', 'Viral Haemorrhagic Fever'),
(60, '', 'Plague'),
(61, '', 'Deaths due to Road Traffic Injuries'),
(62, '61', 'Gonnoreah'),
(63, '62', 'Chlamydia'),
(64, '63', 'Syphylis'),
(65, '64', 'PID'),
(66, '66', 'Lower RTI'),
(67, '67', 'Gastroenteritis'),
(68, '68', 'Acute Sinusitis'),
(69, '69', 'Cronic Sinusitis'),
(70, '69 ', 'Allergic Bronchitis'),
(71, '70', 'Chronic Bronchitis');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosisreport`
--

CREATE TABLE IF NOT EXISTS `diagnosisreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `diagnosisreport`
--

INSERT INTO `diagnosisreport` (`id`, `diagnosis`, `date`, `sex`) VALUES
(1, 'Cardiovascular conditions', '2018-04-22', ''),
(2, 'Anaemia', '2018-04-23', ''),
(3, 'Autism', '2018-04-23', ''),
(4, 'Cardiovascular conditions', '2018-04-23', ''),
(5, 'Diseases of the skin', '2018-04-23', ''),
(6, 'Chicken Pox', '2018-04-23', ''),
(7, 'Chicken Pox', '2018-04-23', ''),
(8, 'Anaemia', '2018-04-23', ''),
(9, 'Cardiovascular conditions', '2018-05-05', ''),
(10, 'Burns', '2018-05-05', ''),
(11, 'Diarrhoea', '2018-05-05', ''),
(12, '', '2018-06-08', ''),
(13, '', '2018-06-08', ''),
(14, '', '2018-06-08', ''),
(15, 'Brucellosis', '2018-09-13', ''),
(16, '', '2018-09-13', ''),
(17, '', '2018-09-13', ''),
(18, 'Bilharzia', '2018-09-17', ''),
(19, 'Autism', '2018-09-17', ''),
(20, '', '2018-09-17', ''),
(21, '', '2018-09-24', NULL),
(22, '', '2018-09-24', NULL),
(23, NULL, '2018-09-24', NULL),
(24, 'Bilharzia', '2018-09-24', NULL),
(25, '', '2018-09-24', NULL),
(26, NULL, '2018-09-24', NULL),
(27, 'Asthma', '2018-10-20', NULL),
(28, '', '2018-10-20', NULL),
(29, NULL, '2018-10-20', NULL),
(30, 'Autism', '2018-10-20', NULL),
(31, '', '2018-10-20', NULL),
(32, NULL, '2018-10-20', NULL),
(33, 'Festus Kimuyu', '2018-10-23', NULL),
(34, 'Festus Kimuyu', '2018-10-23', NULL),
(35, 'Festus Kimuyu', '2018-10-23', NULL),
(36, 'Festus Kimuyu', '2018-10-23', NULL),
(37, 'Festus Kimuyu', '2018-10-23', NULL),
(38, 'Festus Kimuyu', '2018-10-23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosisreport1`
--

CREATE TABLE IF NOT EXISTS `diagnosisreport1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `diagnosisreport1`
--

INSERT INTO `diagnosisreport1` (`id`, `diagnosis`, `date`) VALUES
(1, 'Meningococcal Meningitis', '2018-09-17'),
(2, '', '2018-09-17'),
(3, '', '2018-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_inpatient`
--

CREATE TABLE IF NOT EXISTS `diagnosis_inpatient` (
  `diagnosis_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` longtext COLLATE utf8_unicode_ci COMMENT 'xray,blood test',
  `document_type` longtext COLLATE utf8_unicode_ci COMMENT 'text,photo',
  `prescription_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `laboratorist_id` varchar(110) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `insurance_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`diagnosis_report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=111 ;

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_report`
--

CREATE TABLE IF NOT EXISTS `diagnosis_report` (
  `diagnosis_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `inpatient` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_type` longtext COLLATE utf8_unicode_ci COMMENT 'xray,blood test',
  `document_type` longtext COLLATE utf8_unicode_ci COMMENT 'text,photo',
  `prescription_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description10` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `laboratorist_id` varchar(110) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UNBILLED',
  PRIMARY KEY (`diagnosis_report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `diagnosis_report`
--

INSERT INTO `diagnosis_report` (`diagnosis_report_id`, `inpatient`, `report_type`, `document_type`, `prescription_id`, `patient_id`, `patient_name`, `description`, `description1`, `description2`, `description3`, `description4`, `description5`, `description6`, `description7`, `description8`, `description9`, `description10`, `timestamp`, `laboratorist_id`, `price`, `cost`, `date`, `name`, `department1`, `insurance_id`, `bill`) VALUES
(46, NULL, 'Bs for Mps', NULL, 57, 1, '', 'MPS +++', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAB', 100, NULL, '2021-10-19', NULL, 'LAB', 'CASH', 'UNBILLED'),
(47, NULL, 'Urinalysis', NULL, 57, 1, '', 'Leukocytes :', 'Urobilinogen :', 'Bilirubin :', 'Blood :', 'Nitrite  :', 'P.H  :', 'Protein :', 'Glucose :', 'Ketones :', 'Deposits :', 'SG :', NULL, 'LAB', 150, NULL, '2021-10-19', NULL, 'LAB', 'CASH', 'UNBILLED');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `profile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `email`, `password`, `address`, `phone`, `department_id`, `profile`) VALUES
(8, 'Dr. Elisha Okeyo', 'okeyoelisha2002@yahoo.com', 'griffinths', '77 karungu', '0720815253', 5, ''),
(6, 'doctor', 'doctor@doctor.com', 'doctor', '', '0157458632', 5, ''),
(7, 'faustine obbo', 'faustinobbo@gmail.com', 'countrycoward', 'sori', '0718603886', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_order`
--

CREATE TABLE IF NOT EXISTS `drugs_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `scheme` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `anumber` varchar(200) NOT NULL,
  `adate` varchar(200) NOT NULL,
  `ddate` varchar(200) NOT NULL,
  `bpayable` varchar(200) NOT NULL,
  `nhif` varchar(200) NOT NULL,
  `figure` varchar(50) NOT NULL DEFAULT 'Medicines',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `task` longtext CHARACTER SET latin1 NOT NULL,
  `subject` longtext CHARACTER SET latin1 NOT NULL,
  `body` longtext CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(200) DEFAULT NULL,
  `desc1` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_name`, `desc1`, `amount`, `date`) VALUES
(3, 'lunch', '3 people', '50', '2021-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`) VALUES
(1, 'Luqids'),
(2, 'Tablets');

-- --------------------------------------------------------

--
-- Table structure for table `inpatient_request`
--

CREATE TABLE IF NOT EXISTS `inpatient_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `insurance_id` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `pdepartment` varchar(200) NOT NULL,
  `service1` varchar(200) NOT NULL,
  `service2` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'ACTIVE',
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `inpatient_request`
--

INSERT INTO `inpatient_request` (`id`, `patient_id`, `name`, `insurance_id`, `department`, `pdepartment`, `service1`, `service2`, `status`, `date`) VALUES
(1, 'MISAEL MAVALINE', 'CASH', 'LAB', '', '', 'BS FOR MPS', 'SAT', 'ACTIVE', ''),
(2, '312', 'PLENTIUS OTIENO', 'AON', 'Results-Ready', '', 'BS FOR MPS', 'HPYLON', 'ACTIVE', ''),
(3, '345', 'MUMO JEREMIAH', 'NHIF NATIONAL SCHEME(UNIVERSAL)', 'Results-Ready', '', 'HPYLON', 'STOOL', 'ACTIVE', ''),
(4, '329', 'ERICK MUTISYA WAMBUA', 'MACHAKOS COUNTY GORV', 'Results-Ready', '', 'HPYLON', 'STOOL', 'ACTIVE', '2018-02-09'),
(5, '338', 'JEREMIAH KIMATU MUTUKU', 'NHIF NATIONAL SCHEME(UNIVERSAL)', 'Results-Ready', '', 'HPYLON', 'PS', 'ACTIVE', '2018-02-10'),
(6, '345', 'MUMO JEREMIAH', 'NHIF NATIONAL SCHEME(UNIVERSAL)', 'Results-Ready', '', 'HPYLON', 'VDRL', 'ACTIVE', '2018-02-10'),
(7, '300', 'KINYANGA REDEMPTA', 'CASH', 'Results-Ready', 'THEATRE', 'BS FOR MPS', 'SAT', 'ACTIVE', '2018-02-10'),
(8, '340', 'AKINYI', 'NHIF CIVIL SERVANTS', 'Results-Ready', 'PHYSIOTHERAPY', 'STOOL', '', 'ACTIVE', '2018-02-10'),
(9, '346', 'KIMANZI VINCENT', 'CASH', 'LAB', 'LAB', 'Blood Group', 'Catheterization', 'ACTIVE', '2018-05-26'),
(10, '357', 'JOHN AOKO', 'CASH', 'LAB', 'LAB', 'Alk Phosphatase', 'Catheterization', 'ACTIVE', '2018-10-23'),
(11, '357', 'JOHN AOKO', 'CASH', 'LAB', 'LAB', 'Asot.', '', 'ACTIVE', '2018-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE IF NOT EXISTS `insurance` (
  `insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`insurance_id`, `name`) VALUES
(1, ''),
(2, 'CASH'),
(4, 'NHIF NATIONAL SCHEME'),
(5, 'Mumo'),
(6, 'EDU AFYA');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_collection`
--

CREATE TABLE IF NOT EXISTS `insurance_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `records` int(11) NOT NULL,
  `lab` int(11) NOT NULL,
  `pharmacy` int(11) NOT NULL,
  `x_ray` int(11) NOT NULL,
  `physio` int(11) NOT NULL,
  `orthopedic` int(11) NOT NULL,
  `theatre` int(11) NOT NULL,
  `inpatient` int(11) NOT NULL,
  `dental` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `insurance_collection`
--

INSERT INTO `insurance_collection` (`id`, `scheme`, `date`, `records`, `lab`, `pharmacy`, `x_ray`, `physio`, `orthopedic`, `theatre`, `inpatient`, `dental`, `total`) VALUES
(2, 'NHIF NATIONAL SCHEME(UNIVERSAL)', '11/02/2018', 1500, 0, 0, 1000, 0, 0, 0, 3750, 0, 5250),
(3, 'NHIF CIVIL SERVANTS', '12/02/2018', 1500, 0, 3312, 0, 100, 0, 0, 0, 0, 4912),
(4, 'NHIF NATIONAL SCHEME(UNIVERSAL)', '12/02/2018', 1500, 0, 0, 1000, 0, 0, 0, 3750, 0, 5250),
(5, 'NHIF NATIONAL SCHEME(UNIVERSAL)', '13/02/2018', 1500, 0, 0, 1000, 0, 0, 0, 3750, 0, 5250),
(6, 'NHIF CIVIL SERVANTS', '13/02/2018', 1500, 0, 3312, 0, 100, 0, 0, 0, 0, 4912),
(7, 'NHIF-NATIONAL SCHEME', '16/02/2018', 0, 150, 0, 0, 0, 0, 0, 0, 0, 150),
(8, 'CASH', '16/02/2018', 0, 0, 0, 0, 0, 0, 100, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `invo`
--

CREATE TABLE IF NOT EXISTS `invo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d1` varchar(100) NOT NULL,
  `d2` varchar(1000) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay` varchar(100) DEFAULT NULL,
  `number1` varchar(100) DEFAULT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `t_type` varchar(100) DEFAULT NULL,
  `t_type1` varchar(200) DEFAULT NULL,
  `amount1` varchar(200) DEFAULT NULL,
  `amount2` varchar(200) DEFAULT NULL,
  `amount3` varchar(100) DEFAULT NULL,
  `amount4` varchar(100) DEFAULT NULL,
  `amount5` varchar(100) DEFAULT NULL,
  `amount6` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `d_due` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ref` varchar(100) DEFAULT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `d1` varchar(100) DEFAULT NULL,
  `d2` varchar(100) DEFAULT NULL,
  `lessnhif` varchar(100) DEFAULT NULL,
  `days` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`transaction_id`, `pay`, `number1`, `invoice_number`, `cashier`, `date`, `type`, `t_type`, `t_type1`, `amount1`, `amount2`, `amount3`, `amount4`, `amount5`, `amount6`, `amount`, `profit`, `due_date`, `d_due`, `name`, `balance`, `tax`, `time`, `ref`, `patient_id`, `d1`, `d2`, `lessnhif`, `days`) VALUES
(1, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 07:59:01', NULL, '1', NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 08:00:33', NULL, '1', NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 08:19:01', NULL, '7', NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 08:25:41', NULL, '7', NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 08:30:00', NULL, '1', NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 08:31:20', NULL, '7', NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 08:31:24', NULL, '1', NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, '2021-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-22 08:02:01', NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoiceh`
--

CREATE TABLE IF NOT EXISTS `invoiceh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invo` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'UNCOMPLETE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `invoiceh`
--

INSERT INTO `invoiceh` (`id`, `invo`, `status`) VALUES
(44, 'INVOICE', 'UNCOMPLETE'),
(45, 'INVOICE', 'UNCOMPLETE'),
(46, 'INVOICE', 'UNCOMPLETE'),
(47, 'INVOICE', 'UNCOMPLETE'),
(48, 'INVOICE', 'UNCOMPLETE'),
(49, 'INVOICE', 'UNCOMPLETE'),
(50, 'INVOICE', 'UNCOMPLETE'),
(51, 'INVOICE', 'UNCOMPLETE'),
(52, 'INVOICE', 'UNCOMPLETE'),
(53, 'INVOICE', 'UNCOMPLETE'),
(54, 'INVOICE', 'UNCOMPLETE'),
(55, 'INVOICE', 'UNCOMPLETE'),
(56, 'INVOICE', 'UNCOMPLETE'),
(57, 'INVOICE', 'UNCOMPLETE'),
(58, 'INVOICE', 'UNCOMPLETE'),
(59, 'INVOICE', 'UNCOMPLETE'),
(60, 'INVOICE', 'UNCOMPLETE'),
(61, 'INVOICE', 'UNCOMPLETE'),
(62, 'INVOICE', 'UNCOMPLETE'),
(63, 'INVOICE', 'UNCOMPLETE'),
(64, 'INVOICE', 'UNCOMPLETE'),
(65, 'INVOICE', 'UNCOMPLETE'),
(66, 'INVOICE', 'UNCOMPLETE'),
(67, 'INVOICE', 'UNCOMPLETE'),
(68, 'INVOICE', 'UNCOMPLETE'),
(69, 'INVOICE', 'UNCOMPLETE'),
(70, 'INVOICE', 'UNCOMPLETE'),
(71, 'INVOICE', 'UNCOMPLETE'),
(72, 'INVOICE', 'UNCOMPLETE'),
(73, 'INVOICE', 'UNCOMPLETE'),
(74, 'INVOICE', 'UNCOMPLETE'),
(75, 'INVOICE', 'UNCOMPLETE'),
(76, 'INVOICE', 'UNCOMPLETE'),
(77, 'INVOICE', 'UNCOMPLETE'),
(78, 'INVOICE', 'UNCOMPLETE'),
(79, 'INVOICE', 'UNCOMPLETE'),
(80, 'INVOICE', 'UNCOMPLETE'),
(81, 'INVOICE', 'UNCOMPLETE'),
(82, 'INVOICE', 'UNCOMPLETE');

-- --------------------------------------------------------

--
-- Table structure for table `invo_payment`
--

CREATE TABLE IF NOT EXISTS `invo_payment` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `datesold` varchar(200) DEFAULT NULL,
  `transdep` varchar(100) DEFAULT NULL,
  `patient_id` varchar(220) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `insurance_id` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=682 ;

--
-- Dumping data for table `invo_payment`
--

INSERT INTO `invo_payment` (`transaction_id`, `profit`, `invoice`, `product`, `qty`, `amount`, `name`, `cost`, `price`, `discount`, `minprice`, `datesold`, `transdep`, `patient_id`, `date`, `prescription_id`, `insurance_id`) VALUES
(676, '1000', 'RS-243237', 'Deposit Payment', '1', '1000', NULL, '0', '1000', '0', NULL, NULL, 'INPATIENT', '329', '2018-04-18', 0, ''),
(677, '1000', 'RS-243237', 'Deposit Payment', '1', '1000', NULL, '0', '1000', '0', NULL, NULL, 'INPATIENT', '329', '2018-04-18', 0, ''),
(678, '100', 'RS-243237', 'Deposit Payment', '1', '100', NULL, '0', '100', '0', NULL, NULL, 'INPATIENT', '329', '2018-04-18', 0, ''),
(679, '100', 'RS-243237', 'Deposit Payment', '1', '100', NULL, '0', '100', '0', NULL, NULL, 'INPATIENT', '329', '2018-04-18', 0, ''),
(680, '100', 'RS-733', 'Deposit Payment', '1', '100', NULL, '0', '100', '0', NULL, NULL, 'INPATIENT', '247', '2018-04-18', 0, ''),
(681, '1000', 'RS-000630', 'Deposit Payment', '1', '1000', NULL, '0', '1000', '0', NULL, NULL, 'INPATIENT', '357', '2018-10-23', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `issued_items`
--

CREATE TABLE IF NOT EXISTS `issued_items` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `datesold` varchar(200) DEFAULT NULL,
  `transdep` varchar(100) DEFAULT NULL,
  `patient_id` varchar(220) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `insurance_id` varchar(100) NOT NULL,
  `user` varchar(200) NOT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `pqty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=660 ;

--
-- Dumping data for table `issued_items`
--

INSERT INTO `issued_items` (`transaction_id`, `profit`, `invoice`, `product`, `qty`, `amount`, `name`, `cost`, `price`, `discount`, `minprice`, `datesold`, `transdep`, `patient_id`, `date`, `prescription_id`, `insurance_id`, `user`, `cashier`, `pqty`) VALUES
(624, '75', 'RS-3082', 'albendazole syrup 15mls', '1', '75', NULL, '0', '75', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', '', NULL, NULL),
(625, '12', 'RS-3082', 'ascorbic acid', '2', '12', NULL, '0', '6', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', '', NULL, NULL),
(626, '75', 'RS-3082', 'albendazole syrup 15mls', '1', '75', 'albendazole syrup 15mls', '0', '75', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', '', NULL, NULL),
(627, '12', 'RS-3082', 'ascorbic acid', '2', '12', 'ascorbic acid', '0', '6', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', '', NULL, NULL),
(628, '12', 'RS-22223', 'ascorbic acid', '2', '12', 'ascorbic acid', '0', '6', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', '', NULL, NULL),
(629, '75', 'RS-22223', 'albendazole syrup 15mls', '1', '75', 'albendazole syrup 15mls', '0', '75', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', '', NULL, NULL),
(630, '90', 'RS-22223', 'ampiclox 500mgs', '6', '90', 'ampiclox 500mgs', '0', '15', NULL, NULL, NULL, 'LAB', NULL, '04/03/2018', 0, '', '', NULL, NULL),
(631, '230', 'RS-32706', 'acyclovir cream', '1', '230', 'acyclovir cream', '0', '230', NULL, NULL, NULL, 'LAB', NULL, '04/03/2018', 0, '', '', NULL, NULL),
(632, '45', 'RS-32706', 'allerfast 180mg tabs 100''s', '1', '45', 'allerfast 180mg tabs 100''s', '0', '45', NULL, NULL, NULL, 'LAB', NULL, '04/03/2018', 0, '', 'lab', NULL, NULL),
(633, '0', 'RS-92230', 'zulu mr', '10', '0', 'zulu mr', '0', '', NULL, NULL, NULL, 'LAB', NULL, '', 0, '', 'lab', NULL, NULL),
(634, '0', 'RS-0798', 'zulu mr', '10', '0', 'zulu mr', '0', '', NULL, NULL, NULL, 'LAB', NULL, '05/03/2018', 0, '', 'lab', NULL, NULL),
(635, '30', 'RS-9035', 'acepar sp', '1', '30', 'acepar sp', '0', '30', NULL, NULL, NULL, 'X-RAY', NULL, '06/03/2018', 0, '', 'x-ray', NULL, NULL),
(636, '90', 'RS-9035', 'allerfast 180mg tabs 100''s', '2', '90', 'allerfast 180mg tabs 100''s', '0', '45', NULL, NULL, NULL, 'X-RAY', NULL, '06/03/2018', 0, '', 'x-ray', NULL, NULL),
(637, '200', 'RS-3330', 'Acyclovir 200mgs', '1', '200', 'Acyclovir 200mgs', '0', '200', NULL, NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO', NULL, NULL),
(638, '750', 'RS-23363', 'adrenalin 1mg/ml', '3', '750', 'adrenalin 1mg/ml', '0', '250', NULL, NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO', NULL, NULL),
(639, '0', 'RS-6334', 'Gestrim 480mg 1000''s', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'PHARMACY', NULL, '05/09/2020', 0, '', 'Linet Ntinyari', NULL, NULL),
(640, '0', 'RS-6334', 'Dexamethasone 4mg/ml Injection', '0', NULL, NULL, '0', '10', NULL, NULL, NULL, 'THEATRE', NULL, '05/09/2020', 0, '', 'Linet Ntinyari', NULL, NULL),
(641, '0', 'RS-6334', 'Rifampicin 150mg(unirif) -10*10''', '0', NULL, NULL, '0', '0', NULL, NULL, NULL, 'THEATRE', NULL, '05/09/2020', 0, '', 'Linet Ntinyari', NULL, NULL),
(642, '0', 'RS-6334', 'Travisil Lozenges  12''s', '0', NULL, 'Travisil Lozenges  12''s', '0', '86.4', NULL, NULL, NULL, 'THEATRE', NULL, '05/09/2020', 0, '', 'Linet Ntinyari', NULL, NULL),
(643, '0', 'RS-302', 'A.P.C Tablets 500''S', '0', NULL, 'A.P.C Tablets 500''S', '0', '233.8', NULL, NULL, NULL, 'PHARMACY', NULL, '2020-09-05', 0, '', 'Linet Ntinyari', NULL, NULL),
(644, '0', 'RS-02083', 'A.V.M Syrup(Metoclopramide HCL)6', '0', NULL, 'A.V.M Syrup(Metoclopramide HCL)6', '0', '45', NULL, NULL, NULL, 'PHARMACY', NULL, '2020-09-05', 0, '', 'Linet Ntinyari', NULL, NULL),
(645, '0', 'RS-02083', 'Abezole 2.5% Suspension 120ml***', '0', NULL, 'Abezole 2.5% Suspension 120ml***', '0', '30', NULL, NULL, NULL, 'PHARMACY', NULL, '2020-09-05', 0, '', 'Linet Ntinyari', NULL, NULL),
(646, '0', 'RS-02083', 'Acepar SP Tabs', '0', NULL, 'Acepar SP Tabs', '0', '25.53', NULL, NULL, NULL, 'PHARMACY', NULL, '2020-09-05', 0, '', 'Linet Ntinyari', NULL, NULL),
(647, '774', 'RS-303900', 'Abitren Tabs 100mg 10''s', '6', NULL, 'Abitren Tabs 100mg 10''s', '0', '129', NULL, NULL, NULL, 'THEATRE', NULL, '2020-09-05', 0, '', 'DR. KIAMBI', NULL, NULL),
(648, '0', 'RS-303900', 'A to Z Antioxidants Tab', '', NULL, 'A to Z Antioxidants Tab', '0', '7.65', NULL, NULL, NULL, 'THEATRE', NULL, '2020-09-05', 0, '', 'DR. KIAMBI', NULL, NULL),
(649, '38.25', 'RS-32433', 'A to Z Antioxidants Tab', '5', NULL, 'A to Z Antioxidants Tab', '0', '7.65', NULL, NULL, NULL, 'LAB', NULL, '2020-09-05', 0, '', 'DR. KIAMBI', NULL, NULL),
(650, '15.3', 'RS-33362', 'A to Z Antioxidants Tab', '2', NULL, 'A to Z Antioxidants Tab', '0', '7.65', NULL, NULL, NULL, 'LAB', NULL, '2020-09-05', 0, '', 'Linet Ntinyari', 'Linet Ntinyari', NULL),
(651, '64.5', 'RS-33362', 'Abitren Tabs 100mg', '5', NULL, 'Abitren Tabs 100mg', '0', '12.9', NULL, NULL, NULL, 'LAB', NULL, '2020-09-05', 0, '', 'Linet Ntinyari', 'Linet Ntinyari', NULL),
(652, '7.65', 'RS-05302230225870232303703223030733342280330', 'A to Z Antioxidants Tab', '1', NULL, 'A to Z Antioxidants Tab', '0', '7.65', NULL, NULL, NULL, 'LAB', NULL, '2020-09-06', 0, '', 'Linet Ntinyari', 'store', NULL),
(654, '855', 'RS-673282', 'activated charcoal', '57', NULL, 'activated charcoal', '1710', '45', NULL, NULL, NULL, 'LAB', NULL, '2020-09-07', 0, '', 'Linet Ntinyari', 'store', '2020-09-07'),
(655, '750', 'RS-300232', 'activated charcoal', '50', NULL, 'activated charcoal', '1500', '45', NULL, NULL, NULL, 'LAB', NULL, '2020-09-07', 0, '', 'Linet Ntinyari', 'store', '2000'),
(656, '120', 'RS-33032245022222223233232867222603723033220', 'AMCLAMED 375', '3', NULL, 'AMCLAMED 375', '60', '60', NULL, NULL, NULL, 'LAB', NULL, '2020-09-07', 0, '', 'Cashier', 'store', '10'),
(657, '1200', 'RS-33032245022222223233232867222603723033220', 'diclofenac 75mgs/ml', '8', NULL, 'diclofenac 75mgs/ml', '0', '150', NULL, NULL, NULL, 'LAB', NULL, '2020-09-07', 0, '', 'Cashier', 'store', '16'),
(658, '1000', 'RS-08202', 'Acyclovir 200mgs', '5', NULL, 'Acyclovir 200mgs', '0', '200', NULL, NULL, NULL, 'OPD', NULL, '2020-09-07', 0, '', 'Linet Ntinyari', 'store', '115'),
(659, '350', 'RS-08202', 'alfuzosine 5mgs', '5', NULL, 'alfuzosine 5mgs', '0', '70', NULL, NULL, NULL, 'OPD', NULL, '2020-09-07', 0, '', 'Linet Ntinyari', 'store', '-6');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE IF NOT EXISTS `lab` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE IF NOT EXISTS `laboratorist` (
  `laboratorist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`laboratorist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`laboratorist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'wuonyadoz junior', 'laboratorist@laboratorist.com', 'laboratorist', 'Mumbai, India', '9800000000'),
(2, 'jacob nthiwa', 'jacobnthiwa@gmail.com', 'nthiwa', 'N/A', '254701417887'),
(5, 'olare george', 'olare@lakeside.com', 'lab', 'Migori', '0727465338');

-- --------------------------------------------------------

--
-- Table structure for table `lab_inventory`
--

CREATE TABLE IF NOT EXISTS `lab_inventory` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lab_inventory`
--

INSERT INTO `lab_inventory` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(1, '', 'HIV Strips', '50', '0', '100', 100, 'Tabs', '2021-10-28', 'Colortex', 11, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lab_order`
--

CREATE TABLE IF NOT EXISTS `lab_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `datesold` varchar(200) DEFAULT NULL,
  `transdep` varchar(100) DEFAULT NULL,
  `patient_id` varchar(220) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `insurance_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci NOT NULL,
  `russian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8_unicode_ci NOT NULL,
  `greek` longtext COLLATE utf8_unicode_ci NOT NULL,
  `german` longtext COLLATE utf8_unicode_ci NOT NULL,
  `italian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thai` longtext COLLATE utf8_unicode_ci NOT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `latin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci NOT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci NOT NULL,
  `korean` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=234 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1, 'admin_dashboard', 'admin dashboard', 'à¦…à§à¦¯à¦¾à¦¡à¦®à¦¿à¦¨ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'panel de administraciÃ³n', 'Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³ Ø§Ù„Ù…Ø´Ø±Ù', 'admin dashboard', 'Ð¿Ð°Ð½ÐµÐ»Ð¸ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°', 'ç®¡ç†é¢æ¿', 'yÃ¶netici paneli', 'painel de administraÃ§Ã£o', 'admin mÅ±szerfal', 'interface d''administration', 'Ï„Î¿ admin Ï„Î±Î¼Ï€Î»ÏŒ', 'Admin-Dashboard', 'cruscotto Admin', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡à¸”à¸¹à¹à¸¥à¸£à¸°à¸šà¸š', 'Ø§ÛŒÚˆÙ…Ù† ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤µà¥à¤¯à¤µà¤¸à¥à¤¥à¤¾à¤ªà¤• à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'admin Dashboard', 'dashboard admin', 'ç®¡ç†ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰', 'ê´€ë¦¬ìž ëŒ€ì‹œ ë³´ë“œ'),
(2, 'login', 'login', 'à¦²à¦—à¦‡à¦¨ à¦•à¦°à§à¦¨', 'login', 'Ø¯Ø®ÙˆÙ„', 'inloggen', 'Ð²Ñ…Ð¾Ð´', 'æ³¨å†Œ', 'giriÅŸ', 'login', 'bejelentkezÃ©s', 'S''identifier', 'ÏƒÏÎ½Î´ÎµÏƒÎ·', 'anmelden', 'login', 'à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸š', 'Ù„Ø§Ú¯ Ø§Ù†', 'à¤²à¥‰à¤—à¤¿à¤¨', 'login', 'login', 'ãƒ­ã‚°ã‚¤ãƒ³', 'ë¡œê·¸ì¸'),
(3, 'email', 'email', 'à¦‡à¦®à§‡à¦²', 'email', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'e-mail', 'E-mail', 'ç”µå­é‚®ä»¶', 'e-posta', 'e-mail', 'email', 'email', 'e-mail', 'E-Mail-', 'e-mail', 'à¸ªà¹ˆà¸‡à¸­à¸µà¹€à¸¡à¸¥à¹Œ', 'Ø§ÛŒ Ù…ÛŒÙ„', 'à¤ˆà¤®à¥‡à¤²', 'Email', 'email', 'ãƒ¡ãƒ¼ãƒ«', 'ì´ë©”ì¼'),
(4, 'password', 'password', 'à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡', 'contraseÃ±a', 'ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø±', 'wachtwoord', 'Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'å¯†ç ', 'parola', 'senha', 'jelszÃ³', 'mot de passe', 'ÎºÏ‰Î´Î¹ÎºÎ¿Ï Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚', 'Kennwort', 'parola d''ordine', 'à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡', 'Signum', 'kata sandi', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰', 'ì•”í˜¸'),
(5, 'forgot_password?', 'forgot password?', 'à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦­à§à¦²à§‡ à¦—à§‡à¦›à§‡à¦¨?', 'Â¿OlvidÃ³ su contraseÃ±a?', 'Ù‡Ù„ Ù†Ø³ÙŠØª ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±ØŸ', 'wachtwoord vergeten?', 'Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'å¿˜è®°å¯†ç ï¼Ÿ', 'ÅŸifremi unuttum?', 'Esqueceu a senha?', 'elfelejtett jelszÃ³?', 'Mot de passe oubliÃ©?', 'ÎžÎµÏ‡Î¬ÏƒÎ±Ï„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ ÏƒÎ±Ï‚;', 'Passwort vergessen?', 'Hai dimenticato la password?', 'à¸¥à¸·à¸¡à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™?', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø¨Ú¾ÙˆÙ„ Ú¯ÛŒØ§ ÛÛ’ØŸ', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤­à¥‚à¤² à¤—à¤ à¤¹à¥ˆà¤‚?', 'nibh', 'lupa password?', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å¿˜ã‚ŒãŸï¼Ÿ', 'ë¹„ë°€ë²ˆí˜¸ë¥¼ ìžŠìœ¼ ì…¨ë‚˜ìš”?'),
(6, 'account_type', 'account type', 'à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿà§‡à¦° à¦ªà§à¦°à¦•à¦¾à¦°', 'Tipo de cuenta', 'Ù†ÙˆØ¹ Ø§Ù„Ø­Ø³Ø§Ø¨', 'accounttype', 'Ñ‚Ð¸Ð¿ ÑÑ‡ÐµÑ‚Ð°', 'è´¦æˆ·ç±»åž‹', 'hesap tÃ¼rÃ¼', 'tipo de conta', 'fiÃ³k tÃ­pusÃ¡t', 'type de compte', 'Î¤ÏÏ€Î¿Ï‚ Î»Î¿Î³Î±ÏÎ¹Î±ÏƒÎ¼Î¿Ï', 'Kontotyp', 'Tipo di conto', 'à¸›à¸£à¸°à¹€à¸ à¸—à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹ Ú©ÛŒ Ù‚Ø³Ù…', 'à¤–à¤¾à¤¤à¤¾ à¤ªà¥à¤°à¤•à¤¾à¤°', 'propter speciem', 'Jenis akun', 'å£åº§ã®ç¨®é¡ž', 'ê³„ì • ìœ í˜•'),
(7, 'admin', 'admin', 'à¦…à§à¦¯à¦¾à¦¡à¦®à¦¿à¦¨', 'administraciÃ³n', 'Ù…Ø´Ø±Ù', 'admin', 'ÐÐ´Ð¼Ð¸Ð½', 'ç®¡ç†å‘˜', 'yÃ¶netim', 'administrador', 'admin', 'administrateur', 'Ï„Î¿ admin', 'Admin', 'Admin', 'à¸œà¸¹à¹‰à¸”à¸¹à¹à¸¥à¸£à¸°à¸šà¸š', 'Ù…Ù†ØªØ¸Ù…', 'à¤ªà¥à¤°à¤¶à¤¾à¤¸à¤¨', 'admin', 'admin', 'ç®¡ç†è€…', 'ê´€ë¦¬ìž'),
(8, 'doctor', 'doctor', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦°', 'doctor', 'Ø·Ø¨ÙŠØ¨,en', 'dokter', 'Ð²Ñ€Ð°Ñ‡,en', 'åŒ»ç”Ÿ,en', 'doktor', 'mÃ©dico', 'orvos', 'mÃ©decin', 'Î³Î¹Î±Ï„ÏÏŒÏ‚', 'Arzt', 'medico', 'à¸„à¸¸à¸“à¸«à¸¡à¸­', 'ÚˆØ§Ú©Ù¹Ø±', 'à¤šà¤¿à¤•à¤¿à¤¤à¥à¤¸à¤•', 'Medicus', 'dokter', 'åŒ»è€…', 'ì˜ì‚¬'),
(9, 'patient', 'patient', 'à¦°à§‹à¦—à§€à¦°', 'paciente', 'Ø§Ù„Ù…Ø±ÙŠØ¶,en', 'patiÃ«nt', 'Ð¿Ð°Ñ†Ð¸ÐµÐ½Ñ‚,en', 'ç—…äºº,en', 'hasta', 'paciente', 'beteg', 'patients', 'Î±ÏƒÎ¸ÎµÎ½Î®Ï‚', 'Patienten', 'paziente', 'à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶', 'à¤°à¥‹à¤—à¥€', 'Patientes', 'pasien', 'æ‚£è€…', 'í™˜ìž'),
(10, 'pharmacist', 'pharmacist', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿ', 'farmacÃ©utico', 'ØµÙŠØ¯Ù„ÙŠ,en', 'apotheker', 'Ñ„Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚', 'è¯å‰‚å¸ˆ,en', 'eczacÄ±', 'farmacÃªutico', 'gyÃ³gyszerÃ©sz', 'pharmacien', 'Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹ÏŒÏ‚', 'Apotheker', 'farmacista', 'à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹', 'à¤”à¤·à¤§ à¤¬à¤¨à¤¾à¤¨à¥‡à¤µà¤¾à¤²à¤¾', 'pharmacist', 'apoteker,en', 'è–¬å‰¤å¸«', 'ì•½ì‚¬,en'),
(11, 'laboratorist', 'laboratorist,eo', 'à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿à¦¸à§à¦Ÿ', 'laboratorista', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorista', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorist,eo', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorist', 'laboratorist,eo', 'laboratorist', 'laboratorist'),
(12, 'accountant', 'accountant', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦•', 'contador', 'Ù…Ø­Ø§Ø³Ø¨,en', 'boekhouder', 'Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€', 'ä¼šè®¡,en', 'muhasebeci', 'contador', 'kÃ¶nyvelÅ‘', 'comptable', 'Î»Î¿Î³Î¹ÏƒÏ„Î®Ï‚', 'Buchhalter', 'ragioniere', 'à¸ªà¸¡à¸¸à¸«à¹Œà¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹', 'à¤®à¥à¤¨à¥€à¤®', 'Ratiocinatore', 'akuntan', 'ä¼šè¨ˆå£«', 'íšŒê³„ ì›'),
(13, 'monitor_hospital', 'monitor hospital', 'à¦®à¦¨à¦¿à¦Ÿà¦° à¦¹à¦¾à¦¸à¦ªà¦¾à¦¤à¦¾à¦²à§‡', 'hospital monitor', 'Ù…Ø³ØªØ´ÙÙ‰ Ø±ØµØ¯,en', 'beeldscherm ziekenhuis', 'Ð¼Ð¾Ð½Ð¸Ñ‚Ð¾Ñ€ Ð±Ð¾Ð»ÑŒÐ½Ð¸Ñ†Ñƒ', 'ç›‘æµ‹åŒ»é™¢,en', 'monitÃ¶r hastane', 'Monitor hospitalar', 'monitor kÃ³rhÃ¡zban', 'hÃ´pital moniteur', 'Î¿Î¸ÏŒÎ½Î· Î±Ï€ÏŒ Î½Î¿ÏƒÎ¿ÎºÎ¿Î¼ÎµÎ¯Î¿', 'Monitor Krankenhaus', 'ospedale monitor', 'à¹‚à¸£à¸‡à¸žà¸¢à¸²à¸šà¸²à¸¥à¸ˆà¸­', 'Ù…Ø§Ù†ÛŒÙ¹Ø± ÛØ³Ù¾ØªØ§Ù„', 'à¤®à¥‰à¤¨à¤¿à¤Ÿà¤° à¤…à¤¸à¥à¤ªà¤¤à¤¾à¤²', 'notes hospitalis', 'memantau rumah sakit', 'ãƒ¢ãƒ‹ã‚¿ãƒ¼ç—…é™¢', 'ëª¨ë‹ˆí„° ë³‘ì›,en'),
(14, 'nurse', 'nurse', 'à¦¨à¦¾à¦°à§à¦¸', 'enfermera', 'Ù…Ù…Ø±Ø¶Ø©,en', 'verpleegster', 'Ð¼ÐµÐ´ÑÐµÑÑ‚Ñ€Ð°', 'æŠ¤å£«,en', 'hemÅŸire', 'enfermeira', 'nÅ‘vÃ©r', 'infirmiÃ¨re', 'Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'Krankenschwester', 'infermiere', 'à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³', 'à¤¨à¤°à¥à¤¸', 'nutricem', 'perawat', 'çœ‹è­·å¸«', 'ê°„í˜¸ì‚¬'),
(15, 'department', 'department', 'à¦¬à¦¿à¦­à¦¾à¦—', 'departamento', 'Ù‚Ø³Ù…,en', 'afdeling', 'Ð¾Ñ‚Ð´ÐµÐ»', 'éƒ¨é—¨,en', 'bÃ¶lÃ¼m', 'departamento', 'osztÃ¡ly', 'dÃ©partement', 'Ï„Î¼Î®Î¼Î±', 'Abteilung', 'Dipartimento', 'à¹à¸œà¸™à¸', 'Ù…Ø­Ú©Ù…Û', 'à¤µà¤¿à¤­à¤¾à¤—', 'Department', 'departemen', 'éƒ¨é–€', 'ë¶€'),
(16, 'dashboard', 'dashboard', 'à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'salpicadero', 'Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³,en', 'dashboard', 'Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð°Ñ Ð¿Ð°Ð½ÐµÐ»ÑŒ', 'ä»ªè¡¨ç›˜,en', 'gÃ¶sterge paneli', 'painel de instrumentos', 'mÅ±szerfal', 'tableau de bord', 'Ï„Î±Î¼Ï€Î»ÏŒ', 'Armaturenbrett', 'cruscotto', 'à¸«à¸™à¹‰à¸²à¸›à¸±à¸”', 'ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'Dashboard', 'dasbor', 'ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰', 'ê³„ê¸°íŒ,en'),
(17, 'settings', 'settings', 'à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸', 'ajustes', 'Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª,en', 'instellingen', 'Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸', 'è®¾ç½®,en', 'ayarlarÄ±', 'definiÃ§Ãµes', 'beÃ¡llÃ­tÃ¡sok', 'rÃ©glages', 'Î¡Ï…Î¸Î¼Î¯ÏƒÎµÎ¹Ï‚', 'Einstellungen', 'impostazioni', 'à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²', 'ØªØ±ØªÛŒØ¨Ø§Øª', 'à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸', 'obitus', 'Pengaturan', 'è¨­å®š', 'ì„¤ì •,en'),
(18, 'profile', 'profile', 'à¦ªà§à¦°à¦«à¦¾à¦‡à¦²', 'perfil', 'Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ,en', 'profiel', 'Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'è½®å»“,en', 'profil', 'perfil', 'profil', 'profil', 'Ï€ÏÎ¿Ï†Î¯Î»', 'Profil', 'Profilo', 'à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”', 'Ù¾Ø±ÙˆÙØ§Ø¦Ù„', 'à¤ªà¥à¤°à¥‹à¤«à¤¼à¤¾à¤‡à¤²', 'profile', 'profil,en', 'ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«', 'í”„ë¡œí•„'),
(19, 'settings_updated', 'settings updated', 'à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸ à¦†à¦ªà¦¡à§‡à¦Ÿ', 'configuraciÃ³n actualizado', 'ØªØ­Ø¯ÙŠØ« Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª', 'instellingen bijgewerkt', 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð½Ð¾Ð¹', 'æ›´æ–°è®¾ç½®', 'ayarlarÄ±nÄ±n gÃ¼ncellenmesi', 'definiÃ§Ãµes atualizadas', 'beÃ¡llÃ­tÃ¡sok frissÃ­tÃ©se', 'les paramÃ¨tres mis Ã  jour', 'Î¡Ï…Î¸Î¼Î¯ÏƒÎµÎ¹Ï‚ ÎµÎ½Î·Î¼Î­ÏÏ‰ÏƒÎ·', 'Einstellungen aktualisiert', 'impostazioni aggiornate', 'à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸à¸²à¸£à¸­à¸±à¸žà¹€à¸”à¸•', 'ØªØ±ØªÛŒØ¨Ø§Øª Ú©ÛŒ ØªØ§Ø²Û Ú©Ø§Ø±ÛŒ', 'à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸ à¤…à¤ªà¤¡à¥‡à¤Ÿ', 'occasus updated', 'pengaturan diperbarui', 'è¨­å®šãŒæ›´æ–°ã•ã‚Œ', 'ì„¤ì • ì—…ë°ì´íŠ¸'),
(20, 'logout', 'logout', 'à¦²à¦— à¦†à¦‰à¦Ÿ', 'logout', 'Ø®Ø±ÙˆØ¬', 'uitloggen', 'Ð²Ñ‹Ñ…Ð¾Ð´ Ð¸Ð· ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹', 'æ³¨é”€', 'Ã§Ä±kÄ±ÅŸ', 'sair', 'logout', 'dÃ©connexion', 'Î±Ï€Î¿ÏƒÏÎ½Î´ÎµÏƒÎ·', 'Abmeldung', 'il logout', 'à¸­à¸­à¸à¸ˆà¸²à¸à¸£à¸°à¸šà¸š', 'Ù„Ø§Ú¯ Ø¢Ø¤Ù¹ Ú©Ø±ÛŒÚº', 'à¤²à¥‰à¤—à¤†à¤‰à¤Ÿ', 'logout', 'logout', 'ãƒ­ã‚°ã‚¢ã‚¦ãƒˆ', 'ë¡œê·¸ ì•„ì›ƒ'),
(21, 'logged_out', 'logged out', 'à¦²à¦— à¦†à¦‰à¦Ÿ', 'desconectado', 'ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø®Ø±ÙˆØ¬', 'uitgelogd', 'Ð²Ñ‹Ñ…Ð¾Ð´ Ð¸Ð· ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹', 'æ³¨é”€', 'oturumu', 'desconectado', 'kijelentkezett', 'dÃ©connectÃ©', 'Î±Ï€Î¿ÏƒÏ…Î½Î´ÎµÎ¸ÎµÎ¯', 'abgemeldet', 'disconnesso', 'à¹€à¸‚à¹‰à¸²à¸­à¸­à¸', 'Ø¨Ø§ÛØ± Ú©Ø§', 'à¤²à¥‰à¤— à¤†à¤‰à¤Ÿ', 'de logged', 'log out', 'ãƒ­ã‚°ã‚¢ã‚¦ãƒˆ', 'ë¡œê·¸ ì•„ì›ƒ'),
(22, 'reset_password', 'reset password', 'à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'restablecer la contraseÃ±a', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±', 'reset wachtwoord', 'Ð¡Ð±Ñ€Ð¾Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ', 'é‡è®¾å¯†ç ', 'parola sÄ±fÄ±rlama', 'redefinir a senha', 'JelszÃ³ tÃ¶rlÃ©se', 'rÃ©initialiser le mot de passe', 'ÎµÏ€Î±Î½Î±Ï†Î­ÏÎµÏ„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚', 'Kennwort zurÃ¼cksetzen', 'reimpostare la password', 'à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø±ÛŒ Ø³ÛŒÙ¹', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤°à¥€à¤¸à¥‡à¤Ÿ', 'reset Signum', 'reset password', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’ãƒªã‚»ãƒƒãƒˆ', 'ì•”í˜¸ë¥¼ ìž¬ì„¤ì •'),
(23, 'reset', 'reset', 'à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'reajustar', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ†', 'reset', 'ÑÐ±Ñ€Ð¾Ñ', 'å¤ä½', 'ayarlamak', 'restabelecer', 'vissza', 'rÃ©initialiser', 'ÎµÏ€Î±Î½Î±Ï†Î¿ÏÎ¬', 'ZurÃ¼cksetzen', 'reimpostare', 'à¸•à¸±à¹‰à¸‡à¹ƒà¸«à¸¡à¹ˆ', 'Ø±ÛŒ Ø³ÛŒÙ¹', 'à¤°à¥€à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚', 'reset', 'ulang', 'ãƒªã‚»ãƒƒãƒˆ', 'ìž¬ì„¤ì •'),
(24, 'account', 'account', 'à¦¹à¦¿à¦¸à¦¾à¦¬', 'cuenta', 'Ø­Ø³Ø§Ø¨', 'rekening', 'ÑÑ‡ÐµÑ‚', 'å¸æˆ·', 'hesap', 'conta', 'szÃ¡mla', 'considÃ©ration', 'Î»Î¿Î³Î±ÏÎ¹Î±ÏƒÎ¼ÏŒÏ‚', 'Rechnung', 'acconto', 'à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹', 'à¤–à¤¾à¤¤à¤¾', 'propter', 'rekening', 'ã‚¢ã‚«ã‚¦ãƒ³ãƒˆ', 'ê³„ì •'),
(25, 'select_language', 'select language', 'à¦­à¦¾à¦·à¦¾ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'seleccionar el idioma', 'Ø§Ø®ØªØ± Ø§Ù„Ù„ØºØ©,en', 'Selecteer taal,en', 'Ð²Ñ‹Ð±Ñ€Ð°Ñ‚ÑŒ ÑÐ·Ñ‹Ðº,en', 'é€‰æ‹©è¯­è¨€,en', 'dili seÃ§in', 'selecionar o idioma', 'VÃ¡lasszon nyelvet', 'sÃ©lectionner la langue', 'ÎµÏ€Î¹Î»Î­Î¾Ï„Îµ Ï„Î· Î³Î»ÏŽÏƒÏƒÎ±', 'Sprache wÃ¤hlen', 'selezionare la lingua', 'à¹€à¸¥à¸·à¸­à¸à¸ à¸²à¸©à¸²', 'Ø²Ø¨Ø§Ù† Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº', 'à¤­à¤¾à¤·à¤¾ à¤•à¤¾ à¤šà¤¯à¤¨', 'Linguam elige', 'pilih bahasa', 'è¨€èªžã‚’é¸æŠžã™ã‚‹', 'ì–¸ì–´ë¥¼ ì„ íƒ,en'),
(26, 'panel', 'panel', 'à¦ªà§à¦¯à¦¾à¦¨à§‡à¦²', 'panel', 'Ù„ÙˆØ­Ø©', 'paneel', 'Ð¿Ð°Ð½ÐµÐ»ÑŒ', 'é¢æ¿', 'panel', 'painel', 'bizottsÃ¡g', 'panneau', 'Ï€Î¯Î½Î±ÎºÎ±Ï‚', 'Panel', 'pannello', 'à¹à¸œà¸‡à¸«à¸™à¹‰à¸²à¸›à¸±à¸”', 'Ù¾ÛŒÙ†Ù„', 'à¤ªà¥ˆà¤¨à¤²', 'panel', 'panel', 'ãƒ‘ãƒãƒ«', 'íŒ¨ë„'),
(27, 'view_appointment', 'view appointment', 'à¦…à§à¦¯à¦¾à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¦à§‡à¦–à¦¤à§‡', 'ver la cita', 'Ø¹Ø±Ø¶ Ø§Ù„ØªØ¹ÙŠÙŠÙ†', 'bekijken afspraak', 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð²ÑÑ‚Ñ€ÐµÑ‡Ñƒ', 'æŸ¥çœ‹é¢„çº¦', 'randevu gÃ¶rmek', 'ver nomeaÃ§Ã£o', 'TalÃ¡lkozÃ³ megtekintÃ©se', 'voir rendez-vous', 'Î´ÎµÎ¯Ï„Îµ Ï„Î¿ Î´Î¹Î¿ÏÎ¹ÏƒÎ¼ÏŒ', 'Termin ansehen', 'visualizzare appuntamento', 'à¸”à¸¹à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'ØªÙ‚Ø±Ø±ÛŒ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit constitutio', 'lihat penunjukan', 'äºˆå®šã‚’è¡¨ç¤º', 'ì•½ì†ë³´ê¸°'),
(28, 'view_payment', 'view payment', 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¦à§‡à¦–à¦¤à§‡', 'ver pago', 'Ø¹Ø±Ø¶ Ø§Ù„Ø¯ÙØ¹', 'bekijk betaling', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹', 'æŸ¥çœ‹æ”¯ä»˜', 'Ã¶deme gÃ¶rmek', 'ver o pagamento', 'megtekintÃ©se fizetÃ©s', 'voir paiement', 'Î´ÎµÎ¯Ï„Îµ Ï€Î»Î·ÏÏ‰Î¼ÏŽÎ½', 'sehen Zahlung', 'visualizzare pagamento', 'à¸”à¸¹à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Û’ Ù„Ø¦ÛŒÛ’', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit solutione', 'lihat pembayaran', 'æ”¯æ‰•ã„ã‚’è¡¨ç¤º', 'ì§€ë¶ˆì„ ë³¼'),
(29, 'view_bed_status', 'view bed status', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦…à¦¬à¦¸à§à¦¥à¦¾ à¦¦à§‡à¦–à¦¤à§‡', 'ver el estado de la cama', 'Ø¹Ø±Ø¶ Ø­Ø§Ù„Ø© Ø§Ù„Ø³Ø±ÙŠØ±', 'bekijk de status bed', 'View Bed ÑÑ‚Ð°Ñ‚ÑƒÑ', 'æŸ¥çœ‹å§åºŠçŠ¶æ€', 'yatak durumunu gÃ¶rÃ¼ntÃ¼lemek', 'visualizar o status de cama', 'View Bed Ã¡llapot', 'afficher l''Ã©tat du lit', 'Î´ÎµÎ¯Ï„Îµ Ï„Î·Î½ ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· ÎºÏÎµÎ²Î¬Ï„Î¹', 'View Bed Status', 'visualizzare lo stato del letto', 'à¸”à¸¹à¸ªà¸–à¸²à¸™à¸°à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ú©ÛŒ Ø­ÛŒØ«ÛŒØª Ú©Ùˆ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit status cubile', 'melihat status tidur', 'åºŠã®çŠ¶æ…‹ã‚’è¡¨ç¤º', 'ì¹¨ëŒ€ ìƒíƒœë¥¼ í™•ì¸'),
(30, 'view_blood_bank', 'view blood bank', 'à¦¬à§à¦²à¦¾à¦¡ à¦¬à§à¦¯à¦¾à¦™à§à¦• à¦¦à§‡à¦–à¦¤à§‡', 'ver el banco de sangre', 'Ø¹Ø±Ø¶ Ø¨Ù†Ùƒ Ø§Ù„Ø¯Ù…', 'bekijk bloedbank', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð±Ð°Ð½Ðº ÐºÑ€Ð¾Ð²Ð¸', 'æŸ¥çœ‹è¡€åº“', 'kan bankasÄ± gÃ¶rmek', 'ver banco de sangue', 'megtekintÃ©sÃ©hez vÃ©r bank', 'voir la banque de sang', 'Î´ÎµÎ¯Ï„Îµ Ï„ÏÎ¬Ï€ÎµÎ¶Î± Î±Î¯Î¼Î±Ï„Î¿Ï‚', 'sehen Blutbank', 'visualizzare banca del sangue', 'à¸”à¸¹à¸˜à¸™à¸²à¸„à¸²à¸£à¹€à¸¥à¸·à¸­à¸”', 'Ø¨Ù„Úˆ Ø¨ÛŒÙ†Ú© Ú©Û’ Ù„Ø¦ÛŒÛ’', 'à¤¬à¥à¤²à¤¡ à¤¬à¥ˆà¤‚à¤• à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit sanguinem ripae', 'lihat bank darah', 'è¡€æ¶²ãƒãƒ³ã‚¯ã‚’è¡¨ç¤º', 'í˜ˆì•¡ ì€í–‰ë³´ê¸°'),
(31, 'view_medicine', 'view medicine', 'à¦”à¦·à¦§ à¦¦à§‡à¦–à¦¤à§‡', 'ver la medicina', 'Ù†Ø¸Ø± Ø¥Ù„Ù‰ Ø§Ù„Ø·Ø¨', 'bekijk geneeskunde', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ðµ', 'æŸ¥çœ‹è¯', 'tÄ±p gÃ¶rmek', 'ver medicina', 'megtekintÃ©sÃ©hez gyÃ³gyszer', 'voir la mÃ©decine', 'Î´ÎµÎ¯Ï„Îµ Ï„Î¿ Ï†Î¬ÏÎ¼Î±ÎºÎ¿', 'ansehen Medizin', 'visualizzare medicina', 'à¸”à¸¹à¸¢à¸²', 'Ø¯ÙˆØ§ Ú©Ùˆ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤¦à¤µà¤¾ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit medicamentum', 'lihat obat', 'è–¬ã‚’è¦‹ã‚‹', 'ì•½ì„ ë³´ë ¤ë©´'),
(32, 'view_operation', 'view operation', 'à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨ à¦¦à§‡à¦–à¦¤à§‡', 'ver la operaciÃ³n', 'Ø¹Ø±Ø¶ Ø¹Ù…Ù„ÙŠØ©', 'bekijk operatie', 'ÐžÑ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹', 'æŸ¥çœ‹æ“ä½œ', 'Ã§alÄ±ÅŸma gÃ¶rmek', 'visualizar operaÃ§Ã£o', 'megtekinteni mÅ±kÃ¶dÃ©s', 'voir opÃ©ration', 'Î´ÎµÎ¯Ï„Îµ Ï„Î· Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±', 'anzuzeigen Betrieb', 'visualizzare il funzionamento', 'à¸”à¸¹à¸à¸²à¸£à¸”à¸³à¹€à¸™à¸´à¸™à¸‡à¸²à¸™', 'Ø¢Ù¾Ø±ÛŒØ´Ù† Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤†à¤ªà¤°à¥‡à¤¶à¤¨ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit operatione', 'melihat operasi', 'æ“ä½œã‚’è¡¨ç¤º', 'ìž‘ì—…ì„ ë³´ë ¤ë©´'),
(33, 'view_birth_report', 'view birth report', 'à¦†à¦®à¦¾à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'ver el informe de nacimiento', 'Ø¹Ø±Ø¶ Ø§Ù„ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯', 'bekijk geboorte rapport', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚ Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ', 'æŸ¥çœ‹å‡ºç”Ÿç”³æŠ¥', 'DoÄŸum raporunu gÃ¶rÃ¼ntÃ¼lemek', 'ver relatÃ³rio de nascimento', 'megtekintÃ©sÃ©hez szÃ¼letÃ©si jelentÃ©s', 'voir rapport de naissance', 'Ï€ÏÎ¿Î²Î¬Î»ÎµÏ„Îµ Ï„Î·Î½ Î±Î½Î±Ï†Î¿ÏÎ¬ Î³Î­Î½Î½Î·ÏƒÎ·Ï‚', 'sehen Geburtsdatum Bericht', 'visualizzare il report di nascita', 'à¸”à¸¹à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸à¸´à¸”', 'Ø¢Ù¾ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤œà¤¨à¥à¤® à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit nativitatis auditui', 'melihat laporan kelahiran', 'å‡ºç”£ãƒ¬ãƒãƒ¼ãƒˆã‚’è¡¨ç¤º', 'ì¶œìƒ ë³´ê³ ì„œë¥¼ ë³´ë ¤ë©´'),
(34, 'view_death_report', 'view death report', 'à¦®à§ƒà¦¤à§à¦¯à§à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'ver el informe de la muerte', 'Ø¹Ø±Ø¶ ØªÙ‚Ø±ÙŠØ± Ø§Ù„ÙˆÙØ§Ø©', 'bekijk dood rapport', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚ ÑÐ¼ÐµÑ€Ñ‚Ð¸', 'æŸ¥çœ‹æ­»äº¡æŠ¥å‘Š', 'Ã¶lÃ¼m raporunu gÃ¶rÃ¼ntÃ¼lemek', 'ver relatÃ³rio morte', 'a halÃ¡lt jelentÃ©s', 'voir rapport de la mort', 'Ï€ÏÎ¿Î²Î¬Î»ÎµÏ„Îµ Ï„Î·Î½ Î±Î½Î±Ï†Î¿ÏÎ¬ Ï„Î¿Ï… Î¸Î±Î½Î¬Ï„Î¿Ï…', 'sehen Tod Bericht', 'visualizzare il report di morte', 'à¸”à¸¹à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸ªà¸µà¸¢à¸Šà¸µà¸§à¸´à¸•', 'Ù…ÙˆØª Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤®à¥Œà¤¤ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit mortis nuntium', 'melihat laporan kematian', 'æ­»ã®ãƒ¬ãƒãƒ¼ãƒˆã‚’è¡¨ç¤º', 'ì£½ìŒì˜ ë³´ê³ ì„œë¥¼ ë³´ë ¤ë©´'),
(35, 'manage_email_template', 'manage email template', 'à¦‡à¦®à§‡à¦‡à¦² à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestiÃ³n de plantilla de correo electrÃ³nico', 'Ø¥Ø¯Ø§Ø±Ø© Ù‚Ø§Ù„Ø¨ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'beheren e-mail template', 'Ð¨Ð°Ð±Ð»Ð¾Ð½ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ð¾Ð¹', 'ç®¡ç†ç”µå­é‚®ä»¶æ¨¡æ¿', 'e-posta ÅŸablonu yÃ¶netmek', 'gerenciar modelo de e-mail', 'kezelni e-mail sablon', 'gÃ©rer modÃ¨le de courriel', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï€ÏÏŒÏ„Ï…Ï€Î¿ email', 'Verwalten von E-Vorlage', 'gestione modello e-mail', 'à¹à¸¡à¹ˆà¹à¸šà¸šà¸à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸­à¸µà¹€à¸¡à¸¥à¹Œ', 'Ø§ÛŒ Ù…ÛŒÙ„ Ø³Ø§Ù†Ú†Û’ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤ˆà¤®à¥‡à¤² à¤Ÿà¥‡à¤®à¥à¤ªà¤²à¥‡à¤Ÿ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'Morbi luctus curo', 'mengelola email template', 'é›»å­ãƒ¡ãƒ¼ãƒ«ãƒ†ãƒ³ãƒ—ãƒ¬ãƒ¼ãƒˆã‚’ç®¡ç†', 'ì „ìž ë©”ì¼ ì„œì‹ íŒŒì¼ ê´€ë¦¬'),
(36, 'manage_noticeboard', 'manage noticeboard', 'à¦¨à§‹à¦Ÿà¦¿à¦¶à¦¬à§‹à¦°à§à¦¡ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar tablÃ³n de anuncios', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù„Ø§ÙØªØ©', 'beheren prikbord', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð´Ð¾ÑÐºÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹', 'ç®¡ç†å¸ƒå‘Š', 'panosuna yÃ¶netmek', 'gerenciar avisos', 'kezelni Ã¼zenÅ‘falÃ¡n', 'gÃ©rer panneau d''', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î‘Î½Î±ÎºÎ¿Î¹Î½ÏŽÏƒÎµÏ‰Î½', 'verwalten noticeboard', 'gestire bacheca', 'à¸ˆà¸±à¸”à¸à¸²à¸£ noticeboard', 'noticeboard Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸à¤¬à¥‹à¤°à¥à¤¡ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'noticeboard curo', 'mengelola pengumuman', 'æŽ²ç¤ºæ¿ã‚’ç®¡ç†', 'ê³µì§€ ì‚¬í•­ more ê´€ë¦¬'),
(37, 'system_settings', 'system settings', 'à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦¸à§‡à¦Ÿà¦¿à¦‚à¦¸', 'configuraciÃ³n del sistema', 'Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù†Ø¸Ø§Ù…', 'systeeminstellingen', 'Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹', 'ç³»ç»Ÿè®¾ç½®', 'sistem ayarlarÄ±nÄ±', 'configuraÃ§Ãµes do sistema', 'rendszerbeÃ¡llÃ­tÃ¡sokat', 'les paramÃ¨tres du systÃ¨me', 'ÏÏ…Î¸Î¼Î¯ÏƒÎµÎ¹Ï‚ Ï„Î¿Ï… ÏƒÏ…ÏƒÏ„Î®Î¼Î±Ï„Î¿Ï‚', 'Systemeinstellungen', 'impostazioni di sistema', 'à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸£à¸°à¸šà¸š', 'Ø³Ø³Ù¹Ù… Ú©ÛŒ ØªØ±ØªÛŒØ¨Ø§Øª', 'à¤ªà¥à¤°à¤£à¤¾à¤²à¥€ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—à¥à¤¸', 'ratio occasus', 'pengaturan sistem', 'ã‚·ã‚¹ãƒ†ãƒ è¨­å®š', 'ì‹œìŠ¤í…œ ì„¤ì •'),
(38, 'manage_language', 'manage language', 'à¦­à¦¾à¦·à¦¾ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar idioma', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù„ØºØ©', 'beheren taal', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ ÑÐ·Ñ‹ÐºÐ¾Ð¼', 'ç®¡ç†è¯­è¨€', 'dil yÃ¶netmek', 'gerenciar linguagem', 'kezelni nyelv', 'gÃ©rer langue', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î³Î»ÏŽÏƒÏƒÎ±', 'verwalten Sprache', 'gestire lingua', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ à¸²à¸©à¸²', 'Ø²Ø¨Ø§Ù† Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤­à¤¾à¤·à¤¾ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'Linguam curo', 'mengelola bahasa', 'è¨€èªžã‚’ç®¡ç†', 'ì–¸ì–´ ê´€ë¦¬'),
(39, 'backup_restore', 'backup restore', 'à¦ªà§à¦¨à¦ƒà¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª', 'Restaurar copia de seguridad', 'Ø§Ø³ØªØ¹Ø§Ø¯Ø© Ø§Ù„Ù†Ø³Ø® Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠ', 'backup terugzetten', 'Ð²Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ð¾Ð¹ ÐºÐ¾Ð¿Ð¸Ð¸', 'å¤‡ä»½è¿˜åŽŸ', 'geri yedekleme', 'RestauraÃ§Ã£o de Backup', 'Backup Restore', 'Backup Restore', 'ÎµÏ€Î±Î½Î±Ï†Î¿ÏÎ¬Ï‚ Î±Î½Ï„Î¹Î³ÏÎ¬Ï†Ï‰Î½ Î±ÏƒÏ†Î±Î»ÎµÎ¯Î±Ï‚', 'Backup wiederherstellen', 'Backup Restore', 'à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸£à¸µà¸¢à¸à¸„à¸·à¸™', 'Ø¨Ø­Ø§Ù„ Ø¨ÛŒÚ© Ø§Ù¾', 'à¤¬à¤¹à¤¾à¤² à¤¬à¥ˆà¤•à¤…à¤ª', 'tergum quod restituo', 'backup restore', 'ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—ã®ãƒªã‚¹ãƒˆã‚¢', 'ë³µì› ë°±ì—…'),
(40, 'appointment', 'appointment', 'à¦à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ', 'nombramiento', 'Ù…ÙˆØ¹Ø¯', 'afspraak', 'Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'ä»»å‘½', 'randevu', 'nomeaÃ§Ã£o', 'kinevezÃ©s', 'rendez-vous', 'ÏÎ±Î½Ï„ÎµÎ²Î¿Ï', 'Ernennung', 'appuntamento', 'à¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'ØªÙ‚Ø±Ø±ÛŒ', 'à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿', 'Nominatio', 'penunjukan', 'ä»»å‘½', 'ì•½ì†'),
(41, 'payment', 'payment', 'à¦ªà§à¦°à¦¦à¦¾à¦¨', 'pago', 'Ø¯ÙØ¹', 'betaling', 'Ð¾Ð¿Ð»Ð°Ñ‚Ð°', 'ä»˜æ¬¾', 'Ã¶deme', 'pagamento', 'fizetÃ©s', 'paiement', 'Ï€Î»Î·ÏÏ‰Î¼Î®', 'Bezahlung', 'pagamento', 'à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ', 'à¤­à¥à¤—à¤¤à¤¾à¤¨', 'solucionis', 'pembayaran', 'æ”¯æ‰•ã„', 'ì§€ë¶ˆ'),
(42, 'blood_bank', 'blood bank', 'à¦¬à§à¦²à¦¾à¦¡ à¦¬à§à¦¯à¦¾à¦™à§à¦•', 'banco de sangre', 'Ø¨Ù†Ùƒ Ø§Ù„Ø¯Ù…', 'bloedbank', 'Ð±Ð°Ð½Ðº ÐºÑ€Ð¾Ð²Ð¸', 'è¡€åº“', 'kan bankasÄ±', 'banco de sangue', 'vÃ©rbank', 'la banque de sang', 'Ï„ÏÎ¬Ï€ÎµÎ¶Î± Î±Î¯Î¼Î±Ï„Î¿Ï‚', 'Blutbank', 'banca del sangue', 'à¸˜à¸™à¸²à¸„à¸²à¸£à¹€à¸¥à¸·à¸­à¸”', 'Ø¨Ù„Úˆ Ø¨ÛŒÙ†Ú©', 'à¤°à¤•à¥à¤¤ à¤¬à¥ˆà¤‚à¤•', 'sanguinem ripam', 'bank darah', 'è¡€æ¶²ãƒãƒ³ã‚¯', 'í˜ˆì•¡ ì€í–‰'),
(43, 'medicine', 'medicine', 'à¦”à¦·à¦§', 'medicina', 'Ø¯ÙˆØ§Ø¡', 'geneeskunde', 'Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ð°', 'åŒ»è¯', 'tÄ±p', 'medicina', 'orvostudomÃ¡ny', 'mÃ©decine', 'Î¹Î±Ï„ÏÎ¹ÎºÎ®', 'Medizin', 'medicina', 'à¸¢à¸²', 'Ø¯ÙˆØ§', 'à¤¦à¤µà¤¾', 'medicine', 'obat', 'åŒ»å­¦', 'ì˜í•™'),
(44, 'operation_report', 'operation report', 'à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'confirmaciÃ³n de la operaciÃ³n', 'ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø¹Ù…Ù„ÙŠØ©', 'bediening rapport', 'Ð¾Ñ‚Ñ‡ÐµÑ‚ Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ', 'æ“ä½œæŠ¥å‘Š', 'Ã§alÄ±ÅŸma raporu', 'relatÃ³rio operaÃ§Ã£o', 'mÅ±kÃ¶dÃ©sÃ©rÅ‘l szÃ³lÃ³ jelentÃ©s', 'rapport d''opÃ©ration', 'Î±Î½Î±Ï†Î¿ÏÎ¬ Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±Ï‚', 'OP-Bericht', 'rapporto sul funzionamento', 'à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸”à¸³à¹€à¸™à¸´à¸™à¸‡à¸²à¸™', 'Ø¢Ù¾Ø±ÛŒØ´Ù† Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹', 'à¤†à¤ªà¤°à¥‡à¤¶à¤¨ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'operatio auditui', 'Laporan operasi', 'å‹•ä½œå ±å‘Š', 'ìš´ì˜ ë³´ê³ ì„œ'),
(45, 'birth_report', 'birth report', 'à¦†à¦®à¦¾à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'informe nacimiento', 'ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯', 'geboorte rapport', 'ÐžÑ‚Ñ‡ÐµÑ‚ Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ', 'å‡ºç”Ÿç”³æŠ¥', 'doÄŸum raporu', 'relatÃ³rio de nascimento', 'szÃ¼letÃ©si jelentÃ©s', 'rapport Ã  la naissance', 'ÎˆÎºÎ¸ÎµÏƒÎ· Î“Î­Î½Î½Î·ÏƒÎ·Ï‚', 'Geburt Bericht', 'relazione di nascita', 'à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸à¸´à¸”', 'Ø¢Ù¾ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹', 'à¤œà¤¨à¥à¤® à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'fama nativitate', 'Laporan lahir', 'å‡ºç”Ÿå±Š', 'ì¶œìƒ ë³´ê³ ì„œ'),
(46, 'death_report', 'death report', 'à¦®à§ƒà¦¤à§à¦¯à§à¦° à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'informe de la muerte', 'ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ù…ÙˆØª', 'dood rapport', 'ÑÐ¼ÐµÑ€Ñ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚', 'æ­»äº¡æŠ¥å‘Š', 'Ã¶lÃ¼m raporu', 'relatÃ³rio morte', 'halÃ¡l jelentÃ©s', 'Rapport de mort', 'Î­ÎºÎ¸ÎµÏƒÎ· Ï„Î¿Ï… Î¸Î±Î½Î¬Ï„Î¿Ï…', 'Tod Bericht', 'rapporto di morte', 'à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¹€à¸ªà¸µà¸¢à¸Šà¸µà¸§à¸´à¸•', 'Ù…ÙˆØª Ø±Ù¾ÙˆØ±Ù¹', 'à¤®à¥Œà¤¤ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'fama mortis', 'Laporan kematian', 'æ­»äº¡å±Š', 'ì‚¬ë§ ë³´ê³ ì„œ'),
(47, 'bed_allotment', 'bed allotment', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦…à§à¦¯à¦¾à¦²à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ', 'asignaciÃ³n de cama', 'ØªØ®ØµÙŠØµ Ø³Ø±ÙŠØ±', 'bed toewijzing', 'ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ', 'åºŠä¸Šé…å‘', 'yatak tahsis', 'cama loteamento', 'Ã¡gy elosztÃ¡s', 'attribution de lit', 'ÎºÎ±Ï„Î±Î½Î¿Î¼Î®Ï‚ ÎºÏÎµÎ²Î¬Ï„Î¹', 'Bett Zuteilung', 'letto riparto', 'à¸ˆà¸±à¸”à¸ªà¸£à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤†à¤µà¤‚à¤Ÿà¤¨', 'stratum sorti', 'tidur penjatahan', 'ãƒ™ãƒƒãƒ‰å‰²å½“', 'ì¹¨ëŒ€ í• ë‹¹'),
(48, 'noticeboard', 'noticeboard', 'à¦¨à§‹à¦Ÿà¦¿à¦¶à¦¬à§‹à¦°à§à¦¡', 'noticeboard', 'Ø§Ù„Ù„Ø§ÙØªØ©', 'prikbord', 'Ð´Ð¾ÑÐºÐ° Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹', 'å¸ƒå‘Š', 'panosuna', 'NOTICEBOARD', 'Ã¼zenÅ‘falÃ¡n', 'Panneau d''affichage', 'Î‘Î½Î±ÎºÎ¿Î¹Î½ÏŽÏƒÎµÏ‰Î½', 'Schwarzes Brett', 'bacheca', 'noticeboard', 'noticeboard', 'Noticeboard', 'noticeboard', 'pengumuman', 'æŽ²ç¤ºæ¿', 'ê³µì§€ ì‚¬í•­ more'),
(49, 'language', 'language', 'à¦­à¦¾à¦·à¦¾', 'idioma', 'Ù„ØºØ©', 'taal', 'ÑÐ·Ñ‹Ðº', 'è¯­', 'dil', 'linguagem', 'nyelv', 'langue', 'Î³Î»ÏŽÏƒÏƒÎ±', 'Sprache', 'lingua', 'à¸ à¸²à¸©à¸²', 'Ø²Ø¨Ø§Ù†', 'à¤­à¤¾à¤·à¤¾', 'Linguam', 'bahasa', 'è¨€èªž', 'ì–¸ì–´'),
(50, 'backup', 'backup', 'à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª', 'copia de seguridad', 'Ø§Ù„Ù†Ø³Ø® Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠ', 'backup', 'Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ð¾Ðµ ÐºÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ', 'å¤‡ä»½', 'yedekleme', 'fazer backup', 'hÃ¡t', 'sauvegarder', 'Î±Î½Ï„Î¹Î³ÏÎ¬Ï†Ï‰Î½ Î±ÏƒÏ†Î±Î»ÎµÎ¯Î±Ï‚', 'Backup', 'eseguire il backup', 'à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥', 'Ø¨ÛŒÚ© Ø§Ù¾', 'à¤¬à¥ˆà¤•à¤…à¤ª', 'tergum', 'backup', 'ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—', 'ë°±ì—…'),
(51, 'calendar_schedule', 'calendar schedule', 'à¦•à§à¦¯à¦¾à¦²à§‡à¦¨à§à¦¡à¦¾à¦° à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€', 'horario de calendario', 'Ø¬Ø¯ÙˆÙ„ Ø§Ù„ØªÙ‚ÙˆÙŠÙ…', 'kalender schema', 'ÐºÐ°Ð»ÐµÐ½Ð´Ð°Ñ€Ð½Ñ‹Ð¹ Ð¿Ð»Ð°Ð½', 'æ—¥åŽ†æ—¥ç¨‹', 'takvim programÄ±', 'calendÃ¡rio da programaÃ§Ã£o', 'naptÃ¡ri Ã¼temezÃ©s', 'calendrier calendrier', 'Î·Î¼ÎµÏÎ¿Î»Î¿Î³Î¹Î±ÎºÏŒ Ï€ÏÏŒÎ³ÏÎ±Î¼Î¼Î±', 'Kalender Zeitplan', 'calendario calendario', 'à¸•à¸²à¸£à¸²à¸‡à¸›à¸à¸´à¸—à¸´à¸™', 'Ú©ÛŒÙ„Ù†ÚˆØ± Ø´ÛŒÚˆÙˆÙ„', 'à¤•à¥ˆà¤²à¥‡à¤‚à¤¡à¤° à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€', 'Calendarium cedula', 'jadwal kalender', 'ã‚«ãƒ¬ãƒ³ãƒ€ãƒ¼ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«', 'ìº˜ë¦°ë” ì¼ì •'),
(52, 'manage_department', 'manage department', 'à¦¡à¦¿à¦ªà¦¾à¦°à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar departamento', 'Ø¥Ø¯Ø§Ø±Ø© Ù‚Ø³Ù…', 'beheren afdeling', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¾Ñ‚Ð´ÐµÐ»Ð¾Ð¼', 'ç®¡ç†éƒ¨é—¨', 'bÃ¶lÃ¼mÃ¼ yÃ¶netmek', 'gerenciar departamento', 'kezelni osztÃ¡ly', 'gÃ©rer dÃ©partement', 'Î´Î¹Î±Ï‡ÎµÎ¹ÏÎ¯Î¶ÎµÏ„Î±Î¹ Ï„Î¿ Ï„Î¼Î®Î¼Î±', 'Verwaltung Abteilung', 'gestire reparto', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹à¸œà¸™à¸', 'Ù…Ø­Ú©Ù…Û Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤µà¤¿à¤­à¤¾à¤— à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'department curo', 'mengelola departemen', 'éƒ¨é–€ã‚’ç®¡ç†', 'ë¶€ì„œ ê´€ë¦¬'),
(53, 'department_list', 'department list', 'à¦¬à¦¿à¦­à¦¾à¦— à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista departamento', 'Ù‚Ø§Ø¦Ù…Ø© ÙˆØ²Ø§Ø±Ø©', 'afdeling lijst', 'ÐžÑ‚Ð´ÐµÐ» ÑÐ¿Ð¸ÑÐ¾Ðº', 'éƒ¨é—¨åˆ—è¡¨', 'bÃ¶lÃ¼m listesi', 'Lista de departamento', 'osztÃ¡ly lista', 'Liste dÃ©partement', 'Î¤Î¼Î®Î¼Î± Î»Î¯ÏƒÏ„Î±', 'Abteilung Liste', 'Lista reparto', 'à¸£à¸²à¸¢à¸à¸²à¸£à¹à¸œà¸™à¸', 'Ù…Ø­Ú©Ù…Û Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤µà¤¿à¤­à¤¾à¤— à¤•à¥€ à¤¸à¥‚à¤šà¥€', 'department album', 'Daftar departemen', 'éƒ¨é–€ãƒªã‚¹ãƒˆ', 'ë¶€ì„œ ëª©ë¡'),
(54, 'add_department', 'add department', 'à¦¬à¦¿à¦­à¦¾à¦— à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir departamento', 'Ø¥Ø¶Ø§ÙØ© Ù‚Ø³Ù…', 'add afdeling', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ð´ÐµÐ»Ðµ', 'æ–°å¢žéƒ¨é—¨', 'bÃ¶lÃ¼mÃ¼ ekleyin', 'adicionar departamento', 'add osztÃ¡ly', 'ajouter dÃ©partement', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î¿ Ï„Î¼Î®Î¼Î±', 'Abteilung hinzufÃ¼gen', 'aggiungere reparto', 'à¹€à¸žà¸´à¹ˆà¸¡à¹à¸œà¸™à¸', 'Ù…Ø­Ú©Ù…Û Ø´Ø§Ù…Ù„', 'à¤µà¤¿à¤­à¤¾à¤— à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'addere dolor', 'menambah organisasi', 'éƒ¨é–€ã‚’è¿½åŠ ', 'ë¶€ì„œë¥¼ ì¶”ê°€'),
(55, 'department_name', 'department name', 'à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à¦¨à¦¾à¦®', 'nombre del departamento', 'Ø§Ø³Ù… Ø§Ù„Ù‚Ø³Ù…', 'afdelingsnaam', 'Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð¾Ñ‚Ð´ÐµÐ»Ð°', 'éƒ¨é—¨åç§°', 'bÃ¶lÃ¼m adÄ±', 'nome do departamento', 'rÃ©szleg nevÃ©t', 'nom du dÃ©partement', 'Î¤Î¼Î®Î¼Î± ÏŒÎ½Î¿Î¼Î±', 'Name der Abteilung', 'nome del reparto', 'à¸Šà¸·à¹ˆà¸­à¹à¸œà¸™à¸', 'Ù…Ø­Ú©Ù…Û Ú©Ø§ Ù†Ø§Ù…', 'à¤µà¤¿à¤­à¤¾à¤— à¤•à¤¾ à¤¨à¤¾à¤®', 'nomen department', 'nama departemen', 'éƒ¨ç½²å', 'ë¶€ì„œ ì´ë¦„'),
(56, 'description', 'description', 'à¦¬à¦°à§à¦£à¦¨à¦¾', 'descripciÃ³n', 'ÙˆØµÙ', 'beschrijving', 'Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ', 'æè¿°', 'tanÄ±mlama', 'descriÃ§Ã£o', 'leÃ­rÃ¡s', 'Description', 'Ï€ÎµÏÎ¹Î³ÏÎ±Ï†Î®', 'Beschreibung', 'descrizione', 'à¸¥à¸±à¸à¸©à¸“à¸°', 'ØªÙØµÛŒÙ„', 'à¤µà¤¿à¤µà¤°à¤£', 'description', 'deskripsi', 'èª¬æ˜Ž', 'ê¸°ìˆ '),
(57, 'options', 'options', 'à¦…à¦ªà¦¶à¦¨', 'Opciones', 'Ø®ÙŠØ§Ø±Ø§Øª', 'opties', 'Ð¾Ð¿Ñ†Ð¸Ð¸', 'é€‰é¡¹', 'seÃ§enekleri', 'opÃ§Ãµes', 'lehetÅ‘sÃ©gek', 'les options', 'Î•Ï€Î¹Î»Î¿Î³Î­Ï‚', 'Optionen', 'opzioni', 'à¸•à¸±à¸§à¹€à¸¥à¸·à¸­à¸', 'Ø§Ø®ØªÛŒØ§Ø±Ø§Øª', 'à¤µà¤¿à¤•à¤²à¥à¤ª', 'options', 'Pilihan', 'ã‚ªãƒ—ã‚·ãƒ§ãƒ³', 'ì˜µì…˜'),
(58, 'edit', 'edit', 'à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦•à¦°à§à¦¨', 'editar', 'ØªØ¹Ø¯ÙŠÙ„', 'uitgeven', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ç¼–è¾‘', 'dÃ¼zenleme', 'editar', 'szerkeszt', 'Ã©diter', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ', 'bearbeiten', 'modificare', 'à¹à¸à¹‰à¹„à¸‚', 'ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'emendo', 'mengedit', 'ç·¨é›†', 'íŽ¸ì§‘'),
(59, 'delete', 'delete', 'à¦®à§à¦›à§‡ à¦¦à¦¿à¦¨', 'borrar', 'Ø­Ø°Ù', 'verwijderen', 'ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ', 'åˆ é™¤', 'silmek', 'excluir', 'tÃ¶rÃ¶l', 'supprimer', 'Î´Î¹Î±Î³ÏÎ±Ï†Î®', 'lÃ¶schen', 'cancella', 'à¸¥à¸š', 'Ø®Ø§Ø±Ø¬ Ú©Ø± Ø¯ÛŒÚº', 'à¤¹à¤Ÿà¤¾à¤¨à¤¾', 'delete', 'menghapus', 'å‰Šé™¤ã™ã‚‹', 'ì‚­ì œ'),
(60, 'department_description', 'department description', 'à¦¬à¦¿à¦­à¦¾à¦— à¦¬à¦°à§à¦£à¦¨à¦¾', 'DescripciÃ³n del departamento', 'ÙˆØµÙ Ù‚Ø³Ù…', 'afdeling beschrijving', 'ÐžÑ‚Ð´ÐµÐ» Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ', 'ç§‘å®¤ä»‹ç»', 'BÃ¶lÃ¼m aÃ§Ä±klamasÄ±', 'descriÃ§Ã£o departamento', 'osztÃ¡ly leÃ­rÃ¡s', 'Description dÃ©partement', 'Î¤Î¼Î®Î¼Î± Ï€ÎµÏÎ¹Î³ÏÎ±Ï†Î®', 'Abteilung Beschreibung', 'Descrizione del reparto', 'à¸„à¸³à¸­à¸˜à¸´à¸šà¸²à¸¢à¸‚à¸­à¸‡à¹à¸œà¸™à¸', 'Ù…Ø­Ú©Ù…Û ØªÙØµÛŒÙ„', 'à¤µà¤¿à¤­à¤¾à¤— à¤µà¤¿à¤µà¤°à¤£', 'hac descriptione', 'deskripsi departemen', 'éƒ¨é–€ã®èª¬æ˜Ž', 'ë¶€ì„œ ì†Œê°œ'),
(61, 'manage_doctor', 'manage doctor', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar mÃ©dico', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø·Ø¨ÙŠØ¨', 'beheren arts', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð²Ñ€Ð°Ñ‡Ð°', 'åŒ»ç”Ÿç®¡ç†', 'doktor yÃ¶netmek', 'gerenciar mÃ©dico', 'kezelÃ©sÃ©t orvos', 'gÃ©rer mÃ©decin', 'Î´Î¹Î±Ï‡ÎµÎ¹ÏÎ¯Î¶ÎµÏ„Î±Î¹ Ï„Î¿ Î³Î¹Î±Ï„ÏÏŒ', 'verwalten Arzt', 'gestire medico', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹à¸žà¸—à¸¢à¹Œ', 'ÚˆØ§Ú©Ù¹Ø± Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤° à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'Medicus curo', 'mengelola dokter', 'åŒ»å¸«ã‚’ç®¡ç†', 'ì˜ì‚¬ ê´€ë¦¬'),
(62, 'doctor_list', 'doctor list', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista mÃ©dico', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø·Ø¨ÙŠØ¨', 'arts lijst', 'Ð’Ñ€Ð°Ñ‡ ÑÐ¿Ð¸ÑÐ¾Ðº', 'åŒ»ç”Ÿåå•', 'doktor listesi', 'lista mÃ©dico', 'orvos lista', 'liste de racle', 'Î›Î¯ÏƒÏ„Î± Î³Î¹Î±Ï„ÏÏŒ', 'Arzt-Liste', 'elenco medico', 'à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¹à¸žà¸—à¸¢à¹Œ', 'ÚˆØ§Ú©Ù¹Ø± ÙÛØ±Ø³Øª', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤° à¤¸à¥‚à¤šà¥€', 'Medicus album', 'Daftar dokter', 'åŒ»å¸«ãƒªã‚¹ãƒˆ', 'ì˜ì‚¬ ëª©ë¡'),
(63, 'add_doctor', 'add doctor', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦° à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir mÃ©dico', 'Ø·Ø¨ÙŠØ¨ Ø¬Ø¯ÙŠØ¯', 'voegen arts', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð²Ñ€Ð°Ñ‡Ð°', 'åŠ åŒ»ç”Ÿ', 'doktor ekleyin', 'adicionar mÃ©dico', 'hozzÃ¡ orvos', 'ajouter mÃ©decin', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î¿ Î³Î¹Î±Ï„ÏÏŒ', 'Arzt hinzufÃ¼gen', 'aggiungere medico', 'à¹€à¸žà¸´à¹ˆà¸¡à¹à¸žà¸—à¸¢à¹Œ', 'ÚˆØ§Ú©Ù¹Ø± Ø´Ø§Ù…Ù„', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤° à¤œà¥‹à¤¡à¤¼', 'adde medicum', 'menambah tenaga dokter', 'åŒ»å¸«ã‚’è¿½åŠ ', 'ì˜ì‚¬ ì¶”ê°€'),
(64, 'doctor_name', 'doctor name', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦°à§‡à¦° à¦¨à¦¾à¦®', 'Nombre del mÃ©dico', 'Ø§Ø³Ù… Ø§Ù„Ø·Ø¨ÙŠØ¨', 'Naam arts', 'Ð’Ñ€Ð°Ñ‡ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'åŒ»ç”Ÿå§“å', 'doktor adÄ±', 'Nome do mÃ©dico', 'orvos nÃ©v', 'Nom du mÃ©decin', 'ÎŒÎ½Î¿Î¼Î± Î³Î¹Î±Ï„ÏÏŒ', 'Arzt Namen', 'Nome del medico', 'à¸Šà¸·à¹ˆà¸­à¹à¸žà¸—à¸¢à¹Œ', 'ÚˆØ§Ú©Ù¹Ø± Ú©Ø§ Ù†Ø§Ù…', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤° à¤•à¤¾ à¤¨à¤¾à¤®', 'medicus nomen', 'Nama dokter', 'åŒ»å¸«å', 'ì˜ì‚¬ ì´ë¦„'),
(65, 'name', 'name', 'à¦¨à¦¾à¦®', 'nombre', 'Ø§Ø³Ù…', 'naam', 'Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'å', 'ad', 'nome', 'nÃ©v', 'Nom', 'ÏŒÎ½Î¿Î¼Î±', 'Name', 'nome', 'à¸Šà¸·à¹ˆà¸­', 'Ù†Ø§Ù…', 'à¤¨à¤¾à¤®', 'nÃ³minis', 'nama', 'åå‰', 'ì´ë¦„'),
(66, 'address', 'address', 'à¦ à¦¿à¦•à¦¾à¦¨à¦¾', 'direcciÃ³n', 'Ø¹Ù†ÙˆØ§Ù†', 'adres', 'Ð°Ð´Ñ€ÐµÑ', 'åœ°å€', 'adres', 'endereÃ§o', 'cÃ­m', 'Adresse', 'Î´Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ·', 'Anschrift', 'indirizzo', 'à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆ', 'Ø§ÛŒÚˆØ±ÛŒØ³', 'à¤ªà¤¤à¤¾', 'inscriptio', 'alamat', 'ã‚¢ãƒ‰ãƒ¬ã‚¹', 'ì£¼ì†Œ'),
(67, 'phone', 'phone', 'à¦«à§‹à¦¨', 'telÃ©fono', 'Ù‡Ø§ØªÙ', 'telefoon', 'Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½', 'ç”µè¯', 'telefon', 'telefone', 'telefon', 'tÃ©lÃ©phone', 'Ï„Î·Î»Î­Ï†Ï‰Î½Î¿', 'telefonieren', 'telefono', 'à¹‚à¸—à¸£à¸¨à¸±à¸žà¸—à¹Œ', 'ÙÙˆÙ†', 'à¤«à¤¼à¥‹à¤¨', 'phone', 'telepon', 'é›»è©±', 'ì „í™”'),
(68, 'manage_patient', 'manage patient', 'à¦°à§‹à¦—à§€à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar paciente', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø±ÙŠØ¶', 'beheren patiÃ«nt', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¿Ð°Ñ†Ð¸ÐµÐ½Ñ‚Ð°', 'ç®¡ç†ç—…äºº', 'hastanÄ±n tedavisini dÃ¼zenleyin', 'gerenciar paciente', 'kezelni beteg', 'gÃ©rer les patients', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Ï‰Î½ Î±ÏƒÎ¸ÎµÎ½ÏŽÎ½', 'Patienten verwalten', 'gestione del paziente', 'à¸šà¸£à¸´à¸«à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤°à¥‹à¤—à¥€ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'patiens aget', 'mengelola pasien', 'æ‚£è€…ã‚’ç®¡ç†', 'í™˜ìž ê´€ë¦¬');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(69, 'patient_list', 'patient list', 'à¦°à§‹à¦—à§€à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de pacientes', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…Ø±ÙŠØ¶', 'patiÃ«nt lijst', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð¿Ð°Ñ†Ð¸ÐµÐ½Ñ‚Ð¾Ð²', 'ç—…äººåˆ—è¡¨', 'Hasta listesi', 'lista de pacientes', 'beteglistÃ¡t', 'liste des patients', 'Î»Î¯ÏƒÏ„Î± Î±ÏƒÎ¸ÎµÎ½ÏŽÎ½', 'Patientenliste', 'elenco dei pazienti', 'à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤°à¥‹à¤—à¥€ à¤¸à¥‚à¤šà¥€', 'Patientes album', 'daftar pasien', 'æ‚£è€…ãƒªã‚¹ãƒˆ', 'í™˜ìž ëª©ë¡'),
(70, 'add_patient', 'add patient', 'à¦°à§‹à¦—à§€à¦° à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir paciente', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ø±ÙŠØ¶', 'voegen patiÃ«nt', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ†Ð¸ÐµÐ½Ñ‚Ð°', 'å¢žåŠ ç—…äºº', 'Hasta ekleyin', 'adicionar paciente', 'hozzÃ¡ beteg', 'ajouter patients', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Î±ÏƒÎ¸ÎµÎ½Î¿ÏÏ‚', 'Patienten hinzufÃ¼gen', 'aggiungere paziente', 'à¹€à¸žà¸´à¹ˆà¸¡à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶ Ø´Ø§Ù…Ù„', 'à¤°à¥‹à¤—à¥€ à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'adde patientes', 'menambahkan pasien', 'æ‚£è€…ã‚’è¿½åŠ ', 'í™˜ìž ì¶”ê°€'),
(71, 'patient_name', 'patient name', 'à¦°à§‹à¦—à§€à¦° à¦¨à¦¾à¦®', 'Nombre del paciente', 'Ø§Ø³Ù… Ø§Ù„Ù…Ø±ÙŠØ¶', 'naam van de patiÃ«nt', 'Ð¸Ð¼Ñ Ð¿Ð°Ñ†Ð¸ÐµÐ½Ñ‚Ð°', 'æ‚£è€…å§“å', 'hasta adÄ±', 'nome do paciente', 'pÃ¡ciens neve', 'le nom du patient', 'Ï„Î¿ ÏŒÎ½Î¿Î¼Î± Ï„Î¿Ï… Î±ÏƒÎ¸ÎµÎ½Î¿ÏÏ‚', 'Patientennamen', 'nome del paziente', 'à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶ Ú©Ø§ Ù†Ø§Ù…', 'à¤°à¥‹à¤—à¥€ à¤•à¤¾ à¤¨à¤¾à¤®', 'Patientes nomine', 'Nama pasien', 'æ‚£è€…å', 'í™˜ìžì˜ ì´ë¦„'),
(72, 'age', 'age', 'à¦¬à¦¯à¦¼à¦¸', 'edad', 'Ø¹Ù…Ø±', 'leeftijd', 'Ð²Ð¾Ð·Ñ€Ð°ÑÑ‚', 'å¹´é¾„', 'yaÅŸ', 'idade', 'Ã©letkor', 'Ã¢ge', 'Î·Î»Î¹ÎºÎ¯Î±', 'Alter', 'etÃ ', 'à¸­à¸²à¸¢à¸¸', 'Ø¹Ù…Ø±', 'à¤‰à¤®à¥à¤°', 'saeculi', 'usia', 'å¹´é½¢', 'ë‚˜ì´'),
(73, 'sex', 'sex', 'à¦¯à§Œà¦¨', 'sexo', 'Ø¬Ù†Ø³', 'seks', 'ÑÐµÐºÑ', 'æ€§åˆ«', 'seks', 'sexo', 'szex', 'sexe', 'Ï†ÏÎ»Î¿', 'Sex', 'sesso', 'à¹€à¸žà¸¨', 'Ø¬Ù†Ø³ÛŒ ØªØ¹Ù„Ù‚Ø§Øª', 'à¤²à¤¿à¤‚à¤—', 'sexum', 'seks', 'ã‚»ãƒƒã‚¯ã‚¹', 'ì„¹ìŠ¤'),
(74, 'blood_group', 'blood group', 'à¦°à¦•à§à¦¤à§‡à¦° à¦¬à¦¿à¦­à¦¾à¦—', 'grupo sanguÃ­neo', 'ÙØµÙŠÙ„Ø© Ø§Ù„Ø¯Ù…', 'bloedgroep', 'Ð³Ñ€ÑƒÐ¿Ð¿Ð° ÐºÑ€Ð¾Ð²Ð¸', 'è¡€åž‹', 'kan grubu', 'grupo sanguÃ­neo', 'vÃ©rcsoport', 'groupe sanguin', 'Î¿Î¼Î¬Î´Î± Î±Î¯Î¼Î±Ï„Î¿Ï‚', 'Blutgruppe', 'gruppo sanguigno', 'à¸à¸£à¸¸à¹Šà¸›à¹€à¸¥à¸·à¸­à¸”', 'Ø®ÙˆÙ† Ú©Û’ Ú¯Ø±ÙˆÙ¾', 'à¤°à¤•à¥à¤¤ à¤µà¤°à¥à¤—', 'sanguine coetus', 'golongan darah', 'è¡€æ¶²åž‹', 'í˜ˆì•¡í˜•'),
(75, 'birth_date', 'birth date', 'à¦†à¦®à¦¾à¦° à¦œà¦¨à§à¦®', 'fecha de nacimiento', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯', 'geboortedatum', 'Ð”Ð°Ñ‚Ð° Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ', 'å‡ºç”Ÿæ—¥æœŸ', 'doÄŸum tarihi', 'data de nascimento', 'szÃ¼letÃ©si dÃ¡tum', 'date de naissance', 'Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î³Î­Î½Î½Î·ÏƒÎ·Ï‚', 'Geburtsdatum', 'Data di nascita', 'à¸§à¸±à¸™à¹€à¸”à¸·à¸­à¸™à¸›à¸µà¹€à¸à¸´à¸”', 'Ù¾ÛŒØ¯Ø§Ø¦Ø´ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'à¤œà¤¨à¥à¤® à¤¤à¤¿à¤¥à¤¿', 'date nativitatis', 'tanggal lahir', 'ç”Ÿå¹´æœˆæ—¥', 'ìƒë…„ì›”ì¼'),
(76, 'male', 'male', 'à¦ªà§à¦°à§à¦·', 'macho', 'Ø°ÙƒØ±', 'mannelijk', 'Ð¼ÑƒÐ¶ÑÐºÐ¾Ð¹', 'ç”·æ€§', 'erkek', 'masculino', 'fÃ©rfi', 'masculin', 'Î±ÏÏƒÎµÎ½Î¹ÎºÏŒÏ‚', 'mÃ¤nnlich', 'maschio', 'à¸Šà¸²à¸¢', 'Ú©Ú¾Ù†Ú¯Ø§Ù„ÛŒÚº', 'à¤¨à¤°', 'masculus', 'laki-laki', 'ç”·æ€§', 'ë‚¨ì„±'),
(77, 'female', 'female', 'à¦®à¦¹à¦¿à¦²à¦¾', 'femenino', 'Ø£Ù†Ø«Ù‰', 'vrouw', 'Ð¶ÐµÐ½ÑÐºÐ¸Ð¹', 'å¥³æ€§', 'kadÄ±n', 'feminino', 'nÅ‘i', 'fÃ©minin', 'Î¸Î·Î»Ï…ÎºÏŒÏ‚', 'weiblich', 'femminile', 'à¸«à¸à¸´à¸‡', 'Ø®ÙˆØ§ØªÛŒÙ†', 'à¤®à¤¹à¤¿à¤²à¤¾', 'feminam', 'perempuan', 'å¥³æ€§', 'ì—¬ì„±'),
(78, 'manage_nurse', 'manage nurse', 'à¦¨à¦¾à¦°à§à¦¸ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar la enfermera', 'Ø¥Ø¯Ø§Ø±Ø© Ù…Ù…Ø±Ø¶Ø©', 'beheren verpleegkundige', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¼ÐµÐ´ÑÐµÑÑ‚Ñ€Ñ‹', 'æŠ¤å£«ç®¡ç†', 'hemÅŸire yÃ¶netmek', 'gerenciar enfermeira', 'kezelni nÅ‘vÃ©r', 'gÃ©rer infirmiÃ¨re', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'verwalten Krankenschwester', 'gestire infermiera', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¨à¤°à¥à¤¸ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'nutrix curo', 'mengelola perawat', 'çœ‹è­·å¸«ã‚’ç®¡ç†', 'ê°„í˜¸ì‚¬ ê´€ë¦¬'),
(79, 'nurse_list', 'nurse list', 'à¦¨à¦¾à¦°à§à¦¸ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista de enfermera', 'Ù‚Ø§Ø¦Ù…Ø© Ù…Ù…Ø±Ø¶Ø©', 'verpleegkundige lijst', 'ÐœÐµÐ´ÑÐµÑÑ‚Ñ€Ð° ÑÐ¿Ð¸ÑÐ¾Ðº', 'æŠ¤å£«åå•', 'hemÅŸire liste', 'lista enfermeira', 'nÅ‘vÃ©r lista', 'infirmiÃ¨re liste', 'Î›Î¯ÏƒÏ„Î± Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'Krankenschwester Liste', 'Lista infermiera', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤¨à¤°à¥à¤¸ à¤¸à¥‚à¤šà¥€', 'nutrix album', 'daftar perawat', 'çœ‹è­·å¸«ã®ãƒªã‚¹ãƒˆ', 'ê°„í˜¸ì‚¬ ëª©ë¡'),
(80, 'add_nurse', 'add nurse', 'à¦¨à¦¾à¦°à§à¦¸ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir enfermera', 'Ø¥Ø¶Ø§ÙØ© Ù…Ù…Ø±Ø¶Ø©', 'voegen verpleegkundige', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¼ÐµÐ´ÑÐµÑÑ‚Ñ€Ñ‹', 'å¢žåŠ æŠ¤å£«', 'hemÅŸire ekleyin', 'adicionar enfermeira', 'hozzÃ¡ nÅ‘vÃ©r', 'ajouter infirmiÃ¨re', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'Krankenschwester hinzufÃ¼gen', 'aggiungere infermiera', 'à¹€à¸žà¸´à¹ˆà¸¡à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³ Ø´Ø§Ù…Ù„', 'à¤¨à¤°à¥à¤¸ à¤œà¥‹à¤¡à¤¼', 'adde nutricem', 'tambahkan perawat', 'çœ‹è­·å¸«ã‚’è¿½åŠ ', 'ê°„í˜¸ì‚¬ ì¶”ê°€'),
(81, 'nurse_name', 'nurse name', 'à¦¨à¦¾à¦°à§à¦¸ à¦¨à¦¾à¦®', 'nombre de la enfermera', 'Ø§Ø³Ù… Ù…Ù…Ø±Ø¶Ø©', 'naam verpleegkundige', 'ÐœÐµÐ´ÑÐµÑÑ‚Ñ€Ð° Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'æŠ¤å£«çš„åå­—', 'hemÅŸire adÄ±', 'Nome enfermeira', 'nÅ‘vÃ©r nÃ©v', 'nom de l''infirmiÃ¨re', 'ÎŒÎ½Î¿Î¼Î± Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'Krankenschwester Namen', 'Nome infermiera', 'à¸Šà¸·à¹ˆà¸­à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³ Ú©Ø§ Ù†Ø§Ù…', 'à¤¨à¤°à¥à¤¸ à¤•à¤¾ à¤¨à¤¾à¤®', 'nomine nutricis', 'Nama perawat', 'çœ‹è­·å¸«å', 'ê°„í˜¸ì‚¬ ì´ë¦„'),
(82, 'manage_pharmacist', 'manage pharmacist', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar farmacÃ©utico', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØµÙŠØ¯Ù„ÙŠ', 'beheren apotheker', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ñ„Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚', 'ç®¡ç†è¯å‰‚å¸ˆ', 'eczacÄ± yÃ¶netmek', 'gerenciar farmacÃªutico', 'kezelni gyÃ³gyszerÃ©sz', 'gÃ©rer pharmacien', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹ÏŒ', 'verwalten Apotheker', 'gestire farmacista', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤«à¤¾à¤°à¥à¤®à¤¾à¤¸à¤¿à¤¸à¥à¤Ÿ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'pharmacist curo', 'mengelola apoteker', 'è–¬å‰¤å¸«ã‚’ç®¡ç†', 'ì•½ì‚¬ ê´€ë¦¬'),
(83, 'pharmacist_list', 'pharmacist list', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista farmacÃ©utico', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ØµÙŠØ¯Ù„ÙŠ', 'apotheker lijst', 'Ð¤Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚ ÑÐ¿Ð¸ÑÐ¾Ðº', 'è¯å‰‚å¸ˆåˆ—è¡¨', 'eczacÄ± liste', 'lista farmacÃªutico', 'gyÃ³gyszerÃ©sz lista', 'liste de pharmacien', 'Î›Î¯ÏƒÏ„Î± Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹ÏŒ', 'Apotheker Liste', 'Lista farmacista', 'à¸£à¸²à¸¢à¸à¸²à¸£à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹ ÙÛØ±Ø³Øª', 'à¤«à¤¾à¤°à¥à¤®à¤¾à¤¸à¤¿à¤¸à¥à¤Ÿ à¤¸à¥‚à¤šà¥€', 'pharmacist album', 'Daftar apoteker', 'è–¬å‰¤å¸«ã®ãƒªã‚¹ãƒˆ', 'ì•½ì‚¬ ëª©ë¡'),
(84, 'add_pharmacist', 'add pharmacist', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir farmacÃ©utico', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„ØµÙŠØ¯Ù„ÙŠ', 'voegen apotheker', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ñ„Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚Ð°', 'åŠ è¯å‰‚å¸ˆ', 'eczacÄ± ekleyin', 'adicionar farmacÃªutico', 'hozzÃ¡ gyÃ³gyszerÃ©szÃ©t', 'ajouter pharmacien', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î¿ Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹ÏŒ', 'Apotheker hinzufÃ¼gen', 'aggiungere il farmacista', 'à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹ Ø´Ø§Ù…Ù„', 'à¤«à¤¾à¤°à¥à¤®à¤¾à¤¸à¤¿à¤¸à¥à¤Ÿ à¤œà¥‹à¤¡à¤¼', 'adde pharmacopola', 'menambahkan apoteker', 'è–¬å‰¤å¸«ã‚’è¿½åŠ ', 'ì•½ì‚¬ ì¶”ê°€'),
(85, 'pharmacist_name', 'pharmacist name', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿ à¦¨à¦¾à¦®', 'Nombre farmacÃ©utico', 'Ø§Ø³Ù… Ø§Ù„ØµÙŠØ¯Ù„ÙŠ', 'naam apotheker', 'Ð¤Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'è¯å‰‚å¸ˆåç§°', 'eczacÄ± adÄ±', 'Nome farmacÃªutico', 'gyÃ³gyszerÃ©sz nÃ©v', 'Nom du pharmacien', 'Ï„Î¿ ÏŒÎ½Î¿Î¼Î± Ï„Î¿Ï… Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹Î¿Ï', 'Apotheker Namen', 'Nome del farmacista', 'à¸Šà¸·à¹ˆà¸­à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹ Ú©Ø§ Ù†Ø§Ù…', 'à¤«à¤¾à¤°à¥à¤®à¤¾à¤¸à¤¿à¤¸à¥à¤Ÿ à¤•à¥‡ à¤¨à¤¾à¤®', 'pharmacist nomine', 'Nama apoteker', 'è–¬å‰¤å¸«å', 'ì•½ì‚¬ ì´ë¦„'),
(86, 'manage_laboratorist', 'manage laboratorist,eo', 'à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿à¦¸à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar laboratorista', 'Ø¥Ø¯Ø§Ø±Ø© laboratorist', 'beheren laboratorist', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ laboratorist', 'ç®¡ç†laboratoristâ€œ', 'laboratorist yÃ¶netmek', 'gerenciar laboratorista', 'kezelni laboratorist', 'gÃ©rer laboratorist', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· laboratorist', 'verwalten laboratorist', 'gestire laboratorist', 'à¸ˆà¸±à¸”à¸à¸²à¸£ laboratorist', 'laboratorist Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'laboratorist à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'laboratorist curo', 'mengelola laboratorist', 'laboratoristã‚’ç®¡ç†', 'laboratorist ê´€ë¦¬'),
(87, 'laboratorist_list', 'laboratorist list,eo', 'à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿à¦¸à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista laboratorista', 'Ù‚Ø§Ø¦Ù…Ø© laboratorist', 'laboratorist lijst', 'laboratorist ÑÐ¿Ð¸ÑÐ¾Ðº', 'laboratoriståˆ—è¡¨', 'laboratorist liste', 'lista laboratorista', 'laboratorist lista', 'Liste d''laboratorist', 'Î›Î¯ÏƒÏ„Î± laboratorist', 'laboratorist Liste', 'Lista laboratorist', 'à¸£à¸²à¸¢à¸à¸²à¸£ laboratorist', 'laboratorist ÙÛØ±Ø³Øª', 'laboratorist à¤¸à¥‚à¤šà¥€', 'laboratorist album', 'Daftar laboratorist', 'laboratoristãƒªã‚¹ãƒˆ', 'laboratorist ëª©ë¡'),
(88, 'add_laboratorist', 'add laboratorist,eo', 'à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿à¦¸à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir laboratorista', 'Ø¥Ø¶Ø§ÙØ© laboratorist', 'voegen laboratorist', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ laboratorist', 'æ·»åŠ laboratoristâ€œ', 'laboratorist ekleyin', 'adicionar laboratorista', 'hozzÃ¡ laboratorist', 'ajouter laboratorist', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· laboratorist', 'laboratorist hinzufÃ¼gen', 'aggiungere laboratorist', 'à¹€à¸žà¸´à¹ˆà¸¡ laboratorist', 'laboratorist Ø´Ø§Ù…Ù„', 'laboratorist à¤œà¥‹à¤¡à¤¼', 'adde laboratorist', 'tambahkan laboratorist', 'laboratoristã‚’è¿½åŠ ', 'laboratorist ì¶”ê°€'),
(89, 'laboratorist_name', 'laboratorist name,sl', 'à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿à¦¸à§à¦Ÿ à¦¨à¦¾à¦®', 'Nombre laboratorista', 'Ø§Ø³Ù… laboratorist', 'naam laboratorist', 'laboratorist Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'laboratoristå', 'laboratorist adÄ±', 'nome laboratorista', 'laboratorist nÃ©v', 'nom de laboratorist', 'ÎŒÎ½Î¿Î¼Î± laboratorist', 'laboratorist Namen', 'Nome laboratorist', 'à¸Šà¸·à¹ˆà¸­ laboratorist', 'laboratorist Ù†Ø§Ù…', 'laboratorist à¤¨à¤¾à¤®', 'nomen laboratorist', 'Nama laboratorist', 'laboratoristå', 'laboratorist ì´ë¦„'),
(90, 'manage_accountant', 'manage accountant', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦• à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestiÃ³n contable', 'Ø¥Ø¯Ø§Ø±Ø© Ù…Ø­Ø§Ø³Ø¨', 'beheren accountant', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð°', 'ç®¡ç†ä¼šè®¡å¸ˆ', 'muhasebeci yÃ¶netmek', 'gerenciar contador', 'kezelni kÃ¶nyvelÅ‘', 'gÃ©rer comptable', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î»Î¿Î³Î¹ÏƒÏ„Î®', 'Buchhalter verwalten', 'gestione contabile', 'à¸à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤²à¥‡à¤–à¤¾à¤•à¤¾à¤° à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'Ratiocinatore curo', 'mengelola akuntan', 'ä¼šè¨ˆå£«ã‚’ç®¡ç†', 'íšŒê³„ ê´€ë¦¬'),
(91, 'accountant_list', 'accountant list', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦• à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista de contador', 'Ù‚Ø§Ø¦Ù…Ø© Ù…Ø­Ø§Ø³Ø¨', 'accountant lijst', 'Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¾Ð¼ ÑÐ¿Ð¸ÑÐ¾Ðº', 'ä¼šè®¡å¸ˆåå•', 'muhasebeci liste', 'Lista de contador', 'kÃ¶nyvelÅ‘ lista', 'Liste comptable', 'Î›Î¯ÏƒÏ„Î± Î»Î¿Î³Î¹ÏƒÏ„Î®', 'Buchhalter Liste', 'Lista ragioniere', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹ ÙÛØ±Ø³Øª', 'à¤²à¥‡à¤–à¤¾à¤•à¤¾à¤° à¤¸à¥‚à¤šà¥€', 'Ratiocinatore album', 'Daftar akuntan', 'ä¼šè¨ˆå£«ãƒªã‚¹ãƒˆ', 'íšŒê³„ì‚¬ ëª©ë¡'),
(92, 'add_accountant', 'add accountant', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦• à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir contador', 'Ø¥Ø¶Ø§ÙØ© Ù…Ø­Ø§Ø³Ø¨', 'voegen accountant', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð°', 'æ·»åŠ ä¼šè®¡å¸ˆ', 'muhasebeci ekleyin', 'adicionar contador', 'hozzÃ¡ kÃ¶nyvelÅ‘', 'ajouter comptable', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Î»Î¿Î³Î¹ÏƒÏ„Î®', 'Buchhalter hinzufÃ¼gen', 'aggiungere ragioniere', 'à¹€à¸žà¸´à¹ˆà¸¡à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹ Ø´Ø§Ù…Ù„', 'à¤à¤•à¤¾à¤‰à¤‚à¤Ÿà¥‡à¤‚à¤Ÿ à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'adde Ratiocinatore', 'tambahkan akuntan', 'ä¼šè¨ˆå£«ã‚’è¿½åŠ ', 'íšŒê³„ì‚¬ ì¶”ê°€'),
(93, 'accountant_name', 'accountant name', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦• à¦¨à¦¾à¦®', 'Nombre del contador', 'Ø§Ø³Ù… Ù…Ø­Ø§Ø³Ø¨', 'naam accountant', 'Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¾Ð¼ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'ä¼šè®¡å¸ˆåç§°', 'muhasebeci adÄ±', 'Nome do contador', 'kÃ¶nyvelÅ‘ nÃ©v', 'Nom de l''expert-comptable', 'ÎŒÎ½Î¿Î¼Î± Î»Î¿Î³Î¹ÏƒÏ„Î®', 'Buchhalter Namen', 'Nome ragioniere', 'à¸Šà¸·à¹ˆà¸­à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹ Ú©Ø§ Ù†Ø§Ù…', 'à¤²à¥‡à¤–à¤¾à¤•à¤¾à¤° à¤¨à¤¾à¤®', 'nomen Ratiocinatore', 'Nama akuntan', 'ä¼šè¨ˆå£«å', 'íšŒê³„ì‚¬ ì´ë¦„'),
(94, 'phrase_list', 'phrase list', 'à¦«à§à¦°à§‡à¦œ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de frases', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¹Ø¨Ø§Ø±Ø©', 'woordgroepenlijst', 'ÑÐ¿Ð¸ÑÐ¾Ðº Ñ„Ñ€Ð°Ð·', 'çŸ­è¯­åˆ—è¡¨', 'ifade liste', 'lista de frases', 'kifejezÃ©s lista', 'liste de phrase', 'Î›Î¯ÏƒÏ„Î± Ï†ÏÎ¬ÏƒÎ·', 'Phrase Liste', 'elenco frase', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸§à¸¥à¸µ', 'Ø¬Ù…Ù„Û ÙÛØ±Ø³Øª', 'à¤µà¤¾à¤•à¥à¤¯à¤¾à¤‚à¤¶ à¤¸à¥‚à¤šà¥€', 'phrase album', 'Daftar frase', 'ãƒ•ãƒ¬ãƒ¼ã‚ºãƒªã‚¹ãƒˆ', 'êµ¬ë¬¸ ëª©ë¡'),
(95, 'add_phrase', 'add phrase', 'à¦¶à¦¬à§à¦¦à¦¬à¦¨à§à¦§ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir una frase', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø¹Ø¨Ø§Ø±Ø©', 'add zin', 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ñ„Ñ€Ð°Ð·Ñƒ', 'åŠ çŸ­è¯­', 'ifade ekleme', 'adicionar frase', 'add kifejezÃ©s', 'ajouter phrase', 'Î ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Ï†ÏÎ¬ÏƒÎ·Ï‚', 'Phrase hinzufÃ¼gen', 'aggiungere la frase', 'à¹€à¸žà¸´à¹ˆà¸¡à¸§à¸¥à¸µ', 'ÙÙ‚Ø±Û Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº', 'à¤µà¤¾à¤•à¥à¤¯à¤¾à¤‚à¤¶ à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'addere phrase', 'menambahkan frase', 'ãƒ•ãƒ¬ãƒ¼ã‚ºã‚’è¿½åŠ ', 'ë¬¸êµ¬ë¥¼ ì¶”ê°€'),
(96, 'add_language', 'add language', 'à¦­à¦¾à¦·à¦¾ à¦¯à§à¦•à§à¦¤', 'aÃ±adir el idioma', 'Ø¥Ø¶Ø§ÙØ© Ù„ØºØ©', 'add taal', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÑÐ·Ñ‹Ðº', 'æ–°å¢žè¯­è¨€', 'dil eklemek', 'adicionar linguagem', 'nyelv hozzÃ¡adÃ¡sa', 'ajouter langue', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Î³Î»ÏŽÏƒÏƒÎ±Ï‚', 'Sprache hinzufÃ¼gen', 'aggiungere la lingua', 'à¹€à¸žà¸´à¹ˆà¸¡à¸ à¸²à¸©à¸²', 'Ø²Ø¨Ø§Ù† Ú©Ø§ Ø§Ø¶Ø§ÙÛ', 'à¤­à¤¾à¤·à¤¾ à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'Linguam addere', 'menambah bahasa', 'è¨€èªžã‚’è¿½åŠ ã™ã‚‹', 'ì–¸ì–´ë¥¼ ì¶”ê°€'),
(97, 'phrase', 'phrase', 'à¦«à§à¦°à§‡à¦œ', 'frase', 'Ø§Ù„Ø¹Ø¨Ø§Ø±Ø©', 'frase', 'Ñ„Ñ€Ð°Ð·Ð°', 'çŸ­è¯­', 'ifade', 'frase', 'kifejezÃ©s', 'phrase', 'Ï†ÏÎ¬ÏƒÎ·', 'Begriff', 'Frase', 'à¸§à¸¥à¸µ', 'Ø¬Ù…Ù„Û’', 'à¤µà¤¾à¤•à¥à¤¯à¤¾à¤‚à¤¶', 'phrase', 'frasa', 'ãƒ•ãƒ¬ãƒ¼ã‚º', 'êµ¬'),
(98, 'delete_language', 'delete language', 'à¦­à¦¾à¦·à¦¾ à¦®à§à¦›à§‡ à¦¦à¦¿à¦¨', 'eliminar el idioma', 'Ù„ØºØ© Ø­Ø°Ù', 'taal verwijderen', 'ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÐ·Ñ‹Ðº', 'åˆ é™¤è¯­è¨€', 'dil silmek', 'excluir linguagem', 'tÃ¶rlÃ©se nyelv', 'supprimer langue', 'Î´Î¹Î±Î³ÏÎ±Ï†Î® Î³Î»ÏŽÏƒÏƒÎ±', 'lÃ¶schen Sprache', 'eliminare lingua', 'à¸¥à¸šà¸ à¸²à¸©à¸²', 'Ø²Ø¨Ø§Ù† Ú©Ùˆ Ø®Ø§Ø±Ø¬ Ú©Ø± Ø¯ÛŒÚº', 'à¤­à¤¾à¤·à¤¾ à¤•à¥‹ à¤¹à¤Ÿà¤¾à¤¨à¤¾', 'Linguam delete', 'menghapus bahasa', 'è¨€èªžã‚’å‰Šé™¤ã™ã‚‹', 'ì–¸ì–´ë¥¼ ì‚­ì œ'),
(99, 'update_phrase', 'update phrase', 'à¦«à§à¦°à§‡à¦œ à¦†à¦ªà¦¡à§‡à¦Ÿ', 'actualizar frase', 'ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø¹Ø¨Ø§Ø±Ø©', 'updaten zin', 'Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ñ„Ñ€Ð°Ð·Ñƒ', 'æ›´æ–°çŸ­è¯­', 'ifade gÃ¼ncelleme', 'atualizar frase', 'frissÃ­tÃ©s kifejezÃ©s', 'mettre Ã  jour phrase', 'ÎµÎ½Î·Î¼Î­ÏÏ‰ÏƒÎ· Ï†ÏÎ¬ÏƒÎ·', 'aktualisieren Phrase', 'aggiornare frase', 'à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸§à¸¥à¸µ', 'Ø¬Ù…Ù„Û Ø§Ù¾ ÚˆÛŒÙ¹', 'à¤µà¤¾à¤•à¥à¤¯à¤¾à¤‚à¤¶ à¤…à¤¦à¥à¤¯à¤¤à¤¨', 'phrase update', 'memperbarui frase', 'ãƒ•ãƒ¬ãƒ¼ã‚ºã‚’æ›´æ–°', 'ë¬¸êµ¬ë¥¼ ì—…ë°ì´íŠ¸'),
(100, 'time', 'time', 'à¦¸à¦®à¦¯à¦¼', 'tiempo', 'ÙˆÙ‚Øª', 'tijd', 'Ð²Ñ€ÐµÐ¼Ñ', 'æ—¶é—´', 'zaman', 'tempo', 'idÅ‘', 'heure', 'Ï‡ÏÏŒÎ½Î¿Ï‚', 'Zeit', 'volta', 'à¹€à¸§à¸¥à¸²', 'ÙˆÙ‚Øª', 'à¤¸à¤®à¤¯', 'tempus', 'waktu', 'æ™‚é–“', 'ì‹œê°„'),
(101, 'amount', 'amount', 'à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'cantidad', 'ÙƒÙ…ÙŠØ©', 'bedrag', 'ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾', 'é‡', 'miktar', 'quantidade', 'mennyisÃ©g', 'montant', 'Ï€Î¿ÏƒÏŒ', 'Betrag', 'importo', 'à¸ˆà¸³à¸™à¸§à¸™', 'Ø±Ù‚Ù…', 'à¤°à¤¾à¤¶à¤¿', 'moles', 'jumlah', 'é¡', 'ì–‘'),
(102, 'payment_type', 'payment type', 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦ª', 'forma de pago', 'Ù†ÙˆØ¹ Ø§Ù„Ø¯ÙØ¹', 'soort betaling', 'Ñ‚Ð¸Ð¿ Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹', 'æ”¯ä»˜ç±»åž‹', 'Ã¶deme tÃ¼rÃ¼', 'tipo de pagamento', 'fizetÃ©si mÃ³dot', 'Type de paiement', 'Î¤ÏÏ€Î¿Ï‚ Ï€Î»Î·ÏÏ‰Î¼Î®Ï‚', 'Art der Bezahlung', 'Tipo di pagamento', 'à¸›à¸£à¸°à¹€à¸ à¸—à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ Ù‚Ø³Ù…', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¥‡ à¤ªà¥à¤°à¤•à¤¾à¤°', 'type solutione', 'jenis pembayaran', 'æ”¯æ‰•ã„ã‚¿ã‚¤ãƒ—', 'ì§€ë¶ˆ ìœ í˜•'),
(103, 'transaction_id', 'transaction id', 'à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦†à¦‡à¦¡à¦¿', 'identificaciÃ³n de la transacciÃ³n', 'Ø±Ù‚Ù… Ø§Ù„Ù…Ø¹Ø§Ù…Ù„Ø§Øª', 'transaction id', 'ID Ñ‚Ñ€Ð°Ð½Ð·Ð°ÐºÑ†Ð¸Ð¸', 'äº‹åŠ¡ID', 'iÅŸlem kimliÄŸi', 'ID da transaÃ§Ã£o', 'tranzakciÃ³ id', 'Identifiant de transaction', 'id ÏƒÏ…Î½Î±Î»Î»Î±Î³ÏŽÎ½', 'Transaktions-ID', 'id transazione', 'à¸£à¸²à¸¢à¸à¸²à¸£ ID', 'Ù¹Ø±Ø§Ù†Ø²ÛŒÚ©Ø´Ù† Ú©ÛŒ Ø´Ù†Ø§Ø®Øª', 'à¤²à¥‡à¤¨ - à¤¦à¥‡à¤¨ à¤†à¤ˆà¤¡à¥€', 'id negotii', 'id transaksi', 'ãƒˆãƒ©ãƒ³ã‚¶ã‚¯ã‚·ãƒ§ãƒ³ID', 'íŠ¸ëžœìž­ì…˜ ID'),
(104, 'invoice_id', 'invoice id', 'à¦šà¦¾à¦²à¦¾à¦¨ à¦†à¦‡à¦¡à¦¿', 'IdentificaciÃ³n factura', 'Ø±Ù‚Ù… Ø§Ù„ÙØ§ØªÙˆØ±Ø©', 'factuur id', 'ÑÑ‡ÐµÑ‚-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð° ID', 'å‘ç¥¨ç¼–å·', 'fatura id', 'id fatura', 'szÃ¡mla id', 'Identifiant facture', 'Ï„Î¹Î¼Î¿Î»Î¿Î³Î¯Î¿Ï… id', 'Rechnung id', 'id fattura', 'id à¸‚à¸­à¸‡à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©ÛŒ Ø´Ù†Ø§Ø®Øª', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤†à¤ˆà¤¡à¥€', 'ID cautionem', 'id faktur', 'è«‹æ±‚æ›¸ã®ID', 'ì†¡ìž¥ ë²ˆí˜¸'),
(105, 'method', 'method', 'à¦ªà¦¦à§à¦§à¦¤à¦¿', 'mÃ©todo', 'Ø·Ø±ÙŠÙ‚Ø©', 'methode', 'Ð¼ÐµÑ‚Ð¾Ð´', 'æ–¹æ³•', 'yÃ¶ntem', 'mÃ©todo', 'mÃ³dszer', 'mÃ©thode', 'Î¼Î­Î¸Î¿Î´Î¿Ï‚', 'Verfahren', 'Metodo', 'à¸§à¸´à¸˜à¸µ', 'Ø·Ø±ÛŒÙ‚Û', 'à¤µà¤¿à¤§à¤¿', 'methodo', 'metode', 'æ–¹æ³•', 'ë°©ë²•'),
(106, 'bed_list', 'bed list', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista de cama', 'Ù‚Ø§Ø¦Ù…Ø© Ø³Ø±ÙŠØ±', 'bed lijst', 'ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ¿Ð¸ÑÐ¾Ðº', 'åºŠåˆ—è¡¨', 'yatak liste', 'Lista de cama', 'Ã¡gy lista', 'liste de lit', 'Î›Î¯ÏƒÏ„Î± ÎºÏÎµÎ²Î¬Ï„Î¹', 'Bett Liste', 'Lista letto', 'à¸£à¸²à¸¢à¸à¸²à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤¸à¥‚à¤šà¥€', 'stratum album', 'Daftar tidur', 'ãƒ™ãƒƒãƒ‰ä¸€è¦§', 'ì¹¨ëŒ€ ëª©ë¡'),
(107, 'bed_id', 'bed id', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦†à¦‡à¦¡à¦¿', 'IdentificaciÃ³n cama', 'Ù…Ø¹Ø±Ù Ø§Ù„Ø³Ø±ÙŠØ±', 'bed id', 'ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ ID', 'åºŠä¸ŠID', 'yatak id', 'id cama', 'Ã¡gy id', 'Identifiant du lit', 'id ÎºÏÎµÎ²Î¬Ï„Î¹', 'Bett-ID', 'id letto', 'ID à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ú©ÛŒ Ø´Ù†Ø§Ø®Øª', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤†à¤ˆà¤¡à¥€', 'ID lectulo', 'tidur id', 'ãƒ™ãƒƒãƒ‰ç•ªå·', 'ì¹¨ëŒ€ ID'),
(108, 'bed_type', 'bed type', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦Ÿà¦¾à¦‡à¦ª', 'tipo de cama', 'Ù†ÙˆØ¹ Ø§Ù„Ø³Ø±ÙŠØ±', 'Type bed', 'Ñ‚Ð¸Ð¿ ÐºÑ€Ð¾Ð²Ð°Ñ‚Ð¸', 'åºŠåž‹', 'yatak tipi', 'tipo de cama', 'szoba tÃ­pus', 'Type de lit', 'Ï„ÏÏ€Î¿ ÎºÏÎµÎ²Î±Ï„Î¹Î¿Ï', 'Bett-Typ', 'Tipo di letto', 'à¸›à¸£à¸°à¹€à¸ à¸—à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ú©ÛŒ Ù‚Ø³Ù…', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤ªà¥à¤°à¤•à¤¾à¤°', 'stratum typus', 'jenis tempat tidur', 'ãƒ™ãƒƒãƒ‰ã‚¿ã‚¤ãƒ—', 'ì¹¨ëŒ€ ìœ í˜•'),
(109, 'allotment_time', 'allotment time', 'à¦¬à¦¨à§à¦Ÿà¦¨à§‡à¦° à¦¸à¦®à¦¯à¦¼', 'asignaciÃ³n del tiempo', 'ÙˆÙ‚Øª Ø§Ù„ØªØ®ØµÙŠØµ', 'allotment tijd', 'Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸', 'é…å‘æ—¶é—´', 'tahsis sÃ¼resi', 'tempo loteamento', 'elosztÃ¡s idÅ‘', 'temps d''attribution', 'ÎºÎ±Ï„Î±Î½Î¿Î¼Î® Ï„Î¿Ï… Ï‡ÏÏŒÎ½Î¿Ï…', 'Zuteilung Zeit', 'tempo di riparto', 'à¹€à¸§à¸¥à¸²à¸ˆà¸±à¸”à¸ªà¸£à¸£', 'Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹ Ú©Û’ ÙˆÙ‚Øª', 'à¤†à¤µà¤‚à¤Ÿà¤¨ à¤•à¥‡ à¤¸à¤®à¤¯', 'sortitio tempore', 'waktu penjatahan', 'å‰²å½“æ™‚é–“', 'í• ë‹¹ ì‹œê°„'),
(110, 'discharge_time', 'discharge time', 'à¦¸à§à¦°à¦¾à¦¬ à¦¸à¦®à¦¯à¦¼', 'tiempo de descarga', 'ÙˆÙ‚Øª Ø§Ù„ØªÙØ±ÙŠØº', 'ontlaadtijd', 'Ð’Ñ€ÐµÐ¼Ñ Ñ€Ð°Ð·Ñ€ÑÐ´Ð°', 'æ”¾ç”µæ—¶é—´', 'boÅŸalma sÃ¼resi', 'tempo de descarga', 'kisÃ¼tÃ©si idÅ‘', 'temps de dÃ©charge', 'Ï‡ÏÏŒÎ½Î¿ ÎµÎºÏÎ¿Î®Ï‚', 'Entladezeit', 'tempo di scarica', 'à¹€à¸§à¸¥à¸²à¸›à¸¥à¸”à¸›à¸£à¸°à¸ˆà¸³à¸à¸²à¸£', 'Ø®Ø§Ø±Ø¬ ÛÙˆÙ†Û’ ÙˆØ§Ù„Û’ Ù…Ø§Ø¯Û Ú©Ø§ ÙˆÙ‚Øª', 'à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤•à¥‡ à¤¸à¤®à¤¯', 'tempus fluit', 'waktu pengosongan', 'æ”¾é›»æ™‚é–“', 'ë°©ì „ ì‹œê°„'),
(111, 'bed_number', 'bed number', 'à¦¬à§‡à¦¡ à¦¸à¦‚à¦–à§à¦¯à¦¾', 'nÃºmero de la cama', 'Ø¹Ø¯Ø¯ Ø§Ù„Ø³Ø±ÙŠØ±', 'bed nummer', 'Ð½Ð¾Ð¼ÐµÑ€ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'åºŠå·', 'yatak sayÄ±sÄ±', 'nÃºmero cama', 'Ã¡gyszÃ¡m', 'NumÃ©ro du lit', 'Î±ÏÎ¹Î¸Î¼ÏŒ ÎºÎ»Î¹Î½ÏŽÎ½', 'Bettnummer', 'numero letto', 'à¸ˆà¸³à¸™à¸§à¸™à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨ÛŒÚˆ Ù†Ù…Ø¨Ø±', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤¸à¤‚à¤–à¥à¤¯à¤¾', 'torum numero', 'nomor tidur', 'ãƒ™ãƒƒãƒ‰æ•°', 'ì¹¨ëŒ€ ìˆ˜'),
(112, 'type', 'type', 'à¦Ÿà¦¾à¦‡à¦ª', 'tipo', 'Ù†ÙˆØ¹', 'type', 'Ñ‚Ð¸Ð¿', 'ç±»åž‹', 'tip', 'tipo', 'tÃ­pus', 'catÃ©gorie', 'Ï„ÏÏ€Î¿Ï‚', 'Art', 'Tipo di', 'à¸Šà¸™à¸´à¸”', 'Ù‚Ø³Ù…', 'à¤Ÿà¤¾à¤‡à¤ª', 'type', 'jenis', 'ã‚¿ã‚¤ãƒ—', 'ìœ í˜•'),
(113, 'blood_donor_list', 'blood donor list', 'à¦°à¦•à§à¦¤ à¦¦à¦¾à¦¤à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de donantes de sangre', 'Ù‚Ø§Ø¦Ù…Ø© Ù…ØªØ¨Ø±Ø¹ÙŠÙ† Ø¨Ø§Ù„Ø¯Ù…', 'bloeddonor lijst', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð´Ð¾Ð½Ð¾Ñ€Ð¾Ð² ÐºÑ€Ð¾Ð²Ð¸', 'çŒ®è¡€è€…åå•', 'kan baÄŸÄ±ÅŸ yapanlar listesinde', 'lista de doadores de sangue', 'vÃ©radÃ³ lista', 'liste des donneurs de sang', 'Î±Î¯Î¼Î± Î»Î¯ÏƒÏ„Î± Ï„Ï‰Î½ Ï‡Î¿ÏÎ·Î³ÏŽÎ½', 'Blutspender Liste', 'Lista dei donatori di sangue', 'à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¸šà¸£à¸´à¸ˆà¸²à¸„à¹€à¸¥à¸·à¸­à¸”', 'Ø®ÙˆÙ† Ú©Û’ Ø¹Ø·ÛŒÛ Ø¯ÛÙ†Ø¯Ú¯Ø§Ù† Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤°à¤•à¥à¤¤ à¤¦à¤¾à¤¤à¤¾ à¤¸à¥‚à¤šà¥€', 'sanguinem donator album', 'Daftar donor darah', 'è¡€æ¶²ãƒ‰ãƒŠãƒ¼ãƒªã‚¹ãƒˆ', 'í˜ˆì•¡ ê¸°ì¦ìž ëª©ë¡'),
(114, 'last_donation_date', 'last donation date', 'à¦¶à§‡à¦· à¦¦à¦¾à¦¨ à¦œà¦¨à§à¦®', 'Ãºltima fecha de la donaciÃ³n', 'Ù…Ø´Ø§Ø±ÙƒØ© ØªØ§Ø±ÙŠØ® Ø§Ù„ØªØ¨Ø±Ø¹', 'laatste donatie datum', 'Ð”Ð°Ñ‚Ð° Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÐµÐ³Ð¾ Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð½Ð¸Ñ', 'æœ€åŽæèµ æ—¥æœŸ', 'son baÄŸÄ±ÅŸ tarih', 'data da Ãºltima doaÃ§Ã£o', 'utolsÃ³ adomÃ¡ny dÃ¡tum', 'date du dernier don', 'Ï„ÎµÎ»ÎµÏ…Ï„Î±Î¯Î± Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î´Ï‰ÏÎµÎ¬', 'letzten Spende Datum', 'ultima data di donazione', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¸šà¸£à¸´à¸ˆà¸²à¸„à¸¥à¹ˆà¸²à¸ªà¸¸à¸”', 'Ú¯Ø²Ø´ØªÛ Ø¹Ø·ÛŒÛ ØªØ§Ø±ÛŒØ®', 'à¤ªà¤¿à¤›à¤²à¥‡ à¤¦à¤¾à¤¨ à¤¤à¤¾à¤°à¥€à¤–', 'novissimo tempore donationis', 'Tanggal sumbangan lalu', 'æœ€å¾Œã®å¯„ä»˜æ—¥', 'ë§ˆì§€ë§‰ìœ¼ë¡œ ê¸°ë¶€ ë‚ ì§œ'),
(115, 'status', 'status', 'à¦…à¦¬à¦¸à§à¦¥à¦¾', 'estado', 'Ø­Ø§Ù„Ø©', 'toestand', 'ÑÑ‚Ð°Ñ‚ÑƒÑ', 'çŠ¶æ€', 'durum', 'estado', 'Ã¡llapot', 'statut', 'ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·', 'Status', 'stato', 'à¸ªà¸–à¸²à¸™à¸°', 'Ø¯Ø±Ø¬Û', 'à¤¹à¥ˆà¤¸à¤¿à¤¯à¤¤', 'Status', 'status', 'ã‚¹ãƒ†ãƒ¼ã‚¿ã‚¹', 'ì§€ìœ„'),
(116, 'category', 'category', 'à¦¬à¦¿à¦­à¦¾à¦—', 'categorÃ­a', 'ÙØ¦Ø©', 'categorie', 'ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ñ', 'ç±»åˆ«', 'kategori', 'categoria', 'kategÃ³ria', 'catÃ©gorie', 'ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±', 'Kategorie', 'categoria', 'à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆ', 'Ø²Ù…Ø±Û’', 'à¤¶à¥à¤°à¥‡à¤£à¥€', 'praedicamenti', 'kategori', 'ã‚«ãƒ†ã‚´ãƒª', 'ë²”ì£¼'),
(117, 'price', 'price', 'à¦¦à¦¾à¦®', 'precio', 'Ø§Ù„Ø³Ø¹Ø±', 'prijs', 'Ñ†ÐµÐ½Ð°', 'ä»·æ ¼', 'fiyat', 'preÃ§o', 'Ã¡r', 'prix', 'Ï„Î¹Î¼Î®', 'Preis', 'prezzo', 'à¸£à¸²à¸„à¸²', 'Ù‚ÛŒÙ…Øª', 'à¤•à¥€à¤®à¤¤', 'pretium', 'harga', 'ä¾¡æ ¼', 'ê°€ê²©'),
(118, 'manufacturing_company', 'manufacturing company', 'à¦‰à¦¤à§à¦ªà¦¾à¦¦à¦¨ à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à¦¿', 'empresa de fabricaciÃ³n', 'Ø´Ø±ÙƒØ© Ø§Ù„ØªØµÙ†ÙŠØ¹', 'productiebedrijf', 'Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²ÐµÐ½Ð½Ð°Ñ Ñ„Ð¸Ñ€Ð¼Ð°', 'åˆ¶é€ å•†', 'Ã¼retim ÅŸirketi', 'empresa de fabricaÃ§Ã£o', 'gyÃ¡rtÃ³ cÃ©g', 'entreprise de fabrication', 'ÎºÎ±Ï„Î±ÏƒÎºÎµÏ…Î±ÏƒÏ„Î¹ÎºÎ® ÎµÏ„Î±Î¹ÏÎµÎ¯Î±', 'Produktionsunternehmen', 'societÃ  di produzione', 'à¸šà¸£à¸´à¸©à¸±à¸— à¸œà¸¹à¹‰à¸œà¸¥à¸´à¸•', 'Ù…ÛŒÙ†ÙˆÙÛŒÚ©Ú†Ø±Ù†Ú¯ Ú©Ù…Ù¾Ù†ÛŒ', 'à¤¨à¤¿à¤°à¥à¤®à¤¾à¤£ à¤•à¤‚à¤ªà¤¨à¥€', 'vestibulum consortia', 'perusahaan manufaktur', 'è£½é€ ä¼šç¤¾', 'ì œì¡° íšŒì‚¬'),
(119, 'view_operation_report', 'view operation report', 'à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨ à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'ver la confirmaciÃ³n de la operaciÃ³n', 'Ø¹Ø±Ø¶ ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø¹Ù…Ù„ÙŠØ©', 'bekijk bediening rapport', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚ Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ', 'æŸ¥çœ‹æ“ä½œæŠ¥å‘Š', 'Ã§alÄ±ÅŸma raporunu gÃ¶rÃ¼ntÃ¼lemek', 'exibir o relatÃ³rio de operaÃ§Ã£o', 'megtekintÃ©sÃ©hez mÅ±kÃ¶dÃ©sÃ©rÅ‘l szÃ³lÃ³ jelentÃ©s', 'voir rapport d''opÃ©ration', 'Î´ÎµÎ¯Ï„Îµ Î±Î½Î±Ï†Î¿ÏÎ¬ Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±Ï‚', 'OP-Bericht ansehen', 'visualizzare il report di funzionamento', 'à¸”à¸¹à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸”à¸³à¹€à¸™à¸´à¸™à¸‡à¸²à¸™', 'Ø¢Ù¾Ø±ÛŒØ´Ù† Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤‘à¤ªà¤°à¥‡à¤¶à¤¨ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤•à¥‹ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit operatio auditui', 'melihat laporan operasi', 'æ“ä½œãƒ¬ãƒãƒ¼ãƒˆã‚’è¡¨ç¤º', 'ìš´ì˜ ë³´ê³ ì„œë¥¼ ë³´ë ¤ë©´'),
(120, 'view_report', 'view report', 'à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'ver el informe', 'Ø¹Ø±Ø¶ ØªÙ‚Ø±ÙŠØ±', 'rapport bekijken', 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚', 'æŸ¥çœ‹æŠ¥å‘Š', 'Raporu gÃ¶rÃ¼ntÃ¼lemek', 'ver relatÃ³rio', 'jelentÃ©s megtekintÃ©se', 'voir rapport', 'Ï€ÏÎ¿Î²Î¬Î»ÎµÏ„Îµ Ï„Î·Î½ Î±Î½Î±Ï†Î¿ÏÎ¬', 'Bericht ansehen', 'visualizzare il report', 'à¸”à¸¹à¸£à¸²à¸¢à¸‡à¸²à¸™', 'Ø±Ù¾ÙˆØ±Ù¹ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit auditui', 'melihat laporan', 'ãƒ¬ãƒãƒ¼ãƒˆã‚’è¦‹ã‚‹', 'ë³´ê³ ì„œë¥¼ ë³´ë ¤ë©´'),
(121, 'date', 'date', 'à¦œà¦¨à§à¦®', 'fecha', 'ØªØ§Ø±ÙŠØ®', 'datum', 'Ð´Ð°Ñ‚Ð°', 'æ—¥', 'tarih', 'data', 'dÃ¡tum', 'Date', 'Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±', 'Datum', 'Data', 'à¸§à¸±à¸™à¸—à¸µà¹ˆ', 'ØªØ§Ø±ÛŒØ®', 'à¤¤à¤¾à¤°à¥€à¤–', 'date', 'tanggal', 'æ—¥ä»˜', 'ë‚ ì§œ'),
(122, 'noticeboard_list', 'noticeboard list', 'à¦¨à§‹à¦Ÿà¦¿à¦¶à¦¬à§‹à¦°à§à¦¡ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista tablÃ³n de anuncios', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù„Ø§ÙØªØ©', 'prikbord lijst', 'Ð´Ð¾ÑÐºÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº', 'å¸ƒå‘Šåå•', 'panosuna liste', 'lista de avisos', 'Ã¼zenÅ‘falÃ¡n lista', 'liste de tableau d''affichage', 'Î›Î¯ÏƒÏ„Î± Î‘Î½Î±ÎºÎ¿Î¹Î½ÏŽÏƒÎµÏ‰Î½', 'Brett Liste', 'Lista bacheca', 'à¸£à¸²à¸¢à¸à¸²à¸£ noticeboard', 'noticeboard ÙÛØ±Ø³Øª', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸à¤¬à¥‹à¤°à¥à¤¡ à¤¸à¥‚à¤šà¥€', 'noticeboard album', 'daftar pengumuman', 'æŽ²ç¤ºæ¿ä¸€è¦§', 'ê³µì§€ ì‚¬í•­ more ëª©ë¡'),
(123, 'add_noticeboard', 'add noticeboard', 'à¦¨à§‹à¦Ÿà¦¿à¦¶à¦¬à§‹à¦°à§à¦¡ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir tablÃ³n de anuncios', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù„Ø§ÙØªØ©', 'voegen prikbord', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ð¾ÑÐºÑƒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹', 'åŠ å¸ƒå‘Š', 'panosuna ekleyin', 'adicionar avisos', 'hozzÃ¡ Ã¼zenÅ‘falÃ¡n', 'ajouter tableau d''affichage', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Î‘Î½Î±ÎºÎ¿Î¹Î½ÏŽÏƒÎµÏ‰Î½', 'hinzufÃ¼gen noticeboard', 'aggiungere bacheca', 'à¹€à¸žà¸´à¹ˆà¸¡ noticeboard', 'noticeboard Ø´Ø§Ù…Ù„', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸à¤¬à¥‹à¤°à¥à¤¡ à¤œà¥‹à¤¡à¤¼', 'adde noticeboard', 'tambahkan pengumuman', 'æŽ²ç¤ºæ¿ã‚’è¿½åŠ ', 'ê³µì§€ ì‚¬í•­ moreë¥¼ ì¶”ê°€'),
(124, 'title', 'title', 'à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®', 'tÃ­tulo', 'Ù„Ù‚Ø¨', 'titel', 'Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'æ ‡é¢˜', 'baÅŸlÄ±k', 'tÃ­tulo', 'cÃ­m', 'titre', 'Ï„Î¯Ï„Î»Î¿Ï‚', 'Titel', 'titolo', 'à¸Šà¸·à¹ˆà¸­à¹€à¸£à¸·à¹ˆà¸­à¸‡', 'Ø¹Ù†ÙˆØ§Ù†', 'à¤¶à¥€à¤°à¥à¤·à¤•', 'title', 'judul', 'ã‚¿ã‚¤ãƒˆãƒ«', 'ì´ë¦„'),
(125, 'notice', 'notice', 'à¦¬à¦¿à¦œà§à¦žà¦ªà§à¦¤à¦¿', 'notar', 'Ø¥Ø´Ø¹Ø§Ø±', 'opmerken', 'Ð·Ð°Ð¼ÐµÑ‡Ð°Ñ‚ÑŒ', 'æ³¨æ„', 'dikkat', 'notar', 'Ã©szrevesz', 'remarquer', 'Î±Î½Î±ÎºÎ¿Î¯Î½Ï‰ÏƒÎ·', 'Bekanntmachung', 'preavviso', 'à¸ªà¸±à¸‡à¹€à¸à¸•à¹€à¸«à¹‡à¸™', 'Ù†ÙˆÙ¹Ø³', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸', 'Observa', 'memperhatikan', 'æ°—ä»˜ã', 'í†µì§€'),
(126, 'system_name', 'system name', 'à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à§‡à¦° à¦¨à¦¾à¦®à§‡à¦°', 'Nombre del sistema', 'Ø§Ø³Ù… Ø§Ù„Ù†Ø¸Ø§Ù…', 'Name System', 'Ð¸Ð¼Ñ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹', 'ç³»ç»Ÿåç§°', 'sistemi adÄ±', 'nome do sistema', 'rendszer neve', 'nom de systÃ¨me', 'ÏŒÎ½Î¿Î¼Î± Ï„Î¿Ï… ÏƒÏ…ÏƒÏ„Î®Î¼Î±Ï„Î¿Ï‚', 'System Name', 'nome del sistema', 'à¸Šà¸·à¹ˆà¸­à¸£à¸°à¸šà¸š', 'Ù†Ø¸Ø§Ù… Ú©Ø§ Ù†Ø§Ù…', 'à¤¸à¤¿à¤¸à¥à¤Ÿà¤® à¤¨à¤¾à¤®', 'nomen ratio', 'nama sistem', 'ã‚·ã‚¹ãƒ†ãƒ å', 'ì‹œìŠ¤í…œ ì´ë¦„'),
(127, 'save', 'save', 'à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨', 'guardar', 'Ø­ÙØ¸', 'sparen', 'ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸Ñ‚ÑŒ', 'èŠ‚çœ', 'kurtarmak', 'salvar', 'kivÃ©ve', 'sauver', 'ÎµÎºÏ„ÏŒÏ‚', 'speichern', 'salva', 'à¸›à¸£à¸°à¸«à¸¢à¸±à¸”', 'Ú©Ùˆ Ø¨Ú†Ø§Ù†Û’ Ú©Û’', 'à¤¬à¤šà¤¾à¤¨à¤¾', 'Salvum', 'menyimpan', 'ä¿å­˜', 'ì €ìž¥'),
(128, 'system_email', 'system email', 'à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦‡à¦®à§‡à¦²', 'sistema de correo electrÃ³nico', 'Ù†Ø¸Ø§Ù… Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'systeem e-mail', 'ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹', 'ç”µå­é‚®ä»¶ç³»ç»Ÿ', 'sistemi e-posta', 'sistema de e-mail', 'rendszer email', 'email de systÃ¨me', 'ÏƒÏÏƒÏ„Î·Î¼Î± Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï…', 'E-Mail-System', 'e-mail del sistema', 'à¸£à¸°à¸šà¸šà¸­à¸µà¹€à¸¡à¸¥', 'Ù†Ø¸Ø§Ù… Ú©ÛŒ Ø§ÛŒ Ù…ÛŒÙ„', 'à¤ªà¥à¤°à¤£à¤¾à¤²à¥€ à¤ˆà¤®à¥‡à¤²', 'email ratio', 'email sistem', 'ã‚·ã‚¹ãƒ†ãƒ ã®ãƒ¡ãƒ¼ãƒ«', 'ì‹œìŠ¤í…œ ì „ìž ë©”ì¼'),
(129, 'system_title', 'system title', 'à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦® à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®', 'TÃ­tulo sistema', 'Ø¹Ù†Ø§ÙˆÙŠÙ† Ø§Ù„Ù†Ø¸Ø§Ù…', 'systeem titel', 'Ð¡Ð¸ÑÑ‚ÐµÐ¼Ð° Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'ç³»ç»Ÿæ ‡é¢˜', 'Sistem baÅŸlÄ±k', 'tÃ­tulo sistema', 'rendszer cÃ­m', 'titre du systÃ¨me', 'Î¤Î¯Ï„Î»Î¿Ï‚ Ï„Î¿Ï… ÏƒÏ…ÏƒÏ„Î®Î¼Î±Ï„Î¿Ï‚', 'System Titel', 'del titolo di sistema', 'à¸Šà¸·à¹ˆà¸­à¸£à¸°à¸šà¸š', 'Ù†Ø¸Ø§Ù… Ø¹Ù†ÙˆØ§Ù†', 'à¤¸à¤¿à¤¸à¥à¤Ÿà¤® à¤¶à¥€à¤°à¥à¤·à¤•', 'ratio title', 'judul sistem', 'ã‚·ã‚¹ãƒ†ãƒ ã®ã‚¿ã‚¤ãƒˆãƒ«', 'ì‹œìŠ¤í…œ ì œëª©'),
(130, 'paypal_email', 'paypal email', 'PayPal à¦à¦° à¦‡à¦®à§‡à¦‡à¦²', 'email paypal', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¨Ø§ÙŠ Ø¨Ø§Ù„', 'paypal e-mail', 'PayPal e-mail', 'PayPalç”µå­é‚®ä»¶', 'paypal e-posta', 'email paypal', 'paypal email', 'email paypal', 'paypal email', 'paypal E-Mail', 'email paypal', 'à¸­à¸µà¹€à¸¡à¸¥à¹Œ PayPal', 'Ù¾Û’ Ù¾Ø§Ù„ Ø§ÛŒ Ù…ÛŒÙ„', 'à¤ªà¥‡à¤ªà¥ˆà¤² à¤ˆà¤®à¥‡à¤²', 'Paypal email', 'email paypal', 'ãƒšã‚¤ãƒ‘ãƒ«ãƒ¡ãƒ¼ãƒ«', 'íŽ˜ì´íŒ” ì´ë©”ì¼'),
(131, 'currency', 'currency', 'à¦®à§à¦¦à§à¦°à¦¾', 'moneda', 'Ø¹Ù…Ù„Ø©', 'valuta', 'Ð²Ð°Ð»ÑŽÑ‚Ð°', 'è´§å¸', 'para', 'moeda', 'valuta', 'monnaie', 'Î½ÏŒÎ¼Î¹ÏƒÎ¼Î±', 'WÃ¤hrung', 'valuta', 'à¹€à¸‡à¸´à¸™à¸•à¸£à¸²', 'Ú©Ø±Ù†Ø³ÛŒ', 'à¤®à¥à¤¦à¥à¤°à¤¾', 'monetÃ¦', 'mata uang', 'é€šè²¨', 'í†µí™”'),
(132, 'restore', 'restore', 'à¦ªà§à¦°à¦¤à§à¦¯à¦°à§à¦ªà¦£ à¦•à¦°à¦¾', 'restaurar', 'Ø§Ø³ØªØ¹Ø§Ø¯Ø©', 'herstellen', 'Ð²Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ', 'æ¢å¤', 'geri', 'restaurar', 'visszaad', 'rÃ©tablir', 'Î±Ï€Î¿ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·', 'wiederherstellen', 'ripristinare', 'à¸Ÿà¸·à¹‰à¸™à¸Ÿà¸¹', 'Ø¨Ø­Ø§Ù„', 'à¤¬à¤¹à¤¾à¤²', 'restituo', 'memulihkan', 'å¾©å…ƒã™ã‚‹', 'ë³µì›'),
(133, 'report', 'report', 'à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'reportar', 'ØªÙ‚Ø±ÙŠØ±', 'rapporteren', 'ÑÐ¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ', 'æŠ¥å‘Š', 'rapor', 'denunciar', 'jelentÃ©s', 'signaler', 'Î­ÎºÎ¸ÎµÏƒÎ·', 'berichten', 'segnalare', 'à¹à¸ˆà¹‰à¸‡', 'Ø±Ù¾ÙˆØ±Ù¹', 'à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'referrent', 'melaporkan', 'ãƒ¬ãƒãƒ¼ãƒˆ', 'ë³´ê³ '),
(134, 'all', 'all', 'à¦¸à¦®à¦¸à§à¦¤', 'todo', 'ÙƒÙ„', 'alle', 'Ð²ÑÐµ', 'æ‰€æœ‰', 'tÃ¼m', 'tudo', 'minden', 'tous', 'ÏŒÎ»Î±', 'alle', 'tutti', 'à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'ØªÙ…Ø§Ù…', 'à¤¸à¤¬', 'omnes', 'semua', 'ã™ã¹ã¦', 'ëª¨ë“ '),
(135, 'upload_&_restore_from_backup', 'upload & restore from backup', 'à¦†à¦ªà¦²à§‹à¦¡ & à¦¬à§à¦¯à¦¾à¦•à¦†à¦ª à¦¥à§‡à¦•à§‡ à¦ªà§à¦¨à¦ƒà¦¸à§à¦¥à¦¾à¦ªà¦¨', 'cargar y restaurar la copia de seguridad', 'ØªØ­Ù…ÙŠÙ„ ÙˆØ§Ø³ØªØ¹Ø§Ø¯Ø© Ù…Ù† Ø§Ù„Ù†Ø³Ø®Ø© Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠØ©', 'uploaden en terugzetten van een backup', 'Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð¸ Ð²Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ð· Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ð¾Ð¹ ÐºÐ¾Ð¿Ð¸Ð¸', 'ä¸Šä¼ åŠä»Žå¤‡ä»½ä¸­è¿˜åŽŸ', 'yÃ¼klemek ve yedekten geri yÃ¼kleme', 'enviar e restaurar a partir de backup', 'feltÃ¶lteni Ã©s visszaÃ¡llÃ­tani backup', 'tÃ©lÃ©charger et de restauration de la sauvegarde', 'Î±Î½ÎµÎ²Î¬ÏƒÎµÏ„Îµ ÎºÎ±Î¹ ÎµÏ€Î±Î½Î±Ï†Î¿ÏÎ¬ Î±Ï€ÏŒ backup', 'Upload und Wiederherstellung von Backups', 'caricare e ripristinare dal backup', 'à¸­à¸±à¸žà¹‚à¸«à¸¥à¸”à¹à¸¥à¸°à¹€à¸£à¸µà¸¢à¸à¸„à¸·à¸™à¸ˆà¸²à¸à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥', 'Ø§Ù¾ Ù„ÙˆÚˆ Ø§ÙˆØ± Ø¨ÛŒÚ© Ø§Ù¾ Ø³Û’ Ø¨Ø­Ø§Ù„', 'à¤…à¤ªà¤²à¥‹à¤¡ à¤”à¤° à¤¬à¥ˆà¤•à¤…à¤ª à¤¸à¥‡ à¤¬à¤¹à¤¾à¤²', '&amp; restituo ex tergum upload', 'meng-upload &amp; restore dari backup', 'ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰ï¼†ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—ã‹ã‚‰å¾©å…ƒ', 'ì—…ë¡œë“œ ë° ë°±ì—…ì—ì„œ ë³µì›'),
(136, 'manage_profile', 'manage profile', 'à¦ªà§à¦°à¦«à¦¾à¦‡à¦² à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar el perfil', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ', 'beheren profiel', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÐµÐ¼', 'ç®¡ç†é…ç½®æ–‡ä»¶', 'profilinizi', 'gerenciar o perfil', 'Profil kezelÃ©se', 'GÃ©rer le profil', 'Î´Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Ï€ÏÎ¿Ï†Î¯Î»', 'Profil verwalten', 'gestire il profilo', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”', 'Ù¾Ø±ÙˆÙØ§Ø¦Ù„ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤ªà¥à¤°à¥‹à¤«à¤¼à¤¾à¤‡à¤² à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'aget profile', 'mengelola profil', 'ãƒ—ãƒ­ãƒ•ã‚¡ã‚¤ãƒ«ã®ç®¡ç†', 'í”„ë¡œí•„ (ë‚´ ì •ë³´) ê´€ë¦¬');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(137, 'update_profile', 'update profile', 'à¦ªà§à¦°à§‹à¦«à¦¾à¦‡à¦² à¦†à¦ªà¦¡à§‡à¦Ÿ', 'actualizar el perfil', 'ØªØ­Ø¯ÙŠØ« Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ', 'updaten profiel', 'Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'æ›´æ–°ä¸ªäººèµ„æ–™', 'Profil gÃ¼ncelleme', 'atualizar o perfil', 'Profil frissÃ­tÃ©se', 'mettre Ã  jour le profil', 'ÎµÎ½Î·Î¼ÎµÏÏŽÏƒÎµÏ„Îµ Ï„Î¿ Ï€ÏÎ¿Ï†Î¯Î»', 'Profil aktualisieren', 'aggiornare il profilo', 'à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”', 'Ù¾Ø±ÙˆÙØ§Ø¦Ù„ Ú©ÛŒ ØªØ§Ø²Û Ú©Ø§Ø±ÛŒ', 'à¤ªà¥à¤°à¥‹à¤«à¤¼à¤¾à¤‡à¤² à¤•à¤¾ à¤…à¤¦à¥à¤¯à¤¤à¤¨', 'update profile', 'memperbarui profil', 'ãƒ—ãƒ­ãƒ•ã‚¡ã‚¤ãƒ«ã‚’æ›´æ–°', 'í”„ë¡œí•„ì„ ì—…ë°ì´íŠ¸'),
(138, 'change_password', 'change password', 'à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à§à¦¨', 'cambiar la contraseÃ±a', 'ØªØºÙŠÙŠØ± ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±', 'wachtwoord wijzigen', 'ÑÐ¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'æ›´æ”¹å¯†ç ', 'ÅŸifresini deÄŸiÅŸtirmek', 'alterar a senha', 'jelszÃ³ megvÃ¡ltoztatÃ¡sa', 'changer le mot de passe', 'Î±Î»Î»Î¬Î¾ÎµÏ„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚', 'Kennwort Ã¤ndern', 'modificare la password', 'à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ ØªØ¨Ø¯ÛŒÙ„ Ú©Ø±ÛŒÚº', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤¬à¤¦à¤²à¤¨à¤¾', 'mutare password', 'mengubah password', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å¤‰æ›´ã™ã‚‹', 'ì•”í˜¸ë¥¼ ë³€ê²½'),
(139, 'new_password', 'new password', 'à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡', 'nueva contraseÃ±a', 'ÙƒÙ„Ù…Ø© Ù…Ø±ÙˆØ± Ø¬Ø¯ÙŠØ¯Ø©', 'nieuw wachtwoord', 'Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'æ–°å¯†ç ', 'Yeni ÅŸifre', 'nova senha', 'Ãšj jelszÃ³', 'nouveau mot de passe', 'Î½Î­Î¿ ÎºÏ‰Î´Î¹ÎºÏŒ', 'Neues Passwort', 'nuova password', 'à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¹ƒà¸«à¸¡à¹ˆ', 'Ù†ÛŒØ§ Ù¾Ø§Ø³ ÙˆØ±Úˆ', 'à¤¨à¤¯à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡', 'Novum password', 'sandi baru', 'æ–°ã—ã„ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰', 'ìƒˆ ì•”í˜¸ë¥¼'),
(140, 'confirm_new_password', 'confirm new password', 'à¦¨à¦¤à§à¦¨ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨', 'confirmar nueva contraseÃ±a', 'ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©', 'Bevestig nieuw wachtwoord', 'ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ç¡®è®¤æ–°å¯†ç ', 'yeni parolayÄ± onaylayÄ±n', 'confirmar nova senha', 'erÅ‘sÃ­tse meg az Ãºj jelszÃ³t', 'confirmer le nouveau mot de passe', 'ÎµÏ€Î¹Î²ÎµÎ²Î±Î¹ÏŽÏƒÎµÏ„Îµ Ï„Î¿ Î½Î­Î¿ ÎºÏ‰Î´Î¹ÎºÏŒ', 'BestÃ¤tigen eines neuen Kennwortes', 'confermare la nuova password', 'à¸¢à¸·à¸™à¸¢à¸±à¸™à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¹ƒà¸«à¸¡à¹ˆ', 'Ù†Ø¦Û’ Ù¾Ø§Ø³ ÙˆØ±Úˆ Ú©ÛŒ ØªÙˆØ«ÛŒÙ‚', 'à¤¨à¤ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤•à¥€ à¤ªà¥à¤·à¥à¤Ÿà¤¿', 'Confirmabit novum Signum', 'konfirmasi password baru', 'æ–°ã—ã„ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’ç¢ºèª', 'ìƒˆ ì•”í˜¸ë¥¼ í™•ì¸í•©ë‹ˆë‹¤'),
(141, 'update_password', 'update password', 'à¦¹à¦¾à¦²à¦¨à¦¾à¦—à¦¾à¦¦ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡', 'actualizaciÃ³n de la contraseÃ±a', 'ØªØ­Ø¯ÙŠØ« ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø±', 'Update wachtwoord', 'ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð°Ñ€Ð¾Ð»Ñ', 'æ›´æ–°å¯†ç ', 'gÃ¼ncelleÅŸtirme ÅŸifre', 'atualizaÃ§Ã£o de senha', 'frissÃ­tÃ©si jelszÃ³', 'mise Ã  jour le mot de passe', 'ÎµÎ½Î·Î¼ÎµÏÏŽÏƒÎµÏ„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚', 'Update vergessen', 'aggiornamento della password', 'à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸à¸²à¸£à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡', 'Ø§Ù¾ ÚˆÛŒÙ¹ Ù¾Ø§Ø³ ÙˆØ±Úˆ', 'à¤…à¤¦à¥à¤¯à¤¤à¤¨ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡', 'update Signum', 'Update sandi', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’æ›´æ–°', 'ì—…ë°ì´íŠ¸ ì•”í˜¸'),
(142, 'option', 'option', 'à¦¬à¦¿à¦•à¦²à§à¦ª', 'opciÃ³n', 'Ø®ÙŠØ§Ø±', 'optie', 'Ð²Ð°Ñ€Ð¸Ð°Ð½Ñ‚', 'é€‰é¡¹', 'seÃ§enek', 'opÃ§Ã£o', 'opciÃ³', 'choix', 'ÎµÏ€Î¹Î»Î¿Î³Î®', 'Wahl', 'opzione', 'à¸à¸²à¸£à¹€à¸¥à¸·à¸­à¸', 'Ø¢Ù¾Ø´Ù†', 'à¤µà¤¿à¤•à¤²à¥à¤ª', 'optionem', 'opsi', 'ã‚ªãƒ—ã‚·ãƒ§ãƒ³', 'ì„ íƒê¶Œ'),
(143, 'edit_phrase', 'edit phrase', 'à¦«à§à¦°à§‡à¦œ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar frase', 'ØªØ­Ø±ÙŠØ± Ø§Ù„Ø¹Ø¨Ø§Ø±Ø©', 'bewerk zin', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ñ„Ñ€Ð°Ð·Ñƒ', 'ç¼–è¾‘çŸ­è¯­', 'ifade dÃ¼zenlemek', 'editar frase', 'szerkesztÃ©s kifejezÃ©s', 'Ã©diter phrase', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Ï†ÏÎ¬ÏƒÎ·', 'bearbeiten Phrase', 'modificare frase', 'à¹à¸à¹‰à¹„à¸‚à¸§à¸¥à¸µ', 'Ø¬Ù…Ù„Û ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤µà¤¾à¤•à¥à¤¯à¤¾à¤‚à¤¶ à¤•à¥‹ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere phrase', 'mengedit frase', 'ãƒ•ãƒ¬ãƒ¼ã‚ºã‚’ç·¨é›†', 'ë¬¸êµ¬ë¥¼ íŽ¸ì§‘'),
(144, 'edit_noticeboard', 'edit noticeboard', 'à¦¨à§‹à¦Ÿà¦¿à¦¶à¦¬à§‹à¦°à§à¦¡ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar tablÃ³n de anuncios', 'ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ù„Ø§ÙØªØ©', 'bewerk prikbord', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð´Ð¾ÑÐºÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹', 'ç¼–è¾‘å¸ƒå‘Š', 'panosuna dÃ¼zenleme', 'editar avisos', 'szerkesztÃ©s hirdetÅ‘tÃ¡bla', 'Ã©diter panneau d''', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Î‘Î½Î±ÎºÎ¿Î¹Î½ÏŽÏƒÎµÏ‰Î½', 'bearbeiten noticeboard', 'modificare bacheca', 'à¹à¸à¹‰à¹„à¸‚ noticeboard', 'noticeboard ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸à¤¬à¥‹à¤°à¥à¤¡ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere noticeboard', 'mengedit pengumuman', 'æŽ²ç¤ºæ¿ã‚’ç·¨é›†', 'ê³µì§€ ì‚¬í•­ more íŽ¸ì§‘'),
(145, 'doctor_dashboard', 'doctor dashboard', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦° à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'mÃ©dico salpicadero', 'Ø·Ø¨ÙŠØ¨ Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³', 'arts dashboard', 'Ð’Ñ€Ð°Ñ‡ Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸', 'åŒ»ç”Ÿä»ªè¡¨æ¿', 'doktor paneli', 'mÃ©dico dashboard', 'orvos mÅ±szerfal', 'mÃ©decin tableau de bord', 'ÎŸ Î³Î¹Î±Ï„ÏÏŒÏ‚ Ï„Î±Î¼Ï€Î»ÏŒ', 'Arzt Armaturenbrett', 'medico cruscotto', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡à¸‚à¸­à¸‡à¹à¸žà¸—à¸¢à¹Œ', 'ÚˆØ§Ú©Ù¹Ø± ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤° à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'Medicus Dashboard', 'Dokter dashboard', 'åŒ»å¸«ãƒ€ãƒƒã‚·ãƒ¥', 'ì˜ì‚¬ ëŒ€ì‹œ ë³´ë“œ'),
(146, 'manage_appointment', 'manage appointment', 'à¦…à§à¦¯à¦¾à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar cita', 'ØªØ¹ÙŠÙŠÙ† Ø¥Ø¯Ø§Ø±Ø©', 'beheren afspraak', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸ÐµÐ¼', 'ç®¡ç†é¢„çº¦', 'randevu yÃ¶netmek', 'gerenciar nomeaÃ§Ã£o', 'kezelni talÃ¡lkozÃ³', 'gÃ©rer les rendez-vous', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÏÎ±Î½Ï„ÎµÎ²Î¿Ï', 'Termin verwalten', 'gestire appuntamento', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'ØªÙ‚Ø±Ø±ÛŒ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'gere institutionis', 'mengelola janji', 'ã‚¢ãƒã‚¤ãƒ³ãƒˆãƒ¡ãƒ³ãƒˆã‚’ç®¡ç†', 'ì•½ì†ì„ ê´€ë¦¬'),
(147, 'manage_prescription', 'manage prescription', 'à¦ªà§à¦°à§‡à¦¸à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestiÃ³n de la prescripciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© ÙˆØµÙØ© Ø·Ø¨ÙŠØ©', 'beheren recept', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ñ€ÐµÑ†ÐµÐ¿Ñ‚Ñƒ', 'å¤„æ–¹ç®¡ç†', 'reÃ§ete yÃ¶netmek', 'gerenciar prescriÃ§Ã£o', 'kezelni recept', 'gÃ©rer prescription', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÏƒÏ…Î½Ï„Î±Î³Î®', 'verwalten Rezept', 'gestire prescrizione', 'à¸šà¸£à¸´à¸«à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸•à¸²à¸¡à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¹à¸žà¸—à¸¢à¹Œ', 'Ù†Ø³Ø®Û’ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤ªà¤°à¥à¤šà¥‡ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'praescriptio curo', 'mengelola resep', 'å‡¦æ–¹ç®‹ã‚’ç®¡ç†', 'ì²˜ë°© ê´€ë¦¬'),
(148, 'manage_report', 'manage report', 'à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar informe', 'Ø¥Ø¯Ø§Ø±Ø© ØªÙ‚Ø±ÙŠØ±', 'rapport beheren', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð°', 'ç®¡ç†æŠ¥å‘Š', 'rapor yÃ¶netmek', 'gerenciar relatÃ³rio', 'kezelni jelentÃ©s', 'gÃ©rer rapport', 'Î´Î¹Î±Ï‡ÎµÎ¹ÏÎ¯Î¶Î¿Î½Ï„Î±Î¹ Ï„Î·Î½ Î­ÎºÎ¸ÎµÏƒÎ·', 'verwalten Bericht', 'gestione rapporto', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸£à¸²à¸¢à¸‡à¸²à¸™', 'Ø±Ù¾ÙˆØ±Ù¹ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'fama curo', 'mengelola laporan', 'ãƒ¬ãƒãƒ¼ãƒˆã®ç®¡ç†', 'ë³´ê³ ì„œ ê´€ë¦¬'),
(149, 'prescription', 'prescription', 'à¦ªà§à¦°à§‡à¦¸à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨', 'prescripciÃ³n', 'ÙˆØµÙØ© Ø·Ø¨ÙŠØ©', 'recept', 'Ñ€ÐµÑ†ÐµÐ¿Ñ‚', 'å¤„æ–¹', 'reÃ§ete', 'prescriÃ§Ã£o', 'recept', 'ordonnance', 'ÏƒÏ…Î½Ï„Î±Î³Î®', 'Verschreibung', 'prescrizione', 'à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¸¢à¸²', 'Ù†Ø³Ø®Û’', 'à¤¨à¥à¤¸à¥à¤–à¤¾', 'praescriptio', 'resep', 'å‡¦æ–¹ç®‹', 'ì²˜ë°©'),
(150, 'edit_patient', 'edit patient', 'à¦°à§‹à¦—à§€à¦° à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar paciente', 'ØªØ­Ø±ÙŠØ± Ø§Ù„Ù…Ø±ÙŠØ¶', 'bewerk patiÃ«nt', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð°Ñ†Ð¸ÐµÐ½Ñ‚Ð°', 'ç¼–è¾‘æ‚£è€…', 'Hasta dÃ¼zenleme', 'editar paciente', 'szerkesztÃ©s beteg', 'Ã©diter des patients', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Î±ÏƒÎ¸ÎµÎ½Î®', 'Bearbeitung von Patientendaten', 'modificare paziente', 'à¹à¸à¹‰à¹„à¸‚à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤°à¥‹à¤—à¥€ à¤•à¥‹ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere patientes', 'mengedit pasien', 'æ‚£è€…ã‚’ç·¨é›†', 'í™˜ìžë¥¼ íŽ¸ì§‘'),
(151, 'appointment_list', 'appointment list', 'à¦…à§à¦¯à¦¾à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de citas', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ØªØ¹ÙŠÙŠÙ†', 'afsprakenlijst', 'ÐÐ°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÑÐ¿Ð¸ÑÐºÐ°', 'ä»»å‘½åå•', 'randevu listesi', 'lista de compromissos', 'kinevezÃ©s lista', 'liste des rendez-vous', 'ÎºÎ±Ï„Î¬Î»Î¿Î³Î¿ Î´Î¹Î¿ÏÎ¹ÏƒÏ„Î­Ï‰Î½', 'Terminliste', 'Lista appuntamento', 'à¸£à¸²à¸¢à¸à¸²à¸£à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'ØªÙ‚Ø±Ø±ÛŒ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤¸à¥‚à¤šà¥€', 'Nominatio album', 'Daftar janji', 'ã‚¢ãƒã‚¤ãƒ³ãƒˆãƒ¡ãƒ³ãƒˆãƒªã‚¹ãƒˆ', 'ì•½ì† ëª©ë¡'),
(152, 'add_appointment', 'add appointment', 'à¦…à§à¦¯à¦¾à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir cita', 'Ø¥Ø¶Ø§ÙØ© Ù…ÙˆØ¹Ø¯', 'voegen afspraak', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ', 'åŠ é¢„çº¦', 'randevu eklemek', 'adicionar nomeaÃ§Ã£o', 'hozzÃ¡ talÃ¡lkozÃ³', 'ajouter rendez-vous', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î¿ Î´Î¹Î¿ÏÎ¹ÏƒÎ¼ÏŒ', 'neuen Termin', 'aggiungere appuntamento', 'à¹€à¸žà¸´à¹ˆà¸¡à¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'ØªÙ‚Ø±Ø±ÛŒ Ø´Ø§Ù…Ù„', 'à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤œà¥‹à¤¡à¤¼', 'adde constitutio', 'menambahkan penunjukan', 'äºˆå®šã‚’è¿½åŠ ', 'ì•½ì† ì¶”ê°€'),
(153, 'edit_appointment', 'edit appointment', 'à¦…à§à¦¯à¦¾à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar nombramiento', 'ØªØ¹Ø¯ÙŠÙ„ Ù…ÙˆØ¹Ø¯', 'bewerk afspraak', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ', 'ç¼–è¾‘é¢„çº¦', 'randevu dÃ¼zenleme', 'editar nomeaÃ§Ã£o', 'szerkesztÃ©s talÃ¡lkozÃ³', 'modifier les rendez-vous', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ ÏÎ±Î½Ï„ÎµÎ²Î¿Ï', 'Termin bearbeiten', 'modificare appuntamento', 'à¹à¸à¹‰à¹„à¸‚à¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'ØªÙ‚Ø±Ø±ÛŒ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¨à¤¿à¤¯à¥à¤•à¥à¤¤à¤¿ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere constitutio', 'mengedit janji', 'ä»»å‘½ã‚’ç·¨é›†', 'ì•½ì†ì„ íŽ¸ì§‘í•©ë‹ˆë‹¤'),
(154, 'prescription_list', 'prescription list', 'à¦ªà§à¦°à§‡à¦¸à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista de prescripciÃ³n', 'Ù‚Ø§Ø¦Ù…Ø© ÙˆØµÙØ© Ø·Ø¨ÙŠØ©', 'recept lijst', 'Ñ€ÐµÑ†ÐµÐ¿Ñ‚ ÑÐ¿Ð¸ÑÐ¾Ðº', 'è¯ç‰©åå•', 'reÃ§ete listesi', 'Lista de prescriÃ§Ã£o', 'recept lista', 'liste prescription', 'ÏƒÏ…Î½Ï„Î±Î³Î® Î»Î¯ÏƒÏ„Î±', 'Rezept Liste', 'Lista prescrizione', 'à¸£à¸²à¸¢à¸à¸²à¸£à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¸¢à¸²', 'Ù†Ø³Ø®Û’ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤ªà¤°à¥à¤šà¥‡ à¤•à¥€ à¤¸à¥‚à¤šà¥€', 'praescriptio album', 'Daftar resep', 'å‡¦æ–¹ãƒªã‚¹ãƒˆ', 'ì²˜ë°©ì „ ëª©ë¡'),
(155, 'add_prescription', 'add prescription', 'à¦ªà§à¦°à§‡à¦¸à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir receta', 'Ø¥Ø¶Ø§ÙØ© ÙˆØµÙØ© Ø·Ø¨ÙŠØ©', 'add recept', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ñ€ÐµÑ†ÐµÐ¿Ñ‚', 'å°†å¤„æ–¹', 'reÃ§ete ekleyin', 'adicionar prescriÃ§Ã£o', 'hozzÃ¡ recept', 'ajouter prescription', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· ÏƒÏ…Î½Ï„Î±Î³Î®', 'Rezept hinzufÃ¼gen', 'aggiungere prescrizione', 'à¹€à¸žà¸´à¹ˆà¸¡à¸•à¸²à¸¡à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¹à¸žà¸—à¸¢à¹Œ', 'Ù†Ø³Ø®Û’ Ø´Ø§Ù…Ù„', 'à¤ªà¤°à¥à¤šà¥‡ à¤œà¥‹à¤¡à¤¼', 'adde praescriptione', 'menambahkan resep', 'å‡¦æ–¹ç®‹ã‚’è¿½åŠ ', 'ì²˜ë°©ì „ì„ ì¶”ê°€'),
(156, 'case_history', 'case history', 'à¦°à§‹à¦—à§€à¦° à¦¸à§à¦¬à¦¾à¦¸à§à¦¥à§à¦¯à¦¾à¦¦à¦¿à¦° à¦¬à¦¿à¦¬à¦°à¦£', 'historia clÃ­nica', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø­Ø§Ù„Ø©', 'anamnese', 'Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð±Ð¾Ð»ÐµÐ·Ð½Ð¸', 'ç—…åŽ†', 'geÃ§miÅŸ', 'histÃ³ria do caso', 'kÃ³rtÃ¶rtÃ©net', 'anamnÃ¨se', 'Î¹Î±Ï„ÏÎ¹ÎºÏŒ Î¹ÏƒÏ„Î¿ÏÎ¹ÎºÏŒ Î±ÏƒÎ¸ÎµÎ½Î¿ÏÏ‚', 'Anamnese', 'case history', 'à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ú©ÛŒØ³ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'à¤ªà¥‚à¤°à¥à¤µà¤µà¥ƒà¤¤à¥à¤¤', 'ita history', 'hal ihwal', 'ç—…æ­´', 'ë³‘ë ¥'),
(157, 'add_description', 'add description', 'à¦¬à¦¿à¦¬à¦°à¦£ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨', 'aÃ±adir una descripciÃ³n', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„ÙˆØµÙ', 'add omschrijving', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ', 'æ·»åŠ æè¿°', 'AÃ§Ä±klama eklemek', 'adicionar uma descriÃ§Ã£o', 'LeÃ­rÃ¡s hozzÃ¡adÃ¡sa', 'ajouter une description', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Ï„Î·Î½ Ï€ÎµÏÎ¹Î³ÏÎ±Ï†Î®', 'Beschreibung hinzufÃ¼gen', 'aggiungere descrizione', 'à¹€à¸žà¸´à¹ˆà¸¡à¸£à¸²à¸¢à¸¥à¸°à¹€à¸­à¸µà¸¢à¸”', 'ØªÙØµÛŒÙ„ Ø´Ø§Ù…Ù„', 'à¤µà¤¿à¤µà¤°à¤£ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚', 'adde descriptionem', 'menambahkan deskripsi', 'èª¬æ˜Žã‚’è¿½åŠ ', 'ì„¤ëª…ì„ ì¶”ê°€'),
(158, 'medication', 'medication', 'à¦šà¦¿à¦•à¦¿à¦¤à§à¦¸à¦¾', 'medicaciÃ³n', 'Ø¯ÙˆØ§Ø¡', 'geneesmiddel', 'Ð»ÐµÐºÐ°Ñ€ÑÑ‚Ð²Ð¾', 'è¯ç‰©æ²»ç–—', 'ilaÃ§', 'medicaÃ§Ã£o', 'gyÃ³gyszer', 'mÃ©dication', 'Ï†Î¬ÏÎ¼Î±ÎºÎ¿', 'Behandlung', 'medicazione', 'à¸à¸²à¸£à¸£à¸±à¸à¸©à¸²à¸”à¹‰à¸§à¸¢à¸¢à¸²', 'Ø§Ø¯ÙˆÛŒØ§Øª', 'à¤‡à¤²à¤¾à¤œ', 'medication', 'obat', 'æŠ•è–¬', 'ì•½ë¬¼ ì¹˜ë£Œ'),
(159, 'medication_from_pharmacist', 'medication from pharmacist', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦”à¦·à¦§', 'medicamento del farmacÃ©utico', 'Ø§Ù„Ø¯ÙˆØ§Ø¡ Ù…Ù† Ø§Ù„ØµÙŠØ¯Ù„ÙŠ', 'medicatie van apotheker', 'Ð»ÐµÐºÐ°Ñ€ÑÑ‚Ð²Ð¾ Ð¾Ñ‚ Ñ„Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚Ð°', 'ä»Žè¯å¸ˆç”¨è¯', 'eczacÄ±dan ilaÃ§', 'medicaÃ§Ã£o de farmacÃªutico', 'gyÃ³gyszert gyÃ³gyszerÃ©sz', 'mÃ©dicaments de pharmacien', 'Ï†Î¬ÏÎ¼Î±ÎºÎ± Î±Ï€ÏŒ Ï„Î¿Î½ Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹ÏŒ', 'Medikamente von Apotheker', 'farmaci da farmacista', 'à¸¢à¸²à¸ˆà¸²à¸à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹ Ø³Û’ Ø§Ø¯ÙˆÛŒØ§Øª', 'à¤«à¤¾à¤°à¥à¤®à¤¾à¤¸à¤¿à¤¸à¥à¤Ÿ à¤¸à¥‡ à¤¦à¤µà¤¾', 'medication a pharmacopola', 'obat dari apoteker', 'è–¬å‰¤å¸«ã‹ã‚‰è–¬', 'ì•½ì‚¬ì˜ ì•½ë¬¼ ì¹˜ë£Œ'),
(160, 'edit_prescription', 'edit prescription', 'à¦ªà§à¦°à§‡à¦¸à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar prescripciÃ³n', 'ØªØ­Ø±ÙŠØ± ÙˆØµÙØ© Ø·Ø¨ÙŠØ©', 'bewerk recept', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ñ€ÐµÑ†ÐµÐ¿Ñ‚Ñƒ', 'ç¼–è¾‘å¤„æ–¹', 'reÃ§ete dÃ¼zenlemek', 'editar prescriÃ§Ã£o', 'szerkesztÃ©s recept', 'modifier prescription', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ ÏƒÏ…Î½Ï„Î±Î³Î®', 'bearbeiten Rezept', 'modificare prescrizione', 'à¹à¸à¹‰à¹„à¸‚à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¸¢à¸²', 'Ù†Ø³Ø®Û’ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤ªà¤°à¥à¤šà¥‡ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere praescriptione', 'mengedit resep', 'å‡¦æ–¹ç®‹ã‚’ç·¨é›†', 'ì²˜ë°©ì „ì„ íŽ¸ì§‘í•©ë‹ˆë‹¤'),
(161, 'diagnosis_report', 'diagnosis report', 'à¦°à§‹à¦— à¦¨à¦¿à¦°à§à¦£à¦¯à¦¼à§‡à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ', 'informe de diagnÃ³stico', 'ØªÙ‚Ø±ÙŠØ± Ø§Ù„ØªØ´Ø®ÙŠØµ', 'diagnose rapport', 'Ð”Ð¸Ð°Ð³Ð½Ð¾Ð· Ð¾Ñ‚Ñ‡ÐµÑ‚', 'è¯Šæ–­æŠ¥å‘Š', 'tanÄ± raporu', 'relatÃ³rio de diagnÃ³stico', 'diagnÃ³zis jelentÃ©s', 'rapport de diagnostic', 'ÎˆÎºÎ¸ÎµÏƒÎ· Î´Î¹Î¬Î³Î½Ï‰ÏƒÎ·', 'Diagnose Bericht', 'rapporto di diagnosi', 'à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸§à¸´à¸™à¸´à¸ˆà¸‰à¸±à¸¢', 'ØªØ´Ø®ÛŒØµ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹', 'à¤¨à¤¿à¤¦à¤¾à¤¨ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'fama diagnosis', 'Laporan diagnosis', 'è¨ºæ–­ãƒ¬ãƒãƒ¼ãƒˆ', 'ì§„ë‹¨ ë³´ê³ ì„œ'),
(162, 'report_type', 'report type', 'à¦Ÿà¦¾à¦‡à¦ª à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨', 'informar de tipo', 'Ù†ÙˆØ¹ Ø§Ù„ØªÙ‚Ø±ÙŠØ±', 'Type melden', 'Ð¢Ð¸Ð¿ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð°', 'æŠ¥å‘Šç±»åž‹', 'tÃ¼rlÃ¼ rapor', 'denunciar o tipo', 'JelentÃ©s tÃ­pusa', 'Type de rapport', 'Î‘Î½Î±Ï†Î¿ÏÎ¬ Î•Î¹Î´ÏŽÎ½', 'berichten Art', 'Tipo di rapporto', 'à¹à¸ˆà¹‰à¸‡à¸›à¸£à¸°à¹€à¸ à¸—', 'Ù‚Ø³Ù… Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹', 'à¤ªà¥à¤°à¤•à¤¾à¤° à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'type referrent', 'melaporkan jenis', 'ãƒ¬ãƒãƒ¼ãƒˆã®ç¨®é¡ž', 'ìœ í˜•ì„ë³´ê³ '),
(163, 'document_type', 'document type', 'à¦¨à¦¥à¦¿à¦° à¦§à¦°à¦£', 'tipo de documento', 'Ù†ÙˆØ¹ Ø§Ù„ÙˆØ«ÙŠÙ‚Ø©', 'documenttype', 'Ñ‚Ð¸Ð¿ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°', 'æ–‡ä»¶ç±»åž‹', 'belge tÃ¼rÃ¼', 'tipo de documento', 'dokumentum tÃ­pusa', 'type de document', 'Î¤ÏÏ€Î¿Ï‚ ÎµÎ³Î³ÏÎ¬Ï†Î¿Ï…', 'Belegart', 'tipo di documento', 'à¸›à¸£à¸°à¹€à¸ à¸—à¸‚à¸­à¸‡à¹€à¸­à¸à¸ªà¸²à¸£', 'Ø¯Ø³ØªØ§ÙˆÛŒØ² Ú©ÛŒ Ù‚Ø³Ù…', 'à¤¦à¤¸à¥à¤¤à¤¾à¤µà¥‡à¤œà¤¼ à¤ªà¥à¤°à¤•à¤¾à¤°', 'genus scripti', 'Jenis dokumen', 'ãƒ‰ã‚­ãƒ¥ãƒ¡ãƒ³ãƒˆã‚¿ã‚¤ãƒ—', 'ë¬¸ì„œ ìœ í˜•'),
(164, 'download', 'download', 'à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡', 'descargar', 'ØªØ­Ù…ÙŠÙ„', 'downloaden', 'ÑÐºÐ°Ñ‡Ð°Ñ‚ÑŒ', 'ä¸‹è½½', 'indir', 'baixar', 'letÃ¶ltÃ©s', 'tÃ©lÃ©charger', 'ÎºÎ±Ï„ÎµÎ²Î¬ÏƒÏ„Îµ', 'downloaden', 'caricare', 'à¸”à¸²à¸§à¸™à¹Œà¹‚à¸«à¸¥à¸”', 'ÚˆØ§Ø¤Ù† Ù„ÙˆÚˆØŒ Ø§ØªØ§Ø±Ù†Ø§', 'à¤¡à¤¾à¤‰à¤¨à¤²à¥‹à¤¡', 'download', 'mendownload', 'ãƒ€ã‚¦ãƒ³ãƒ­ãƒ¼ãƒ‰', 'ë‹¤ìš´ë¡œë“œ'),
(165, 'manage_bed_allotment', 'manage bed allotment', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦…à§à¦¯à¦¾à¦²à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar adjudicaciÃ³n cama', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø®ØµØµØ§Øª Ø§Ù„Ø³Ø±ÙŠØ±', 'beheren bed toewijzing', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒÑŽ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ', 'ç®¡ç†åºŠé…å‘', 'yatak tahsis yÃ¶netmek', 'gerenciar cama loteamento', 'kezelni Ã¡gy elosztÃ¡s', 'gÃ©rer l''attribution de lit', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎºÎ±Ï„Î±Î½Î¿Î¼Î®Ï‚ ÎºÏÎµÎ²Î¬Ï„Î¹', 'verwalten Bett Zuteilung', 'gestire letto riparto', 'à¸šà¸£à¸´à¸«à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤†à¤µà¤‚à¤Ÿà¤¨ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'partem stratum curo', 'mengelola tidur penjatahan', 'ãƒ™ãƒƒãƒ‰ã®å‰²å½“ã¦ã‚’ç®¡ç†ã™ã‚‹', 'ì¹¨ëŒ€ ë¶€ë‹´ê¸ˆ ê´€ë¦¬'),
(166, 'bed_allotment_list', 'bed allotment list', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦†à¦¬à¦£à§à¦Ÿà¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de adjudicaciÃ³n cama', 'Ù‚Ø§Ø¦Ù…Ø© ØªØ®ØµÙŠØµ Ø³Ø±ÙŠØ±', 'bed toewijzing lijst', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ', 'åºŠä¸Šé…å‘æ¸…å•', 'yatak tahsis liste', 'lista loteamento cama', 'Ã¡gy elosztÃ¡s lista', 'liste d''attribution de lit', 'ÎºÏÎµÎ²Î¬Ï„Î¹ Î»Î¯ÏƒÏ„Î± ÎºÎ±Ï„Î±Î½Î¿Î¼Î®Ï‚', 'Bett Zuteilung Liste', 'Lista riparto letto', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤†à¤µà¤‚à¤Ÿà¤¨ à¤¸à¥‚à¤šà¥€', 'partem stratum album', 'daftar tempat tidur penjatahan', 'ãƒ™ãƒƒãƒ‰å‰²å½“ä¸€è¦§', 'ì¹¨ëŒ€ í• ë‹¹ ëª©ë¡'),
(167, 'add_bed_allotment', 'add bed allotment', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦…à§à¦¯à¦¾à¦²à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir adjudicaciÃ³n cama', 'Ø¥Ø¶Ø§ÙØ© ØªØ®ØµÙŠØµ Ø³Ø±ÙŠØ±', 'add bed toewijzing', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ', 'åŠ åºŠä¸Šé…å‘', 'yatak tahsis ekleyin', 'adicionar cama loteamento', 'hozzÃ¡ Ã¡gy elosztÃ¡s', 'ajouter attribution de lit', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· ÎºÎ±Ï„Î±Î½Î¿Î¼Î®Ï‚ ÎºÏÎµÎ²Î¬Ï„Î¹', 'hinzufÃ¼gen Bett Zuteilung', 'aggiungere letto riparto', 'à¹€à¸žà¸´à¹ˆà¸¡à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹ Ø´Ø§Ù…Ù„', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤†à¤µà¤‚à¤Ÿà¤¨ à¤œà¥‹à¤¡à¤¼', 'adde lectum sorti', 'tambahkan tidur penjatahan', 'ãƒ™ãƒƒãƒ‰å‰²å½“ã¦ã‚’è¿½åŠ ', 'ì¹¨ëŒ€ í• ë‹¹ì„ ì¶”ê°€'),
(168, 'allotment_date_time', 'allotment date time', 'à¦…à§à¦¯à¦¾à¦²à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¤à¦¾à¦°à¦¿à¦– à¦¸à¦®à¦¯à¦¼', 'Fecha y hora de adjudicaciÃ³n', 'ØªØ®ØµÙŠØµ ÙˆÙ‚Øª Ø§Ù„ØªØ³Ø¬ÙŠÙ„', 'toewijzing datum tijd', 'Ð’Ñ€ÐµÐ¼Ñ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ñ Ð´Ð°Ñ‚Ðµ', 'é…å‘æ—¥æœŸæ—¶é—´', 'tahsis tarih saat', 'atribuiÃ§Ã£o de data e hora', 'elosztÃ¡s dÃ¡tum idÅ‘pont', 'lotissement date heure', 'ÎºÎ±Ï„Î±Î½Î¿Î¼Î® Ï„Î¿Ï… Ï‡ÏÏŒÎ½Î¿Ï… Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±', 'Zuteilung Datum Zeit', 'riparto data ora', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸§à¸¥à¸²à¸ˆà¸±à¸”à¸ªà¸£à¸£', 'Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹ ØªØ§Ø±ÛŒØ® ÙˆÙ‚Øª', 'à¤†à¤µà¤‚à¤Ÿà¤¨ à¤•à¥€ à¤¤à¤¾à¤°à¥€à¤– à¤¸à¤®à¤¯', 'sortitio date tempore', 'penjatahan waktu tanggal', 'å‰²å½“æ—¥ã®æ™‚é–“', 'ë¶€ë‹´ê¸ˆ ë‚ ì§œ ì‹œê°„'),
(169, 'discharge_date_time', 'discharge date time', 'à¦¸à§à¦°à¦¾à¦¬ à¦¤à¦¾à¦°à¦¿à¦– à¦¸à¦®à¦¯à¦¼', 'Fecha y hora de descarga', 'ØªØµØ±ÙŠÙ Ø§Ù„ÙˆÙ‚Øª Ø§Ù„ØªØ³Ø¬ÙŠÙ„', 'ontslagdatum tijd', 'Ð²Ñ€ÐµÐ¼Ñ Ñ€Ð°Ð·Ñ€ÑÐ´Ð° Ð´Ð°Ñ‚Ðµ', 'å‡ºé™¢æ—¥æœŸæ—¶é—´', 'deÅŸarj tarih saat', 'descarga de data e hora', 'kisÃ¼lÃ©si dÃ¡tum idÅ‘pont', 'temps de dÃ©charge de la date', 'Î‘Ï€Î±Î»Î»Î±Î³Î® Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±Ï‚ ÎºÎ±Î¹ ÏŽÏÎ±Ï‚', 'Entlastung Datum Zeit', 'tempo di scarico data', 'à¹€à¸§à¸¥à¸²à¸§à¸±à¸™à¸—à¸µà¹ˆà¸›à¸¥à¸”à¸›à¸£à¸°à¸ˆà¸³à¸à¸²à¸£', 'Ø®Ø§Ø±Ø¬ ÛÙˆÙ†Û’ ÙˆØ§Ù„Û’ Ù…Ø§Ø¯Û ØªØ§Ø±ÛŒØ® ÙˆÙ‚Øª', 'à¤®à¥à¤•à¥à¤¤à¤¿ à¤¦à¤¿à¤¨à¤¾à¤‚à¤• à¤¸à¤®à¤¯', 'date tempore missionem', 'discharge waktu tanggal', 'æ”¾é›»æ—¥æ™‚', 'ë°©ì „ ëœ ë‚ ì§œì™€ ì‹œê°„'),
(170, 'operation', 'operation', 'à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨', 'operaciÃ³n', 'Ø¹Ù…Ù„ÙŠØ©', 'operatie', 'Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ñ', 'æ‰‹æœ¯', 'operasyon', 'operaÃ§Ã£o', 'mÅ±kÃ¶dÃ©s', 'opÃ©ration', 'Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±', 'Betrieb', 'operazione', 'à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™', 'Ø¢Ù¾Ø±ÛŒØ´Ù†', 'à¤†à¤ªà¤°à¥‡à¤¶à¤¨', 'Operatio', 'operasi', 'æ“ä½œ', 'ìš´ì „'),
(171, 'birth', 'birth', 'à¦†à¦®à¦¾à¦°', 'nacimiento', 'Ø§Ù„ÙˆÙ„Ø§Ø¯Ø©', 'geboorte', 'Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ðµ', 'åˆ†å¨©', 'doÄŸum', 'nascimento', 'szÃ¼lÃ©s', 'naissance', 'Î³Î­Î½Î½Î·ÏƒÎ·', 'Geburt', 'nascita', 'à¸à¸³à¹€à¸™à¸´à¸”', 'Ù¾ÛŒØ¯Ø§Ø¦Ø´', 'à¤œà¤¨à¥à¤®', 'Nativitas', 'kelahiran', 'å‡ºç”£', 'ì¶œìƒ'),
(172, 'death', 'death', 'à¦®à§ƒà¦¤à§à§à¦¯', 'muerte', 'Ø§Ù„Ù…ÙˆØª', 'dood', 'ÑÐ¼ÐµÑ€Ñ‚ÑŒ', 'æ­»äº¡', 'Ã¶lÃ¼m', 'morte', 'halÃ¡l', 'dÃ©cÃ¨s', 'Î¸Î¬Î½Î±Ï„Î¿Ï‚', 'Sterben', 'scomparsa', 'à¸„à¸§à¸²à¸¡à¸•à¸²à¸¢', 'Ù…ÙˆØª', 'à¤®à¥Œà¤¤', 'mortem', 'kematian', 'æ­»', 'ì£½ìŒ'),
(173, 'other', 'other', 'à¦…à¦¨à§à¦¯', 'otro', 'Ø¢Ø®Ø±', 'ander', 'Ð´Ñ€ÑƒÐ³Ð¾Ð¹', 'å…¶ä»–', 'diÄŸer', 'outro', 'mÃ¡s', 'autre', 'Î¬Î»Î»Î¿Ï‚', 'andere', 'altro', 'à¸­à¸·à¹ˆà¸™ à¹†', 'Ø¯ÛŒÚ¯Ø±', 'à¤…à¤¨à¥à¤¯', 'aliud', 'lain', 'ãã®ä»–', 'ë‹¤ë¥¸'),
(174, 'add_report', 'add report', 'à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨à§‡ à¦¯à§‹à¦—', 'agregar informe', 'Ø¥Ø¶Ø§ÙØ© ØªÙ‚Ø±ÙŠØ±', 'verslag toe te voegen', 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚', 'åŠ æŠ¥å‘Š', 'rapor ekleyin', 'adicionar relatÃ³rio', 'hozzÃ¡ jelentÃ©s', 'Ajouter un rapport', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î·Î½ Î­ÎºÎ¸ÎµÏƒÎ·', 'Bericht hinzufÃ¼gen', 'aggiungere rapporto', 'à¹€à¸žà¸´à¹ˆà¸¡à¸£à¸²à¸¢à¸‡à¸²à¸™', 'Ø±Ù¾ÙˆØ±Ù¹ Ù…ÛŒÚº Ø´Ø§Ù…Ù„', 'à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤œà¥‹à¤¡à¤¼', 'adde auditui', 'menambahkan laporan', 'ãƒ¬ãƒãƒ¼ãƒˆã‚’è¿½åŠ ', 'ë³´ê³ ì„œë¥¼ ì¶”ê°€'),
(175, 'patient_dashboard', 'patient dashboard', 'à¦°à§‹à¦—à§€à¦° à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'tablero paciente', 'Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³ Ø§Ù„Ù…Ø±ÙŠØ¶', 'patiÃ«nt dashboard', 'ÐŸÐ°Ñ†Ð¸ÐµÐ½Ñ‚ Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸', 'ç—…äººçš„ä»ªè¡¨æ¿', 'Hasta tablosu', 'dashboard paciente', 'beteg mÅ±szerfal', 'tableau de bord patients', 'Î±ÏƒÎ¸ÎµÎ½Î¿ÏÏ‚ Ï„Î±Î¼Ï€Î»ÏŒ', 'Patienten Armaturenbrett', 'cruscotto paziente', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢', 'Ù…Ø±ÛŒØ¶ ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤°à¥‹à¤—à¥€ à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'Patientes Dashboard', 'dashboard pasien', 'æ‚£è€…ãƒ€ãƒƒã‚·ãƒ¥', 'í™˜ìžì˜ ëŒ€ì‹œ ë³´ë“œ'),
(176, 'view_prescription', 'view prescription', 'à¦ªà§à¦°à§‡à¦¸à¦•à§à¦°à¦¿à¦ªà¦¶à¦¨ à¦¦à§‡à¦–à¦¤à§‡', 'ver receta', 'Ø¹Ø±Ø¶ ÙˆØµÙØ© Ø·Ø¨ÙŠØ©', 'bekijk recept', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ñ€ÐµÑ†ÐµÐ¿Ñ‚Ð°', 'æŸ¥çœ‹å¤„æ–¹', 'tanÄ±mÄ±nÄ± gÃ¶rÃ¼ntÃ¼lemek', 'ver prescriÃ§Ã£o', 'megtekintÃ©sÃ©hez recept', 'voir prescription', 'Î´ÎµÎ¯Ï„Îµ ÏƒÏ…Î½Ï„Î±Î³Î®', 'Rezept ansehen', 'visualizzare prescrizione', 'à¸”à¸¹à¸•à¸²à¸¡à¹ƒà¸šà¸ªà¸±à¹ˆà¸‡à¹à¸žà¸—à¸¢à¹Œ', 'Ù†Ø³Ø®Û’ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤ªà¤°à¥à¤šà¥‡ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit praescriptione', 'lihat resep', 'å‡¦æ–¹ç®‹ã‚’è¦‹ã‚‹', 'ì²˜ë°©ë³´ê¸°'),
(177, 'view_doctor', 'view doctor', 'à¦¡à¦¾à¦•à§à¦¤à¦¾à¦° à¦¦à§‡à¦–à¦¤à§‡', 'ver mÃ©dico', 'Ø¹Ø±Ø¶ Ø§Ù„Ø·Ø¨ÙŠØ¨', 'bekijk arts', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð²Ñ€Ð°Ñ‡Ð°', 'æŸ¥çœ‹åŒ»ç”Ÿ', 'doktor gÃ¶rmek', 'vista mÃ©dico', 'megtekintÃ©sÃ©hez orvos', 'voir un mÃ©decin', 'Î´ÎµÎ¯Ï„Îµ Ï„Î¿ Î³Î¹Î±Ï„ÏÏŒ', 'Arzt sehen', 'vista medico', 'à¸”à¸¹à¸«à¸¡à¸­', 'ÚˆØ§Ú©Ù¹Ø± Ú©Ùˆ Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤šà¤¿à¤•à¤¿à¤¤à¥à¤¸à¤• à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit medicum', 'lihat dokter', 'ãƒ“ãƒ¥ãƒ¼åŒ»è€…', 'ì˜ì‚¬ë³´ê¸°'),
(178, 'admit_history', 'admit history', 'à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¸à¦¤à§à¦¯ à¦¬à¦²à¦¿à¦¯à¦¼à¦¾ à¦¸à§à¦¬à§€à¦•à¦¾à¦° à¦•à¦°à¦¾', 'admitir la historia', 'Ø£Ø¹ØªØ±Ù Ø§Ù„ØªØ§Ø±ÙŠØ®', 'toegeven geschiedenis', 'Ð¿Ñ€Ð¸Ð·Ð½Ð°Ñ‚ÑŒ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑŽ', 'æ‰¿è®¤åŽ†å²', 'tarihi itiraf', 'admitir histÃ³ria', 'elismerem tÃ¶rtÃ©nelem', 'admettre histoire', 'Ï€Î±ÏÎ±Î´Î­Ï‡Î¿Î½Ï„Î±Î¹ Î¹ÏƒÏ„Î¿ÏÎ¯Î±', 'zugeben Geschichte', 'ammettere storia', 'à¸¢à¸­à¸¡à¸£à¸±à¸šà¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸¨à¸²à¸ªà¸•à¸£à¹Œ', 'ØªØ§Ø±ÛŒØ® Ú©Ø§ Ø§Ø¹ØªØ±Ø§Ù', 'à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸ à¤®à¤¾à¤¨à¤¤à¤¾', 'fatentur historiam', 'mengakui sejarah', 'æ­´å²ã‚’èªã‚ã‚‹', 'ì—­ì‚¬ë¥¼ ì¸ì •'),
(179, 'operation_history', 'operation history', 'à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸', 'historial de operaciones', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¹Ù…Ù„ÙŠØ©', 'bedieningsgeschiedenis', 'Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ð¸ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¹', 'æ‰‹æœ¯å²', 'operasyon Ã¶ykÃ¼sÃ¼', 'histÃ³rico de operaÃ§Ã£o', 'mÅ±kÃ¶dÃ©s tÃ¶rtÃ©nelem', 'historique de fonctionnement', 'Î™ÏƒÏ„Î¿ÏÎ¹ÎºÏŒ Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±Ï‚', 'Betrieb Geschichte', 'storia operazione', 'à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸¨à¸²à¸ªà¸•à¸£à¹Œà¸à¸²à¸£à¸”à¸³à¹€à¸™à¸´à¸™à¸‡à¸²à¸™', 'Ø¢Ù¾Ø±ÛŒØ´Ù† Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'à¤†à¤ªà¤°à¥‡à¤¶à¤¨ à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸', 'operatio history', 'sejarah operasi', 'é‹è»¢å±¥æ­´', 'ìž‘ì—… ë‚´ì—­'),
(180, 'view_invoice', 'view invoice', 'à¦šà¦¾à¦²à¦¾à¦¨ à¦¦à§‡à¦–à¦¤à§‡', 'ver la factura', 'Ø¹Ø±Ø¶ Ø§Ù„ÙØ§ØªÙˆØ±Ø©', 'bekijk factuur', 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ ÑÑ‡ÐµÑ‚', 'æŸ¥çœ‹å‘ç¥¨', 'fatura gÃ¶rmek', 'ver fatura', 'megtekintÃ©sÃ©hez szÃ¡mla', 'voir facture', 'Î´ÎµÎ¯Ï„Îµ Ï„Î¿ Ï„Î¹Î¼Î¿Î»ÏŒÎ³Î¹ÏŒ', 'anzuzeigen Rechnung', 'visualizzare fattura', 'à¸”à¸¹à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©Û’ Ù„Ø¦ÛŒÛ’', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit cautionem', 'lihat faktur', 'è«‹æ±‚æ›¸ã‚’è¡¨ç¤º', 'ì†¡ìž¥ë³´ê¸°'),
(181, 'payment_history', 'payment history', 'à¦…à¦°à§à¦¥ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸', 'historial de pago', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¯ÙØ¹', 'betaling geschiedenis', 'Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ÐµÐ¹', 'ä»˜æ¬¾åŽ†å²', 'Ã¶deme tarihi', 'histÃ³rico de pagamento', 'FizetÃ©si elÅ‘zmÃ©nyek', 'l''historique des paiements', 'Î¹ÏƒÏ„Î¿ÏÎ¹ÎºÏŒ Ï€Î»Î·ÏÏ‰Î¼ÏŽÎ½', 'Zahlungsverhalten', 'storia di pagamento', 'à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸', 'solucionis history', 'riwayat pembayaran', 'æ”¯æ‰•æ­´', 'ê²°ì œ ë‚´ì—­'),
(182, 'view_admit_history', 'view admit history', 'à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦®à¦¾à¦¨à¦¾ à¦¦à§‡à¦–à¦¤à§‡', 'ver admitir historia', 'Ø¹Ø±Ø¶ Ø£Ø¹ØªØ±Ù Ø§Ù„ØªØ§Ø±ÙŠØ®', 'bekijk toegeven geschiedenis', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¿Ñ€Ð¸Ð·Ð½Ð°Ñ‚ÑŒ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑŽ', 'æŸ¥çœ‹æ‰¿è®¤åŽ†å²', 'tarih kabul gÃ¶rmek', 'ver admitir histÃ³ria', 'megtekintÃ©sÃ©hez elismerem tÃ¶rtÃ©nelem', 'voir admettre histoire', 'Î´ÎµÎ¯Ï„Îµ Ï€Î±ÏÎ±Î´Î­Ï‡Î¿Î½Ï„Î±Î¹ Î¹ÏƒÏ„Î¿ÏÎ¯Î±', 'sehen zugeben Geschichte', 'visualizzare ammettere storia', 'à¸”à¸¹à¸¢à¸­à¸¡à¸£à¸±à¸šà¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸¨à¸²à¸ªà¸•à¸£à¹Œ', 'ØªØ§Ø±ÛŒØ® ØªØ³Ù„ÛŒÙ… Ø¯ÛŒÚ©Ú¾Ù†Û’ Ú©Û’', 'à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸ à¤®à¤¾à¤¨à¤¤à¤¾ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit historiae fatentur', 'lihat mengakui sejarah', 'èªã‚ã‚‹å±¥æ­´ã‚’è¡¨ç¤º', 'ì—­ì‚¬ë¥¼ ì¸ì •ë³´ê¸°'),
(183, 'view_operation_history', 'view operation history', 'à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¦à§‡à¦–à¦¤à§‡', 'ver el historial de operaciÃ³n', 'Ø¹Ø±Ø¶ ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¹Ù…Ù„ÙŠØ©', 'bekijk bedieningsgeschiedenis', 'Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ð¸ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¹', 'æŸ¥çœ‹æ“ä½œåŽ†å²è®°å½•', 'iÅŸlem geÃ§miÅŸini gÃ¶rÃ¼ntÃ¼leyebilirsiniz', 'visualizar o histÃ³rico de operaÃ§Ã£o', 'megtekinteni mÅ±kÃ¶dÃ©s tÃ¶rtÃ©nelem', 'voir l''historique des opÃ©rations', 'Î´ÎµÎ¯Ï„Îµ Ï„Î¿ Î¹ÏƒÏ„Î¿ÏÎ¹ÎºÏŒ Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±Ï‚', 'Betrieb anzuzeigen Geschichte', 'visualizzare la cronologia delle operazioni', 'à¸”à¸¹à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™', 'Ø¢Ù¾Ø±ÛŒØ´Ù† Ú©ÛŒ ØªØ§Ø±ÛŒØ® Ø¯ÛŒÚ©Ú¾ÛŒÚº', 'à¤‘à¤ªà¤°à¥‡à¤¶à¤¨ à¤•à¥‡ à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸ à¤•à¥‹ à¤¦à¥‡à¤–à¤¨à¥‡', 'considerabit operationis historiam,', 'melihat riwayat operasi', 'æ“ä½œå±¥æ­´ã‚’è¡¨ç¤ºã™ã‚‹', 'ìž‘ì—… ê¸°ë¡ì„ ë³´ë ¤ë©´'),
(184, 'invoice_list', 'invoice list', 'à¦šà¦¾à¦²à¦¾à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de facturas', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙØ§ØªÙˆØ±Ø©', 'factuurlijst', 'ÑÑ‡ÐµÑ‚-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð° ÑÐ¿Ð¸ÑÐ¾Ðº', 'å‘ç¥¨æ¸…å•', 'fatura listesi', 'lista fatura', 'szÃ¡mla lista', 'liste des factures', 'Ï„Î¹Î¼Î¿Î»Î¿Î³Î¯Î¿Ï… Î»Î¯ÏƒÏ„Î±', 'Rechnung Liste', 'Lista fattura', 'à¸£à¸²à¸¢à¸à¸²à¸£à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤¸à¥‚à¤šà¥€', 'cautionem album', 'daftar faktur', 'é€ã‚ŠçŠ¶ãƒªã‚¹ãƒˆ', 'ì†¡ìž¥ ëª©ë¡'),
(185, 'creation_timestamp', 'creation timestamp', 'à¦¸à§ƒà¦·à§à¦Ÿà¦¿ à¦Ÿà¦¾à¦‡à¦®à¦¸à§à¦Ÿà§à¦¯à¦¾à¦®à§à¦ª', 'fecha y hora de creaciÃ³n', 'Ø§Ù„Ø·Ø§Ø¨Ø¹ Ø§Ù„Ø²Ù…Ù†ÙŠ Ø®Ù„Ù‚', 'creatie timestamp', 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð¼ÐµÑ‚ÐºÐ¸', 'åˆ›å»ºæ—¶é—´æˆ³', 'oluÅŸturma zaman damgasÄ±', 'timestamp criaÃ§Ã£o', 'lÃ©trehozÃ¡sa timestamp', 'horodatage de crÃ©ation', 'timestamp Î´Î·Î¼Î¹Î¿Ï…ÏÎ³Î¯Î±', 'Schaffung Zeitstempel', 'creazione timestamp', 'à¹€à¸§à¸¥à¸²à¸ªà¸£à¹‰à¸²à¸‡', 'ØªØ®Ù„ÛŒÙ‚ Ù¹Ø§Ø¦Ù…Ø³Ù¹ÛŒÙ…Ù¾', 'à¤¨à¤¿à¤°à¥à¤®à¤¾à¤£ à¤Ÿà¤¾à¤‡à¤®à¤¸à¥à¤Ÿà¥ˆà¤®à¥à¤ª', 'timestamp creatio', 'penciptaan timestamp', 'ä½œæˆã‚¿ã‚¤ãƒ ã‚¹ã‚¿ãƒ³ãƒ—', 'ìƒì„± íƒ€ìž„ ìŠ¤íƒ¬í”„'),
(186, 'nurse_dashboard', 'nurse dashboard', 'à¦¨à¦¾à¦°à§à¦¸ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'dashboard enfermera', 'Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³ Ù…Ù…Ø±Ø¶Ø©', 'verpleegkundige dashboard', 'ÐœÐµÐ´ÑÐµÑÑ‚Ñ€Ð° Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸', 'æŠ¤å£«çš„ä»ªè¡¨æ¿', 'hemÅŸire paneli', 'dashboard enfermeira', 'Ã¡polÃ³ mÅ±szerfal', 'infirmiÃ¨re tableau de bord', 'Ï„Î±Î¼Ï€Î»ÏŒ Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'Krankenschwester Armaturenbrett', 'cruscotto infermiera', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³ ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤¨à¤°à¥à¤¸ à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'nutrix Dashboard', 'dashboard perawat', 'çœ‹è­·å¸«ã®ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰', 'ê°„í˜¸ì‚¬ ëŒ€ì‹œ ë³´ë“œ'),
(187, 'bed_ward', 'bed ward', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡', 'sala de cama', 'Ø¬Ù†Ø§Ø­ Ø§Ù„Ø³Ø±ÙŠØ±', 'bed ward', 'ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð°Ð»Ð°Ñ‚Ðµ', 'åºŠç—…æˆ¿', 'yatak koÄŸuÅŸ', 'cama de enfermaria', 'Ã¡gy osztÃ¡lyon', 'salle de lit', 'Ward ÎºÏÎµÎ²Î¬Ï„Î¹', 'Bettenhaus', 'Ward letto', 'à¸«à¸­à¸œà¸¹à¹‰à¸›à¹ˆà¸§à¸¢à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± ÙˆØ§Ø±Úˆ', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤µà¤¾à¤°à¥à¤¡', 'stratum pupillo', 'tidur bangsal', 'ãƒ™ãƒƒãƒ‰ç—…æ£Ÿ', 'ì¹¨ëŒ€ êµ¬'),
(188, 'manage_bed', 'manage bed', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestiÃ³n de la cama', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø³Ø±ÙŠØ±', 'beheren bed', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒÑŽ', 'ç®¡ç†åºŠ', 'yatak yÃ¶netmek', 'gerenciar cama', 'kezelni Ã¡gy', 'gÃ©rer lit', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎºÏÎµÎ²Î¬Ï„Î¹', 'verwalten Bett', 'gestire letto', 'à¸šà¸£à¸´à¸«à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'stratum curo', 'mengelola tidur', 'ãƒ™ãƒƒãƒ‰ã‚’ç®¡ç†', 'ì¹¨ëŒ€ ê´€ë¦¬'),
(189, 'manage_blood_bank', 'manage blood bank', 'à¦¬à§à¦²à¦¾à¦¡ à¦¬à§à¦¯à¦¾à¦™à§à¦• à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestiÃ³n de bancos de sangre', 'Ø¥Ø¯Ø§Ø±Ø© Ø¨Ù†Ùƒ Ø§Ù„Ø¯Ù…', 'beheren bloedbank', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð±Ð°Ð½ÐºÐ¾Ð¼ ÐºÑ€Ð¾Ð²Ð¸', 'ç®¡ç†è¡€åº“', 'kan bankasÄ± yÃ¶netmek', 'gerenciar banco de sangue', 'kezelni vÃ©r bank', 'gÃ©rer la banque de sang', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„ÏÎ¬Ï€ÎµÎ¶Î± Î±Î¯Î¼Î±Ï„Î¿Ï‚', 'verwalten Blutbank', 'gestire banca del sangue', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸˜à¸™à¸²à¸„à¸²à¸£à¹€à¸¥à¸·à¸­à¸”', 'Ø¨Ù„Úˆ Ø¨ÛŒÙ†Ú© Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¬à¥à¤²à¤¡ à¤¬à¥ˆà¤‚à¤• à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'curo sanguine ripam Iordanis', 'mengelola bank darah', 'è¡€æ¶²éŠ€è¡Œã®ç®¡ç†', 'í˜ˆì•¡ ì€í–‰ ê´€ë¦¬');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(190, 'manage_blood_donor', 'manage blood donor', 'à¦°à¦•à§à¦¤ à¦¦à¦¾à¦¤à¦¾ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestiÃ³n de donantes de sangre', 'Ø¥Ø¯Ø§Ø±Ø© Ù„Ù„Ù…ØªØ¨Ø±Ø¹ÙŠÙ† Ø¨Ø§Ù„Ø¯Ù…', 'beheren bloeddonor', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð´Ð¾Ð½Ð¾Ñ€ÑÐºÐ¾Ð¹ ÐºÑ€Ð¾Ð²Ð¸', 'ç®¡ç†çŒ®è¡€', 'kan donÃ¶r yÃ¶netmek', 'gerenciar doador de sangue', 'kezelni vÃ©radÃ³', 'gÃ©rer les donneurs de sang', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î±Î¹Î¼Î¿Î´ÏŒÏ„Î·Ï‚', 'verwalten Blutspender', 'gestire donatore di sangue', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¹à¹‰à¸šà¸£à¸´à¸ˆà¸²à¸„à¹‚à¸¥à¸«à¸´à¸•', 'Ø¨Ù„Úˆ ÚˆÙˆÙ†Ø± Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤°à¤•à¥à¤¤ à¤¦à¤¾à¤¤à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'curo sanguine donator', 'mengelola donor darah', 'ä¾›è¡€è€…ã‚’ç®¡ç†ã™ã‚‹', 'í˜ˆì•¡ ê¸°ì¦ìž ê´€ë¦¬'),
(191, 'add_bed', 'add bed', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir cama', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø³Ø±ÙŠØ±', 'add bed', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'åŠ åºŠ', 'yatak', 'adicionar cama', 'hozzÃ¡ Ã¡gy', 'ajouter un lit', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· ÎºÏÎµÎ²Î±Ï„Î¹Î¿Ï', 'hinzufÃ¼gen Bett', 'aggiungere letto', 'à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ù…ÛŒÚº Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤œà¥‹à¤¡à¤¼', 'adde cubile', 'tambahkan tidur', 'ãƒ™ãƒƒãƒ‰ã‚’è¿½åŠ ', 'ì¹¨ëŒ€ë¥¼ ì¶”ê°€'),
(192, 'ward', 'ward', 'à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡', 'sala', 'Ø¬Ù†Ø§Ø­', 'afdeling', 'Ð¿Ð°Ð»Ð°Ñ‚Ð°', 'ç—…æˆ¿', 'koÄŸuÅŸ', 'enfermaria', 'kÃ³rterem', 'Ward', 'Ï€Ï„Î­ÏÏ…Î³Î±', 'Ward', 'Ward', 'à¸—à¹‰à¸­à¸‡à¸—à¸µà¹ˆ', 'ÙˆØ§Ø±Úˆ', 'à¤ªà¤°à¤µà¤°à¤¿à¤¶', 'pupillus', 'bangsal', 'ç—…æ£Ÿ', 'êµ¬'),
(193, 'cabin', 'cabin', 'à¦•à§‡à¦¬à¦¿à¦¨', 'cabina', 'Ù‚Ù…Ø±Ø©', 'cabine', 'ÐºÐ°Ð±Ð¸Ð½Ð°', 'æœºèˆ±', 'kabin', 'cabine', 'kabin', 'cabine', 'ÎºÎ±Î¼Ï€Î¯Î½Î±', 'Kabine', 'cabina', 'à¸à¸£à¸°à¸•à¹Šà¸­à¸š', 'Ú©ÛŒØ¨Ù†', 'à¤•à¥‡à¤¬à¤¿à¤¨', 'Cameram', 'kabin', 'ã‚­ãƒ£ãƒ“ãƒ³', 'ì„ ì‹¤'),
(194, 'icu', 'icu', 'ICU', 'icu', 'ÙˆØ­Ø¯Ø© Ø§Ù„Ø¹Ù†Ø§ÙŠØ© Ø§Ù„Ù…Ø±ÙƒØ²Ø©', 'icu', 'ICU', 'ICU', 'icu', 'UTI', 'ICU', 'ICU', 'ÎœÎ•Î˜', 'ICU', 'icu', 'à¹„à¸­à¸‹à¸µà¸¢à¸¹', 'Ø¢Ø§ÛŒØ³ÛŒÛŒÙˆ', 'à¤†à¤ˆà¤¸à¥€à¤¯à¥‚', 'ICU', 'icu', 'ICU', 'ICU'),
(195, 'edit_bed', 'edit bed', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar cama', 'ØªØ¹Ø¯ÙŠÙ„ Ø³Ø±ÙŠØ±', 'bewerk bed', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ç¼–è¾‘åºŠ', 'yatak dÃ¼zenleme', 'editar cama', 'szerkesztÃ©s Ã¡gy', 'modifier lit', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ ÎºÏÎµÎ²Î¬Ï„Î¹', 'bearbeiten Bett', 'modificare letto', 'à¹à¸à¹‰à¹„à¸‚à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'Duis lectus', 'mengedit tidur', 'ãƒ™ãƒƒãƒ‰ã‚’ç·¨é›†', 'ì¹¨ëŒ€ë¥¼ íŽ¸ì§‘'),
(196, 'edit_bed_allotment', 'edit bed allotment', 'à¦¬à¦¿à¦›à¦¾à¦¨à¦¾ à¦…à§à¦¯à¦¾à¦²à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar adjudicaciÃ³n cama', 'ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ù…Ø®ØµØµØ§Øª Ø§Ù„Ø³Ø±ÙŠØ±', 'bewerk bed toewijzing', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÐºÑ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð¸Ðµ', 'ç¼–è¾‘åºŠé…å‘', 'yatak tahsis dÃ¼zenleme', 'editar cama loteamento', 'szerkesztÃ©s Ã¡gy elosztÃ¡s', 'modifier l''attribution de lit', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ ÎºÎ±Ï„Î±Î½Î¿Î¼Î®Ï‚ ÎºÏÎµÎ²Î¬Ï„Î¹', 'bearbeiten Bett Zuteilung', 'modificare letto riparto', 'à¹à¸à¹‰à¹„à¸‚à¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¹€à¸•à¸µà¸¢à¸‡', 'Ø¨Ø³ØªØ± Ø§Ù„Ø§Ù¹Ù…Ù†Ù¹ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¬à¤¿à¤¸à¥à¤¤à¤° à¤†à¤µà¤‚à¤Ÿà¤¨ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'Duis lectus sorti', 'mengedit tidur penjatahan', 'ãƒ™ãƒƒãƒ‰å‰²å½“ã¦ã‚’ç·¨é›†', 'ì¹¨ëŒ€ í• ë‹¹ì„ íŽ¸ì§‘í•©ë‹ˆë‹¤'),
(197, 'blood_bank_list', 'blood bank list', 'à¦¬à§à¦²à¦¾à¦¡ à¦¬à§à¦¯à¦¾à¦™à§à¦• à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de bancos de sangre', 'Ù‚Ø§Ø¦Ù…Ø© Ø¨Ù†Ùƒ Ø§Ù„Ø¯Ù…', 'bloedbank lijst', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð±Ð°Ð½ÐºÐ¾Ð² ÐºÑ€Ð¾Ð²Ð¸', 'è¡€åº“åˆ—è¡¨', 'kan bankasÄ± listesi', 'Lista de banco de sangue', 'vÃ©r bank lista', 'liste de banques de sang', 'Î±Î¯Î¼Î± Î»Î¯ÏƒÏ„Î± Ï„ÏÎ¬Ï€ÎµÎ¶Î±Ï‚', 'Blutbank Liste', 'elenco banca del sangue', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸˜à¸™à¸²à¸„à¸²à¸£à¹€à¸¥à¸·à¸­à¸”', 'Ø¨Ù„Úˆ Ø¨ÛŒÙ†Ú© Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤¬à¥à¤²à¤¡ à¤¬à¥ˆà¤‚à¤• à¤•à¥€ à¤¸à¥‚à¤šà¥€', 'sanguinem ripam album', 'Daftar bank darah', 'è¡€æ¶²éŠ€è¡Œã®ãƒªã‚¹ãƒˆ', 'í˜ˆì•¡ ì€í–‰ ëª©ë¡'),
(198, 'edit_blood_bank', 'edit blood bank', 'à¦¬à§à¦²à¦¾à¦¡ à¦¬à§à¦¯à¦¾à¦™à§à¦• à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar banco de sangre', 'ØªØ¹Ø¯ÙŠÙ„ Ø¨Ù†Ùƒ Ø§Ù„Ø¯Ù…', 'bewerk bloedbank', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð±Ð°Ð½ÐºÐ° ÐºÑ€Ð¾Ð²Ð¸', 'ç¼–è¾‘è¡€åº“', 'kan bankasÄ± dÃ¼zenleme', 'editar banco de sangue', 'szerkesztÃ©s vÃ©r bank', 'modifier banque de sang', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„ÏÎ¬Ï€ÎµÎ¶Î± Î±Î¯Î¼Î±Ï„Î¿Ï‚', 'bearbeiten Blutbank', 'modificare banca del sangue', 'à¹à¸à¹‰à¹„à¸‚à¸˜à¸™à¸²à¸„à¸²à¸£à¹€à¸¥à¸·à¸­à¸”', 'Ø¨Ù„Úˆ Ø¨ÛŒÙ†Ú© Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¬à¥à¤²à¤¡ à¤¬à¥ˆà¤‚à¤• à¤•à¥‹ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'sanguinem ripam creare', 'mengedit bank darah', 'è¡€æ¶²ãƒãƒ³ã‚¯ã‚’ç·¨é›†', 'í˜ˆì•¡ ì€í–‰ì„ íŽ¸ì§‘í•©ë‹ˆë‹¤'),
(199, 'add_blood_donor', 'add blood donor', 'à¦°à¦•à§à¦¤ à¦¦à¦¾à¦¤à¦¾ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir donante de sangre', 'Ø¥Ø¶Ø§ÙØ© Ù„Ù„Ù…ØªØ¨Ø±Ø¹ÙŠÙ† Ø¨Ø§Ù„Ø¯Ù…', 'voegen bloeddonor', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ð¾Ð½Ð¾Ñ€ÑÐºÐ¾Ð¹ ÐºÑ€Ð¾Ð²Ð¸', 'å¢žåŠ çŒ®è¡€è€…', 'kan donÃ¶r ekleyin', 'adicionar doador de sangue', 'hozzÃ¡ vÃ©radÃ³', 'ajouter donneurs de sang', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Î±Î¹Î¼Î¿Î´ÏŒÏ„Î·Ï‚', 'hinzufÃ¼gen Blutspender', 'aggiungere donatore di sangue', 'à¹€à¸žà¸´à¹ˆà¸¡à¸œà¸¹à¹‰à¸šà¸£à¸´à¸ˆà¸²à¸„à¹‚à¸¥à¸«à¸´à¸•', 'Ø¨Ù„Úˆ ÚˆÙˆÙ†Ø± Ø´Ø§Ù…Ù„', 'à¤°à¤•à¥à¤¤ à¤¦à¤¾à¤¤à¤¾ à¤œà¥‹à¤¡à¤¼', 'Addunt sanguinem donator', 'tambahkan donor darah', 'çŒ®è¡€ã‚’è¿½åŠ ', 'í˜ˆì•¡ ê¸°ì¦ìž ì¶”ê°€'),
(200, 'edit_blood_donor', 'edit blood donor', 'à¦°à¦•à§à¦¤ à¦¦à¦¾à¦¤à¦¾ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar donante de sangre', 'ØªØ¹Ø¯ÙŠÙ„ Ù„Ù„Ù…ØªØ¨Ø±Ø¹ÙŠÙ† Ø¨Ø§Ù„Ø¯Ù…', 'bewerk bloeddonor', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð´Ð¾Ð½Ð¾Ñ€ÑÐºÐ¾Ð¹ ÐºÑ€Ð¾Ð²Ð¸', 'ç¼–è¾‘çŒ®è¡€', 'kan donÃ¶r dÃ¼zenleme', 'editar doador de sangue', 'szerkesztÃ©s vÃ©radÃ³', 'modifier les donneurs de sang', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Î±Î¹Î¼Î¿Î´ÏŒÏ„Î·Ï‚', 'bearbeiten Blutspender', 'modificare donatore di sangue', 'à¹à¸à¹‰à¹„à¸‚à¸œà¸¹à¹‰à¸šà¸£à¸´à¸ˆà¸²à¸„à¹‚à¸¥à¸«à¸´à¸•', 'Ø¨Ù„Úˆ ÚˆÙˆÙ†Ø± ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤°à¤•à¥à¤¤ à¤¦à¤¾à¤¤à¤¾ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere sanguinem donator', 'mengedit donor darah', 'çŒ®è¡€ã‚’ç·¨é›†', 'í˜ˆì•¡ ê¸°ì¦ìžë¥¼ íŽ¸ì§‘'),
(201, 'pharmacist_dashboard', 'pharmacist dashboard', 'à¦«à¦¾à¦°à§à¦®à¦¾à¦¸à¦¿à¦¸à§à¦Ÿ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'tablero farmacÃ©utico', 'Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³ Ø§Ù„ØµÙŠØ¯Ù„ÙŠ', 'apotheker dashboard', 'Ð¤Ð°Ñ€Ð¼Ð°Ñ†ÐµÐ²Ñ‚ Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸', 'è¯å‰‚å¸ˆä»ªè¡¨', 'eczacÄ± paneli', 'dashboard farmacÃªutico', 'gyÃ³gyszerÃ©sz mÅ±szerfal', 'tableau de bord du pharmacien', 'Ï„Î±Î¼Ï€Î»ÏŒ Ï„Î¿Ï… Ï†Î±ÏÎ¼Î±ÎºÎ¿Ï€Î¿Î¹Î¿Ï', 'Apotheker Armaturenbrett', 'cruscotto farmacista', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡à¹€à¸ à¸ªà¸±à¸Šà¸à¸£', 'ÙØ§Ø±Ù…Ø§Ø³Ø³Ù¹ ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤«à¤¾à¤°à¥à¤®à¤¾à¤¸à¤¿à¤¸à¥à¤Ÿ à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'pharmacist Dashboard', 'dashboard apoteker', 'è–¬å‰¤å¸«ã®ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰', 'ì•½ì‚¬ ëŒ€ì‹œ ë³´ë“œ'),
(202, 'medicine_category', 'medicine category', 'à¦”à¦·à¦§ à¦¬à¦¿à¦·à¦¯à¦¼à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡', 'CategorÃ­a Medicina', 'Ø§Ù„Ø·Ø¨ ÙØ¦Ø©', 'geneeskunde categorie', 'Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ð° ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸', 'åŒ»è¯ç±»', 'tÄ±p kategori', 'medicina categoria', 'gyÃ³gyszer kategÃ³ria', 'mÃ©decine catÃ©gorie', 'Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚ ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±', 'Medizin Kategorie', 'categoria medicina', 'à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸à¸²à¸£à¹à¸žà¸—à¸¢à¹Œ', 'Ø¯ÙˆØ§ Ù‚Ø³Ù…', 'à¤¦à¤µà¤¾ à¤µà¤°à¥à¤—', 'medicine praedicamentum', 'kategori obat', 'è–¬ã‚«ãƒ†ã‚´ãƒª', 'ì˜í•™ ì¹´í…Œê³ ë¦¬'),
(203, 'manage_medicine', 'manage medicine', 'à¦”à¦·à¦§ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'administrar medicamentos', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø·Ø¨', 'beheren geneeskunde', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ð¾Ð¹', 'åŒ»è¯ç®¡ç†', 'tÄ±p yÃ¶netmek', 'gerenciar medicina', 'kezelÃ©sÃ©re gyÃ³gyszert', 'gÃ©rer mÃ©decine', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚', 'verwalten Medizin', 'gestire medicina', 'à¸šà¸£à¸´à¸«à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸¢à¸²', 'Ø§Ø¯ÙˆÛŒØ§Øª Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¦à¤µà¤¾ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'medicine curo', 'mengelola obat', 'è–¬ã‚’ç®¡ç†', 'ì•½ì„ ê´€ë¦¬'),
(204, 'provide_medication', 'provide medication', 'à¦”à¦·à¦§ à¦ªà§à¦°à¦¦à¦¾à¦¨', 'proporcionar la medicaciÃ³n', 'ØªÙˆÙÙŠØ± Ø§Ù„Ø¯ÙˆØ§Ø¡', 'bieden medicatie', 'Ð¾Ð±ÐµÑÐ¿ÐµÑ‡Ð¸Ñ‚ÑŒ Ð»ÐµÐºÐ°Ñ€ÑÑ‚Ð²Ð°', 'æä¾›ç”¨è¯', 'ilaÃ§ saÄŸlamak', 'fornecer medicamentos', 'biztosÃ­t gyÃ³gyszert', 'fournir des mÃ©dicaments', 'Ï€Î±ÏÎ­Ï‡Î¿Ï…Î½ Ï†Î¬ÏÎ¼Î±ÎºÎ±', 'bieten Medikamente', 'fornire farmaci', 'à¹ƒà¸«à¹‰à¸à¸²à¸£à¸£à¸±à¸à¸©à¸²à¸”à¹‰à¸§à¸¢à¸¢à¸²', 'Ø§Ø¯ÙˆÛŒØ§Øª ÙØ±Ø§ÛÙ…', 'à¤¦à¤µà¤¾ à¤ªà¥à¤°à¤¦à¤¾à¤¨', 'medicamento parentur', 'menyediakan pengobatan', 'è–¬ã‚’æä¾›ã™ã‚‹', 'ì•½ë¬¼ì„ ì œê³µ'),
(205, 'manage_medicine_category', 'manage medicine category', 'à¦”à¦·à¦§ à¦¬à¦¿à¦·à¦¯à¦¼à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar CategorÃ­a Medicina', 'Ø¥Ø¯Ø§Ø±Ø© ÙØ¦Ø© Ø§Ù„Ø·Ø¨', 'beheren categorie geneeskunde', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ð¾Ð¹ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸', 'åŒ»è¯ç®¡ç†ç±»åˆ«', 'tÄ±p kategori yÃ¶netmek', 'gerenciar categoria medicina', 'kezelni gyÃ³gyszer kategÃ³ria', 'gÃ©rer catÃ©gorie de mÃ©dicaments', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î± Ï†Î±ÏÎ¼Î¬ÎºÏ‰Î½', 'verwalten Medizin Kategorie', 'gestire categoria medicina', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸à¸²à¸£à¹à¸žà¸—à¸¢à¹Œ', 'Ø¯ÙˆØ§ Ø²Ù…Ø±Û’ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤¦à¤µà¤¾ à¤µà¤°à¥à¤— à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'aget medicina praedicamentum', 'mengelola kategori obat', 'è–¬ã‚«ãƒ†ã‚´ãƒªã®ç®¡ç†', 'ì˜í•™ ì¹´í…Œê³ ë¦¬ ê´€ë¦¬'),
(206, 'medicine_category_list', 'medicine category list', 'à¦”à¦·à¦§ à¦¬à¦¿à¦·à¦¯à¦¼à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de categorÃ­as de la medicina', 'Ù‚Ø§Ø¦Ù…Ø© ÙØ¦Ø© Ø§Ù„Ø·Ø¨', 'geneeskunde lijst met categorieÃ«n', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ðµ', 'è¯å“åˆ†ç±»åˆ—è¡¨', 'tÄ±p kategori listesi', 'lista de categorias de medicina', 'gyÃ³gyszer kategÃ³rialista', 'liste des catÃ©gories mÃ©decine', 'Î¹Î±Ï„ÏÎ¹ÎºÎ® Î»Î¯ÏƒÏ„Î± ÎºÎ±Ï„Î·Î³Î¿ÏÎ¹ÏŽÎ½', 'Medizin Kategorie Liste', 'medicina lista delle categorie', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸›à¸£à¸°à¹€à¸ à¸—à¸¢à¸²', 'Ø·Ø¨ Ø²Ù…Ø±Û ÙÛØ±Ø³Øª', 'à¤¦à¤µà¤¾ à¤µà¤°à¥à¤— à¤•à¥€ à¤¸à¥‚à¤šà¥€', 'medicine genus album', 'Obat daftar kategori', 'è–¬ã‚«ãƒ†ã‚´ãƒªãƒªã‚¹ãƒˆ', 'ì˜í•™ ë²”ì£¼ ëª©ë¡'),
(207, 'add_medicine_category', 'add medicine category', 'à¦”à¦·à¦§ à¦¬à¦¿à¦­à¦¾à¦— à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir CategorÃ­a Medicina', 'Ø¥Ø¶Ø§ÙØ© ÙØ¦Ø© Ø§Ù„Ø·Ø¨', 'add categorie geneeskunde', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ñƒ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸', 'åŠ è¯ç±»åˆ«', 'tÄ±p kategori eklemek', 'Adicione uma categoria medicina', 'hozzÃ¡ gyÃ³gyszer kategÃ³ria', 'ajouter la catÃ©gorie de la mÃ©decine', 'Î ÏÎ¿ÏƒÎ¸Î®ÎºÎ· ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±Ï‚ Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚', 'Kategorie hinzufÃ¼gen Medizin', 'aggiungere categoria medicina', 'à¹€à¸žà¸´à¹ˆà¸¡à¸›à¸£à¸°à¹€à¸ à¸—à¸¢à¸²', 'Ø·Ø¨ Ø²Ù…Ø±Û Ø´Ø§Ù…Ù„', 'à¤¦à¤µà¤¾ à¤¶à¥à¤°à¥‡à¤£à¥€ à¤œà¥‹à¤¡à¤¼à¤¨à¥‡', 'adde medicina praedicamentum', 'menambahkan kategori obat', 'è–¬ã‚«ãƒ†ã‚´ãƒªã‚’è¿½åŠ ', 'ì˜í•™ ì¹´í…Œê³ ë¦¬ë¥¼ ì¶”ê°€'),
(208, 'medicine_category_name', 'medicine category name', 'à¦”à¦·à¦§ à¦¬à¦¿à¦·à¦¯à¦¼à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡ à¦¨à¦¾à¦®', 'medicina nombre de la categorÃ­a', 'Ø§Ù„Ø·Ø¨ Ø§Ø³Ù… Ø§Ù„ØªØµÙ†ÙŠÙ', 'geneeskunde categorie naam', 'Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸', 'åŒ»è¯ç±»åç§°', 'tÄ±p kategori adÄ±', 'medicina nome da categoria', 'orvostudomÃ¡ny kategÃ³ria nevÃ©t', 'mÃ©decine nom de la catÃ©gorie', 'Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚ ÏŒÎ½Î¿Î¼Î± ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±Ï‚', 'Medizin Kategorie Name', 'medicina di nome categoria', 'à¸Šà¸·à¹ˆà¸­à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸¢à¸²', 'Ø¯ÙˆØ§ Ù‚Ø³Ù… Ú©Ø§ Ù†Ø§Ù…', 'à¤¦à¤µà¤¾ à¤¶à¥à¤°à¥‡à¤£à¥€ à¤•à¤¾ à¤¨à¤¾à¤®', 'medicine nomine praedicamentum', 'Obat nama kategori', 'è–¬ã‚«ãƒ†ã‚´ãƒªå', 'ì˜í•™ ì¹´í…Œê³ ë¦¬ì˜ ì´ë¦„'),
(209, 'medicine_category_description', 'medicine category description', 'à¦”à¦·à¦§ à¦¬à¦¿à¦·à¦¯à¦¼à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡ à¦¬à¦°à§à¦£à¦¨à¦¾', 'medicina descripciÃ³n de la categorÃ­a', 'Ø§Ù„Ø·Ø¨ Ø§Ù„ØªØµÙ†ÙŠÙ Ø§Ù„ÙˆØµÙ', 'geneeskunde categorie omschrijving', 'Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ð° Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸', 'åŒ»è¯ç±»è¯´æ˜Ž', 'tÄ±p kategori aÃ§Ä±klamasÄ±', 'medicina descriÃ§Ã£o da categoria', 'gyÃ³gyszer kategÃ³ria leÃ­rÃ¡s', 'mÃ©decine description de catÃ©gorie', 'Î¹Î±Ï„ÏÎ¹ÎºÎ® Ï€ÎµÏÎ¹Î³ÏÎ±Ï†Î® Ï„Î·Ï‚ ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±Ï‚', 'Medizin Beschreibung der Kategorie', 'medicina descrizione categoria', 'à¸„à¸³à¸­à¸˜à¸´à¸šà¸²à¸¢à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸¢à¸²', 'Ø¯ÙˆØ§ Ù‚Ø³Ù… ÙˆØ¶Ø§Ø­Øª', 'à¤¦à¤µà¤¾ à¤µà¤°à¥à¤— à¤µà¤¿à¤µà¤°à¤£', 'medicine genus praedicamenti', 'kategori obat deskripsi', 'è–¬ã‚«ãƒ†ã‚´ãƒªã®èª¬æ˜Ž', 'ì˜í•™ ì¹´í…Œê³ ë¦¬ ì„¤ëª…'),
(210, 'medicine_list', 'medicine list', 'à¦”à¦·à¦§ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'lista de medicamentos', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø£Ø¯ÙˆÙŠØ©', 'geneeskunde lijst', 'ÑÐ¿Ð¸ÑÐ¾Ðº Ð»ÐµÐºÐ°Ñ€ÑÑ‚Ð²', 'è¯ç‰©ç›®å½•', 'ilaÃ§ listesi', 'lista de medicamentos', 'gyÃ³gyszer lista', 'mÃ©decine liste', 'Î›Î¯ÏƒÏ„Î± Ï†Î±ÏÎ¼Î¬ÎºÏ‰Î½', 'Medizin Liste', 'medicina elenco', 'à¸£à¸²à¸¢à¸à¸²à¸£à¸¢à¸²', 'Ø¯ÙˆØ§ Ú©ÛŒ ÙÛØ±Ø³Øª', 'à¤¦à¤µà¤¾ à¤¸à¥‚à¤šà¥€', 'medicine album', 'Daftar Obat', 'è–¬ãƒªã‚¹ãƒˆ', 'ì˜í•™ ëª©ë¡'),
(211, 'add_medicine', 'add medicine', 'à¦”à¦·à¦§ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir la medicina', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø¯ÙˆØ§Ø¡', 'voegen geneeskunde', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ðµ', 'åŠ è¯', 'tÄ±p ekleyin', 'adicionar medicina', 'hozzÃ¡ gyÃ³gyszer', 'ajouter mÃ©decine', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î¿ Ï†Î¬ÏÎ¼Î±ÎºÎ¿', 'hinzufÃ¼gen Medizin', 'aggiungere medicina', 'à¹€à¸žà¸´à¹ˆà¸¡à¸¢à¸²', 'Ø§Ø¯ÙˆÛŒØ§Øª Ø´Ø§Ù…Ù„', 'à¤¦à¤µà¤¾ à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'adde medicamentum', 'tambahkan obat', 'è–¬ã‚’è¿½åŠ ', 'ì•½ì„ ì¶”ê°€'),
(212, 'medicine_name', 'medicine name', 'à¦”à¦·à¦§ à¦¨à¦¾à¦®', 'Nombre del medicamento', 'Ø§Ø³Ù… Ø§Ù„Ø¯ÙˆØ§Ø¡', 'Naam van de geneeskunde', 'Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ñ Ð»ÐµÐºÐ°Ñ€ÑÑ‚Ð²Ð°', 'è¯å', 'tÄ±p adÄ±', 'nome do medicamento', 'orvostudomÃ¡ny nÃ©v', 'nom du mÃ©dicament', 'ÎŒÎ½Î¿Î¼Î± Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚', 'Medizin Namen', 'Nome del medicinale', 'à¸Šà¸·à¹ˆà¸­à¸¢à¸²', 'Ø¯ÙˆØ§ Ú©Ø§ Ù†Ø§Ù…', 'à¤¦à¤µà¤¾ à¤•à¤¾ à¤¨à¤¾à¤®', 'medicine nomine', 'Nama obat', 'è–¬å', 'ì•½ ì´ë¦„'),
(213, 'medicine_catogory', 'medicine catogory', 'à¦”à¦·à¦§ à¦¶à§à¦°à§‡à¦£à§€', 'medicina catogory', 'Ø§Ù„Ø·Ø¨ catogory', 'geneeskunde catogory', 'Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ñ‹ catogory', 'åŒ»è¯catogory', 'tÄ±p Kategorideki', 'medicina catogory', 'gyÃ³gyszer catogory', 'mÃ©decine catogory', 'Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚ catogory', 'Medizin catogory', 'medicina catogory', 'catogory à¸¢à¸²', 'Ø¯ÙˆØ§ catogory', 'à¤¦à¤µà¤¾ catogory', 'medicine catogory', 'Obat catogory', 'åŒ»å­¦catogory', 'ì˜í•™ catogory'),
(214, 'edit_medicine_category', 'edit medicine category', 'à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦”à¦·à¦§ à¦¬à¦¿à¦·à¦¯à¦¼à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡', 'edit CategorÃ­a Medicina', 'ØªØ­Ø±ÙŠØ± ÙØ¦Ø© Ø§Ù„Ø·Ø¨', 'bewerk geneeskunde categorie', 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸ÑŽ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ðµ', 'ç¼–è¾‘åŒ»è¯ç±»', 'dÃ¼zenleme tÄ±p kategori', 'ediÃ§Ã£o medicina categoria', 'szerkesztÃ©s orvostudomÃ¡ny kategÃ³ria', 'edit mÃ©decine catÃ©gorie', 'edit Î¹Î±Ï„ÏÎ¹ÎºÎ® ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±', 'edit Medizin Kategorie', 'medicina Modifica categoria', 'à¸«à¸¡à¸§à¸”à¸«à¸¡à¸¹à¹ˆà¸¢à¸²à¹à¸à¹‰à¹„à¸‚', 'ØªØ±Ù…ÛŒÙ… Ø¯ÙˆØ§ Ù‚Ø³Ù…', 'à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤¦à¤µà¤¾ à¤µà¤°à¥à¤—', 'edit medicina praedicamentum', 'sunting obat kategori', 'è–¬ã‚«ãƒ†ã‚´ãƒªã‚’ç·¨é›†', 'íŽ¸ì§‘ ì˜í•™ ì¹´í…Œê³ ë¦¬'),
(215, 'edit_medicine', 'edit medicine', 'à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾ à¦”à¦·à¦§', 'edit medicina', 'ØªØ­Ø±ÙŠØ± Ø§Ù„Ø·Ø¨', 'geneeskunde bewerken', 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½Ðµ', 'ç¼–è¾‘è¯', 'dÃ¼zenleme tÄ±p', 'ediÃ§Ã£o medicina', 'szerkesztÃ©s orvostudomÃ¡ny', 'mÃ©decine Ã©dition', 'edit Î¹Î±Ï„ÏÎ¹ÎºÎ®Ï‚', 'edit Medizin', 'Modifica medicina', 'à¸¢à¸²à¹à¸à¹‰à¹„à¸‚', 'ØªØ±Ù…ÛŒÙ… Ø¯ÙˆØ§', 'à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤¦à¤µà¤¾', 'edit medicamentum', 'sunting Obat', 'ç·¨é›†è–¬', 'íŽ¸ì§‘ ì˜í•™'),
(216, 'laboratorist_dashboard', 'laboratorist dashboard,eo', 'à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿à¦¸à§à¦Ÿ à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'laboratorista salpicadero', 'laboratorist Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³', 'laboratorist dashboard', 'laboratorist Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸', 'laboratoristä»ªè¡¨æ¿', 'laboratorist paneli', 'laboratorista dashboard', 'laboratorist mÅ±szerfal', 'laboratorist tableau de bord', 'laboratorist Ï„Î±Î¼Ï€Î»ÏŒ', 'laboratorist Armaturenbrett', 'laboratorist cruscotto', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡ laboratorist', 'laboratorist ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'laboratorist à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'laboratorist Dashboard', 'laboratorist dashboard', 'laboratoristãƒ€ãƒƒã‚·ãƒ¥', 'laboratorist ëŒ€ì‹œ ë³´ë“œ'),
(217, 'add_diagnosis_report', 'add diagnosis report', 'à¦°à§‹à¦— à¦¨à¦¿à¦°à§à¦£à¦¯à¦¼à§‡à¦° à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'agregar informe diagnÃ³stico', 'Ø¥Ø¶Ø§ÙØ© ØªÙ‚Ø±ÙŠØ± Ø§Ù„ØªØ´Ø®ÙŠØµ', 'voegen diagnose rapport', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ð¸Ð°Ð³Ð½Ð¾Ð·Ð° Ð¾Ñ‚Ñ‡ÐµÑ‚', 'è¯Šæ–­æŠ¥å‘Š', 'tanÄ± raporu ekleyin', 'adicionar relatÃ³rio de diagnÃ³stico', 'hozzÃ¡ diagnÃ³zis jelentÃ©s', 'Ajouter un rapport de diagnostic', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î·Î½ Î­ÎºÎ¸ÎµÏƒÎ· Î´Î¹Î¬Î³Î½Ï‰ÏƒÎ·', 'hinzufÃ¼gen Diagnose Bericht', 'aggiungere rapporto diagnostico', 'à¹€à¸žà¸´à¹ˆà¸¡à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸§à¸´à¸™à¸´à¸ˆà¸‰à¸±à¸¢', 'ØªØ´Ø®ÛŒØµ Ú©ÛŒ Ø±Ù¾ÙˆØ±Ù¹ Ù…ÛŒÚº Ø´Ø§Ù…Ù„', 'à¤¨à¤¿à¤¦à¤¾à¤¨ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤œà¥‹à¤¡à¤¼', 'adde fama diagnosis', 'menambahkan laporan diagnosis', 'è¨ºæ–­ãƒ¬ãƒãƒ¼ãƒˆã‚’è¿½åŠ ', 'ì§„ë‹¨ ë³´ê³ ì„œë¥¼ ì¶”ê°€'),
(218, 'report_status', 'report status', 'à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨à§‡à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾', 'estado del informe', 'ØªÙ‚Ø±ÙŠØ± Ø§Ù„Ø­Ø§Ù„Ø©', 'verslag-status', 'Ð¾Ñ‚Ñ‡ÐµÑ‚ Ð¾ ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ð¸', 'æŠ¥å‘ŠçŠ¶æ€', 'rapor durumu', 'status do relatÃ³rio', 'jelentÃ©s Ã¡llapotÃ¡t', 'Ã©tat du rapport', 'Î±Î½Î±Ï†Î¿ÏÎ¬ Ï„Î·Ï‚ ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·Ï‚', 'Status der Meldung', 'Status Report', 'à¸£à¸²à¸¢à¸‡à¸²à¸™à¸ªà¸–à¸²à¸™à¸°', 'Ø±Ù¾ÙˆØ±Ù¹ Ú©ÛŒ Ø­ÛŒØ«ÛŒØª', 'à¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'fama status', 'Status laporan', 'ãƒ¬ãƒãƒ¼ãƒˆã®ã‚¹ãƒ†ãƒ¼ã‚¿ã‚¹', 'ë³´ê³ ì„œ ìƒíƒœ'),
(219, 'add_diagnostic_report', 'add diagnostic report', 'à¦¡à¦¾à¦¯à¦¼à¦—à¦¨à¦¿à¦¸à§à¦Ÿà¦¿à¦• à¦ªà§à¦°à¦¤à¦¿à¦¬à§‡à¦¦à¦¨ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'agregar informe de diagnÃ³stico', 'Ø¥Ø¶Ø§ÙØ© ØªÙ‚Ø±ÙŠØ± Ø§Ù„ØªØ´Ø®ÙŠØµ', 'voegen diagnostisch rapport', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ð¸Ð°Ð³Ð½Ð¾ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹ Ð¾Ñ‚Ñ‡ÐµÑ‚', 'æ–°å¢žè¯Šæ–­æŠ¥å‘Š', 'tanÄ±lama raporu ekleyin', 'adicionar relatÃ³rio de diagnÃ³stico', 'hozzÃ¡ diagnosztikai jelentÃ©s', 'Ajouter un rapport de diagnostic', 'Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÎ¹ Î´Î¹Î±Î³Î½Ï‰ÏƒÏ„Î¹ÎºÎ® Î­ÎºÎ¸ÎµÏƒÎ·', 'hinzufÃ¼gen Diagnosebericht', 'aggiungere report diagnostico', 'à¹€à¸žà¸´à¹ˆà¸¡à¸£à¸²à¸¢à¸‡à¸²à¸™à¸à¸²à¸£à¸§à¸´à¸™à¸´à¸ˆà¸‰à¸±à¸¢', 'ØªØ´Ø®ÛŒØµÛŒ Ø±Ù¾ÙˆØ±Ù¹ Ù…ÛŒÚº Ø´Ø§Ù…Ù„', 'à¤¨à¥ˆà¤¦à¤¾à¤¨à¤¿à¤• â€‹â€‹à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ à¤œà¥‹à¤¡à¤¼', 'adde fama Diagnostic', 'menambahkan laporan diagnostik', 'è¨ºæ–­ãƒ¬ãƒãƒ¼ãƒˆã‚’è¿½åŠ ', 'ì§„ë‹¨ ë³´ê³ ì„œë¥¼ ì¶”ê°€'),
(220, 'image', 'image', 'à¦šà¦¿à¦¤à§à¦°', 'imagen', 'ØµÙˆØ±Ø©', 'afbeelding', 'Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ', 'å›¾åƒ', 'gÃ¶rÃ¼ntÃ¼', 'imagem', 'kÃ©p', 'Image', 'image', 'Bild', 'immagine', 'à¸ à¸²à¸ž', 'ØªØµÙˆÛŒØ±', 'à¤›à¤µà¤¿', 'simulacrum', 'gambar', 'ç”»åƒ', 'ì˜ìƒ'),
(221, 'doc', 'doc', 'Doc', 'doctor', 'Ø¯ÙˆÙƒ', 'dokter', 'Ð´Ð¾ÐºÑ‚Ð¾Ñ€', 'DOC', 'doktor', 'doutor', 'doktor', 'doc', 'doc', 'doc', 'doc', 'à¸„à¸¸à¸“à¸«à¸¡à¸­', 'ÚˆØ§Ú©Ù¹Ø±', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤°', 'doc', 'dokter', 'DOC', 'ì˜ì‚¬'),
(222, 'pdf', 'pdf', 'à¦ªà¦¿à¦¡à¦¿à¦à¦«', 'pdf', 'PDF', 'pdf', 'PDF', 'PDF', 'pdf', 'pdf', 'pdf', 'pdf', 'pdf', 'pdf', 'pdf', 'à¸£à¸¹à¸›à¹à¸šà¸šà¹„à¸Ÿà¸¥à¹Œ PDF', 'Ù¾ÛŒ ÚˆÛŒ Ø§ÛŒÙ', 'à¤ªà¥€à¤¡à¥€à¤à¤«', 'pdf', 'pdf', 'PDF', 'PDF'),
(223, 'excel', 'excel', 'à¦à¦•à§à¦¸à§‡à¦²', 'sobresalir', 'ØªÙÙˆÙ‚', 'uitmunten', 'Ð¿Ñ€ÐµÐ²Ð¾ÑÑ…Ð¾Ð´Ð¸Ñ‚ÑŒ', 'é«˜å¼º', 'sivrilmek', 'sobressair', 'excel', 'excel', 'excel', 'excel', 'excel', 'à¹€à¸à¹ˆà¸‡à¸à¸§à¹ˆà¸²', 'Ø§ÛŒÚ©Ø³Ù„', 'à¤à¤•à¥à¤¸à¥‡à¤²', 'prÃ¦esse', 'unggul', 'ã‚¨ã‚¯ã‚»ãƒ«', 'ë›°ì–´ë‚˜ë‹¤'),
(224, 'upload_document', 'upload document', 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦†à¦ªà¦²à§‹à¦¡', 'Cargar documento', 'ØªØ­Ù…ÙŠÙ„ Ø§Ù„ÙˆØ«ÙŠÙ‚Ø©', 'uploaden van documenten', 'Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚', 'ä¸Šä¼ æ–‡ä»¶', 'belge yÃ¼klemek', 'upload de documento', 'feltÃ¶ltÃ©s dokumentum', 'tÃ©lÃ©charger le document', 'Î±Î½ÎµÎ²Î¬ÏƒÎµÏ„Îµ Ï„Î¿ Î­Î³Î³ÏÎ±Ï†Î¿', 'Dokument hochladen', 'Carica documento', 'à¸­à¸±à¸›à¹‚à¸«à¸¥à¸”à¹€à¸­à¸à¸ªà¸²à¸£', 'Ø¯Ø³ØªØ§ÙˆÛŒØ² Ø§Ù¾ Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº', 'à¤¦à¤¸à¥à¤¤à¤¾à¤µà¥‡à¤œà¤¼ à¤…à¤ªà¤²à¥‹à¤¡', 'upload document', 'meng-upload dokumen', 'ãƒ‰ã‚­ãƒ¥ãƒ¡ãƒ³ãƒˆã‚’ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰', 'ë¬¸ì„œë¥¼ ì—…ë¡œë“œ'),
(225, 'accountant_dashboard', 'accountant dashboard', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦°à¦•à§à¦·à¦• à¦¡à§à¦¯à¦¾à¦¶à¦¬à§‹à¦°à§à¦¡', 'tablero contador', 'Ù„ÙˆØ­Ø© Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„Ù‚ÙŠØ§Ø³ Ù…Ø­Ø§Ø³Ø¨', 'accountant dashboard', 'Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¾Ð¼ Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð½Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸', 'ä¼šè®¡å¸ˆä»ªè¡¨', 'muhasebeci paneli', 'dashboard contador', 'kÃ¶nyvelÅ‘ mÅ±szerfal', 'tableau de bord comptable', 'Ï„Î±Î¼Ï€Î»ÏŒ Î»Î¿Î³Î¹ÏƒÏ„Î®', 'Buchhalter Armaturenbrett', 'cruscotto contabile', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡à¸šà¸±à¸à¸Šà¸µ', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ù¹ ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'à¤²à¥‡à¤–à¤¾à¤•à¤¾à¤° à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'Ratiocinatore Dashboard', 'dashboard akuntan', 'ä¼šè¨ˆå£«ã®ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰', 'íšŒê³„ì‚¬ ëŒ€ì‹œ ë³´ë“œ'),
(226, 'invoice / take_payment', 'invoice / take payment', 'à¦šà¦¾à¦²à¦¾à¦¨ / à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¨à¦¿à¦¤à§‡', 'factura / recibir el pago', 'ÙØ§ØªÙˆØ±Ø© / Ø£Ø®Ø° Ø§Ù„Ø£Ø¬Ø±Ø©', 'factuur / rekening betalen', 'ÑÑ‡ÐµÑ‚Ð° / Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ Ð¾Ð¿Ð»Ð°Ñ‚Ñƒ', 'å‘ç¥¨/ä»˜æ¬¾', 'fatura / Ã¶deme almak', 'factura / ter o pagamento', 'szÃ¡mla / veszi fizetÃ©s', 'facture / prendre le paiement', 'Ï„Î¹Î¼Î¿Î»ÏŒÎ³Î¹Î¿ / Î»Î±Î¼Î²Î¬Î½Î¿Ï…Î½ Ï€Î»Î·ÏÏ‰Î¼Î­Ï‚', 'Rechnung / Zahlung nehmen', 'fattura / prendere il pagamento', 'à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰ / à¹ƒà¸Šà¹‰à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'Ø§Ù†ÙˆØ§Ø¦Ø³ / Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ù„ÛŒÙ†Ø§', 'à¤šà¤¾à¤²à¤¾à¤¨ / à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤²à¥‡à¤¨à¤¾', 'cautionem / accipe mercedes', 'faktur / mengambil pembayaran', 'è«‹æ±‚/æ”¯æ‰•ã„ã‚’å–ã‚‹', 'ì†¡ìž¥ / ì§€ë¶ˆì„'),
(227, 'manage_invoice', 'manage invoice', 'à¦šà¦¾à¦²à¦¾à¦¨ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'gestionar factura', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ÙØ§ØªÙˆØ±Ø©', 'beheren factuur', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ ÑÑ‡ÐµÑ‚Ð°', 'å‘ç¥¨ç®¡ç†', 'fatura yÃ¶netmek', 'gerenciar fatura', 'kezelni szÃ¡mla', 'gÃ©rer facture', 'Î´Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î¹Î¼Î¿Î»ÏŒÎ³Î¹Î¿', 'Verwaltung Rechnung', 'gestione fattura', 'à¸à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©Û’ Ø§Ù†ØªØ¸Ø§Ù…', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨', 'aget cautionem', 'mengelola faktur', 'è«‹æ±‚æ›¸ã‚’ç®¡ç†ã™ã‚‹', 'ì†¡ìž¥ ê´€ë¦¬'),
(228, 'add_invoice', 'add invoice', 'à¦šà¦¾à¦²à¦¾à¦¨ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'aÃ±adir factura', 'Ø¥Ø¶Ø§ÙØ© ÙØ§ØªÙˆØ±Ø©', 'voegen factuur', 'Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÑÑ‡ÐµÑ‚-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð°', 'åŠ å‘ç¥¨', 'fatura ekleyin', 'adicionar fatura', 'hozzÃ¡ szÃ¡mla', 'ajouter facture', 'Ï€ÏÎ¿ÏƒÎ¸Î®ÎºÎ· Ï„Î¹Î¼Î¿Î»ÏŒÎ³Î¹Î¿', 'Rechnung hinzufÃ¼gen', 'aggiungere fattura', 'à¹€à¸žà¸´à¹ˆà¸¡à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ù…ÛŒÚº Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤œà¥‹à¤¡à¤¼', 'add cautionem', 'tambahkan faktur', 'è«‹æ±‚æ›¸ã‚’è¿½åŠ ', 'ì†¡ìž¥ì„ ì¶”ê°€'),
(229, 'unpaid', 'unpaid', 'à¦…à¦¬à§ˆà¦¤à¦¨à¦¿à¦•', 'no pagado', 'ØºÙŠØ± Ù…Ø¯ÙÙˆØ¹', 'onbetaald', 'Ð½ÐµÐ¾Ð¿Ð»Ð°Ñ‡ÐµÐ½Ð½Ñ‹Ð¹', 'æœªä»˜', 'Ã¶denmemiÅŸ', 'nÃ£o remunerado', 'kifizetetlen', 'non rÃ©munÃ©rÃ©', 'Î±Ï€Î»Î®ÏÏ‰Ï„Î·', 'unbezahlte', 'non pagato', 'à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸„à¹ˆà¸²à¸ˆà¹‰à¸²à¸‡', 'Ø¨Ù„Ø§ Ù…Ø¹Ø§ÙˆØ¶Û', 'à¤…à¤µà¥ˆà¤¤à¤¨à¤¿à¤•', 'est constitutus,', 'belum dibayar', 'æœªæ‰•ã„', 'ë¬´ê¸‰'),
(230, 'take_cash_payment', 'take cash payment', 'à¦¨à¦—à¦¦ à¦Ÿà¦¾à¦•à¦¾ à¦¨à¦¿à¦¤à§‡', 'tomar el pago en efectivo', 'Ø£Ø®Ø° Ø§Ù„Ø£Ø¬Ø±Ø© Ø§Ù„Ù†Ù‚Ø¯ÙŠØ©', 'neem contante betaling', 'Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ Ð¾Ð¿Ð»Ð°Ñ‚Ñƒ Ð½Ð°Ð»Ð¸Ñ‡Ð½Ñ‹Ð¼Ð¸', 'ä»¥çŽ°é‡‘æ”¯ä»˜', 'nakit Ã¶deme almak', 'tomar pagamento em dinheiro', 'hogy kÃ©szpÃ©nzes fizetÃ©s', 'prendre le paiement en espÃ¨ces', 'Î»Î±Î¼Î²Î¬Î½Î¿Ï…Î½ ÎºÎ±Ï„Î±Î²Î¿Î»Î® Î¼ÎµÏ„ÏÎ·Ï„ÏŽÎ½', 'nehmen Barzahlung', 'prendere il pagamento in contanti', 'à¹ƒà¸Šà¹‰à¹€à¸‡à¸´à¸™à¸ªà¸”', 'Ù†Ù‚Ø¯ Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ù„ÛŒÙ†Ø§', 'à¤¨à¤•à¤¦ à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤²à¥‡à¤¨à¤¾', 'accipere nummis solutio', 'mengambil pembayaran tunai', 'ç¾é‡‘æ”¯æ‰•ã„ã‚’å–ã‚‹', 'í˜„ê¸ˆ ì§€ë¶ˆì„'),
(231, 'paid', 'paid', 'à¦ªà¦°à¦¿à¦¶à§‹à¦§', 'pagado', 'Ù…Ø¯ÙÙˆØ¹', 'betaald', 'Ð¾Ð¿Ð»Ð°Ñ‡Ð¸Ð²Ð°ÐµÐ¼Ñ‹Ð¹', 'æ”¯ä»˜', 'Ã¼cretli', 'pago', 'fizetett', 'payÃ©', 'ÎºÎ±Ï„Î±Î²Î»Î·Î¸ÎµÎ¯', 'bezahlt', 'pagato', 'à¸•à¹‰à¸­à¸‡à¸ˆà¹ˆà¸²à¸¢', 'Ø§Ø¯Ø§ Ú©ÛŒ', 'à¤ªà¥à¤°à¤¦à¤¤à¥à¤¤', 'solutis', 'dibayar', 'æ”¯æ‰•ã‚ã‚ŒãŸ', 'ì§€ê¸‰'),
(232, 'edit_invoice', 'edit invoice', 'à¦šà¦¾à¦²à¦¾à¦¨ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', 'editar factura', 'ØªØ­Ø±ÙŠØ± Ø§Ù„ÙØ§ØªÙˆØ±Ø©', 'bewerk factuur', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ ÑÑ‡ÐµÑ‚Ð°', 'ç¼–è¾‘å‘ç¥¨', 'fatura dÃ¼zenlemek', 'editar fatura', 'szerkesztÃ©s szÃ¡mla', 'Ã©diter facture', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¹Î¼Î¿Î»ÏŒÎ³Î¹Î¿', 'Rechnung bearbeiten', 'modificare fattura', 'à¹à¸à¹‰à¹„à¸‚à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ù…ÛŒÚº ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere cautionem', 'mengedit faktur', 'è«‹æ±‚æ›¸ã‚’ç·¨é›†', 'ì†¡ìž¥ì„ íŽ¸ì§‘í•©ë‹ˆë‹¤'),
(233, 'edit_nurse', '', 'à¦¨à¦¾à¦°à§à¦¸ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¦¾', '', 'ØªØ¹Ø¯ÙŠÙ„ Ù…Ù…Ø±Ø¶Ø©', 'bewerk verpleegkundige', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¼ÐµÐ´ÑÐµÑÑ‚Ñ€Ñ‹', 'ç¼–è¾‘æŠ¤å£«', 'hemÅŸire dÃ¼zenleme', 'editar enfermeira', 'szerkesztÃ©s nÅ‘vÃ©r', 'modifier infirmiÃ¨re', 'ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„ÎµÎ¯Ï„Îµ Î½Î¿ÏƒÎ¿ÎºÏŒÎ¼Î±', 'bearbeiten Krankenschwester', 'modificare infermiera', 'à¹à¸à¹‰à¹„à¸‚à¸žà¸¢à¸²à¸šà¸²à¸¥', 'Ù†Ø±Ø³ ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº', 'à¤¨à¤°à¥à¤¸ à¤•à¥‹ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤', 'recensere nutricem', 'mengedit perawat', 'çœ‹è­·å¸«ã‚’ç·¨é›†', 'ê°„í˜¸ì‚¬ íŽ¸ì§‘');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mch_inventory`
--

CREATE TABLE IF NOT EXISTS `mch_inventory` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `price` varchar(100) NOT NULL,
  `c_price` int(11) NOT NULL,
  `form` varchar(50) NOT NULL,
  `experiy_date` varchar(15) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `new` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `manufacturing_company` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `name`, `medicine_category_id`, `description`, `price`, `manufacturing_company`, `status`) VALUES
(1, 'Aber C 500', 2, 'Vitamin C 500gm', '25', 'Company Cipla', '50'),
(2, 'Panadol', 2, 'white tabletes', '100', 'N/A', '30');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE IF NOT EXISTS `medicine_category` (
  `medicine_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`medicine_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`medicine_category_id`, `name`, `description`) VALUES
(1, 'Allergy Liquids', 'Allergic medicines'),
(2, 'Vitamins Tablets', 'Vitamins tablets only');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_from_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_from_id` int(11) NOT NULL,
  `user_to_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'Christmas Holidays', '25th will be holiday.', 1450998000),
(2, 'Chairmans Birthday', '17 Jan is Chairmans bithday.', 1453849200);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `nurse_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`nurse_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nurse_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(2, 'loise syomiti', 'nurse@nurse.com', 'nurse', 'N/A', '701417887');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_orders`
--

CREATE TABLE IF NOT EXISTS `nurse_orders` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_timestamp` int(11) DEFAULT NULL,
  `nurse_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `medication1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication10` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc10` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `nurse_orders`
--

INSERT INTO `nurse_orders` (`prescription_id`, `creation_timestamp`, `nurse_id`, `patient_id`, `insurance_id`, `medication1`, `desc1`, `medication2`, `desc2`, `medication3`, `desc3`, `medication4`, `desc4`, `medication5`, `desc5`, `medication6`, `desc6`, `medication7`, `desc7`, `medication8`, `desc8`, `medication9`, `desc9`, `medication10`, `desc10`, `date`) VALUES
(19, NULL, NULL, '329', NULL, 'activated charcoal', '4', 'aminophyllin 250mgs/ml', '5', 'amoxycillin 100mls', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16/04/2018'),
(20, NULL, NULL, '357', NULL, 'acyclovir 400mgs', '3', 'aminophyllin 250mgs/ml', '6', 'aminophyllin 250mgs/ml', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '23/10/2018');

-- --------------------------------------------------------

--
-- Table structure for table `nursing`
--

CREATE TABLE IF NOT EXISTS `nursing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nursing_id` varchar(30) DEFAULT NULL,
  `invoice` varchar(30) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `nursing_type` varchar(200) NOT NULL,
  `qty` varchar(30) NOT NULL,
  `price` varchar(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `cost` int(30) DEFAULT NULL,
  `cashier` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nursing`
--

INSERT INTO `nursing` (`id`, `nursing_id`, `invoice`, `patient_id`, `nursing_type`, `qty`, `price`, `date`, `amount`, `cost`, `cashier`) VALUES
(1, NULL, 'RS-6238', '300', 'Ampiclox Inj. (Per Inj.)', '1', '200', '2018-04-30', 200, NULL, 'martanity'),
(2, NULL, 'RS-82223', '357', 'Adrenaline (Per Inj.)', '1', '50', '2018-10-23', 50, NULL, 'Jacob Nthiwa');

-- --------------------------------------------------------

--
-- Table structure for table `observations`
--

CREATE TABLE IF NOT EXISTS `observations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `observation` text NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cashier` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `observations`
--

INSERT INTO `observations` (`id`, `patient_id`, `date`, `observation`, `name`, `cashier`) VALUES
(1, 357, '2018-10-23', 'PAINS', NULL, 'Jacob Nthiwa');

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE IF NOT EXISTS `operations` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(239, NULL, 'Wood dressing', NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `other_services`
--

CREATE TABLE IF NOT EXISTS `other_services` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `patient_id` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `other_services`
--

INSERT INTO `other_services` (`transaction_id`, `profit`, `invoice`, `product`, `qty`, `amount`, `name`, `cost`, `price`, `discount`, `minprice`, `date`, `patient_id`) VALUES
(215, '75', 'RS-333333', '6', '1', '75', 'albendazole syrup 15mls', '0', '75', '0', NULL, NULL, ''),
(216, '8', 'RS-333333', '4', '1', '8', 'activated charcoal', '0', '8', '0', NULL, NULL, ''),
(217, '20', 'RS-333333', '3', '1', '20', 'acyclovir 400mgs', '0', '20', '0', NULL, NULL, '300'),
(218, NULL, 'RS-333333', '3', '1', '25', 'acyclovir 400mgs', '0', '25', '0', NULL, '2017-10-19', '300'),
(219, '8', 'RS-600833', '4', '1', '8', 'activated charcoal', '0', '8', '0', NULL, NULL, '329'),
(220, NULL, 'RS-600833', '13', '1', '20', 'atemether lumefantrine  (al po)', '0', '20', '0', NULL, '2017-10-20', '329');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci,
  `password` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci,
  `phone` longtext COLLATE utf8_unicode_ci,
  `insurance_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_number` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci,
  `birth_date` longtext COLLATE utf8_unicode_ci,
  `height` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bmi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consultation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'File',
  `diagnosis` longtext COLLATE utf8_unicode_ci,
  `diagnosis1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagnosis2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` int(20) DEFAULT NULL,
  `bp` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rbs` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idno` varchar(133) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'UNBILLED',
  `bim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ox2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `patient_id` (`patient_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `email`, `password`, `address`, `phone`, `insurance_id`, `in_number`, `sex`, `birth_date`, `height`, `weight`, `bmi`, `age`, `fee`, `consultation`, `diagnosis`, `diagnosis1`, `diagnosis2`, `update_date`, `bp`, `date`, `rbs`, `idno`, `temp`, `bill`, `bim`, `ox2`) VALUES
(1, 'Muthama Kisina', NULL, NULL, 'MTITO ANDEI', '0728636248', 'CASH', '', 'Male', NULL, NULL, NULL, NULL, '32', '', 'File', 'Acute Sinusitis', 'Allergic Bronchitis', '', NULL, NULL, '2021-10-19', NULL, NULL, NULL, 'UNBILLED', NULL, NULL),
(2, 'Musyoka Masaku', NULL, NULL, 'Ngiluni', '0718135822', 'CASH', '', 'Male', NULL, '', '', NULL, '13', '', 'File', 'Tonsillities', '', '', NULL, NULL, '2021-10-26', NULL, NULL, NULL, 'UNBILLED', NULL, NULL),
(3, 'Asiif Omari', NULL, NULL, 'MTITO ANDEI', '0724746937', 'CASH', '', 'Male', NULL, NULL, NULL, NULL, '3', '', 'File', NULL, NULL, NULL, NULL, NULL, '2021-10-26', NULL, NULL, NULL, 'UNBILLED', NULL, NULL),
(4, 'Faith Mutheu', NULL, NULL, 'Mwaani', '0717580886', 'CASH', '', 'Female', NULL, NULL, NULL, NULL, '1', '0', 'File', NULL, NULL, NULL, NULL, NULL, '2021-10-26', NULL, NULL, NULL, 'UNBILLED', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `transaction_id`, `invoice_id`, `patient_id`, `method`, `description`, `amount`, `timestamp`) VALUES
(1, 'Fracture', '573319', 2, 2, 'cash', 'Fracture bandage.', 1200, 1448985709),
(2, 'Blood Test', '304428', 1, 1, 'cash', 'Blood test for maleria, Nov 2015', 500, 1485784579),
(3, 'Payment', '206567', 3, 3, 'cash', '', 30000, 1485795040),
(4, 'Payment', '756928', 3, 3, 'cash', '', 30000, 1486102980),
(5, 'AMOEBIC TESTES', '972287', 4, 3, 'cash', '<b>AMOEBIC TESTES</b><br><b>TYPHOID TESTES</b>', 1000, 1486103177),
(6, 'Blood Test', '609491', 1, 1, 'cash', 'Blood test for maleria, Nov 2015', 500, 1491858504),
(7, '', '513800', 4, 235, 'cash', '', 0, 1507105813);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE IF NOT EXISTS `pharmacist` (
  `pharmacist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pharmacist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`pharmacist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Manoj Hedao', 'pharmacist@pharmacist.com', 'pharmacist', 'Mumbai, India', '9800000000');

-- --------------------------------------------------------

--
-- Table structure for table `physio_inventory`
--

CREATE TABLE IF NOT EXISTS `physio_inventory` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `price` varchar(100) NOT NULL,
  `c_price` int(11) NOT NULL,
  `form` varchar(50) NOT NULL,
  `experiy_date` varchar(15) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `new` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_timestamp` int(11) DEFAULT NULL,
  `doctor_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nurse_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insurance_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complains` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complain2` text COLLATE utf8_unicode_ci,
  `period2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complain3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complain4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complain5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `period5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `case_history` longtext COLLATE utf8_unicode_ci,
  `medication1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medication10` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc10` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `test1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagnosis` longtext COLLATE utf8_unicode_ci,
  `diagnosis1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagnosis2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test6` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test8` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_timestamp`, `doctor_id`, `nurse_id`, `patient_id`, `insurance_id`, `patient_name`, `complains`, `period1`, `complain2`, `period2`, `complain3`, `period3`, `complain4`, `period4`, `complain5`, `period5`, `case_history`, `medication1`, `desc1`, `medication2`, `desc2`, `medication3`, `desc3`, `medication4`, `desc4`, `medication5`, `desc5`, `medication6`, `desc6`, `medication7`, `desc7`, `medication8`, `desc8`, `medication9`, `desc9`, `medication10`, `desc10`, `description`, `test1`, `test2`, `test3`, `test4`, `test5`, `diagnosis`, `diagnosis1`, `diagnosis2`, `date`, `test6`, `test7`, `test8`, `department`, `service1`, `service2`, `comment`) VALUES
(56, NULL, NULL, NULL, '2', 'CASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '2021-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, 'DR. Dino kyalo', NULL, '1', 'CASH', 'Muthama Kisina', 'HEADACHE', NULL, ' \r\nBs for Mps--------------\r\n            MPS +++			\r\nUrinalysis--------------\r\n            Urobilinogen :Bilirubin :Blood :Nitrite  :Leukocytes :P.H  :Protein :Glucose :Ketones :Deposits :			 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Treated 3 weeks ago.', 'Ceftriaxme 1g inj', 'start', 'Cefuroxime 500mg', 'BP 5/7', 'Zithromax 500mg', 'OD 3/7', 'Meloxicam 15mg', 'BD 5/7', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Bs for Mps', 'Urinalysis', '', '', '', 'Acute Sinusitis', 'Allergic Bronchitis', '', '2021-10-19', NULL, NULL, NULL, 'LAB', '', '', ''),
(58, NULL, 'DR. Dino kyalo', NULL, '2', 'CASH', 'Musyoka Masaku', 'Recurent Headache on $off,Uses Mara moja or Brufen to reduce the pain,Last seen at AIC Mtito Months ago', NULL, '  B/S /mps omps/200wbs Neutrophilia +\r\n\r\n Stool Entemoeba histolytica cysts\r\n       Taenia saginata spp\r\n       Pus cells ++  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Aceclo-P 100mg / 500mg Tabs ', '', 'Zentel 400mg Tabs', '', 'Cornizole D tab (double strength)', '', 'Ampiclox  Capsules 500mg ', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Bs for Mps', 'Stool Microscopy', '', '', '', 'Tonsillities', '', '', '2021-10-26', NULL, NULL, NULL, '', 'Bs for Mps', 'Stool Microscopy', ''),
(59, NULL, 'DR. Dino kyalo', NULL, '2', 'CASH', 'Musyoka Masaku', 'Recurent Headache on $off,Uses Mara moja or Brufen to reduce the pain,Last seen at AIC Mtito Months ago', NULL, '  B/S /mps omps/200wbs Neutrophilia +\r\n\r\n Stool Entemoeba histolytica cysts\r\n       Taenia saginata spp\r\n       Pus cells ++  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Aceclo-P 100mg / 500mg Tabs ', '', 'Zentel 400mg Tabs', '', 'Cornizole D tab (double strength)', '', 'Ampiclox  Capsules 500mg ', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Bs for Mps', 'Stool Microscopy', '', '', '', 'Tonsillities', '', '', '2021-10-26', NULL, NULL, NULL, '', 'Bs for Mps', 'Stool Microscopy', ''),
(60, NULL, 'DR. Dino kyalo', NULL, '2', 'CASH', 'Musyoka Masaku', 'Recurent Headache on $off,Uses Mara moja or Brufen to reduce the pain,Last seen at AIC Mtito Months ago', NULL, '  B/S /mps omps/200wbs Neutrophilia +\r\n\r\n Stool Entemoeba histolytica cysts\r\n       Taenia saginata spp\r\n       Pus cells ++  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Aceclo-P 100mg / 500mg Tabs ', '', 'Zentel 400mg Tabs', '', 'Cornizole D tab (double strength)', '', 'Ampiclox  Capsules 500mg ', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Bs for Mps', 'Stool Microscopy', '', '', '', 'Tonsillities', '', '', '2021-10-26', NULL, NULL, NULL, '', 'Bs for Mps', 'Stool Microscopy', ''),
(61, NULL, 'DR. Dino kyalo', NULL, '2', 'CASH', 'Musyoka Masaku', 'Recurent Headache on $off,Uses Mara moja or Brufen to reduce the pain,Last seen at AIC Mtito Months ago', NULL, '  B/S /mps omps/200wbs Neutrophilia +\r\n\r\n Stool Entemoeba histolytica cysts\r\n       Taenia saginata spp\r\n       Pus cells ++  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Aceclo-P 100mg / 500mg Tabs ', '', 'Zentel 400mg Tabs', '', 'Cornizole D tab (double strength)', '', 'Ampiclox  Capsules 500mg ', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Bs for Mps', 'Stool Microscopy', '', '', '', 'Tonsillities', '', '', '2021-10-26', NULL, NULL, NULL, '', 'Bs for Mps', 'Stool Microscopy', ''),
(62, NULL, NULL, NULL, '3', 'CASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '2021-10-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, '4', 'CASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '2021-10-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(1, '', 'Nilol (Atenolo 50mg / 20mg) tabs', '13.8', '', '20', 0, 'Tabs', '2022-02-27', 'Colortex', 150, NULL, 10),
(2, '', 'Ceftriaxone  1g Injection', '57', '0', '300', 550, 'Tabs', '2021-10-27', 'Colortex', 4, NULL, 5),
(4, '', 'Azithromycin 500mg Tabs', '26.67', '0', '100', 183, 'Tabs', '2024-01-31', 'Colortex', 210, NULL, 30),
(5, '', 'Meloxicam 15mg', '3.4', '0', '15', 150, 'Tabs', '2021-11-05', 'Meds', 439, NULL, 10),
(6, '', 'Omeprazole 20mg', '0', '0', '100', 200, 'Tabs', '2023-06-30', 'Colortex', 136, NULL, 10),
(7, '', 'Curamol 60ml', '15', '', '50', 0, 'Syrup', '2022-07-30', 'Colortex', 22, NULL, 10),
(8, '', 'Cophydrex Expectorant  100ml', '32', '150', '150', 0, 'Syrup', '2024-07-31', 'Colortex', 65, NULL, 10),
(9, '', 'Trimorix Srup  200ml', '275', '0', '500', 0, 'Syrup', '2022-03-01', 'Colortex', 24, NULL, 10),
(10, '', 'Cadistin Expectorant  100ml', '112', '0', '250', 0, 'Syrup', '2025-06-30', 'Colortex', 13, NULL, 10),
(11, '', 'Bro Zedex  Cough Syrup 100ml', '189', '0', '250', 0, 'Syrup', '2022-12-30', 'Colortex', 25, NULL, 10),
(12, '', 'Appevite Forte Syrup  200ml', '230', '0', '300', 300, 'Syrup', '2023-05-30', 'Colortex', 7, NULL, 5),
(13, '', 'Coscof C Linctus 100ml', '189', '0', '250', 0, 'Syrup', '2023-07-31', 'Colortex', 3, NULL, 5),
(14, '', 'Finemox CV 228.5 Oral susp 70ml', '89', '0', '350', 550, 'Syrup', '', 'Colortex', 0, NULL, 0),
(15, '', 'Clanoxy 228.50 mg / 5ml susp 100ml', '95', '0', '350', 550, 'Syrup', '', 'Colortex', 0, NULL, 0),
(16, '', 'Promethazine 5mg/5ml (Largan ) Syrup  60ml', '18', '0', '50', 0, 'Syrup', '2024-05-31', 'Colortex', 59, NULL, 10),
(17, '', 'Uniactin syrup  100ml', '145', '0', '200', 0, 'Syrup', '2022-07-31', 'Colortex', 7, NULL, 5),
(18, '', 'Bruface  Suspension 100ml', '120', '0', '200', 0, 'Syrup', '2023-05-31', 'Colortex', 74, NULL, 10),
(19, '', 'Nasithiol $Promethazine 60ml', '42', '0', '100', 0, 'Syrup', '2024-06-30', 'Colortex', 24, NULL, 10),
(20, '', 'Cetirizine (Zycet) Syrup  60ml', '19', '0', '50', 0, 'Syrup', '2023-06-30', 'Colortex', 49, NULL, 10),
(21, '', 'Delasaed Paeditric cough syrup 100ml', '113', '0', '200', 0, 'Syrup', '', 'Colortex', 0, NULL, 0),
(22, '', 'Entamaxin Oral Suspension  100ml', '75', '0', '450', 0, 'Syrup', '2024-02-27', 'Colortex', 60, NULL, 10),
(23, '', 'Ampiclox Dawa Dry Syrup 100ml', '65', '0', '150', 150, 'Syrup', '2023-12-31', 'Colortex', 97, NULL, 10),
(24, '', 'Zithromax 15ml', '43', '0', '250', 0, 'Syrup', '2022-10-30', 'Colortex', 48, NULL, 10),
(25, '', 'Dr TouX 100ML', '194', '0', '250', 0, 'Syrup', '', 'Colortex', 0, NULL, 0),
(26, '', 'Zentel 400mg / 5ml Suspension - 20ml', '172', '0', '250', 250, 'Syrup', '', 'Colortex', 0, NULL, 10),
(27, '', 'Zentel 400mg Tabs', '138', '0', '200', 0, 'Tabs', '2025-12-31', 'Colortex', 326, NULL, 10),
(28, '', 'Loperamide 2mg', '0', '0', '50', 0, 'Tabs', '2024-04-30', 'Colortex', 16, NULL, 10),
(29, '', 'Sign Kit', '1650', '0', '2000', 2000, 'Tabs', '2023-08-30', 'Colortex', 18, NULL, 10),
(30, '', 'E Cold Plus', '75', '0', '150', 0, 'Tabs', '2022-07-30', 'Colortex', 180, NULL, 10),
(31, '', 'Betacor Plus 0.25mg / 2mg Tabs', '3.6', '0', '10', 15, 'Tabs', '2024-01-31', 'Colortex', 460, NULL, 10),
(32, NULL, 'Montecor Plus ', '0', '0', '540', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(33, '', 'Cetirizine 10mg tabs', '0.80', '0', '10', 0, 'Tabs', '2024-01-31', 'Colortex', 690, NULL, 10),
(34, '', 'Tramadol 50mg 10''S', '2.75', '0', '5', 0, 'Tabs', '2024-07-30', 'Colortex', 780, NULL, 10),
(35, '', 'Acepar MR 100mg / 500mg  / 375mg ', '19.8', '0', '35', 40, 'Tabs', '2024-05-31', 'Colortex', 150, NULL, 50),
(36, NULL, 'MTM SO Sildenafil', '9', '0', '200', 0, 'Tabs', '2023-09-30', 'Colortex', 19, NULL, 10),
(37, '', 'Elaxic P 100mg / 50mg tabs', '9.5', '0', '25', 25, 'Tabs', '', 'Colortex', 0, NULL, 0),
(38, '', 'Aceclo-P 100mg / 500mg Tabs ', '11.5', '0', '25', 25, 'Tabs', '2023-07-31', 'Colortex', 1280, NULL, 50),
(39, '', 'Acecor SR 200mg tabs ', '20', '0', '35', 40, 'Tabs', '', 'Colortex', 40, NULL, 10),
(40, '', 'Aceclofenac 100mg tabs', '11.6', '0', '20', 20, 'Tabs', '2024-01-31', 'Colortex', 450, NULL, 10),
(44, '', 'Myospaz Tabs  250/500mg 10''s', '25', '0', '250', 0, 'Tabs', '2024-06-30', 'Colortex', 408, NULL, 10),
(45, '', 'Fopyn', '250', '0', '500', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(46, '', 'Tamepyn (Para+code+Doxyla)Tabs 20''s', '212', '0', '500', 0, 'Tabs', '2024-03-31', 'Colortex', 8, NULL, 5),
(47, '', 'Paracetamol(Biomol) 500mg tabs 10''s', '1', '0', '50', 0, 'Tabs', '2024-02-27', 'Colortex', 570, NULL, 10),
(48, '', 'Ralio D 40mg / 10mg Capsules 10''s', '300', '0', '450', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(49, '', 'Ibuprofen 200mg ', '0.95', '0', '50', 0, 'Tabs', '2022-05-31', 'Colortex', 540, NULL, 10),
(50, NULL, 'Kit Pylo', '0', '0', '1600', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(51, '', 'L Sign Kit', '1800', '0', '2600', 2600, 'Tabs', '2022-12-31', 'Colortex', 2, NULL, 1),
(52, '', 'Claxy 625mg', '200', '0', '500', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(53, NULL, 'Indclav 1g', '0', '0', '1000', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(54, '', 'Combicor (Cipro 500mg / Ornidaz 200mg)Tablets', '34', '0', '45', 45, 'Tabs', '2023-01-31', 'Colortex', 400, NULL, 10),
(55, '', 'Utivanic 500mg(Levofloxacin 500mg tabs ) ', '650', '0', '1000', 1000, 'Tabs', '2023-08-31', 'Colortex', 380, NULL, 10),
(56, '', 'Utivanic 750mg Tabs(Levofloxacin 750mg tabs) 10''s', '750', '0', '1100', 1100, 'Tabs', '2023-08-31', 'Colortex', 200, NULL, 10),
(57, '', 'Cordoxyl Tabs(Cefadroxil 500mg) 10''s', '150', '0', '250', 0, 'Tabs', '2022-11-30', 'Colortex', 40, NULL, 10),
(58, '', 'Claxy 1g tabs', '207', '0', '800', 1000, 'Tabs', '2022-11-30', 'Colortex', 90, NULL, 10),
(59, '', 'Corclav 1000(Amoxicillin $Potassium Clavulanate )Tabs 12''s', '1100', '0', '1700', 1700, 'Tabs', '2023-01-31', 'Colortex', 20, NULL, 10),
(60, '', 'Ximecor 500mg tabs', '85', '0', '120', 0, 'Tabs', '2023-02-27', 'Colortex', 200, NULL, 10),
(61, '', 'Cefuroxime 500mg tabs', '18.5', '0', '80', 80, 'Tabs', '2024-02-28', 'Colortex', 790, NULL, 100),
(62, '', 'Cefixime 400mg  Tabs ', '12.8', '0', '65', 0, 'Tabs', '2023-12-12', 'Colortex', 350, NULL, 50),
(63, '', 'Ampiclox  Capsules 500mg ', '3.19', '0', '10', 10, 'Tabs', '2024-05-31', 'Colortex', 1270, NULL, 10),
(64, '', 'DTO tABS', '250', '0', '450', 0, 'Tabs', '2022-10-31', 'Colortex', 36, NULL, 10),
(65, '', 'Oflonida (Oflo-200+ Orni 500)tabs ', '22.8', '0', '45', 45, 'Tabs', '2024-03-31', 'Colortex', 63, NULL, 10),
(66, '', 'Tagera 2g Forte', '55', '0', '200', 0, 'Tabs', '2023-05-30', 'Colortex', 81, NULL, 10),
(67, '', 'Ciprocor 1g (Ciprofloxacin) Tabs', '30', '0', '50', 0, 'Tabs', '2023-01-31', 'Colortex', 190, NULL, 10),
(68, '', 'Cornizole D tab (double strength)', '140', '0', '350', 0, 'Tabs', '2023-02-28', 'Colortex', 57, NULL, 10),
(69, '', 'Griseofulvin 500mg', '0', '0', '20', 0, 'Tabs', '2023-09-30', 'Colortex', 110, NULL, 10),
(70, '', 'Nifelat R (Nifedipn 20mg)  Modified Release', '4.78', '0', '7.5', 8, 'Tabs', '2023-07-30', 'Colortex', 1720, NULL, 10),
(71, '', 'Atecard D tabs 50mg / 12.5mg ', '9.17', '', '16.9', 17, 'Tabs', '2023-04-01', 'Colortex', 600, NULL, 30),
(72, NULL, 'Nilol /Atenol 10''s', '0', '0', '300', 0, 'Tabs', '2023-01-31', 'Colortex', 15, NULL, 10),
(73, '', 'G Cure Kit', '120', '0', '600', 0, 'Tabs', '2023-09-30', 'Colortex', 22, NULL, 10),
(74, '', 'Sancan 200mg 4''s', '100', '0', '400', 0, 'Tabs', '2023-06-30', 'Colortex', 12, NULL, 10),
(75, '', 'Promethazine 25mg 10''s', '0', '0', '50', 0, 'Tabs', '2022-10-30', 'Colortex', 804, NULL, 10),
(76, '', 'Prednisolone 5mg 10''s', '18', '0', '50', 0, 'Tabs', '2024-06-30', 'Colortex', 1003, NULL, 10),
(77, '', 'Azitcor 500mg tabs', '133.33', '0', '183.33', 183, 'Tabs', '2024-03-30', 'Colortex', 0, NULL, 90),
(78, NULL, 'Elaxic Fast Gel 30g', '', '', '', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(79, '', 'Diclofenac gel 20g', '15', '0', '50', 0, 'Tabs', '2024-03-31', 'Colortex', 2, NULL, 0),
(80, NULL, 'Pharmasal Balm ', '', '', '', 0, 'Tabs', '', 'Colortex', 0, NULL, 0),
(81, '', 'Flagyl 200mg / 5ml susp', '495', '', '600', 600, 'Tabs', '2023-01-22', 'Colortex', 0, NULL, 2),
(82, '', 'Furosemide 40mg  10''s', '0', '0', '100', 0, 'Tabs', '2025-12-31', 'Colortex', 200, NULL, 10),
(83, '', 'Amitriptyline 25mg tabs', '1.55', '0', '5', 5, 'Tabs', '2024-04-30', 'Colortex', 200, NULL, 10),
(84, '', 'Depo Provera 150mginj. ', '110', '0', '200', 200, 'Tabs', '2025-04-30', 'Colortex', 66, NULL, 10),
(85, '', 'Comtrol(Carbamazepine) 200mg 10''s', '0', '', '100', 0, 'Tabs', '2024-01-31', 'Colortex', 430, NULL, 30),
(86, '', 'Allugel suspension 200ml', '142', '0', '200', 300, 'Syrup', '2023-01-01', 'Colortex', 50, NULL, 5),
(87, '', 'Augmentin Original 1gm tabs ', '152.7', '0', '200', 200, 'Tabs', '2023-04-30', 'Colortex', 0, NULL, 10),
(88, '', 'Levofloxacin 750mg tabs(Livota) ', '250', '0', '500', 500, 'Tabs', '2023-11-30', 'Colortex', 31, NULL, 10),
(89, '', 'Cornizole D Suspension(double strength)100ml', '120', '0', '200', 200, 'Syrup', '2023-04-30', 'Colortex', 60, NULL, 10),
(90, '', 'Enlev syrup (Levocetrizine 2.5mg/5ml) 60ml', '150', '', '200', 0, 'Tabs', '2023-09-30', 'Colortex', 50, NULL, 10),
(91, '', 'Enaz Suspension 200mg/5ml', '50', '0', '250', 0, 'Syrup', '2023-01-31', 'Colortex', 44, NULL, 10),
(92, '', 'Colchine 500mcg (Kolzine) Tabs', '6.85', '', '15', 15, 'Tabs', '2024-04-30', 'Colortex', 500, NULL, 50),
(93, '', 'Allopurinol 100mg tabs ', '5.73', '', '10', 10, 'Tabs', '2024-01-31', 'Colortex', 300, NULL, 30),
(94, '', 'Augmentin {Generic) 1gm tabs ', '12.8', '', '50', 60, 'Tabs', '2023-04-30', 'Colortex', 460, NULL, 50),
(96, '', 'Inj cef 2g stat', '57', '', '600', 1100, 'Tabs', '', 'Colortex', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro_order`
--

CREATE TABLE IF NOT EXISTS `pro_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `datesold` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=335 ;

--
-- Dumping data for table `pro_order`
--

INSERT INTO `pro_order` (`transaction_id`, `profit`, `invoice`, `product`, `qty`, `amount`, `name`, `cost`, `price`, `discount`, `minprice`, `datesold`) VALUES
(333, '40', 'RS-360232', '1019', '1', '40', 'Amoxclav 625   625mg', '0', '40', '0', NULL, NULL),
(334, '30', 'RS-86237', '492', '1', '100', 'zulu mr', '70', '100', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pro_receivings`
--

CREATE TABLE IF NOT EXISTS `pro_receivings` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) NOT NULL,
  `product` varchar(200) NOT NULL,
  `experiy_date` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cost` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `c_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pro_receivings`
--

INSERT INTO `pro_receivings` (`transaction_id`, `invoice`, `product`, `experiy_date`, `qty`, `amount`, `name`, `cost`, `price`, `c_price`, `discount`) VALUES
(1, 'RS-232028', '1000', '2017-06-22', 1, 30, 'Abz  tabs   400mg', 30, 50, 70, 0),
(2, 'RS-50302', '1000', '2017-06-22', 2, 40, 'Abz  tabs   400mg', 20, 30, 40, 0),
(3, 'RS-02230', '1345', '2017-06-15', 1, 20, 'Zinc Sulphate   20mg/tab', 20, 30, 40, 0),
(5, 'RS-208432', 'W5454h', '2017-06-16', 10, 200, 'Mara moja', 20, 30, 35, 0),
(6, 'RS-36322', '492', '2017-08-16', 4, 280, 'zulu mr', 70, 100, 150, 0),
(7, 'RS-004337', '1', '', 0, 0, 'abz syp', 0, 0, 0, 0),
(8, 'RS-26324', '260', '', 2, 10, 'joint care caps', 5, 20, 30, 0),
(9, 'RS-333720', '492', '', 30, 0, 'zulu mr', 0, 0, 0, 0),
(10, 'RS-33330', '492', '', 2, 0, 'zulu mr', 0, 0, 0, 0),
(11, 'RS-202', '17', '2020-08-20', 14, 938, 'augmentine 625mgs', 67, 110, 120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro_sales`
--

CREATE TABLE IF NOT EXISTS `pro_sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `scheme` varchar(200) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `anumber` varchar(200) DEFAULT NULL,
  `adate` varchar(200) DEFAULT NULL,
  `ddate` varchar(200) DEFAULT NULL,
  `bpayable` varchar(200) DEFAULT NULL,
  `nhif` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pro_sales`
--

INSERT INTO `pro_sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `due_date`, `name`, `balance`, `cost`, `scheme`, `number`, `anumber`, `adate`, `ddate`, `bpayable`, `nhif`) VALUES
(3, 'RS-360232', 'jacob', '06/15/2017', 'cash', '40', NULL, 'Faith', NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'RS-86237', 'jacob', '08/01/2017', 'cash', '100', NULL, 'hgvg', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quee`
--

CREATE TABLE IF NOT EXISTS `quee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `insurance_id` varchar(200) DEFAULT NULL,
  `doctor` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3059 ;

--
-- Dumping data for table `quee`
--

INSERT INTO `quee` (`id`, `patient_id`, `name`, `insurance_id`, `doctor`, `department`, `status`, `date`, `time`) VALUES
(3052, 1, 'Muthama Kisina', 'CASH', 'DR. Dino kyalo', NULL, 'ACTIVE', '2021-10-19', '2021-10-19 07:58:41'),
(3053, 2, 'Musyoka Masaku', 'CASH', 'DR. Dino kyalo', '', 'ACTIVE', '2021-10-26', '2021-10-26 07:08:34'),
(3054, 2, 'Musyoka Masaku', 'CASH', 'DR. Dino kyalo', '', 'ACTIVE', '2021-10-26', '2021-10-26 07:08:50'),
(3055, 2, 'Musyoka Masaku', 'CASH', 'DR. Dino kyalo', '', 'ACTIVE', '2021-10-26', '2021-10-26 07:22:26'),
(3056, 2, 'Musyoka Masaku', 'CASH', 'DR. Dino kyalo', '', 'ACTIVE', '2021-10-26', '2021-10-26 07:48:45'),
(3057, 3, 'Asiif Omari', 'CASH', 'DR. Dino kyalo', 'DOCTOR', 'ACTIVE', '2021-10-26', '2021-10-26 07:26:28'),
(3058, 4, 'Faith Mutheu', 'CASH', 'DR. Dino kyalo', 'DOCTOR', 'ACTIVE', '2021-10-26', '2021-10-26 07:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `receives`
--

CREATE TABLE IF NOT EXISTS `receives` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `pay` varchar(100) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `receptno` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `receives`
--

INSERT INTO `receives` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `pay`, `number`, `amount`, `due_date`, `name`, `balance`, `receptno`) VALUES
(1, 'RS-20433022003860', 'Linet Ntinyari', '2020-09-05', 'Receive', '', NULL, '8', '', 'Colortex', '', '001'),
(2, 'RS-20433022003860', 'Linet Ntinyari', '2020-09-05', 'Receive', '', NULL, '8', '', 'Colortex', '', '0001'),
(3, 'RS-233303293623362', 'LAB', '2021-10-09', 'Receive', '', NULL, '', '', 'Select Supplier', '', '0'),
(4, 'RS-233303293623362', 'LAB', '2021-10-09', 'Receive', '', NULL, '', '', 'Select Supplier', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `receivings`
--

CREATE TABLE IF NOT EXISTS `receivings` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) NOT NULL,
  `product` varchar(200) NOT NULL,
  `experiy_date` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cost` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `c_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `receivings`
--

INSERT INTO `receivings` (`transaction_id`, `invoice`, `product`, `experiy_date`, `qty`, `amount`, `name`, `cost`, `price`, `c_price`, `discount`) VALUES
(1, 'RS-8033', '2', '', 30, 0, 'acyclovir 200mgs', 0, 15, 30, 0),
(2, 'RS-42322', '2', '', 30, 450, 'acyclovir 200mgs', 15, 30, 0, 0),
(3, 'RS-0733', '1', '', 100, 1000, '', 10, 30, 50, 0),
(4, 'RS-23', '2', '', 30, 900, 'acyclovir 200mgs', 30, 50, 100, 0),
(5, 'RS-2033', '2', '', 20, 400, 'acyclovir 200mgs', 20, 50, 100, 0),
(6, 'RS-002322', '65', '19/11/2018', 200, 10000, 'metformin 500mgs', 50, 55, 100, 0),
(7, 'RS-233337', '147', '', 12, 0, 'dextrose 5%', 0, 0, 0, 0),
(8, 'RS-332328', '155', '', 30, 0, 'frusemide 20mg/2ml', 0, 0, 0, 0),
(9, 'RS-332992', '147', '', 12, 0, 'dextrose 5%', 0, 0, 0, 0),
(10, 'RS-93728', '76', '', 0, 0, 'omeprazole 20mgs', 0, 0, 0, 0),
(11, 'RS-363333', '77', '', 10, 0, 'oxybral caps 30mgs', 0, 0, 0, 0),
(12, 'RS-3302', '1', '', 0, 0, '', 0, 0, 0, 0),
(13, 'RS-355920', '76', '12/11/2017', 100, 0, 'omeprazole 20mgs', 0, 10, 0, 0),
(14, 'RS-302', '5', '2017-10-25', 1, 70, 'albendazole 400mgs', 70, 100, 20, 0),
(15, 'RS-490', '4', '', 2000, 0, 'activated charcoal', 0, 0, 0, 0),
(16, 'RS-32229', '196', '', 1000, 0, 'zinc oxide 500mg', 0, 0, 0, 0),
(17, 'RS-80032', '2', '2018-01-31', 20, 0, 'Acyclovir 200mgs', 0, 200, 300, 0),
(18, 'RS-053223', '4', '2018-02-08', 6, 180, 'activated charcoal', 30, 45, 50, 0),
(19, 'RS-8000', '261', '', 0, 0, 'H.PYLORI ESCLAM KIT', 0, 0, 0, 0),
(20, 'RS-33255', '265', '2018-11-29', 4, 80, 'AMOXICILLIN AND CLAVULANATE', 20, 30, 0, 0),
(21, 'RS-2635383333830283', '543', '2020-08-15', 5, 7500, 'OCCULAST EYE DROP', 1500, 2400, 0, 0),
(22, 'RS-36322', '5892', '2020-08-24', 5, 250, 'Curamol Syrup -60ml', 50, 100, 120, 0),
(23, 'RS-36322', '4728', '', 0, 0, 'Item Name', 0, 0, 0, 0),
(24, 'RS-22303322082', '7344', '2021-03-31', 28, 1400, 'Clavulin Tabs 625mg', 50, 80, 100, 0),
(25, 'RS-22303322082', '13308', '2021-07-31', 30, 600, 'Amclamed 625mg Tabs', 20, 60, 80, 0),
(26, 'RS-22303322082', '14556', '2021-03-31', 10, 200, 'Amclamed 375mg Tabs', 20, 60, 80, 0),
(27, 'RS-22303322082', '13712', '2021-08-31', 30, 600, 'Cefasyn 500mg Tabs', 20, 60, 80, 0),
(28, 'RS-22303322082', '13700', '2022-04-30', 50, 1000, 'Bactifix 200mg Tabs', 20, 60, 80, 0),
(29, 'RS-22303322082', '13948', '2022-04-30', 50, 1000, 'Clindazed Caps 150mg', 20, 60, 80, 0),
(30, 'RS-22303322082', '14473', '2022-05-31', 10, 240, 'Clindacin Caps 300mg', 24, 50, 80, 0),
(31, 'RS-22303322082', '14610', '2022-06-30', 10, 270, 'Clariwin 500mg Tabs', 27, 60, 80, 0),
(32, 'RS-22303322082', '5995', '2022-09-30', 200, 1100, 'Oracef 500mg Caps', 6, 15, 20, 0),
(33, 'RS-22303322082', '13484', '2021-06-30', 200, 1100, 'Oracef 250mg Capsules', 6, 20, 30, 0),
(34, 'RS-22303322082', '7755', '2022-05-31', 50, 650, 'Ciprointa 500mg Tablets', 13, 25, 35, 0),
(35, 'RS-22303322082', '14067', '2022-02-28', 100, 390, 'Ciprofred Tabs 500mg', 4, 10, 15, 0),
(36, 'RS-22303322082', '13503', '2022-04-30', 5, 300, 'Throza Tabs 500mg - 3''s', 60, 250, 300, 0),
(37, 'RS-22303322082', '5724', '2021-10-31', 100, 900, 'Flucold Caps 10''S', 9, 20, 30, 0),
(38, 'RS-22303322082', '13086', '2021-10-31', 100, 800, 'Erythromycin Tabs 500MG', 8, 20, 30, 0),
(39, 'RS-22303322082', '5938', '2022-10-31', 5, 250, 'Ampiclo-Dawa Dry Syrup 100ml', 50, 100, 150, 0),
(40, 'RS-22303322082', '7175', '2022-10-31', 100, 430, 'Ampiclox Caps 500MG', 4, 15, 20, 0),
(41, 'RS-22303322082', '13203', '2022-02-28', 1000, 1000, 'Cotrimoxazole Tabs 1000''s (COTR', 1, 5, 10, 0),
(42, 'RS-22303322082', '14325', '2021-07-31', 100, 250, 'Amoxil Dispersible 250mg', 3, 10, 15, 0),
(43, 'RS-22303322082', '7172', '2022-07-31', 100, 300, 'Amoxil  Caps 500mg', 3, 13, 20, 0),
(44, 'RS-22303322082', '14079', '2021-04-30', 40, 2320, 'Montel  DT Tabs', 58, 80, 100, 0),
(45, 'RS-22303322082', '6871', '2021-02-28', 14, 560, 'Montiget Tabs 5mg', 40, 70, 90, 0),
(46, 'RS-22303322082', '5915', '2021-11-30', 5, 200, 'Moxacil Gran Susp.125mg -100ml', 40, 100, 120, 0),
(47, 'RS-22303322082', '13009', '2022-09-30', 2, 360, 'Diracip MDS 15''S', 180, 400, 500, 0),
(48, 'RS-22303322082', '8264', '2022-09-30', 2, 360, 'Diracip M Tabs Loose', 180, 400, 500, 0),
(49, 'RS-20433022003860', '12719', '2020-09-30', 8, 8, 'Activated Charcoal Tabs', 1, 3, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE IF NOT EXISTS `receptionist` (
  `receptionist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `profile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`receptionist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`receptionist_id`, `name`, `email`, `password`, `address`, `phone`, `department_id`, `profile`) VALUES
(1, 'Dr. Prashant Patil', 'doctor@doctor.com', 'doctor', 'Mumbai, India', '9800000000', 4, 'profile details here'),
(4, 'jacob nthiwa', 'receptionist@receptionist.com', 'receptionist', 'N/A', '254701417887', 3, 'nthiwa');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8_unicode_ci COMMENT 'operation,birth,death',
  `description` longtext COLLATE utf8_unicode_ci,
  `timestamp` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `request_order`
--

CREATE TABLE IF NOT EXISTS `request_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `datesold` varchar(200) DEFAULT NULL,
  `transdep` varchar(100) DEFAULT NULL,
  `patient_id` varchar(220) DEFAULT NULL,
  `date` varchar(100) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `insurance_id` varchar(100) NOT NULL,
  `user` varchar(200) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=643 ;

--
-- Dumping data for table `request_order`
--

INSERT INTO `request_order` (`transaction_id`, `profit`, `invoice`, `product`, `qty`, `amount`, `name`, `cost`, `price`, `discount`, `minprice`, `datesold`, `transdep`, `patient_id`, `date`, `prescription_id`, `insurance_id`, `user`) VALUES
(617, '50', 'RS-33003', '1', '1', '50', '', '0', '50', '0', NULL, NULL, 'LAB', NULL, '', 0, '', ''),
(618, '90', 'RS-33003', '12', '6', '90', 'ampiclox 500mgs', '0', '15', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', ''),
(619, '75', 'RS-33003', '6', '1', '75', 'albendazole syrup 15mls', '0', '75', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', ''),
(620, '12', 'RS-33003', '14', '2', '12', 'ascorbic acid', '0', '6', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', ''),
(621, '200', 'RS-33003', '2', '1', '200', 'Acyclovir 200mgs', '0', '200', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', ''),
(622, '15', 'RS-33003', '3', '1', '15', 'aceclofenac 100mg ', '0', '15', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', ''),
(623, '45', 'RS-33003', '14', '1', '45', 'allerfast 180mg tabs 100''s', '0', '45', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', ''),
(624, '0', 'RS-00003', '1', '2', '0', 'abz syp', '0', '', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', 'lab'),
(625, '230', 'RS-00003', '6', '1', '230', 'acyclovir cream', '0', '230', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', 'lab'),
(626, '45', 'RS-00003', '14', '1', '45', 'allerfast 180mg tabs 100''s', '0', '45', '0', NULL, NULL, 'LAB', NULL, '02/03/2018', 0, '', 'lab'),
(627, '0', 'RS-253343', '492', '10', '0', 'zulu mr', '0', '', '0', NULL, NULL, 'LAB', NULL, '05/03/2018', 0, '', 'lab'),
(628, '30', 'RS-2323', '4', '1', '30', 'acepar sp', '0', '30', '0', NULL, NULL, 'X-RAY', NULL, '06/03/2018', 0, '', 'x-ray'),
(629, '90', 'RS-2323', '14', '2', '90', 'allerfast 180mg tabs 100''s', '0', '45', '0', NULL, NULL, 'X-RAY', NULL, '06/03/2018', 0, '', 'x-ray'),
(630, '25', 'RS-365229', '5', '1', '25', 'acyclovir 400mg tabs', '0', '25', '0', NULL, NULL, 'LAB', NULL, '15/04/2018', 0, '', '<br />\r\n<font size=''1''><table class=''xdebug-error xe-notice'' dir=''ltr'' border=''1'' cellspacing=''0'' cellpadding=''1''>\r\n<tr><th align=''left'' bgcolor=''#f57900'' colspan='),
(631, '230', 'RS-533232', '6', '1', '230', 'acyclovir cream', '0', '230', '0', NULL, NULL, 'LAB', NULL, '15/04/2018', 0, '', 'lab'),
(632, '200', 'RS-49833', '2', '1', '200', 'Acyclovir 200mgs', '0', '200', '0', NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO'),
(633, '20', 'RS-49833', '11', '2', '20', 'amoxycillin 500mgs', '0', '10', '0', NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO'),
(634, '0', 'RS-0039', '4', '7', '0', NULL, '0', NULL, '0', NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO'),
(635, '0', 'RS-35205', '134', '3', '0', NULL, '0', NULL, '0', NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO'),
(636, '0', 'RS-83282', '134', '3', '0', NULL, '0', NULL, '0', NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO'),
(637, '750', 'RS-337922', '134', '3', '750', 'adrenalin 1mg/ml', '0', '250', '0', NULL, NULL, 'PHARMACY', NULL, '16/04/2018', 0, '', 'FAITH ARIKO'),
(638, '600', 'RS-333962', '2', '3', '600', 'Acyclovir 200mgs', '0', '200', '0', NULL, NULL, 'DOCTOR', NULL, '18/04/2018', 0, '', 'Jacob Nthiwa'),
(639, '0', 'RS-032333', '100', '', '0', 'amoxycillin 100mls', '0', '100', '0', NULL, NULL, 'PHARMACY', NULL, '08/11/2018', 0, '', 'halima adan'),
(640, '75', 'RS-02232', '12', '5', '75', 'ampiclox 500mgs', '0', '15', '0', NULL, NULL, 'PHARMACY', NULL, '15/11/2018', 0, '', 'halima adan'),
(641, '100', 'RS-236', '11', '10', '100', 'amoxycillin 500mgs', '0', '10', '0', NULL, NULL, 'PHARMACY', NULL, '26/01/2019', 0, '', 'halima adan'),
(642, '900', 'RS-27060', '147', '6', '900', 'dextrose 5%', '0', '150', '0', NULL, NULL, 'DOCTOR', NULL, '28/06/2019', 0, '', 'ANTHONY NDEGWA');

-- --------------------------------------------------------

--
-- Table structure for table `revists`
--

CREATE TABLE IF NOT EXISTS `revists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `insurance_id` varchar(100) DEFAULT NULL,
  `in_number` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `fee` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `account_opening_timestamp` varchar(100) DEFAULT NULL,
  `diagnosis` longtext,
  `diagnosis1` varchar(100) DEFAULT NULL,
  `diagnosis2` varchar(100) DEFAULT NULL,
  `height` varchar(11) DEFAULT NULL,
  `weight` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=582 ;

--
-- Dumping data for table `revists`
--

INSERT INTO `revists` (`id`, `patient_id`, `name`, `address`, `phone`, `insurance_id`, `in_number`, `age`, `fee`, `sex`, `account_opening_timestamp`, `diagnosis`, `diagnosis1`, `diagnosis2`, `height`, `weight`) VALUES
(1, 258, 'AYIERA WILLIAM', 'KIABUYA', '0740998321', 'AON-TSC', '145745', '58', '500', 'male', '12/10/2017', NULL, NULL, NULL, '0', '0'),
(2, 305, 'ANNE AKINYI', 'RAGA', '0727698307', 'NHIF', '', '44', '350', 'female', '30/11/2017', NULL, NULL, NULL, '60', '0'),
(3, 320, 'ELIZABETH OTIENO', 'KIABUYA', '0724397361', 'NHIF', '', '60', '350', 'female', '30/11/2017', NULL, NULL, NULL, '60', '0'),
(4, 300, 'KINYANGA REDEMPTA', 'LWALA', '0716547854', 'CASH', '', '18', '200', 'female', '2017-11-30', NULL, NULL, NULL, '60', '0'),
(5, 337, 'DENIS OLUOCHI KIMEMIA', 'PO BOX 89 KATANGI', '0701417887', 'NHIF NATIONAL SCHEME(UNIVERSAL)', 'JB1234', '23', '500', 'Male', '2017-12-02', NULL, NULL, NULL, '3', '0'),
(6, 300, 'KINYANGA REDEMPTA', 'LWALA', '0716547854', 'CASH', '', '18', '200', 'female', '2018-02-07', NULL, NULL, NULL, '60', '0'),
(7, 300, 'KINYANGA REDEMPTA', 'LWALA', '0716547854', 'CASH', '', '18', '200', 'female', '2018-02-07', NULL, NULL, NULL, '60', '0'),
(8, 300, 'KINYANGA REDEMPTA', 'LWALA', '0716547854', 'CASH', '', '18', '200', 'female', '2018-02-07', NULL, NULL, NULL, '60', '0'),
(9, 338, 'JEREMIAH KIMATU MUTUKU', 'MUVUTI', '0701417887', 'NHIF NATIONAL SCHEME(UNIVERSAL)', '5607876', '23', '500', 'Male', '2018-02-07', NULL, NULL, NULL, '3', '0'),
(10, 334, 'Jacob Nthiwa', '', '0701417887', 'NHIF CIVIL SERVANTS', 'JB1234', '0', '', 'Male', '2018-02-07', NULL, NULL, NULL, '0', '0'),
(11, 324, 'DANIEL OTIENO', 'OLASI', '0724512250', 'NHIF', '', '34', '350', 'male', '2018-02-08', NULL, NULL, NULL, '60', '0'),
(12, 314, 'DISMAS AROKO', 'ALENDO', '07266454015', 'NHIF', '', '14', '350', 'male', '2018-02-12', NULL, NULL, NULL, '60', '0'),
(13, 334, 'Jacob Nthiwa', '', '0701417887', 'NHIF CIVIL SERVANTS', 'JB1234', '0', '', 'Male', '2018-02-12', NULL, NULL, NULL, '0', '0'),
(14, 305, 'ANNE AKINYI', 'RAGA', '0727698307', 'NHIF', '', '44', '350', 'female', '2018-02-16', NULL, NULL, NULL, '60', '0'),
(15, 347, 'KIMALU MWAU', 'MWALA', '0701417887', 'NHIF-NATIONAL SCHEME', '5607876', '0', '', 'Male', '2018-02-16', NULL, NULL, NULL, '0', '0'),
(16, 342, 'JAMES KIMANZI MUMO', 'PO BOX 89 SULTAN', '0701417887', 'CASH', '5607876', '0', '500', 'Male', '2018-02-26', NULL, NULL, NULL, '0', '0'),
(17, 346, 'KIMANZI VINCENT', 'PO BOX 89 SULTAN', '0798765654', 'CASH', '', '25', '', 'Male', '2018-02-28', NULL, NULL, NULL, '0', '0'),
(18, 329, 'ERICK MUTISYA WAMBUA', 'KATOLONI', '0701417887', 'MACHAKOS COUNTY GORV', '5607876', '34', '100', 'Male', '2018-02-28', NULL, NULL, NULL, '3', '50'),
(19, 345, 'MUMO JEREMIAH', 'KATUTUNI', '+254701417887', 'NHIF NATIONAL SCHEME(UNIVERSAL)', 'JB1234', '23', '500', 'Male', '2018-03-15', NULL, NULL, NULL, '3', '0'),
(20, 345, 'MUMO JEREMIAH', 'KATUTUNI', '+254701417887', 'CASH', 'JB1234', '23', '500', 'Male', '2018-03-18', NULL, NULL, NULL, '3', '0'),
(21, 300, 'KINYANGA REDEMPTA', 'LWALA', '0716547854', 'CASH', '', '18', '200', 'female', '2018-03-18', NULL, NULL, NULL, '60', '0'),
(22, 338, 'JEREMIAH KIMATU MUTUKU', 'MUVUTI', '0701417887', 'NHIF NATIONAL SCHEME(UNIVERSAL)', '5607876', '23', '500', 'Male', '2018-03-18', NULL, NULL, NULL, '3', '0'),
(23, 345, 'MUMO JEREMIAH', 'KATUTUNI', '+254701417887', 'CASH', 'JB1234', '23', '500', 'Male', '2018-03-19', NULL, NULL, NULL, '3', '0'),
(24, 329, 'ERICK MUTISYA WAMBUA', 'KATOLONI', '0701417887', 'MACHAKOS COUNTY GORV', '5607876', '34', '100', 'Male', '2018-03-22', NULL, NULL, NULL, '3', '50'),
(25, 312, 'PLENTIUS OTIENO', '0707638690', '', 'AON', '', '37', '350', 'male', '2018-04-14', NULL, NULL, NULL, '60', '0'),
(26, 312, 'PLENTIUS OTIENO', '0707638690', '', 'AON', '', '37', '350', 'male', '2018-06-08', NULL, NULL, NULL, '60', '0'),
(27, 329, 'ERICK MUTISYA WAMBUA', 'KATOLONI', '0701417887', 'CASH', '5607876', '34', '100', 'Male', '2018-08-07', NULL, NULL, NULL, '3', '50'),
(28, 355, 'Jacob Nthiwa', 'ISINYA', '0798765654', 'CASH', '', '34', '', 'Male', '2018-10-20', NULL, NULL, NULL, '3.0M', ''),
(29, 357, 'JOHN AOKO', 'PO BOX 89 KATANGI', '0701417887', 'CASH', '', '34', '', 'Male', '2018-10-23', NULL, NULL, NULL, '', ''),
(30, 357, 'JOHN AOKO', 'PO BOX 89 KATANGI', '0701417887', 'CASH', '', '34', '', 'Male', '2018-10-24', NULL, NULL, NULL, '2.5 M', '50 KGS'),
(31, 300, 'KINYANGA REDEMPTA', 'LWALA', '0716547854', 'CASH', '', '18', '200', 'female', '2018-11-07', NULL, NULL, NULL, '60', ''),
(32, 3, 'jacob ndambuki', 'isiolo', '0700123456', 'CASH', '', '22', '', 'Male', '2018-11-08', NULL, NULL, NULL, '', ''),
(33, 3, 'jacob ndambuki', 'isiolo', '0700123456', 'CASH', '', '22', '', 'Male', '2018-11-08', NULL, NULL, NULL, '', ''),
(34, 3, 'jacob ndambuki', 'isiolo', '0700123456', 'CASH', '', '22', '', 'Male', '2018-11-08', NULL, NULL, NULL, '', ''),
(35, 3, 'jacob ndambuki', 'isiolo', '0700123456', 'CASH', '', '22', '', 'Male', '2018-11-08', NULL, NULL, NULL, '', ''),
(36, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-16', NULL, NULL, NULL, NULL, NULL),
(37, 28, 'HALIMA ABDI', 'lmd', '0701751523', 'CASH', '', '64', '', 'Female', '2018-11-21', NULL, NULL, NULL, '', ''),
(38, 91, 'Fartun Abdikadir', 'bula pesa', '0718901284', 'CASH', '', '6', '', 'Female', '2018-11-22', NULL, NULL, NULL, '', ''),
(39, 56, 'abubakar abdikadir', 'bula pesa', '0721991961', 'CASH', '', '12', '', 'Male', '2018-11-23', NULL, NULL, NULL, '', ''),
(40, 71, 'felix opiyo', 'safi estate', '0790944585', 'CASH', '', '31', '', 'Male', '2018-11-24', NULL, NULL, NULL, '', ''),
(41, 91, 'Fartun Abdikadir', 'bula pesa', '0718901284', 'CASH', '', '6', '', 'Female', '2018-11-26', NULL, NULL, NULL, '', ''),
(42, 181, 'abdia godesa', 'kiwanjani', '0726239544', 'CASH', '', '38', '', 'Female', '2018-12-01', NULL, NULL, NULL, '', ''),
(43, 181, 'abdia godesa', 'kiwanjani', '0726239544', 'CASH', '', '38', '', 'Female', '2018-12-01', NULL, NULL, NULL, '', ''),
(44, 28, 'HALIMA ABDI', 'lmd', '0701751523', 'CASH', '', '64', '', 'Female', '2018-12-04', NULL, NULL, NULL, '', ''),
(45, 109, 'bishar abdinur', 'KAMBI GARBA', '0723708176', 'CASH', '', '45', '', 'Male', '2018-12-05', NULL, NULL, NULL, '', ''),
(46, 256, 'halima adan', 'CHECHELESI', '0724272216', 'CASH', '', '97', '', 'Female', '2018-12-07', NULL, NULL, NULL, '', ''),
(47, 190, 'ASHA IBRAHIM', 'WATER', '0722314825', 'CASH', '', '18', '', 'Female', '2018-12-07', NULL, NULL, NULL, '', ''),
(48, 257, 'ASHA IBRAHIM', 'kiwanjani', '0722614796', 'CASH', '', '19', '', 'Female', '2018-12-08', NULL, NULL, NULL, '', ''),
(49, 181, 'abdia godesa', 'kiwanjani', '0726239544', 'CASH', '', '38', '', 'Female', '2018-12-09', NULL, NULL, NULL, '', ''),
(50, 249, 'hadija galgalo', 'kiwanjani', '0726838472', 'CASH', '', '60', '', 'Female', '2018-12-10', NULL, NULL, NULL, '', ''),
(51, 234, 'habiba abdi', 'town', '', 'CASH', '', '80', '', 'Female', '2018-12-10', NULL, NULL, NULL, '', ''),
(52, 234, 'habiba abdi', 'town', '', 'CASH', '', '80', '', 'Female', '2018-12-10', NULL, NULL, NULL, '', ''),
(53, 307, 'rukia dube', 'kiwanjani', '0726740558', 'CASH', '', '52', '', 'Female', '2018-12-12', NULL, NULL, NULL, '', ''),
(54, 213, 'yasmin yussuf', 'kiwanjani', '0722564599', 'CASH', '', '16', '', 'Female', '2018-12-13', NULL, NULL, NULL, '', ''),
(55, 330, 'HUSSEIN GEORGE', 'kambi juu', '0745987899', 'CASH', '', '4', '', 'Male', '2018-12-14', NULL, NULL, NULL, '', ''),
(56, 363, 'amir mohamed', 'CHECHELESI', '0721174355', 'CASH', '', '3', '', 'Male', '2018-12-19', NULL, NULL, NULL, '', ''),
(57, 257, 'ASHA IBRAHIM', 'kiwanjani', '0722614796', 'CASH', '', '19', '', 'Female', '2018-12-21', NULL, NULL, NULL, '', ''),
(58, 344, 'ABDI GUYO', 'garbatula', '0704725443', 'CASH', '', '55', '', 'Male', '2018-12-21', NULL, NULL, NULL, '', ''),
(59, 112, 'MUZAMIN NUR', 'bula pesa', '0723018237', 'CASH', '', '1', '', 'Male', '2018-12-23', NULL, NULL, NULL, '', ''),
(60, 358, 'hawo abdi', 'bula pesa', '0721743544', 'CASH', '', '58', '', 'Female', '2018-12-24', NULL, NULL, NULL, '', ''),
(61, 365, 'amina hassan', 'tuluroba', '0729380610', 'CASH', '', '65', '', 'Female', '2018-12-24', NULL, NULL, NULL, '', ''),
(62, 133, 'dahabo omar', 'kiwanjani', '0722249384', 'CASH', '', '70', '', 'Female', '2018-12-28', NULL, NULL, NULL, '', ''),
(63, 439, 'mohamed ibrahim', 'bula pesa', '0720557704', 'CASH', '', '4', '', 'Male', '2018-12-29', NULL, NULL, NULL, '', ''),
(64, 472, 'HUSSEIN HASSAN', 'bula pesa', '0703207696', 'CASH', '', '2', '', 'Male', '2018-12-29', NULL, NULL, NULL, '', ''),
(65, 450, 'ali mohamed', 'safi estate', '0726111364', 'CASH', '', '22', '', 'Male', '2018-12-30', NULL, NULL, NULL, '', ''),
(66, 331, 'abdia yakub', 'kiwanjani', '0702379859', 'CASH', '', '35', '200', 'Female', '2018-12-30', NULL, NULL, NULL, '', ''),
(67, 325, 'AHMED ABDINUR', 'kambi shariff', '0702532250', 'CASH', '', '16', '', 'Male', '2019-01-01', NULL, NULL, NULL, '', ''),
(68, 282, 'zeinab  haji hirassi', '', '', 'CASH', '', '70', '200', 'Female', '2019-01-03', NULL, NULL, NULL, '', ''),
(69, 524, 'NIMO ABDI MOHAMED', 'ISIOLO', '0720994696', 'FFS', '', '30', '', 'Female', '2019-01-05', NULL, NULL, NULL, '', ''),
(70, 532, 'JOASH KENYANYA OTOKI', 'ISIOLO', '0729607829', 'NPS', '4881264', '34', '500', 'Male', '2019-01-06', NULL, NULL, NULL, '', ''),
(71, 498, 'ABDINASIR AHMED', 'bula pesa', '', 'CASH', '', '6', '', 'Male', '2019-01-06', NULL, NULL, NULL, '', ''),
(72, 351, 'abduba dida', 'tuluroba', '0723859734', 'CASH', '', '39', '200', 'Male', '2019-01-08', NULL, NULL, NULL, '', ''),
(73, 521, 'YUSHKAR ABKUL GODANA', 'LMD', '0723999852', 'NPS', '1104250', '6', '500', 'Male', '2019-01-09', NULL, NULL, NULL, '', ''),
(74, 333, 'seifudin ibrahim', 'barrier', '0721165338', 'CASH', '', '3', '200', 'Male', '2019-01-09', NULL, NULL, NULL, '', ''),
(75, 416, 'shani osman', 'bula pesa', '0707326562', 'CASH', '', '21', '', 'Female', '2019-01-10', NULL, NULL, NULL, '', ''),
(76, 298, 'AHMED ALI', 'bula pesa', '0715147829', 'CASH', '', '0', '', 'Male', '2019-01-10', NULL, NULL, NULL, '', ''),
(77, 607, 'HASSAN DIBA', 'KAMBI ODHA', '', 'CASH', '', '24', '', 'Male', '2019-01-11', NULL, NULL, NULL, '', ''),
(78, 541, 'HUSSEIN ABDI', 'kambi juu', '0711740965', 'CASH', '', '12', '200', 'Male', '2019-01-12', NULL, NULL, NULL, '', ''),
(79, 618, 'KABALE MAMO', 'ISIOLO', '0722834833', 'NPS', '829444', '36', '500', 'Female', '2019-01-12', NULL, NULL, NULL, '', ''),
(80, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '500', 'Female', '2019-01-13', NULL, NULL, NULL, '', ''),
(81, 71, 'felix opiyo', 'safi estate', '0790944585', 'CASH', '', '31', '200', 'Male', '2019-01-14', NULL, NULL, NULL, '', ''),
(82, 138, 'shuria abdisalam', 'kina', '0715015919', 'CASH', '', '1', '200', 'Male', '2019-01-14', NULL, NULL, NULL, '', ''),
(83, 649, 'ZARIWA ADAN', 'COUNTY', '0710273750', 'CASH', '', '0', '', 'Female', '2019-01-14', NULL, NULL, NULL, '', ''),
(84, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '', '1', '500', 'Female', '2019-01-15', NULL, NULL, NULL, '', ''),
(85, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '8', '500', 'Female', '2019-01-15', NULL, NULL, NULL, '', ''),
(86, 614, 'GURATI NASIBO', 'ISIOLO', '0700922980', 'NPS', '1206203', '41', '500', 'Female', '2019-01-15', NULL, NULL, NULL, '', ''),
(87, 234, 'habiba abdi', 'town', '', 'CASH', '', '80', '', 'Female', '2019-01-16', NULL, NULL, NULL, '', ''),
(88, 457, 'IBRAHIM IDDI', 'TURUROBA', '0725036364', 'NPS', '3439467', '5', '500', 'Male', '2019-01-16', NULL, NULL, NULL, '', ''),
(89, 116, 'boniface kinoti', 'mwangaza', '0711449109', 'CASH', '', '16', '', 'Male', '2019-01-18', NULL, NULL, NULL, '', ''),
(90, 570, 'HUSSEIN SHEIK ABDULLAHI', 'ISIOLO', '0723524551', 'NPS', '1524343', '36', '500', 'Male', '2019-01-18', NULL, NULL, NULL, '', ''),
(91, 611, 'JOSHUA ONGUTI GITAGA', 'ISIOLO', '0707028911', 'NPS', '4854747', '26', '', 'Male', '2019-01-18', NULL, NULL, NULL, '', ''),
(92, 570, 'HUSSEIN SHEIK ABDULLAHI', 'ISIOLO', '0723524551', 'NPS', '1524343', '36', '', 'Male', '2019-01-18', NULL, NULL, NULL, '', ''),
(93, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '', '1', '', 'Female', '2019-01-18', NULL, NULL, NULL, '', ''),
(94, 333, 'seifudin ibrahim', 'barrier', '0721165338', 'CASH', '', '3', '', 'Male', '2019-01-18', NULL, NULL, NULL, '', ''),
(95, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '', '1', '500', 'Female', '2019-01-20', NULL, NULL, NULL, '', ''),
(96, 133, 'dahabo omar', 'kiwanjani', '0722249384', 'CASH', '', '70', '200', 'Female', '2019-01-21', NULL, NULL, NULL, '', ''),
(97, 31, 'mardhiya ali', 'tuluroba', '0716578375', 'CASH', '', '1', '200                 ', 'Female', '2019-01-22', NULL, NULL, NULL, '', ''),
(98, 532, 'JOASH KENYANYA OTOKI', 'ISIOLO', '0729607829', 'NPS', '4881264', '34', '500', 'Male', '2019-01-22', NULL, NULL, NULL, '', ''),
(99, 744, 'BARWAQ ABDU', 'bula pesa', '0722990102', 'CASH', '', '40', '200', 'Female', '2019-01-24', NULL, NULL, NULL, '', ''),
(100, 581, 'ISMAEL AHMED', 'KAMBI GARBA', '0704756246', 'CASH', '', '3', '', 'Male', '2019-01-24', NULL, NULL, NULL, '', ''),
(101, 581, 'ISMAEL AHMED', 'KAMBI GARBA', '0704756246', 'CASH', '', '3', '', 'Male', '2019-01-24', NULL, NULL, NULL, '', ''),
(102, 75, 'nickson muhia', 'kambi juu', '0713270038', 'CASH', '', '4', '200', 'Male', '2019-01-24', NULL, NULL, NULL, '', ''),
(103, 75, 'nickson muhia', 'kambi juu', '0713270038', 'CASH', '', '4', '', 'Male', '2019-01-24', NULL, NULL, NULL, '', ''),
(104, 785, 'ANIFA ISHTIAK', 'TOWN', '0721658782', 'CASH', '', '3', '', 'Female', '2019-01-24', NULL, NULL, NULL, '', ''),
(105, 324, 'IBRAHIM JIROW', 'kiwanjani', '', 'CASH', '', '52', '200', 'Male', '2019-01-25', NULL, NULL, NULL, '', ''),
(106, 169, 'udheifa hassan', 'bula pesa', '0722990102', 'CASH', '', '3', '200', 'Male', '2019-01-25', NULL, NULL, NULL, '', ''),
(107, 133, 'dahabo omar', 'kiwanjani', '0722249384', 'CASH', '', '70', '', 'Female', '2019-01-26', NULL, NULL, NULL, '', ''),
(108, 769, 'khadija iqbal', 'bula pesa', '0714421389', 'CASH', '', '6', '', 'Female', '2019-01-26', NULL, NULL, NULL, '', ''),
(109, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '500', 'Female', '2019-01-26', NULL, NULL, NULL, '', ''),
(110, 46, 'SUMEIYA SIMBA', 'bula pesa', '0706570520', 'CASH', '', '10', '', 'Female', '2019-01-27', NULL, NULL, NULL, '', ''),
(111, 649, 'ZARIWA ADAN', 'COUNTY', '0710273750', 'CASH', '', '0', '', 'Female', '2019-01-27', NULL, NULL, NULL, '', ''),
(112, 16, 'RAHAMA SIMBA', 'bula pesa', '0706570520', 'CASH', '', '6', '200', 'Female', '2019-01-28', NULL, NULL, NULL, '', ''),
(113, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '500', 'Female', '2019-01-29', NULL, NULL, NULL, '', ''),
(114, 645, 'CAMILA BORUMA', 'bula pesa', '0721657121', 'CASH', '', '21', '', 'Female', '2019-01-30', NULL, NULL, NULL, '', ''),
(115, 645, 'CAMILA BORUMA', 'bula pesa', '0721657121', 'CASH', '', '21', '', 'Female', '2019-01-30', NULL, NULL, NULL, '', ''),
(116, 493, 'ABDIRIZAK ALI GUFU', 'wabera', '0727289142', 'NPS', '0930309', '6', '500', 'Male', '2019-01-31', NULL, NULL, NULL, '', ''),
(117, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '', 'Female', '2019-01-31', NULL, NULL, NULL, '', ''),
(118, 493, 'ABDIRIZAK ALI GUFU', 'wabera', '0727289142', 'NPS', '0930309', '6', '', 'Male', '2019-01-31', NULL, NULL, NULL, '', ''),
(119, 697, 'SALMA MOHAMED', '', '', 'CASH', '', '0', '', 'Female', '2019-02-02', NULL, NULL, NULL, '', ''),
(120, 521, 'YUSHKAR ABKUL GODANA', 'LMD', '0723999852', 'NPS', '1104250', '6', '500', 'Male', '2019-02-03', NULL, NULL, NULL, '', ''),
(121, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '8', '500', 'Female', '2019-02-03', NULL, NULL, NULL, '', ''),
(122, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '', '1', '500', 'Female', '2019-02-03', NULL, NULL, NULL, '', ''),
(123, 770, 'nasibo gurati', 'ISIOLO', '0700922980', 'NPS', '1206203', '40', '500', 'Female', '2019-02-03', NULL, NULL, NULL, '', ''),
(124, 421, 'samir hussein', 'down town', '', 'CASH', '', '3', '200', 'Male', '2019-02-03', NULL, NULL, NULL, '', ''),
(125, 382, 'jafar faraj', 'kiwanjani', '0727738858', 'CASH', '', '2', '200', 'Male', '2019-02-03', NULL, NULL, NULL, '', ''),
(126, 779, 'NURIA ABDIKADIR MAALIM', 'ISIOLO', '0711918505', 'NPS', '', '35', '500', 'Female', '2019-02-03', NULL, NULL, NULL, '', ''),
(127, 779, 'NURIA ABDIKADIR MAALIM', 'ISIOLO', '0711918505', 'NPS', '1507892', '35', '500', 'Female', '2019-02-03', NULL, NULL, NULL, '', ''),
(128, 532, 'JOASH KENYANYA OTOKI', 'ISIOLO', '0729607829', 'NPS', '4881264', '34', '500', 'Male', '2019-02-04', NULL, NULL, NULL, '', ''),
(129, 689, 'RALIA ABDI', 'KAMBI GARBA', '0791084162', 'CASH', '', '17', '200', 'Female', '2019-02-04', NULL, NULL, NULL, '', ''),
(130, 917, 'YUSUF JARSO', 'kiwanjani', '0715147799', 'CASH', '', '18', '', 'Male', '2019-02-04', NULL, NULL, NULL, '', ''),
(131, 437, 'HASSAN ALI', 'TAQWA', '0728428813', 'CASH', '', '45', '200', 'Male', '2019-02-05', NULL, NULL, NULL, '', ''),
(132, 132, 'abdifattah abdirahman', 'TAQWA', '0723880401', 'CASH', '', '13', '', 'Male', '2019-02-05', NULL, NULL, NULL, '', ''),
(133, 132, 'ABDIFATAH HASSAN', 'TAQWA', '', 'CASH', '', '6', '', 'Male', '2019-02-05', NULL, NULL, NULL, '', ''),
(134, 521, 'YUSHKAR ABKUL GODANA', 'LMD', '0723999852', 'NPS', '1104250', '6', '500', 'Male', '2019-02-05', NULL, NULL, NULL, '', ''),
(135, 786, 'ISMAEL OMAR', 'ISIOLO', '0711918505', 'NPS', '', '9', '500', 'Male', '2019-02-05', NULL, NULL, NULL, '', ''),
(136, 107, 'ibtisan abbas', 'ola odha', '0721782527', 'CASH', '', '9', '', 'Female', '2019-02-05', NULL, NULL, NULL, '', ''),
(137, 934, 'HADIJA ABDULLAHI', 'ISIOLO', '0725152269', 'FFS', '2516457', '4', '500', 'Female', '2019-02-06', NULL, NULL, NULL, '', ''),
(138, 749, 'RUKIA MATAR HAMDAN', 'ISIOLO', '0720468693', 'NPS', '1712460', '44', '500', 'Female', '2019-02-07', NULL, NULL, NULL, '', ''),
(139, 748, 'DAHIR ALI MOHAMUD', 'ISIOLO', '0720468693', 'NPS', '1712460', '46', '500', 'Male', '2019-02-07', NULL, NULL, NULL, '', ''),
(140, 696, 'ADAN HASSAN ABDIKARIM', 'ISIOLO', '0728424893', 'NPS', '12304300', '19', '500', 'Male', '2019-02-08', NULL, NULL, NULL, '', ''),
(141, 816, 'rahama issack', 'bula pesa', '0702454022', 'CASH', '', '5', '200', 'Female', '2019-02-08', NULL, NULL, NULL, '', ''),
(142, 860, 'ABDIRAHMAN DIBA', 'ISIOLO', '', 'NPS', '3663767', '6', '', 'Male', '2019-02-09', NULL, NULL, NULL, '', ''),
(143, 860, 'ABDIRAHMAN DIBA', 'ISIOLO', '0720703895', 'NPS', '3663767', '6', '500', 'Male', '2019-02-09', NULL, NULL, NULL, '', ''),
(144, 896, 'RAHADHAN DIBA', 'CHECHELESI', '0720703895', 'NPS', '3663767', '3', '500', 'Male', '2019-02-10', NULL, NULL, NULL, '', ''),
(145, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '500', 'Male', '2019-02-10', NULL, NULL, NULL, '', ''),
(146, 785, 'ANIFA ISHTIAK', 'TOWN', '0721658782', 'CASH', '', '3', '', 'Female', '2019-02-11', NULL, NULL, NULL, '', ''),
(147, 849, 'LULA ABDI', 'CHECHELESI', '0721350009', 'CASH', '', '25', '', 'Female', '2019-02-11', NULL, NULL, NULL, '', ''),
(148, 542, 'SHAMRA ABDISHAKUR', 'CHECHELESI', '0710888821', 'CASH', '', '2', '', 'Female', '2019-02-11', NULL, NULL, NULL, '', ''),
(149, 908, 'ABDI MOHAMED', 'bula pesa', '0700922980', 'NPS', '1206203', '15', '500', 'Male', '2019-02-11', NULL, NULL, NULL, '', ''),
(150, 532, 'JOASH KENYANYA OTOKI', 'ISIOLO', '0729607829', 'NPS', '4881264', '34', '500', 'Male', '2019-02-11', NULL, NULL, NULL, '', ''),
(151, 532, 'JOASH KENYANYA OTOKI', 'ISIOLO', '0729607829', 'NPS', '4881264', '34', '', 'Male', '2019-02-11', NULL, NULL, NULL, '', ''),
(152, 783, 'YUNIS HUSEIN', 'CHECHELESI', '0704509610', 'NPS', '1829125', '11', '500', 'Male', '2019-02-12', NULL, NULL, NULL, '', ''),
(153, 524, 'NIMO ABDI MOHAMED', 'ISIOLO', '0720994696', 'FFS', '', '30', '1000', 'Female', '2019-02-12', NULL, NULL, NULL, '', ''),
(154, 210, 'lokho jirma', 'CHECHELESI', '0704024822', 'CASH', '', '4', '200', 'Female', '2019-02-13', NULL, NULL, NULL, '', ''),
(155, 483, 'balkis osman', 'kula mawe', '0725830981', 'CASH', '', '18', '200', 'Female', '2019-02-13', NULL, NULL, NULL, '', ''),
(156, 865, 'MALYUN OMAR', 'bula pesa', '0799372735', 'CASH', '', '19', '200', 'Female', '2019-02-14', NULL, NULL, NULL, '', ''),
(157, 912, 'CHARITY KINYA', 'kiwanjani', '0720979136', 'CASH', '', '27', '200', 'Female', '2019-02-14', NULL, NULL, NULL, '', ''),
(158, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '', '1', '500', 'Female', '2019-02-14', NULL, NULL, NULL, '', ''),
(159, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '1206203', '1', '', 'Female', '2019-02-14', NULL, NULL, NULL, '', ''),
(160, 896, 'RAHADHAN DIBA', 'CHECHELESI', '0720703895', 'NPS', '3663767', '3', '500', 'Male', '2019-02-16', NULL, NULL, NULL, '', ''),
(161, 59, 'afsa hassan', 'bula pesa', '0722990102', 'CASH', '', '5', '200', 'Female', '2019-02-16', NULL, NULL, NULL, '', ''),
(162, 954, 'LULE MOHAMUD', 'kambi shariff', '0728739681', 'CASH', '', '28', '200', 'Female', '2019-02-17', NULL, NULL, NULL, '', ''),
(163, 532, 'JOASH KENYANYA OTOKI', 'ISIOLO', '0729607829', 'NPS', '4881264', '34', '500', 'Male', '2019-02-18', NULL, NULL, NULL, '', ''),
(164, 319, 'abdia abdikadir', 'kiwanjani', '', 'CASH', '', '38', '', 'Female', '2019-02-18', NULL, NULL, NULL, '', ''),
(165, 358, 'hawo abdi', 'bula pesa', '0721743544', 'CASH', '', '58', '200', 'Female', '2019-02-19', NULL, NULL, NULL, '', ''),
(166, 766, 'mariam mohamed', 'tuluroba', '0722880838', 'CASH', '', '55', '', 'Female', '2019-02-19', NULL, NULL, NULL, '', ''),
(167, 766, 'mariam mohamed', 'tuluroba', '0722880838', 'CASH', '', '55', '', 'Female', '2019-02-19', NULL, NULL, NULL, '', ''),
(168, 615, 'FATUMA GUYO', 'CHECHELESI', '0726394495', 'CASH', '', '0', '', 'Male', '2019-02-20', NULL, NULL, NULL, '', ''),
(169, 573, 'ABDISHUKRI OMAR ADAN OMAR', 'ISIOLO', '0711918505', 'NPS', '', '2', '', 'Male', '2019-02-20', NULL, NULL, NULL, '', ''),
(170, 770, 'nasibo gurati', 'ISIOLO', '0700922980', 'NPS', '1206203', '40', '', 'Female', '2019-02-20', NULL, NULL, NULL, '', ''),
(171, 774, 'DARMI JIRMA', 'CHECHELESI', '0704024822', 'CASH', '', '0', '', 'Female', '2019-02-21', NULL, NULL, NULL, '', ''),
(172, 1039, 'AISHA MOHAMED', 'KAMBI ODHA', '0705561193', 'CASH', '', '28', '', 'Male', '2019-02-21', NULL, NULL, NULL, '', ''),
(173, 319, 'abdia abdikadir', 'kiwanjani', '', 'CASH', '', '38', '', 'Female', '2019-02-21', NULL, NULL, NULL, '', ''),
(174, 669, 'MUSLIMA ABDI', 'bulla pesa', '0727996603', 'CASH', '', '20', '', 'Female', '2019-02-22', NULL, NULL, NULL, '', ''),
(175, 169, 'udheifa hassan', 'bula pesa', '0722990102', 'CASH', '', '3', '', 'Male', '2019-02-23', NULL, NULL, NULL, '', ''),
(176, 1003, 'ABDIRAHMAN RASHID', 'bula pesa', '0729141280', 'CASH', '', '1', '', 'Male', '2019-02-23', NULL, NULL, NULL, '', ''),
(177, 749, 'RUKIA MATAR HAMDAN', 'ISIOLO', '0720468693', 'NPS', '1712460', '44', '500', 'Female', '2019-02-23', NULL, NULL, NULL, '', ''),
(178, 319, 'abdia abdikadir', 'kiwanjani', '', 'CASH', '', '38', '', 'Female', '2019-02-23', NULL, NULL, NULL, '', ''),
(179, 798, 'MOHAMED OMAR', 'bula pesa', '0711918505', 'NPS', '1507892', '12', '500', 'Male', '2019-02-24', NULL, NULL, NULL, '', ''),
(180, 1034, 'NASRA NUR', 'bula pesa', '0718699382', 'CASH', '', '0', '', 'Female', '2019-02-24', NULL, NULL, NULL, '', ''),
(181, 605, 'SHABA N ABDULLAHI', 'bula pesa', '0728276295', 'CASH', '', '23', '', 'Male', '2019-02-24', NULL, NULL, NULL, '', ''),
(182, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '8', '500', 'Female', '2019-02-24', NULL, NULL, NULL, '', ''),
(183, 744, 'BARWAQ ABDU', 'bula pesa', '0722990102', 'CASH', '', '40', '', 'Female', '2019-02-24', NULL, NULL, NULL, '', ''),
(184, 888, 'HUSSEIN DUBA BARWAQO', 'KAMBI GARBA', '0798156777', 'NPS', '12306531', '18', '500', 'Female', '2019-02-25', NULL, NULL, NULL, '', ''),
(185, 887, 'FARIDA MOHAMED HILLO', 'garbatula', '0743306492', 'NPS', '12303892', '18', '500', 'Female', '2019-02-25', NULL, NULL, NULL, '', ''),
(186, 887, 'FARIDA MOHAMED HILLO', 'garbatula', '0743306492', 'NPS', '12303892', '18', '500', 'Female', '2019-02-25', NULL, NULL, NULL, '', ''),
(187, 988, 'MOHAMED ISSACK', 'bula pesa', '0740685713', 'CASH', '', '19', '', 'Male', '2019-02-25', NULL, NULL, NULL, '', ''),
(188, 107, 'ibtisan abbas', 'ola odha', '0721782527', 'CASH', '', '9', '', 'Female', '2019-02-26', NULL, NULL, NULL, '', ''),
(189, 1019, 'KHADIJA KASSIM', 'safi estate', '0707917282', 'CASH', '', '0', '500', 'Female', '2019-02-26', NULL, NULL, NULL, '', ''),
(190, 1019, 'KHADIJA KASSIM', 'safi estate', '0707917282', 'CASH', '', '0', '', 'Female', '2019-02-26', NULL, NULL, NULL, '', ''),
(191, 1091, 'SIMRAN MOHAMED', 'bula pesa', '0704134911', 'NPS', '1904161', '1', '500', 'Female', '2019-02-27', NULL, NULL, NULL, '', ''),
(192, 825, 'MIRAJ ABDI GODANA', 'tuluroba', '0722780673', 'NPS', '0795442', '0', '500', 'Male', '2019-02-28', NULL, NULL, NULL, '', ''),
(193, 824, 'SIRAJ GODANA ABDI', 'tuluroba', '0722 780673', 'NPS', '0795442', '0', '500', 'Male', '2019-02-28', NULL, NULL, NULL, '', ''),
(194, 825, 'MIRAJ ABDI GODANA', 'tuluroba', '0722780673', 'NPS', '0795442', '0', '', 'Male', '2019-02-28', NULL, NULL, NULL, '', ''),
(195, 824, 'SIRAJ GODANA ABDI', 'tuluroba', '0722 780673', 'NPS', '0795442', '0', '', 'Male', '2019-02-28', NULL, NULL, NULL, '', ''),
(196, 19, 'HUSSEIN ADAN', 'TAQWA', '0722941563', 'CASH', '', '10', '', 'Male', '2019-02-28', NULL, NULL, NULL, '', ''),
(197, 1116, 'JAMAL SALAN', 'TAQWA', '0722496914', 'CASH', '', '23', '', 'Male', '2019-02-28', NULL, NULL, NULL, '', ''),
(198, 611, 'JOSHUA ONGUTI GITAGA', 'ISIOLO', '0707028911', 'NPS', '4854747', '26', '500', 'Male', '2019-03-01', NULL, NULL, NULL, '', ''),
(199, 1143, 'SARURO MAHAMED', 'BULLA 0PESA', '', 'CASH', '', '30', '', 'Female', '2019-03-02', NULL, NULL, NULL, '', ''),
(200, 591, 'NUH SAID', 'wabera', '0729246536', 'CASH', '', '7', '200', 'Male', '2019-03-02', NULL, NULL, NULL, '', ''),
(201, 591, 'NUH SAID', 'wabera', '0729246536', 'CASH', '', '7', '', 'Male', '2019-03-02', NULL, NULL, NULL, '', ''),
(202, 570, 'HUSSEIN SHEIK ABDULLAHI', 'ISIOLO', '0723524551', 'NPS', '1524343', '36', '500', 'Male', '2019-03-02', NULL, NULL, NULL, '', ''),
(203, 1062, 'FATUMA MUMIN ABDULLAHI', 'bula pesa', '0743277229', 'NPS', '4848298', '35', '', 'Female', '2019-03-04', NULL, NULL, NULL, '', ''),
(204, 926, 'ZEITUN ALI', 'bula pesa', '0713813173', 'NPS', '12304115', '14', '500', 'Female', '2019-03-05', NULL, NULL, NULL, '', ''),
(205, 946, 'MAIMUNA GURACHA ROBA', 'bula pesa', '0746479896', 'NPS', '12304120', '16', '500', 'Female', '2019-03-05', NULL, NULL, NULL, '', ''),
(206, 926, 'ZEITUN ALI', 'bula pesa', '0713813173', 'NPS', '12304115', '14', '', 'Female', '2019-03-05', NULL, NULL, NULL, '', ''),
(207, 946, 'MAIMUNA GURACHA ROBA', 'bula pesa', '0746479896', 'NPS', '12304120', '16', '', 'Female', '2019-03-05', NULL, NULL, NULL, '', ''),
(208, 1172, 'ABDIAZIZ HASSAN', 'kambi shariff', '0713471031', 'CASH', '', '1', '', 'Male', '2019-03-05', NULL, NULL, NULL, '', ''),
(209, 90, 'nabil hassan', 'kiwanjani', '0717537867', 'CASH', '', '7', '', 'Male', '2019-03-05', NULL, NULL, NULL, '', ''),
(210, 16, 'RAHAMA SIMBA', 'bula pesa', '0706570520', 'CASH', '', '6', '', 'Female', '2019-03-06', NULL, NULL, NULL, '', ''),
(211, 1146, 'FARTUN IBRAHIM', 'KAMBI GARBA', '', 'CASH', '', '13', '', 'Female', '2019-03-06', NULL, NULL, NULL, '', ''),
(212, 897, 'SALMA MOHAMED', 'bula pesa', '0712841747', 'CASH', '', '11', '', 'Female', '2019-03-07', NULL, NULL, NULL, '', ''),
(213, 777, 'shukrani hassan', 'kiwanjani', '0725085030', 'NPS', '', '16', '', 'Female', '2019-03-07', NULL, NULL, NULL, '', ''),
(214, 154, 'hawo osman', 'CHECHELESI', '0725239977', 'CASH', '', '45', '', 'Female', '2019-03-07', NULL, NULL, NULL, '', ''),
(215, 1080, 'ADAN MOHAMED', 'kiwanjani', '0726628032', 'CASH', '', '48', '', 'Male', '2019-03-07', NULL, NULL, NULL, '', ''),
(216, 844, 'YASIR HASSAN', 'bula pesa', '0706318090', 'CASH', '', '3', '', 'Male', '2019-03-08', NULL, NULL, NULL, '', ''),
(217, 745, 'ZEINAB MOHAMED', 'KAMBI GARBA', '0716590408', 'CASH', '', '40', '', 'Male', '2019-03-08', NULL, NULL, NULL, '', ''),
(218, 745, 'ZEINAB MOHAMED', 'KAMBI GARBA', '0716590408', 'CASH', '', '40', '', 'Female', '2019-03-08', NULL, NULL, NULL, '', ''),
(219, 940, 'IDRIS SHARRIF', 'kambi shariff', '', 'CASH', '', '10', '', 'Male', '2019-03-09', NULL, NULL, NULL, '', ''),
(220, 46, 'SUMEIYA SIMBA', 'bula pesa', '0706570520', 'CASH', '', '10', '', 'Female', '2019-03-09', NULL, NULL, NULL, '', ''),
(221, 1192, 'FATUMA MOHAMED', 'TAQWA', '0727008270', 'CASH', '', '60', '', 'Female', '2019-03-09', NULL, NULL, NULL, '', ''),
(222, 788, 'NUJEIMA DAHIR', 'ISIOLO', '0720468693', 'NPS', '', '3', '500', 'Female', '2019-03-09', NULL, NULL, NULL, '', ''),
(223, 51, 'zeinab abdurahaman', 'CHECHELESI', '0726285114', 'CASH', '', '50', '', 'Female', '2019-03-09', NULL, NULL, NULL, '', ''),
(224, 1225, 'MAKFUS ABDIJABAR', 'KAMBI ODHA', '0741589919', 'CASH', '', '1', '', 'Male', '2019-03-10', NULL, NULL, NULL, '', ''),
(225, 355, 'saida adan', 'maisha bora', '0718870716', 'CASH', '', '52', '', 'Female', '2019-03-10', NULL, NULL, NULL, '', ''),
(226, 787, 'AYAN DAHIR', 'ISIOLO', '0720468693', 'NPS', '', '6', '', 'Female', '2019-03-10', NULL, NULL, NULL, '', ''),
(227, 1243, 'SHUKRI HASSAN', 'tuluroba', '0728926550', 'CASH', '', '6', '', 'Male', '2019-03-10', NULL, NULL, NULL, '', ''),
(228, 885, 'AMINA SHEIKH', 'WABERA', '0722916956', 'CASH', '', '63', '', 'Female', '2019-03-11', NULL, NULL, NULL, '', ''),
(229, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '', 'Female', '2019-03-11', NULL, NULL, NULL, '', ''),
(230, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '', 'Male', '2019-03-11', NULL, NULL, NULL, '', ''),
(231, 821, 'yusra ibrahim', 'kiwanjani', '0722564599', 'CASH', '', '11', '', 'Female', '2019-03-11', NULL, NULL, NULL, '', ''),
(232, 1171, 'FARIDA BARWAKO KIAMBI', 'bula pesa', '0724282739', 'NPS', '12304280', '16', '', 'Female', '2019-03-12', NULL, NULL, NULL, '', ''),
(233, 825, 'MIRAJ ABDI GODANA', 'tuluroba', '0722780673', 'NPS', '0795442', '0', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(234, 31, 'mardhiya ali', 'tuluroba', '0716578375', 'CASH', '', '1', '', 'Female', '2019-03-12', NULL, NULL, NULL, '', ''),
(235, 825, 'MIRAJ ABDI GODANA', 'tuluroba', '0722780673', 'NPS', '0795442', '0', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(236, 1171, 'FARIDA BARWAKO KIAMBI', 'bula pesa', '0724282739', 'NPS', '12304280', '16', '', 'Female', '2019-03-12', NULL, NULL, NULL, '', ''),
(237, 31, 'mardhiya ali', 'tuluroba', '0716578375', 'CASH', '', '1', '', 'Female', '2019-03-12', NULL, NULL, NULL, '', ''),
(238, 856, 'ZEINAB ABDI', 'kiwanjani', '0728232490', 'CASH', '', '9', '', 'Female', '2019-03-12', NULL, NULL, NULL, '', ''),
(239, 1235, 'ANAB ABDIKADIR', 'bula pesa', '0718854233', 'CASH', '', '0', '', 'Female', '2019-03-12', NULL, NULL, NULL, '', ''),
(240, 827, 'ABDIMAJID MAHABUB NOOR', 'bula pesa', '0721520636', 'NPS', '', '0', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(241, 827, 'ABDIMAJID MAHABUB NOOR', 'bula pesa', '0721520636', 'NPS', '', '0', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(242, 829, 'MAHABUB NOPOR ADEN', 'bula pesa', '0721520636', 'NPS', '4005879', '28', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(243, 829, 'MAHABUB NOPOR ADEN', 'bula pesa', '0721520636', 'NPS', '4005879', '28', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(244, 829, 'MAHABUB NOOR ADEN', 'bula pesa', '0721520636', 'NPS', '4005879', '28', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(245, 19, 'HUSSEIN ADAN', 'TAQWA', '0722941563', 'CASH', '', '10', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(246, 10, 'suleiman guyo', 'bula pesa', '0795165276', 'CASH', '', '21', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(247, 510, 'SAID IBRAHIM', 'tuluroba', '0741054759', 'CASH', '', '19', '', 'Male', '2019-03-12', NULL, NULL, NULL, '', ''),
(248, 570, 'HUSSEIN SHEIK ABDULLAHI', 'ISIOLO', '0723524551', 'NPS', '1524343', '36', '', 'Male', '2019-03-13', NULL, NULL, NULL, '', ''),
(249, 1185, 'RUKIA HUSSEIN DUBA', 'KAMBI ODHA', '0700850404', 'NPS', '12320230', '16', '', 'Female', '2019-03-13', NULL, NULL, NULL, '', ''),
(250, 804, 'IBRAHIM ASHAT', 'bula pesa', '', 'CASH', '', '2', '', 'Male', '2019-03-14', NULL, NULL, NULL, '', ''),
(251, 1180, 'WARDHA ABDULLAHI', 'bula pesa', '07086689410', 'CASH', '', '25', '', 'Female', '2019-03-14', NULL, NULL, NULL, '', ''),
(252, 300, 'MOHAMED IBRAHIM', 'TOWN', '', 'CASH', '', '16', '', 'Male', '2019-03-14', NULL, NULL, NULL, '', ''),
(253, 790, 'ABSHIR DAHIR', 'ISIOLO', '0720468693', 'NPS', '', '8', '', 'Male', '2019-03-15', NULL, NULL, NULL, '', ''),
(254, 696, 'ADAN HASSAN ABDIKARIM', 'ISIOLO', '0728424893', 'NPS', '12304300', '19', '', 'Male', '2019-03-15', NULL, NULL, NULL, '', ''),
(255, 1165, 'PURITY GACHERI MUGAMBI', 'ISIOLO', '0711953668', 'NPS', '6494726', '29', '', 'Female', '2019-03-15', NULL, NULL, NULL, '', ''),
(256, 781, 'LOKHO JALDESA ABUDO', 'bula pesa', '0722220808', 'NPS', '2417559', '41', '', 'Female', '2019-03-16', NULL, NULL, NULL, '', ''),
(257, 1198, 'FRANKLI KIRIMI NYAGA', 'ISIOLO', '0721647433', 'NPS', '3679883', '38', '', 'Male', '2019-03-16', NULL, NULL, NULL, '', ''),
(258, 749, 'RUKIA MATAR HAMDAN', 'ISIOLO', '0720468693', 'NPS', '1712460', '44', '', 'Female', '2019-03-18', NULL, NULL, NULL, '', ''),
(259, 1057, 'IBRAHIM SAKO HALAKE', 'sacred heart', '0722834833', 'NPS', '0829444', '12', '', 'Male', '2019-03-18', NULL, NULL, NULL, '', ''),
(260, 632, 'SAKO HALAKE GUYO', 'ISIOLO', '0722834833', 'NPS', '829444', '45', '', 'Male', '2019-03-18', NULL, NULL, NULL, '', ''),
(261, 748, 'DAHIR ALI MOHAMUD', 'ISIOLO', '0720468693', 'NPS', '1712460', '46', '', 'Male', '2019-03-18', NULL, NULL, NULL, '', ''),
(262, 524, 'NIMO ABDI MOHAMED', 'ISIOLO', '0720994696', 'FFS', '', '30', '', 'Female', '2019-03-18', NULL, NULL, NULL, '', ''),
(263, 708, 'AMINA OMAR', 'bula pesa', '0722756239', 'CASH', '', '21', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(264, 1133, 'NAIMA ADAN', 'kiwanjani', '0722230648', 'CASH', '', '19', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(265, 1159, 'HBIBA MOHAMED', 'KAMBI GARBA', '0706157393', 'CASH', '', '18', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(266, 1302, 'JILLO SADDIQ OSMAN', 'bula pesa', '0717000345', 'NPS', '10321858', '19', '', 'Male', '2019-03-19', NULL, NULL, NULL, '', ''),
(267, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '8', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(268, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '1206203', '1', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(269, 770, 'nasibo gurati', 'ISIOLO', '0700922980', 'NPS', '1206203', '40', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(270, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '8', '', 'Female', '2019-03-19', NULL, NULL, NULL, '', ''),
(271, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '', 'Male', '2019-03-21', NULL, NULL, NULL, '', ''),
(272, 653, 'YASIN AHMED', 'KAMBI GARBA', '0727331291', 'CASH', '', '0', '', 'Male', '2019-03-22', NULL, NULL, NULL, '', ''),
(273, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '', 'Female', '2019-03-22', NULL, NULL, NULL, '', ''),
(274, 525, 'FATUMA MOHAMED GODANA', 'ISIOLO', '', 'NPS', '2417559', '17', '', 'Female', '2019-03-23', NULL, NULL, NULL, '', ''),
(275, 1125, 'YUSSUF GUYO', 'ola odha', '0720598016', 'NPS', '1745922', '10', '', 'Male', '2019-03-23', NULL, NULL, NULL, '', ''),
(276, 938, 'HALIMA MOHAMED IBRAHIM', 'ISIOLO', '0717128920', 'NPS', '3671143', '31', '', 'Female', '2019-03-23', NULL, NULL, NULL, '', ''),
(277, 1336, 'ADHNAN IBRAHIM  MOHAMUD', 'TOWN', '0723264600', 'NPS', '0679313', '2', '', 'Male', '2019-03-23', NULL, NULL, NULL, '', ''),
(278, 1114, 'ASMAHAN ABBAS', 'KAMBI ODHA', '0723451348', 'CASH', '', '8', '', 'Female', '2019-03-23', NULL, NULL, NULL, '', ''),
(279, 1198, 'FRANKLI KIRIMI NYAGA', 'ISIOLO', '0721647433', 'NPS', '3679883', '38', '', 'Male', '2019-03-25', NULL, NULL, NULL, '', ''),
(280, 1380, 'HASSAN BORU', 'kiwanjani', '0726843214', 'CASH', '', '1', '', 'Male', '2019-03-25', NULL, NULL, NULL, '', ''),
(281, 1122, 'AMIR MOHAMED', 'COUNTY', '0724258425', 'CASH', '', '2', '', 'Male', '2019-03-25', NULL, NULL, NULL, '', ''),
(282, 739, 'SAADIA IBRAHIM', 'bula pesa', '0706082351', 'CASH', '', '26', '', 'Female', '2019-03-26', NULL, NULL, NULL, '', ''),
(283, 749, 'RUKIA MATAR HAMDAN', 'ISIOLO', '0720468693', 'NPS', '1712460', '44', '', 'Female', '2019-03-26', NULL, NULL, NULL, '', ''),
(284, 15, 'HAFSA ABDULAHI HAFSA', 'kiwanjani', '0725791692', 'CASH', '', '2', '', 'Female', '2019-03-27', NULL, NULL, NULL, '', ''),
(285, 888, 'HUSSEIN DUBA BARWAQO', 'KAMBI GARBA', '0798156777', 'NPS', '12306531', '18', '', 'Female', '2019-03-28', NULL, NULL, NULL, '', ''),
(286, 748, 'DAHIR ALI MOHAMUD', 'ISIOLO', '0720468693', 'NPS', '1712460', '46', '', 'Male', '2019-03-28', NULL, NULL, NULL, '', ''),
(287, 317, 'zeinab bilow', 'lmd', '0718198129', 'CASH', '', '20', '', 'Female', '2019-03-29', NULL, NULL, NULL, '', ''),
(288, 947, 'MOHAMUD MOHAMED ADAN', 'ISIOLO', '0717128920', 'NPS', '3671143', '1', '', 'Male', '2019-03-29', NULL, NULL, NULL, '', ''),
(289, 1391, 'SIMON NGITOE ELOTO', 'GAME', '0742921908', 'NPS', '12393506', '18', '', 'Male', '2019-03-30', NULL, NULL, NULL, '', ''),
(290, 1314, 'REHAAN RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '6', '', 'Female', '2019-03-30', NULL, NULL, NULL, '', ''),
(291, 563, 'zubeida aftin', '', '0722230648', 'CASH', '', '18', '', 'Female', '2019-03-30', NULL, NULL, NULL, '', ''),
(292, 1319, 'HALIMA MOHAMED ABDI', 'safi estate', '0723264600', 'NPS', '0679313', '36', '', 'Female', '2019-03-30', NULL, NULL, NULL, '', ''),
(293, 938, 'HALIMA MOHAMED IBRAHIM', 'ISIOLO', '0717128920', 'NPS', '3671143', '31', '', 'Female', '2019-04-01', NULL, NULL, NULL, '', ''),
(294, 661, 'WARIO YUSUF', 'ISIOLO', '0726261299', 'NPS', '1372371', '41', '', 'male', '2019-04-01', NULL, NULL, NULL, '', ''),
(295, 1391, 'SIMON NGITOE ELOTO', 'GAME', '0742921908', 'NPS', '12393506', '18', '', 'Male', '2019-04-02', NULL, NULL, NULL, '', ''),
(296, 935, 'ASHA SAID', 'kiwanjani', '0795851522', 'CASH', '', '23', '', 'Female', '2019-04-02', NULL, NULL, NULL, '', ''),
(297, 865, 'MALYUN OMAR', 'bula pesa', '0799372735', 'CASH', '', '19', '', 'Female', '2019-04-03', NULL, NULL, NULL, '', ''),
(298, 36, 'yasmin adan', 'kiwanjani', '0711376677', 'CASH', '', '8', '', 'Female', '2019-04-03', NULL, NULL, NULL, '', ''),
(299, 1165, 'PURITY GACHERI MUGAMBI', 'ISIOLO', '0711953668', 'NPS', '6494726', '29', '', 'Female', '2019-04-03', NULL, NULL, NULL, '', ''),
(300, 106, 'raudha abbas', 'kiwanjani', '0722454181', 'CASH', '', '3', '', 'Female', '2019-04-04', NULL, NULL, NULL, '', ''),
(301, 868, 'FATUMA SALAD', 'ISIOLO', '', 'NPS', '3663767', '12', '', 'Female', '2019-04-04', NULL, NULL, NULL, '', ''),
(302, 1010, 'MUSTAFA YUSUF', 'CHECHELESI', '0726261299', 'NPS', '1372371', '8', '', 'Male', '2019-04-05', NULL, NULL, NULL, '', ''),
(303, 896, 'RAHADHAN DIBA', 'CHECHELESI', '0720703895', 'NPS', '3663767', '3', '', 'Male', '2019-04-05', NULL, NULL, NULL, '', ''),
(304, 458, 'abdirahmam yussuf', 'bula pesa', '0728945443', 'CASH', '', '28', '', 'Male', '2019-04-06', NULL, NULL, NULL, '', ''),
(305, 1271, 'SABRI IBRAHIM BONAYA', 'tuloroba', '0720555152', 'NPS', '1014605', '8', '', 'Male', '2019-04-06', NULL, NULL, NULL, '', ''),
(306, 1393, 'LACHANGAI LEURIS', 'LEISAMIS', '', 'CASH', '', '4', '', 'Male', '2019-04-07', NULL, NULL, NULL, '', ''),
(307, 1393, 'LACHANGAI LEURIS', 'LEISAMIS', '', 'CASH', '', '4', '', 'Male', '2019-04-07', NULL, NULL, NULL, '', ''),
(308, 1129, 'ASHIM ADAN', 'bula pesa', '0723452828', 'CASH', '', '3', '', 'Male', '2019-04-07', NULL, NULL, NULL, '', ''),
(309, 1129, 'ASHIM ADAN', 'bula pesa', '0723452828', 'CASH', '', '3', '', 'Male', '2019-04-07', NULL, NULL, NULL, '', ''),
(310, 524, 'NIMO ABDI MOHAMED', 'ISIOLO', '0720994696', 'FFS', '', '30', '', 'Female', '2019-04-08', NULL, NULL, NULL, '', ''),
(311, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '', 'Male', '2019-04-08', NULL, NULL, NULL, '', ''),
(312, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '', 'Female', '2019-04-08', NULL, NULL, NULL, '', ''),
(313, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '', 'Female', '2019-04-08', NULL, NULL, NULL, '', ''),
(314, 1484, 'HALIMA HASSAN', 'KAMBI ODHA', '0745090824', 'CASH', '', '44', '', 'Female', '2019-04-09', NULL, NULL, NULL, '', ''),
(315, 1484, 'HALIMA HASSAN', 'KAMBI ODHA', '0745090824', 'CASH', '', '44', '', 'Female', '2019-04-09', NULL, NULL, NULL, '', ''),
(316, 1484, 'HALIMA HASSAN', 'KAMBI ODHA', '0713035822', 'NPS', '0691389', '44', '', 'Female', '2019-04-09', NULL, NULL, NULL, '', ''),
(317, 1280, 'ABDULLAHI ADAM', 'JUA KALI', '0722853831', 'CASH', '', '10', '200', 'Male', '2019-04-09', NULL, NULL, NULL, '', ''),
(318, 818, 'STEPHEN ELEMA', 'kambi juu', '0722427710', 'NPS', '0400795', '0', '500', 'Male', '2019-04-10', NULL, NULL, NULL, '', ''),
(319, 1065, 'NIMO ABDIRASHID', 'tuluroba', '0729557368', 'CASH', '', '1', '', 'Female', '2019-04-10', NULL, NULL, NULL, '', ''),
(320, 1124, 'MAUD MOHAMED YUNIS', 'TOWN', '0721751844', 'NPS', '1904161', '8', '', 'Male', '2019-04-10', NULL, NULL, NULL, '', ''),
(321, 1280, 'ABDULLAHI ADAM', 'JUA KALI', '0722853831', 'CASH', '', '10', '', 'Male', '2019-04-10', NULL, NULL, NULL, '', ''),
(322, 1311, 'SAADIA ABDIKARIM ISMAIL', 'safi estate', '', 'NPS', '1282718', '47', '500', 'Female', '2019-04-10', NULL, NULL, NULL, '', ''),
(323, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '11', '', 'Female', '2019-04-11', NULL, NULL, NULL, '', ''),
(324, 1241, 'ADAN IBRAHIM', 'ISIOLO', '0725228276', 'CASH', '', '32', '', 'Male', '2019-04-11', NULL, NULL, NULL, '', ''),
(325, 1200, 'ZEITUNA MOHAMUD', 'kiwanjani', '0725958373', 'CASH', '', '22', '', 'Female', '2019-04-11', NULL, NULL, NULL, '', ''),
(326, 1193, 'SABRINI MOHAMED SALAT', 'ISIOLO', '0743277229', 'NPS', '4848298', '1', '', 'Female', '2019-04-12', NULL, NULL, NULL, '', ''),
(327, 1062, 'FATUMA MUMIN ABDULLAHI', 'bula pesa', '0743277229', 'NPS', '4848298', '35', '', 'Female', '2019-04-12', NULL, NULL, NULL, '', ''),
(328, 1118, 'AHMED WAKO KANCHU', 'bula pesa', '0727946197', 'NPS', '0658221', '42', '', 'Male', '2019-04-12', NULL, NULL, NULL, '', ''),
(329, 955, 'ABDIGAFAR MOHAMED ADAN', 'ISIOLO', '0717128920', 'NPS', '3666671143', '1', '', 'Male', '2019-04-13', NULL, NULL, NULL, '', ''),
(330, 955, 'ABDIGAFAR MOHAMED ADAN', 'ISIOLO', '0717128920', 'NPS', '3671143', '1', '', 'Male', '2019-04-13', NULL, NULL, NULL, '', ''),
(331, 1152, 'ZEINAB MOHAMED', 'safi estate', '0728773464', 'CASH', '', '27', '', 'Female', '2019-04-14', NULL, NULL, NULL, '', ''),
(332, 1400, 'HASSAN ADAN', 'kiwanjani', '0722844625', 'CASH', '', '36', '', 'Male', '2019-04-14', NULL, NULL, NULL, '', ''),
(333, 911, 'MOHAMED HASSAN', 'bula pesa', '0722990102', 'CASH', '', '11', '', 'Male', '2019-04-15', NULL, NULL, NULL, '', ''),
(334, 1484, 'HALIMA HASSAN', 'KAMBI ODHA', '0713035822', 'NPS', '0691389', '44', '', 'Female', '2019-04-15', NULL, NULL, NULL, '', ''),
(335, 977, 'RAHMA ABDULLAHI', 'CHECHELESI', '0726616930', 'CASH', '', '25', '', 'Female', '2019-04-15', NULL, NULL, NULL, '', ''),
(336, 1533, 'NUNEI ABDI', 'LMD', '001470105', 'CASH', '', '30', '', 'Female', '2019-04-16', NULL, NULL, NULL, '', ''),
(337, 334, 'samira hassan', 'bula pesa', '0722985618', 'CASH', '', '14', '', 'Female', '2019-04-16', NULL, NULL, NULL, '', ''),
(338, 172, 'halima omar', 'maisha bora', '0722493870', 'CASH', '', '65', '', 'Female', '2019-04-17', NULL, NULL, NULL, '', ''),
(339, 81, 'mohamed gedi', 'bula pesa', '0729630127', 'CASH', '', '47', '', 'Male', '2019-04-17', NULL, NULL, NULL, '', ''),
(340, 1163, 'ERICK TANUI', 'bula pesa', '0746913938', 'CASH', '', '24', '', 'Male', '2019-04-17', NULL, NULL, NULL, '', ''),
(341, 1207, 'YASMIN ABDIKADIR YUNIS', 'ISIOLO', '0727559998', 'NPS', '5556680', '28', '', 'Female', '2019-04-18', NULL, NULL, NULL, '', ''),
(342, 1357, 'NURIA DIDA', 'bula pesa', '0720605791', 'CASH', '', '28', '', 'Female', '2019-04-19', NULL, NULL, NULL, '', ''),
(343, 1448, 'FATUMA ABDI', 'CHECHELESI', '0725574408', 'CASH', '', '37', '', 'Female', '2019-04-19', NULL, NULL, NULL, '', ''),
(344, 931, 'HAJI ABDI KALA', 'CHECHELESI', '0720577801', 'CASH', '', '53', '', 'Male', '2019-04-19', NULL, NULL, NULL, '', ''),
(345, 1509, 'EDEBAI ADAN', 'KAMBI GARBA', '0700549097', 'CASH', '', '40', '', 'Female', '2019-04-19', NULL, NULL, NULL, '', ''),
(346, 1198, 'FRANKLI KIRIMI NYAGA', 'ISIOLO', '0721647433', 'NPS', '3679883', '38', '', 'Male', '2019-04-19', NULL, NULL, NULL, '', ''),
(347, 1260, 'ZAKIR ADAN', 'kiwanjani', '', 'CASH', '', '0', '', 'Male', '2019-04-21', NULL, NULL, NULL, '', ''),
(348, 1531, 'MADINA ABDULLAHI KABUDU', 'COUNTY', '0722854650', 'NPS', '3672625', '20', '', 'Female', '2019-04-21', NULL, NULL, NULL, '', ''),
(349, 1320, 'RIYAAN RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '8', '', 'Female', '2019-04-21', NULL, NULL, NULL, '', ''),
(350, 1314, 'REHAAN RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '6', '', 'Female', '2019-04-21', NULL, NULL, NULL, '', ''),
(351, 550, 'MOHAMED ABDULLAH GONJOBE', 'KAMBI', '', 'NPS', '3672625', '0', '', 'Male', '2019-04-21', NULL, NULL, NULL, '', ''),
(352, 1458, 'ABDIKAFAR RASHID', 'JUA KALI', '0723281285', 'NPS', '1282718', '11', '', 'Male', '2019-04-22', NULL, NULL, NULL, '', ''),
(353, 1129, 'ASHIM ADAN', 'bula pesa', '0723452828', 'CASH', '', '3', '', 'Male', '2019-04-22', NULL, NULL, NULL, '', ''),
(354, 1154, 'AMIR GUYO DIDA', 'bula pesa', '0726394495', 'FFS', '8612526', '3', '', 'Male', '2019-04-22', NULL, NULL, NULL, '', ''),
(355, 1315, 'SUMEYA RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '15', '500', 'Female', '2019-04-22', NULL, NULL, NULL, '', ''),
(356, 1581, 'HALIMA OLLO FULAMO', 'tuluroba', '0722780673', 'NPS', '0795442', '23', '', 'Female', '2019-04-22', NULL, NULL, NULL, '', ''),
(357, 965, 'GUYO GOLICHA DUBA', 'TAQWA', '0720598016', 'NPS', '', '54', '', 'Male', '2019-04-23', NULL, NULL, NULL, '', ''),
(358, 965, 'GUYO GOLICHA DUBA', 'TAQWA', '0720598016', 'NPS', '1745922', '54', '500', 'Male', '2019-04-23', NULL, NULL, NULL, '', ''),
(359, 1593, 'MADERA HUSSEIN', 'garbatula', '0706739721', 'CASH', '', '2', '', 'Male', '2019-04-25', NULL, NULL, NULL, '', ''),
(360, 1014, 'ABDIRAHIM ADAN', 'JUA KALI', '0722853831', 'CASH', '', '1', '', 'Male', '2019-04-26', NULL, NULL, NULL, '', ''),
(361, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '11', '', 'Female', '2019-04-27', NULL, NULL, NULL, '', ''),
(362, 1588, 'HALIMA ALI', 'barrier', '0729583948', 'CASH', '', '26', '200', 'Female', '2019-04-28', NULL, NULL, NULL, '', ''),
(363, 1588, 'HALIMA ALI', 'barrier', '0729583948', 'CASH', '', '26', '', 'Female', '2019-04-28', NULL, NULL, NULL, '', ''),
(364, 1165, 'PURITY GACHERI MUGAMBI', 'ISIOLO', '0711953668', 'NPS', '6494726', '29', '', 'Female', '2019-04-29', NULL, NULL, NULL, '', ''),
(365, 1207, 'YASMIN ABDIKADIR YUNIS', 'ISIOLO', '0727559998', 'NPS', '5556680', '28', '', 'Female', '2019-04-29', NULL, NULL, NULL, '', ''),
(366, 1371, 'NOORDIN DAHIR', 'CHECHELESI', '0720468693', 'NPS', '1712460', '17', '', 'Male', '2019-04-30', NULL, NULL, NULL, '', ''),
(367, 1107, 'FATIHA ABDULLAHI', 'kiwanjani', '0705011786', 'CASH', '', '2', '', 'Male', '2019-05-01', NULL, NULL, NULL, '', ''),
(368, 1107, 'FATIHA ABDULLAHI', 'kiwanjani', '0705011786', 'CASH', '', '2', '', 'Male', '2019-05-01', NULL, NULL, NULL, '', ''),
(369, 778, 'DAUD MOHAMED ABDI', 'ISIOLO', '0726470148', 'NPS', '7527113', '26', '', 'Male', '2019-05-01', NULL, NULL, NULL, '', ''),
(370, 1612, 'BINTA MOHAMED', 'LMD', '071664470', 'CASH', '', '32', '', 'Female', '2019-05-01', NULL, NULL, NULL, '', ''),
(371, 919, 'PENINAH LOKAI', 'ISIOLO', '0742724121', 'NPS', '12307851', '20', '', 'Female', '2019-05-02', NULL, NULL, NULL, '', ''),
(372, 919, 'PENINAH LOKAI', 'ISIOLO', '0742724121', 'NPS', '12307851', '20', '', 'Female', '2019-05-02', NULL, NULL, NULL, '', ''),
(373, 865, 'MALYUN OMAR', 'bula pesa', '0799372735', 'CASH', '', '19', '200', 'Female', '2019-05-02', NULL, NULL, NULL, '', ''),
(374, 718, 'ALI IBRAHIM', 'tuluroba', '', 'CASH', '', '70', '', 'Male', '2019-05-03', NULL, NULL, NULL, '', ''),
(375, 1231, 'abubakar hassan', 'maisha bora', '0712568170', 'CASH', '', '3', '', 'Male', '2019-05-03', NULL, NULL, NULL, '', ''),
(376, 824, 'SIRAJ GODANA ABDI', 'tuluroba', '0722 780673', 'NPS', '0795442', '0', '', 'Male', '2019-05-03', NULL, NULL, NULL, '', ''),
(377, 829, 'MAHABUB NOOR ADEN', 'bula pesa', '0721520636', 'NPS', '4005879', '28', '', 'Male', '2019-05-04', NULL, NULL, NULL, '', ''),
(378, 827, 'ABDIMAJID MAHABUB NOOR', 'bula pesa', '0721520636', 'NPS', '', '0', '', 'Male', '2019-05-04', NULL, NULL, NULL, '', ''),
(379, 827, 'ABDIMAJID MAHABUB NOOR', 'bula pesa', '0721520636', 'NPS', '4005879', '0', '', 'Male', '2019-05-04', NULL, NULL, NULL, '', ''),
(380, 947, 'MOHAMUD MOHAMED ADAN', 'ISIOLO', '0717128920', 'NPS', '3671143', '1', '', 'Male', '2019-05-05', NULL, NULL, NULL, '', ''),
(381, 1644, 'ABDIA HALI', 'MLD', '0713102238', 'CASH', '', '25', '', 'Female', '2019-05-05', NULL, NULL, NULL, '', ''),
(382, 1644, 'ABDIA ALI', 'MLD', '0713102238', 'CASH', '', '25', '', 'Female', '2019-05-05', NULL, NULL, NULL, '', ''),
(383, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '11', '', 'Female', '2019-05-06', NULL, NULL, NULL, '', ''),
(384, 1674, 'SUMEYA ALI', 'BULAPESA', '0720441842', 'CASH', '', '20', '', 'Female', '2019-05-06', NULL, NULL, NULL, '', ''),
(385, 205, 'amir mohamed', 'CHECHELESI', '0721174355', 'CASH', '', '3', '', 'Male', '2019-05-07', NULL, NULL, NULL, '', ''),
(386, 1516, 'NURTU BORU', 'CHECHELESI', '0721632738', 'NPS', '2359734', '5', '', 'Female', '2019-05-07', NULL, NULL, NULL, '', ''),
(387, 1055, 'BUKE BORU MAMO', 'KAMBI ODHA', '0721632738', 'NPS', '2359734', '0', '', 'Male', '2019-05-07', NULL, NULL, NULL, '', '');
INSERT INTO `revists` (`id`, `patient_id`, `name`, `address`, `phone`, `insurance_id`, `in_number`, `age`, `fee`, `sex`, `account_opening_timestamp`, `diagnosis`, `diagnosis1`, `diagnosis2`, `height`, `weight`) VALUES
(388, 1055, 'DHARATU BORU MAMO', 'KAMBI ODHA', '0721632738', 'NPS', '2359734', '0', '', 'Male', '2019-05-07', NULL, NULL, NULL, '', ''),
(389, 1302, 'JILLO SADDIQ OSMAN', 'bula pesa', '0717000345', 'NPS', '10321858', '19', '', 'Male', '2019-05-07', NULL, NULL, NULL, '', ''),
(390, 973, 'JARED KIPKORIR BETT', 'ISIOLO', '0727513105', 'NPS', '7530385', '25', '', 'Male', '2019-05-08', NULL, NULL, NULL, '', ''),
(391, 1551, 'SUDEYS MOHAMUD', 'kiwanjani', '0715361645', 'CASH', '', '0', '', 'Male', '2019-05-08', NULL, NULL, NULL, '', ''),
(392, 955, 'ABDIGAFAR MOHAMED ADAN', 'ISIOLO', '0717128920', 'NPS', '3671143', '1', '', 'Male', '2019-05-10', NULL, NULL, NULL, '', ''),
(393, 1077, 'JOY MAKENA', 'JUA KALI', '0798544600', 'CASH', '', '23', '', 'Female', '2019-05-10', NULL, NULL, NULL, '', ''),
(394, 925, 'DARMI JATTAN', 'KAMBI ODHA', '0712959913', 'NPS', '12304029', '16', '', 'Female', '2019-05-11', NULL, NULL, NULL, '', ''),
(395, 965, 'GUYO GOLICHA DUBA', 'TAQWA', '0720598016', 'NPS', '1745922', '54', '', 'Male', '2019-05-11', NULL, NULL, NULL, '', ''),
(396, 1529, 'ridwani hussein', 'ola odha', '0715599164', 'NPS', '308953', '3', '', 'Female', '2019-05-12', NULL, NULL, NULL, '', ''),
(397, 828, 'ALICE MAKENA', 'bula pesa', '0721520636', 'NPS', '4005879', '24', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(398, 1261, 'JAMILA GUYO', 'KAMBI ODHA', '0720598016', 'NPS', '1745922', '6', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(399, 1193, 'SABRINI MOHAMED SALAT', 'ISIOLO', '0743277229', 'NPS', '4848298', '1', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(400, 213, 'yasmin yussuf', 'kiwanjani', '0722564599', 'CASH', '', '16', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(401, 1251, 'SHAMSEY ALI DUBA', 'CHECHELESI', '0706939850', 'NPS', '12304042', '19', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(402, 1198, 'FRANKLI KIRIMI NYAGA', 'ISIOLO', '0721647433', 'NPS', '3679883', '38', '', 'Male', '2019-05-13', NULL, NULL, NULL, '', ''),
(403, 1198, 'FRANKLIN KIRIMI NYAGA', 'ISIOLO', '0721647433', 'NPS', '3679883', '38', '', 'Male', '2019-05-13', NULL, NULL, NULL, '', ''),
(404, 1665, 'ABDIWALIT MOLID', 'BULAPESA', '0729878582', 'CASH', '', '6', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(405, 1664, 'DARMA MOLID', 'BULAPESA', '0723098893', 'CASH', '', '18', '', 'Male', '2019-05-13', NULL, NULL, NULL, '', ''),
(406, 1666, 'MILKA KABALA', 'CHECHECESI', '0728151153', 'CASH', '', '7', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(407, 466, 'HALIMA MOHAMED', 'LMD', '0712974037', 'CASH', '', '27', '', 'Female', '2019-05-13', NULL, NULL, NULL, '', ''),
(408, 1704, 'ABDIRIZACK WARIO JATTAN', 'BARRIER', '0722104783', 'NPS', '2473571', '37', '', 'Male', '2019-05-14', NULL, NULL, NULL, '', ''),
(409, 1688, 'HAWA HUSSEIN', 'BULAPESA', '0715794460', 'CASH', '', '30', '', 'Female', '2019-05-14', NULL, NULL, NULL, '', ''),
(410, 1207, 'YASMIN ABDIKADIR YUNIS', 'ISIOLO', '0727559998', 'NPS', '5556680', '28', '', 'Female', '2019-05-14', NULL, NULL, NULL, '', ''),
(411, 973, 'JARED KIPKORIR BETT', 'ISIOLO', '0727513105', 'NPS', '7530385', '25', '', 'Male', '2019-05-14', NULL, NULL, NULL, '', ''),
(412, 1728, 'JIBRIL HASSAN MOHAMED', 'TULUROBA', '0700932855', 'NPS', '', '7', '', 'Male', '2019-05-14', NULL, NULL, NULL, '', ''),
(413, 1728, 'JIBRIL HASSAN MOHAMED', 'TULUROBA', '0700932855', 'NPS', '', '7', '', 'Male', '2019-05-14', NULL, NULL, NULL, '', ''),
(414, 1727, 'HALIMA MOHAMED', 'BULAPESA', '0718685432', 'NPS', '', '40', '', 'Female', '2019-05-14', NULL, NULL, NULL, '', ''),
(415, 1425, 'HAMDI ADAN', 'TOWN', '0704005055', 'CASH', '', '23', '', 'Male', '2019-05-15', NULL, NULL, NULL, '', ''),
(416, 427, 'amdi adan', 'kiwanjani', '0711376677', 'CASH', '', '0', '', 'Male', '2019-05-15', NULL, NULL, NULL, '', ''),
(417, 1701, 'BENAZIR IBRAHIM', 'TULUROBA', '0701168811', 'CASH', '', '18', '', 'Female', '2019-05-15', NULL, NULL, NULL, '', ''),
(418, 838, 'ABDIQAFAR DAHIR HARUN', 'bula pesa', '0721952195', 'NPS', '2204667', '31', '', 'Male', '2019-05-15', NULL, NULL, NULL, '', ''),
(419, 1458, 'ABDIKAFAR RASHID', 'JUA KALI', '0723281285', 'NPS', '1282718', '11', '500', 'Male', '2019-05-15', NULL, NULL, NULL, '', ''),
(420, 1315, 'SUMEYA RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '15', '', 'Female', '2019-05-16', NULL, NULL, NULL, '', ''),
(421, 1737, 'ABDI  MALIK', 'KIWANJANI', '', 'CASH', '', '2', '', 'Male', '2019-05-16', NULL, NULL, NULL, '', ''),
(422, 1558, 'JAMAL IBRAHIM HASSAN', 'TOWN', '0727559998', 'NPS', '5556680', '26', '', 'Male', '2019-05-16', NULL, NULL, NULL, '', ''),
(423, 295, 'FARIDA SULEIMAN', 'bula pesa', '', 'CASH', '', '26', '', 'Male', '2019-05-16', NULL, NULL, NULL, '', ''),
(424, 927, 'ZEINAB ISSACK', 'LMD', '0713642595', 'NPS', '12303891', '16', '', 'Female', '2019-05-16', NULL, NULL, NULL, '', ''),
(425, 1531, 'MADINA ABDULLAHI KABUDU', 'COUNTY', '0722854650', 'NPS', '3672625', '20', '', 'Female', '2019-05-16', NULL, NULL, NULL, '', ''),
(426, 1535, 'HANIFA IBRAHIM DIDA', 'bula pesa', '0728696926', 'NPS', '3673293', '5', '', 'Female', '2019-05-19', NULL, NULL, NULL, '', ''),
(427, 896, 'RAHADHAN DIBA', 'CHECHELESI', '0720703895', 'NPS', '3663767', '3', '', 'Male', '2019-05-19', NULL, NULL, NULL, '', ''),
(428, 868, 'FATUMA SALAD', 'ISIOLO', '', 'NPS', '3663767', '12', '', 'Female', '2019-05-19', NULL, NULL, NULL, '', ''),
(429, 636, 'DUALE ADAN', 'bula pesa', '0728800473', 'CASH', '', '32', '', 'Male', '2019-05-19', NULL, NULL, NULL, '', ''),
(430, 1193, 'SABRINI MOHAMED SALAT', 'ISIOLO', '0743277229', 'NPS', '4848298', '1', '', 'Female', '2019-05-19', NULL, NULL, NULL, '', ''),
(431, 955, 'ABDIGAFAR MOHAMED ADAN', 'ISIOLO', '0717128920', 'NPS', '3671143', '1', '', 'Male', '2019-05-20', NULL, NULL, NULL, '', ''),
(432, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '', 'Female', '2019-05-20', NULL, NULL, NULL, '', ''),
(433, 1263, 'JAMILA MOHAMED GODANA', 'kiwanjani', '0722515589', 'NPS', '', '15', '', 'Female', '2019-05-20', NULL, NULL, NULL, '', ''),
(434, 925, 'DARMI JATTAN', 'KAMBI ODHA', '0712959913', 'NPS', '12304029', '16', '', 'Female', '2019-05-20', NULL, NULL, NULL, '', ''),
(435, 1757, 'SAID ABDUBA TACHE', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '30', '', 'Female', '2019-05-20', NULL, NULL, NULL, '', ''),
(436, 1757, 'SAIDA ABDUBA TACHE', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '30', '', 'Female', '2019-05-20', NULL, NULL, NULL, '', ''),
(437, 1402, 'RIDHWAN MUKTAR', 'KAMBI GARBA', '0702073419', 'CASH', '', '3', '', 'Male', '2019-05-21', NULL, NULL, NULL, '', ''),
(438, 1731, 'ADAN GOLLO', 'BULAPESA', '0721615813', 'NPS', '0766303', '53', '', 'Male', '2019-05-21', NULL, NULL, NULL, '', ''),
(439, 1039, 'AISHA MOHAMED', 'KAMBI ODHA', '0705561193', 'CASH', '', '28', '', 'Male', '2019-05-21', NULL, NULL, NULL, '', ''),
(440, 1034, 'NASRA NUR', 'bula pesa', '0718699382', 'CASH', '', '0', '', 'Female', '2019-05-23', NULL, NULL, NULL, '', ''),
(441, 268, 'hajra kuno', 'kiwanjani', '0705011786', 'CASH', '', '25', '', 'Female', '2019-05-24', NULL, NULL, NULL, '', ''),
(442, 1620, 'ABDISALAM HUSSEIN', 'KAMBI ODHA', '0715599164', 'NPS', '3608953', '1', '', 'Male', '2019-05-24', NULL, NULL, NULL, '', ''),
(443, 1755, 'ABDULLAHI SHARRIF', 'KIWANJANI', '0720961234', 'CASH', '', '0', '', 'Male', '2019-05-24', NULL, NULL, NULL, '', ''),
(444, 1710, 'SADIA MOHAMED BANTE', 'ISIOLO', '0721970743', 'NPS', '3662231', '36', '', 'Female', '2019-05-24', NULL, NULL, NULL, '', ''),
(445, 1476, 'DAHABA ABDILLE', 'kiwanjani', '0721931248', 'NPS', '1999136', '38', '', 'Female', '2019-05-24', NULL, NULL, NULL, '', ''),
(446, 896, 'RAHADHAN DIBA', 'CHECHELESI', '0720703895', 'NPS', '3663767', '3', '', 'Male', '2019-05-25', NULL, NULL, NULL, '', ''),
(447, 1062, 'FATUMA MUMIN ABDULLAHI', 'bula pesa', '0743277229', 'NPS', '4848298', '35', '', 'Female', '2019-05-25', NULL, NULL, NULL, '', ''),
(448, 1729, 'M,ALICHA GALGALO MAMO', 'BARRIER', '0725521280', 'NPS', '0545225', '56', '', 'Female', '2019-05-27', NULL, NULL, NULL, '', ''),
(449, 1244, 'HAFSA OMAR ADAN', 'bula pesa', '0711918505', 'NPS', '1507892', '5', '', 'Female', '2019-05-27', NULL, NULL, NULL, '', ''),
(450, 1201, 'NASJMA DAHIR ALI', 'CHECHELESI', '0720468693', 'NPS', '1712460', '3', '', 'Female', '2019-05-27', NULL, NULL, NULL, '', ''),
(451, 1648, 'GALGALO DENGE DIBA', 'KAMBI GARBA', '0720367899', 'NPS', '121375310', '19', '', 'Male', '2019-05-28', NULL, NULL, NULL, '', ''),
(452, 1518, 'HADIJA ELEMA ISACKO', 'tuloroba', '0720555152', 'NPS', '1014605', '29', '', 'Female', '2019-05-28', NULL, NULL, NULL, '', ''),
(453, 1055, 'DHARATU BORU MAMO', 'KAMBI ODHA', '0721632738', 'NPS', '2359734', '0', '', 'Male', '2019-05-28', NULL, NULL, NULL, '', ''),
(454, 1528, 'roney ibrahim mohamud', 'ola odha', '0715599164', 'NPS', '3608953', '30', '', 'Female', '2019-05-30', NULL, NULL, NULL, '', ''),
(455, 1620, 'ABDISALAM HUSSEIN', 'KAMBI ODHA', '0715599164', 'NPS', '3608953', '1', '', 'Male', '2019-05-30', NULL, NULL, NULL, '', ''),
(456, 1529, 'ridwani hussein', 'ola odha', '0715599164', 'NPS', '308953', '3', '', 'Female', '2019-05-30', NULL, NULL, NULL, '', ''),
(457, 1171, 'FARIDA BARWAKO KIAMBI', 'bula pesa', '0724282739', 'NPS', '12304280', '16', '500', 'Female', '2019-05-31', NULL, NULL, NULL, '', ''),
(458, 1063, 'AISHA OMAR ADAN', 'bula pesa', '0711918505', 'NPS', '1507892', '7', '', 'Female', '2019-05-31', NULL, NULL, NULL, '', ''),
(459, 1516, 'NURTU BORU', 'CHECHELESI', '0721632738', 'NPS', '2359734', '5', '', 'Female', '2019-05-31', NULL, NULL, NULL, '', ''),
(460, 1169, 'BORU GODANA MAMO', 'KAMBI ODHA', '0721632738', 'NPS', '2359734', '11', '', 'Male', '2019-05-31', NULL, NULL, NULL, '', ''),
(461, 1468, 'ABDIMALIK ABDI', 'kiwanjani', '', 'CASH', '', '2', '', 'Male', '2019-06-01', NULL, NULL, NULL, '', ''),
(462, 1295, 'HADIJA DERA JATTANI', 'ISIOLO', '0727177693', 'NPS', '6189117', '25', '', 'Female', '2019-06-01', NULL, NULL, NULL, '', ''),
(463, 1295, 'HADIJA DERA JATTANI', 'ISIOLO', '0727177693', 'NPS', '6189117', '25', '', 'Female', '2019-06-01', NULL, NULL, NULL, '', ''),
(464, 1295, 'YUSSUF GUYO', 'SAFI ESTATE', '0727177693', 'NPS', '6189117', '2', '', 'MALE', '2019-06-01', NULL, NULL, NULL, '', ''),
(465, 107, 'ibtisan abbas', 'ola odha', '0721782527', 'CASH', '', '9', '', 'Female', '2019-06-01', NULL, NULL, NULL, '', ''),
(466, 1812, 'GALGALO WARIO ', 'BULAPESA', '0726844526', 'NPS', '1226133', '58', '', 'Male', '2019-06-02', NULL, NULL, NULL, '', ''),
(467, 1708, 'ABDIAZIZ ABDI HASSAN', 'KAMBI ODHA', '0713035822', 'NPS', '0691389', '7', '', 'Male', '2019-06-02', NULL, NULL, NULL, '', ''),
(468, 1709, 'MULKI ABDI HASSAN', 'KAMBI ODHA', '0713035822', 'NPS', '0691389', '4', '', 'FEMALE', '2019-06-02', NULL, NULL, NULL, '', ''),
(469, 1320, 'RIYAAN RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '8', '', 'Female', '2019-06-02', NULL, NULL, NULL, '', ''),
(470, 1314, 'REHAAN RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '6', '', 'Female', '2019-06-02', NULL, NULL, NULL, '', ''),
(471, 368, 'mustafa maulid', 'kambi shariff', '0720928116', 'CASH', '', '12', '', 'Male', '2019-06-02', NULL, NULL, NULL, '', ''),
(472, 1624, 'ADHNAN MOHAMUD', 'SAFI ESTATE', '0723264600', 'NPS', '0679313', '2', '', 'Male', '2019-06-06', NULL, NULL, NULL, '', ''),
(473, 1727, 'HALIMA MOHAMED', 'BULAPESA', '0718685432', 'NPS', '0679313', '36', '', 'Female', '2019-06-06', NULL, NULL, NULL, '', ''),
(474, 1727, 'HALIMA MOHAMED', 'BULAPESA', '0718685432', 'NPS', '0679313', '36', '', 'Female', '2019-06-06', NULL, NULL, NULL, '', ''),
(475, 109, 'bishar abdinur', 'KAMBI GARBA', '0723708176', 'CASH', '', '45', '', 'Male', '2019-06-06', NULL, NULL, NULL, '', ''),
(476, 1239, 'AISHA JARSO GUYO', 'kula mawe', '0704128614', 'FFS', '7271901', '25', '', 'Female', '2019-06-06', NULL, NULL, NULL, '', ''),
(477, 1710, 'SADIA MOHAMED BANTE', 'ISIOLO', '0721970743', 'NPS', '3662231', '36', '', 'Female', '2019-06-07', NULL, NULL, NULL, '', ''),
(478, 1419, 'NASIBO MOHAMED GODANA', 'bula pesa', '0722220808', 'NPS', '2417559', '10', '', 'Female', '2019-06-07', NULL, NULL, NULL, '', ''),
(479, 777, 'shukrani hassan', 'kiwanjani', '0725085030', 'NPS', '', '16', '', 'Female', '2019-06-07', NULL, NULL, NULL, '', ''),
(480, 1757, 'SAIDA ABDUBA TACHE', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '30', '', 'Female', '2019-06-08', NULL, NULL, NULL, '', ''),
(481, 1756, 'MUHAMED IBRAHIM DIDA', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '1', '500', 'Male', '2019-06-08', NULL, NULL, NULL, '', ''),
(482, 1546, 'AMINA ALI', 'bula pesa', '0708689510', 'CASH', '', '58', '', 'Female', '2019-06-08', NULL, NULL, NULL, '', ''),
(483, 1233, 'humayra abdirizack', 'k/garba', '0708623723', 'CASH', '', '2', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(484, 543, 'ADHO DUBA', 'marsabit', '0725451119', 'CASH', '', '16', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(485, 982, 'RAILA ADAN', 'garbatula', '0729708022', 'CASH', '', '24', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(486, 982, 'RAILA ADAN', 'garbatula', '0729708022', 'CASH', '', '24', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(487, 982, 'RALIA ADAN', 'garbatula', '0729708022', 'CASH', '', '24', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(488, 824, 'SIRAJ GODANA ABDI', 'tuluroba', '0722 780673', 'NPS', '0795442', '0', '', 'Male', '2019-06-10', NULL, NULL, NULL, '', ''),
(489, 1581, 'HALIMA OLLO FULAMO', 'tuluroba', '0722780673', 'NPS', '0795442', '23', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(490, 1784, 'TURU GALGALO JILLO', 'KAMBI ODHA', '0705561193', 'NPS', '12304031', '18', '', 'Female', '2019-06-10', NULL, NULL, NULL, '', ''),
(491, 42, 'halima osman', 'KAMBI GARBA', '0720335056', 'CASH', '', '26', '', 'Female', '2019-06-11', NULL, NULL, NULL, '', ''),
(492, 961, 'SADIA DIBA SALAD', 'CHECHELESI', '0720703895', 'NPS', '3663767', '34', '', 'Female', '2019-06-12', NULL, NULL, NULL, '', ''),
(493, 1576, 'IDRIS ALI', 'KAMBI GARBA', '0708368472', 'CASH', '', '20', '', 'Male', '2019-06-12', NULL, NULL, NULL, '', ''),
(494, 1528, 'roney ibrahim mohamud', 'ola odha', '0715599164', 'NPS', '3608953', '30', '', 'Female', '2019-06-13', NULL, NULL, NULL, '', ''),
(495, 1412, 'YASMIN IBRAHIM', 'tuluroba', '0725969758', 'CASH', '', '1', '', 'Female', '2019-06-13', NULL, NULL, NULL, '', ''),
(496, 1412, 'YASMIN IBRAHIM', 'tuluroba', '0720555152', 'NPS', '1014605', '1', '', 'Female', '2019-06-13', NULL, NULL, NULL, '', ''),
(497, 1314, 'REHAAN RASHID', 'safi estate', '0723281285', 'NPS', '1282718', '6', '500', 'Female', '2019-06-13', NULL, NULL, NULL, '', ''),
(498, 1513, 'ABDIA AHMED ALIO', 'LMD', '0720655041', 'NPS', '5254492', '21', '', 'Female', '2019-06-13', NULL, NULL, NULL, '', ''),
(499, 712, 'KHADIJA SAID', 'bula pesa', '0726260356', 'CASH', '', '70', '', 'Female', '2019-06-14', NULL, NULL, NULL, '', ''),
(500, 712, 'KHADIJA SAID', 'bula pesa', '0726260356', 'CASH', '', '70', '', 'Female', '2019-06-14', NULL, NULL, NULL, '', ''),
(501, 957, 'MOHAMUD ABDULLAHI', 'CHECHELESI', '0725152269', 'FFS', '2516457', '6', '500', 'Male', '2019-06-14', NULL, NULL, NULL, '', ''),
(502, 957, 'MOHAMUD ABDULLAHI', 'CHECHELESI', '0725152269', 'FFS', '2516457', '6', '1000', 'Male', '2019-06-14', NULL, NULL, NULL, '', ''),
(503, 1546, 'AMINA ALI', 'bula pesa', '0708689510', 'CASH', '', '58', '200', 'Female', '2019-06-14', NULL, NULL, NULL, '', ''),
(504, 1704, 'ABDIRIZACK WARIO JATTAN', 'BARRIER', '0722104783', 'NPS', '2473571', '37', '500', 'Male', '2019-06-15', NULL, NULL, NULL, '', ''),
(505, 1624, 'ADHNAN MOHAMUD', 'SAFI ESTATE', '0723264600', 'NPS', '0679313', '2', '', 'Male', '2019-06-15', NULL, NULL, NULL, '', ''),
(506, 1624, 'ADHNAN MOHAMUD', 'SAFI ESTATE', '0723264600', 'NPS', '0679313', '2', '500', 'Male', '2019-06-15', NULL, NULL, NULL, '', ''),
(507, 1921, 'AHMED RISHAD  SAID ', 'WABERA', '0729246536', 'NPS', '12750001', '14', '', 'Male', '2019-06-17', NULL, NULL, NULL, '', ''),
(508, 920, 'PETER ELIJAH CHIWE', 'bula mpya', '', 'CASH', '', '70', '', 'Male', '2019-06-17', NULL, NULL, NULL, '', ''),
(509, 920, 'PETER ELIJAH CHIWE', 'bula mpya', '', 'CASH', '', '70', '', 'Male', '2019-06-17', NULL, NULL, NULL, '', ''),
(510, 827, 'ABDIMAJID MAHABUB NOOR', 'bula pesa', '0721520636', 'NPS', '4005879', '0', '', 'Male', '2019-06-17', NULL, NULL, NULL, '', ''),
(511, 1244, 'HAFSA OMAR ADAN', 'bula pesa', '0711918505', 'NPS', '1507892', '5', '', 'Female', '2019-06-17', NULL, NULL, NULL, '', ''),
(512, 1338, 'SANDRA MAKENA NGARIMA', 'tuluroba', '0712176465', 'FFS', '4060315', '30', '1000', 'Female', '2019-06-18', NULL, NULL, NULL, '', ''),
(513, 749, 'RUKIA MATAR HAMDAN', 'ISIOLO', '0720468693', 'NPS', '1712460', '44', '', 'Female', '2019-06-18', NULL, NULL, NULL, '', ''),
(514, 1207, 'YASMIN ABDIKADIR YUNIS', 'ISIOLO', '0727559998', 'NPS', '5556680', '28', '500', 'Female', '2019-06-18', NULL, NULL, NULL, '', ''),
(515, 1878, 'CHUKULISA JIRMA ALI', 'TULUROBA', '0728211458', 'FFS', '8900532', '14', '', 'Female', '2019-06-18', NULL, NULL, NULL, '', ''),
(516, 1878, 'CHUKULISA JIRMA ALI', 'TULUROBA', '0728211458', 'FFS', '8900532', '14', '1000', 'Female', '2019-06-18', NULL, NULL, NULL, '', ''),
(517, 1877, 'HADALE JIRMA ALI', 'TULUROBA', '0728211458', 'FFS', '8900532', '9', '1000', 'Female', '2019-06-18', NULL, NULL, NULL, '', ''),
(518, 1756, 'MUHAMED IBRAHIM DIDA', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '1', '500', 'Male', '2019-06-19', NULL, NULL, NULL, '', ''),
(519, 1171, 'FARIDA BARWAKO KIAMBI', 'bula pesa', '0724282739', 'NPS', '12304280', '16', '', 'Female', '2019-06-19', NULL, NULL, NULL, '', ''),
(520, 1812, 'GALGALO WARIO ', 'BULAPESA', '0726844526', 'NPS', '1226133', '58', '', 'Male', '2019-06-19', NULL, NULL, NULL, '', ''),
(521, 1476, 'DAHABA ABDILLE', 'kiwanjani', '0721931248', 'NPS', '1999136', '38', '', 'Female', '2019-06-19', NULL, NULL, NULL, '', ''),
(522, 1201, 'NASJMA DAHIR ALI', 'CHECHELESI', '0720468693', 'NPS', '1712460', '3', '', 'Female', '2019-06-20', NULL, NULL, NULL, '', ''),
(523, 1107, 'FATIHA ABDULLAHI', 'kiwanjani', '0705011786', 'CASH', '', '2', '', 'Male', '2019-06-20', NULL, NULL, NULL, '', ''),
(524, 1741, 'MOHAMED ROBA ABDI', 'KAMBI ODHA', '0726032621', 'NPS', '6201112', '29', '', 'Male', '2019-06-20', NULL, NULL, NULL, '', ''),
(525, 1716, 'SDADIA DAYOW', 'LMD', '0725619636', 'NPS', '3592977', '35', '500', 'Female', '2019-06-20', NULL, NULL, NULL, '', ''),
(526, 1716, 'sadia dayow', 'LMD', '0725619636', 'NPS', '3592977', '35', '', 'Female', '2019-06-20', NULL, NULL, NULL, '', ''),
(527, 1928, 'ABDINASIR ABDI ', 'KIWANJANI', '0725920284', 'NPS', '', '18', '', 'Male', '2019-06-20', NULL, NULL, NULL, '', ''),
(528, 1004, 'RAHAMA ABDULLAHI', 'CHECHELESI', '0726616930', 'CASH', '', '25', '', 'Female', '2019-06-20', NULL, NULL, NULL, '', ''),
(529, 1516, 'NURTU BORU', 'CHECHELESI', '0721632738', 'FFS', '2359734', '5', '', 'Female', '2019-06-21', NULL, NULL, NULL, '', ''),
(530, 1055, 'DHARATU BORU MAMO', 'KAMBI ODHA', '0721632738', 'FFS', '2359734', '0', '', 'Male', '2019-06-21', NULL, NULL, NULL, '', ''),
(531, 1516, 'NURTU BORU', 'CHECHELESI', '0721632738', 'FFS', '2359734', '5', '', 'Female', '2019-06-21', NULL, NULL, NULL, '', ''),
(532, 131, 'mohamed osman', 'KAMBI GARBA', '0727577518', 'CASH', '', '37', '', 'Male', '2019-06-21', NULL, NULL, NULL, '', ''),
(533, 442, 'ibrahim iddi', 'bula pesa', '0725063634', 'NHIF CIVIL SERVANTS', '3439467', '5', '', 'Male', '2019-06-22', NULL, NULL, NULL, '', ''),
(534, 1876, 'AWAB AHMED DIYAD', 'WABERA', '0711395579', 'NPS', '1999136', '13', '', 'Male', '2019-06-22', NULL, NULL, NULL, '', ''),
(535, 613, 'SAMIRA MOHAMED ALI', 'ISIOLO', '0700922980', 'NPS', '1206203', '1', '', 'Female', '2019-06-23', NULL, NULL, NULL, '', ''),
(536, 1237, 'FATIHA MOHAMED', 'kula mawe', '0704128614', 'FFS', '7271901', '0', '', 'Female', '2019-06-23', NULL, NULL, NULL, '', ''),
(537, 1237, 'FATIHA MOHAMED', 'kula mawe', '0704128614', 'FFS', '7271901', '0', '', 'Female', '2019-06-23', NULL, NULL, NULL, '', ''),
(538, 1239, 'AISHA JARSO GUYO', 'kula mawe', '0704128614', 'FFS', '7271901', '25', '', 'Female', '2019-06-23', NULL, NULL, NULL, '', ''),
(539, 1091, 'SIMRAN MOHAMED', 'bula pesa', '0704134911', 'NPS', '1904161', '1', '', 'Female', '2019-06-24', NULL, NULL, NULL, '', ''),
(540, 827, 'ABDIMAJID MAHABUB NOOR', 'bula pesa', '0721520636', 'NPS', '4005879', '0', '', 'Male', '2019-06-24', NULL, NULL, NULL, '', ''),
(541, 1398, 'EIDYIA ABDULLAHI', 'TOWN', '', 'FFS', '2516457', '0', '', 'Female', '2019-06-24', NULL, NULL, NULL, '', ''),
(542, 1398, 'EIDYIA ABDULLAHI', 'TOWN', '', 'FFS', '2516457', '0', '', 'Female', '2019-06-24', NULL, NULL, NULL, '', ''),
(543, 1696, 'GULED NASIR', 'CONTY', '0721963047', 'CASH', '', '9', '', 'Male', '2019-06-25', NULL, NULL, NULL, '', ''),
(544, 1734, 'YASMIN GALGALO WARIO', 'TAQWA', '0726844526', 'NPS', '1226133', '14', '', 'Female', '2019-06-25', NULL, NULL, NULL, '', ''),
(545, 1736, 'MADINA GALGALO WARIO', 'TAQWA', '0726844626', 'NPS', '1226133', '46', '', 'Female', '2019-06-25', NULL, NULL, NULL, '', ''),
(546, 1839, 'HALIMA HASSAN', 'KIWANJANI', '0720448984', 'NPS', '2813226', '34', '', 'Female', '2019-06-25', NULL, NULL, NULL, '', ''),
(547, 1965, 'BEATRICE WANJIRU', 'MAILI SABA', '0790383523', 'CASH', '', '23', '', 'Female', '2019-06-26', NULL, NULL, NULL, '', ''),
(548, 1736, 'MADINA GALGALO WARIO', 'TAQWA', '0726844626', 'NPS', '1226133', '46', '', 'Female', '2019-06-27', NULL, NULL, NULL, '', ''),
(549, 1848, 'HABIBA SHARRIF', 'KAMBI SHARRIF', '', 'CASH', '', '85', '', 'Female', '2019-06-27', NULL, NULL, NULL, '', ''),
(550, 781, 'LOKHO JALDESA ABUDO', 'bula pesa', '0722220808', 'NPS', '2417559', '41', '', 'Female', '2019-06-28', NULL, NULL, NULL, '', ''),
(551, 1746, 'LEILA ABDULLAHI', 'KIWANJANI', '0705011786', 'CASH', '', '5', '', 'Female', '2019-06-28', NULL, NULL, NULL, '', ''),
(552, 1528, 'roney ibrahim mohamud', 'ola odha', '0715599164', 'NPS', '3608953', '30', '', 'Female', '2019-06-28', NULL, NULL, NULL, '', ''),
(553, 1978, 'RIYAN MOHAMED', 'WABERA', '0723742050', 'CASH', '', '8', '', 'Female', '2019-06-29', NULL, NULL, NULL, '', ''),
(554, 1198, 'FRANKLIN KIRIMI NYAGA', 'ISIOLO', '0721647433', 'NPS', '3679883', '38', '', 'Male', '2019-06-29', NULL, NULL, NULL, '', ''),
(555, 663, 'SAADIA IBRAHIM KORIO', 'ISIOLO', '0721952195', 'NPS', '2204667', '35', '', 'Female', '2019-06-29', NULL, NULL, NULL, '', ''),
(556, 836, 'NABIHA ABDIQAFAR DAHIR', 'bula pesa', '0721952195', 'NPS', '2204667', '0', '', 'Female', '2019-06-29', NULL, NULL, NULL, '', ''),
(557, 1984, 'ELIAS THURANERA ', 'KULA MAWE', '0726086242', 'NPS', '0712691', '20', '', 'Male', '2019-06-29', NULL, NULL, NULL, '', ''),
(558, 1702, 'FARIYA SHARRIF', 'BULAPESA', '0707198108', 'CASH', '', '20', '', 'Female', '2019-06-29', NULL, NULL, NULL, '', ''),
(559, 1803, 'MUSTAFA GALGALO WARIO', 'SAFI ESTATE', '0726844626', 'NPS', '1226133', '10', '', 'Male', '2019-06-30', NULL, NULL, NULL, '', ''),
(560, 1262, 'RALIA ABDULLAHI', 'KAMBI ODHA', '0720779725', 'CASH', '', '11', '', 'Female', '2019-06-30', NULL, NULL, NULL, '', ''),
(561, 1807, 'ZEITUNA MOHAMED KOLE', 'KAMBI GARBA', '0721741018', 'NPS', '13095245', '17', '', 'Female', '2019-07-01', NULL, NULL, NULL, '', ''),
(562, 1807, 'ZEITUNA MOHAMED KOLE', 'KAMBI GARBA', '0721741018', 'NPS', '13095245', '17', '', 'Female', '2019-07-01', NULL, NULL, NULL, '', ''),
(563, 1695, 'ANZAN MAHAMUD', 'BULAPESA', '0725937586', 'CASH', '', '2', '200', 'Female', '2019-07-01', NULL, NULL, NULL, '', ''),
(564, 1695, 'ANZAN MAHAMUD', 'BULAPESA', '0725937586', 'CASH', '', '2', '', 'Female', '2019-07-01', NULL, NULL, NULL, '', ''),
(565, 580, 'KAME JILLO ELEMA', 'kambi juu', '0722427710', 'NPS', '0400075', '7', '', 'Female', '2019-07-01', NULL, NULL, NULL, '', ''),
(566, 1349, 'IBRAHIM DIDA DUBA', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '31', '', 'Male', '2019-07-01', NULL, NULL, NULL, '', ''),
(567, 888, 'HUSSEIN DUBA BARWAQO', 'KAMBI GARBA', '0798156777', 'NPS', '12306531', '18', '', 'Female', '2019-07-02', NULL, NULL, NULL, '', ''),
(568, 515, 'OMAR ABDISHUKRI', 'bula pesa', '0701751799', 'NPS', '1507892', '1', '', 'Male', '2019-07-02', NULL, NULL, NULL, '', ''),
(569, 1244, 'HAFSA OMAR ADAN', 'bula pesa', '0711918505', 'NPS', '1507892', '5', '', 'Female', '2019-07-02', NULL, NULL, NULL, '', ''),
(570, 1886, 'SULEIMAN KUNO', 'KIWANJANI', '0717416492', 'FFS', '0599089', '8', '', 'Male', '2019-07-02', NULL, NULL, NULL, '', ''),
(571, 1883, 'HALIMA ABGUDO KUNO', 'KIWANJANI', '0717416492', 'FFS', '0599089', '50', '', 'Female', '2019-07-02', NULL, NULL, NULL, '', ''),
(572, 612, 'NAJMA ALI HUSSEIN', 'ISIOLO', '0700922980', 'NPS', '1206203', '11', '', 'Female', '2019-07-02', NULL, NULL, NULL, '', ''),
(573, 817, 'fatuma ahmed', 'bula pesa', '0722985618', 'CASH', '', '34', '', 'Female', '2019-07-03', NULL, NULL, NULL, '', ''),
(574, 1757, 'SAIDA ABDUBA TACHE', 'KAMBI GARBA', '0728696926', 'NPS', '3673293', '30', '', 'Female', '2019-07-03', NULL, NULL, NULL, '', ''),
(575, 1879, 'RAHIMA MURSALE GUYO', 'TULUROBA', '0728211458', 'FFS', '8900532', '31', '', 'Female', '2019-07-03', NULL, NULL, NULL, '', ''),
(576, 1620, 'ABDISALAM HUSSEIN', 'KAMBI ODHA', '0715599164', 'NPS', '3608953', '1', '', 'Male', '2019-07-03', NULL, NULL, NULL, '', ''),
(577, 1620, 'ABDISALAM HUSSEIN', 'KAMBI ODHA', '0715599164', 'NPS', '3608953', '1', '', 'Male', '2019-07-03', NULL, NULL, NULL, '', ''),
(578, 1529, 'Ridhwani Hussein Aden', 'ola odha', '0715599164', 'NPS', '3608953', '3', '', 'Female', '2019-07-04', NULL, NULL, NULL, '', ''),
(579, 1846, 'sumeya abdirashid guyo', 'BULAmpya', '0714730347', 'NPS', '12303885', '18', '', 'Female', '2019-07-04', NULL, NULL, NULL, '', ''),
(580, 5, 'Lucy Zabron', 'subuiga', '0724479918', 'CASH', '0008/20', '37', '200', 'Female', '2020-08-26', NULL, NULL, NULL, '', ''),
(581, 17, 'Ann Kawira', 'subuiga', '0799601312', 'CASH', '0017/20', '17', '', 'Female', '2020-08-31', NULL, NULL, NULL, '161.5', '85');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT '06/20/2018',
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `scheme` varchar(200) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `patient_id` varchar(200) DEFAULT NULL,
  `adate` varchar(200) DEFAULT NULL,
  `ddate` varchar(200) DEFAULT NULL,
  `bpayable` varchar(200) DEFAULT NULL,
  `nhif` varchar(200) DEFAULT NULL,
  `transdep` varchar(30) DEFAULT NULL,
  `insurance_id` varchar(200) DEFAULT NULL,
  `patype` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `use_type` varchar(200) DEFAULT NULL,
  `shift` varchar(200) DEFAULT NULL,
  `timez` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `due_date`, `name`, `balance`, `cost`, `scheme`, `number`, `patient_id`, `adate`, `ddate`, `bpayable`, `nhif`, `transdep`, `insurance_id`, `patype`, `session`, `use_type`, `shift`, `timez`) VALUES
(51, '46', 'Linet Ntinyari', '2021-07-22', NULL, '', '06/20/2018', NULL, NULL, '0', NULL, '		JACOB NDAMBUKI \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, NULL, NULL, '1', NULL),
(52, '46', 'Linet Ntinyari', '2021-07-22', NULL, '', '06/20/2018', NULL, NULL, '0', NULL, '		JACOB NDAMBUKI \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, NULL, NULL, '1', NULL),
(53, '47', 'Linet Ntinyari', '2021-07-22', NULL, '', '06/20/2018', NULL, NULL, '0', NULL, '		JACOB NDAMBUKI \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, NULL, NULL, '1', NULL),
(54, '47', 'Linet Ntinyari', '2021-07-22', NULL, '', '06/20/2018', NULL, NULL, '0', NULL, '		JACOB NDAMBUKI \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'M-Pesa', NULL, '1', NULL),
(55, '53', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '1', NULL),
(56, '54', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', NULL),
(57, '55', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', NULL),
(58, '55', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', NULL),
(59, '55', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', NULL),
(60, '55', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', NULL),
(61, '55', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', NULL),
(62, '57', 'admin', '2021-08-07', NULL, '1100', '06/20/2018', NULL, NULL, '1100', NULL, '		Grace Wawira \r\n	', '6', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'M-Pesa', NULL, '4', NULL),
(63, 'RS-3202033052385', 'Linet Ntinyari', '2021-10-09', NULL, '0', '', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '1', NULL),
(64, 'RS-3220330222332', 'optical', '2021-10-13', NULL, '200', '', NULL, NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DENTAL', 'CASH', NULL, 'Cash', NULL, '1', NULL),
(65, 'RS-5030622222332', 'optical', '10/15/2021', NULL, '', 'TEST PATIENT', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DENTAL', 'CASH', NULL, 'Cash', NULL, '1', NULL),
(66, '60', 'reception', '2021-10-18', NULL, '0', '06/20/2018', NULL, NULL, '0', NULL, '		TEST PATIENT \r\n	', '7', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', '18-10-2021 10:02:16 PM'),
(67, '67', 'jacob', '2021-10-19', NULL, '0', '06/20/2018', NULL, NULL, '0', NULL, '		KIMATU KIOKO \r\n	', '8', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', '19-10-2021 07:54:30 AM'),
(68, '70', 'reception', '2021-10-19', NULL, '350', '06/20/2018', NULL, NULL, '350', NULL, '		RIZPAH KYALO \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', '19-10-2021 09:23:14 AM'),
(69, '72', 'reception', '2021-10-19', NULL, '1550', '06/20/2018', NULL, NULL, '1550', NULL, '		Muthama Kisina \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', '19-10-2021 10:58:41 AM'),
(70, '81', 'reception', '2021-10-22', NULL, '0', '06/20/2018', NULL, NULL, '0', NULL, '		Muthama Kisina \r\n	', '1', NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '4', '22-10-2021 11:08:10 AM'),
(71, 'RS-22329400322222', 'reception', '2021-10-22', NULL, '0', '', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '1', NULL),
(72, 'RS-70233025302072', 'DR. Dino kyalo', '2021-10-25', NULL, '799', '', NULL, NULL, '603.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PHARMACY', 'CASH', NULL, 'Cash', NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesreport`
--

CREATE TABLE IF NOT EXISTS `salesreport` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) DEFAULT NULL,
  `cashier` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT '06/20/2018',
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `scheme` varchar(200) DEFAULT NULL,
  `number` varchar(200) DEFAULT NULL,
  `patient_id` varchar(200) DEFAULT NULL,
  `adate` varchar(200) DEFAULT NULL,
  `ddate` varchar(200) DEFAULT NULL,
  `bpayable` varchar(200) DEFAULT NULL,
  `nhif` varchar(200) DEFAULT NULL,
  `transdep` varchar(30) DEFAULT NULL,
  `insurance_id` varchar(200) DEFAULT NULL,
  `patype` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `use_type` varchar(200) DEFAULT NULL,
  `shift` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `salesreport`
--

INSERT INTO `salesreport` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `due_date`, `name`, `balance`, `cost`, `scheme`, `number`, `patient_id`, `adate`, `ddate`, `bpayable`, `nhif`, `transdep`, `insurance_id`, `patype`, `session`, `use_type`, `shift`) VALUES
(1, 'RS-833309320432220', 'reception', '09/20/2018', NULL, '100', NULL, NULL, NULL, '100', NULL, 'jacob', NULL, NULL, NULL, NULL, NULL, 'LAB', 'CASH', NULL, 'Paid', NULL, '2'),
(2, 'RS-62300', 'Festus Kimuyu', '10/23/2018', NULL, '470', NULL, NULL, NULL, NULL, NULL, NULL, '357', NULL, NULL, NULL, NULL, 'LAB', 'CASH', NULL, 'Paid', NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `profit` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `minprice` varchar(200) DEFAULT NULL,
  `datesold` varchar(200) DEFAULT NULL,
  `transdep` varchar(100) DEFAULT NULL,
  `patient_id` varchar(220) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `insurance_id` varchar(100) DEFAULT NULL,
  `bill` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `profit`, `invoice`, `product`, `qty`, `amount`, `name`, `cost`, `price`, `discount`, `minprice`, `datesold`, `transdep`, `patient_id`, `date`, `prescription_id`, `insurance_id`, `bill`) VALUES
(44, '100', 'Bs for Mps', '57', '1', '100', NULL, '0', '100', NULL, NULL, NULL, '2021-10-19', NULL, '0', NULL, NULL, NULL),
(45, '150', 'Urinalysis', '57', '1', '150', NULL, '0', '150', NULL, NULL, NULL, '2021-10-19', NULL, '0', NULL, NULL, NULL),
(46, '300', '72', 'Ceftriaxme 1g inj', '1', '300', 'Ceftriaxme 1g inj', NULL, '300', '0', NULL, NULL, NULL, '1', '2021-10-19', NULL, NULL, NULL),
(50, '800', '72', 'Cefuroxime 500mg', '1', '800', 'Cefuroxime 500mg', NULL, '800', '0', NULL, NULL, NULL, '1', '2021-10-19', NULL, NULL, NULL),
(51, '300', '72', 'Zithromax 500mg', '1', '300', 'Zithromax 500mg', NULL, '300', '0', NULL, NULL, NULL, '1', '2021-10-19', NULL, NULL, NULL),
(52, '150', '72', 'Meloxicam 15mg', '1', '150', 'Meloxicam 15mg', NULL, '150', '0', NULL, NULL, NULL, '1', '2021-10-19', NULL, NULL, NULL),
(55, '0', 'RS-8222032872633032320400', '2', '', '0', 'Ceftriaxme 1g inj', '0', '550', '1', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(56, '0', 'RS-8222032872633032320400', '23', '', '0', 'Ampiclo Dawa dry Syrup 100ml', '0', '0', '1', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(57, '-15', 'RS-8222032872633032320400', '83', '1', '0', 'Amitriptyline 25mg 10''s', '15', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(58, '-150', 'RS-8222032872633032320400', '83', '10', '0', 'Amitriptyline 25mg 10''s', '150', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(61, '-114.6', 'RS-42253332932322030336293', '93', '20', '0', 'Allopurinol 100mg tabs ', '114.6', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(62, '-330', 'RS-42253332932322030336293', '71', '30', '0', 'Atecard D tabs 50mg / 12.5mg ', '330', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(63, '986', 'RS-33033063832722770049', '2', '2', '1100', 'Ceftriaxme 1g inj', '114', '550', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(64, '506.1', 'RS-33033063832722770049', '4', '3', '549', 'Azithromycin 500mg Tabs', '42.9', '183', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(66, '-1890', 'RS-33033063832722770049', '87', '10', '0', 'Augmentin 1gm tabs 10''s', '1890', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-21', NULL, NULL, NULL),
(67, '-230', 'RS-322203300034', '38', '20', '0', 'Aceclo-P 100mg / 500mg Tabs ', '230', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(68, '-130', 'RS-322203300034', '23', '2', '0', 'Ampiclo Dawa dry Syrup 100ml', '130', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(69, '986', 'RS-322203300034', '2', '2', '1100', 'Ceftriaxme 1g inj', '114', '550', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(70, '0', '81', 'Ceftriaxme 1g inj', '', '0', 'Ceftriaxme 1g inj', NULL, '300', '1', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(71, '0', '81', 'Cefuroxime 500mg', '', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(72, '0', '81', 'Cefuroxime 500mg', '', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(73, '0', '81', 'Cefuroxime 500mg', '', '0', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(74, '-0', 'RS-22329400322222', '38', '', '0', 'Aceclo-P 100mg / 500mg Tabs ', '0', '0', '10', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(75, '-0', 'RS-22329400322222', '40', '', '0', 'Aceclofenac 100mg tabs', '0', '0', '10', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(78, '0', 'RS-22329400322222', '11', '', '0', 'Bro Zedex  Cough Syrup 100ml', '0', '0', '1', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(79, '0', 'RS-22329400322222', '95', '', '0', 'Inj Ceftriaxone 1g stat', '0', '0', '1', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(80, '0', 'RS-22329400322222', '', '', '0', NULL, '0', NULL, '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-22', NULL, NULL, NULL),
(81, '0', '82', 'Ceftriaxme 1g inj', '', '0', 'Ceftriaxme 1g inj', NULL, '300', '1', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(83, '0', '82', 'Cefuroxime 500mg', '', '0', NULL, NULL, NULL, '10', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(84, '0', '82', 'Zithromax 500mg', '', '0', NULL, NULL, NULL, '3', NULL, NULL, NULL, '1', '2021-10-22', NULL, NULL, NULL),
(87, '135', 'RS-03823230355223', '38', '10', '250', 'Aceclo-P 100mg / 500mg Tabs ', '115', '25', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(88, '615', 'RS-03823230355223', '61', '10', '800', 'Cefuroxime 500mg tabs', '185', '80', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(90, '-57', 'RS-92002223236043', '95', '1', '0', 'Inj Ceftriaxone 1g stat', '57', '0', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(91, '135', 'RS-0333300333203', '38', '10', '250', 'Aceclo-P 100mg / 500mg Tabs ', '115', '25', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(94, '472', 'RS-0333300333203', '94', '10', '600', 'Augmentin {Generic) 1gm tabs ', '128', '60', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(95, '0', 'RS-0333300333203', '5', '', '0', 'Meloxicam 15mg', '0', '300', '150', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(96, '135', 'RS-70233025302072', '38', '10', '250', 'Aceclo-P 100mg / 500mg Tabs ', '115', '25', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(100, '468.99', 'RS-70233025302072', '4', '3', '549', 'Azithromycin 500mg Tabs', '80.01', '183', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL),
(103, '0', '83', 'Cefuroxime 500mg', '1', '-800', NULL, NULL, NULL, '800', NULL, NULL, NULL, '1', '2021-10-25', NULL, NULL, NULL),
(104, '0', '83', 'Zithromax 500mg', '3', '-900', NULL, NULL, NULL, '300', NULL, NULL, NULL, '1', '2021-10-25', NULL, NULL, NULL),
(105, '0', '83', 'Zithromax 500mg', '1', '-300', NULL, NULL, NULL, '300', NULL, NULL, NULL, '1', '2021-10-25', NULL, NULL, NULL),
(106, '15', '83', 'Meloxicam 15mg', '1', '-135', 'Meloxicam 15mg', NULL, '15', '150', NULL, NULL, NULL, '1', '2021-10-25', NULL, NULL, NULL),
(107, '243', '83', 'Ceftriaxme 1g inj', '1', '0', 'Ceftriaxme 1g inj', NULL, '300', '300', NULL, NULL, NULL, '1', '2021-10-25', NULL, NULL, NULL),
(108, '2966', 'RS-0300738382223', '5', '10', '3000', 'Meloxicam 15mg', '34', '300', '0', NULL, NULL, 'PHARMACY', NULL, '2021-10-25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment`
--

CREATE TABLE IF NOT EXISTS `sales_payment` (
  `sale_id` int(11) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `payment_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(2, '', 'CONSULTATION', '0', '0', '0', 0, '', '', '', 981, 0, 0),
(3, '', 'MCH', '0', '0', '0', 0, '', '', '', 997, 0, 0),
(4, '', 'OPD', '0', '0', '0', 0, '', '', '', 998, 0, 0),
(5, '', 'INPATIENT', '0', '0', '0', 0, '', '', '', 994, 0, 0),
(6, '', 'DENTAL', '0', '0', '0', 0, '', '', '', 997, 0, 0),
(7, '', 'X-RAY', '0', '0', '0', 0, '', '', '', 998, 0, 0),
(8, '', 'THEATRE', '0', '0', '0', 0, '', '', '', 997, 0, 0),
(9, '', 'OPTICALS', '0', '0', '0', 0, '', '', '', 999, 0, 0),
(10, '', 'AMBULANCE', '0', '0', '0', 0, '', '', '', 1000, 0, 0),
(11, '', 'REGISTRATION', '0', '0', '0', 0, '', '', '', 1000, 0, 0),
(13, '', 'BLOOD TRASFUSSION', '', '', '', 0, '', '', '', -3, 0, 0),
(14, '', 'PHYSIOTHERAPY', '', '', '', 0, '', '', '', -1, 0, 0),
(18, NULL, 'OTHERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'PHARMACY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `department` varchar(200) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=397 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`product_id`, `product_code`, `department`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(1, '998', 'lab', '', '', '0', '0', 0, '0', '0', '0', 0, 0, 0),
(2, 'L034', 'LAB', 'Bs for Mps', NULL, '0', '100', 100, '0', NULL, NULL, 0, 0, NULL),
(3, 'L032', 'LAB', 'Stool Microscopy', NULL, '0', '100', 100, '0', NULL, NULL, 0, 0, NULL),
(4, 'L027', 'LAB', 'Widal test', NULL, '0', '150', 150, '0', NULL, NULL, 0, 0, NULL),
(5, 'L019', 'LAB', 'Pregnancy test', NULL, '0', '100', 150, '0', NULL, NULL, 0, 0, NULL),
(6, 'L021A', 'LAB', 'Blood sugar test', NULL, '0', '100', 150, '0', NULL, NULL, 0, 0, NULL),
(7, 'L022', 'LAB', 'Brucella test', NULL, '0', '150', 200, '0', NULL, NULL, 0, 0, NULL),
(8, 'lab103', 'LAB', 'Rheumatoid Arthritis(R.F)', NULL, '0', '150', 200, '0', NULL, NULL, 0, 0, NULL),
(9, 'L005', 'LAB', 'V.D.R.L', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(10, 'L006', 'LAB', 'Blood grouping', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(11, 'L007', 'LAB', 'Urinalysis', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(12, 'L018', 'LAB', 'H.pylori Antibody test', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(13, 'L037', 'LAB', 'H.pylori Antigen test', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(14, 'L030', 'LAB', 'Salmonella Antigen test', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(15, 'L021', 'LAB', 'H.I.V Test', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(16, 'L020', 'LAB', 'H.V.Smicroscopy', NULL, '0', '300', 500, '0', NULL, NULL, 0, 0, NULL),
(17, 'p12', 'LAB', 'Malaria RDT', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(18, 'L040', 'LAB', 'Hblevels', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(19, 'L024', 'LAB', 'Full Haemogram', NULL, '0', '600', 800, '0', NULL, NULL, 0, 0, NULL),
(20, 'L023', 'LAB', 'ESR', NULL, '0', '300', 300, '0', NULL, NULL, 0, 0, NULL),
(21, 'L009', 'LAB', 'Hepatitis B', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(22, 'L038', 'LAB', 'Electrolyres', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(23, 'L018A', 'LAB', 'Glucose Tol Test', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(24, 'L001', 'LAB', 'Haemogram', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(25, 'lab107', 'LAB', 'Hb', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(26, 'lab 106', 'LAB', 'Hb', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(27, 'lab109', 'LAB', 'Hb', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(28, 'P11', 'LAB', 'H B', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(29, 'L013', 'LAB', 'Hbs Ag', NULL, '0', '300', 300, '0', NULL, NULL, 0, 0, NULL),
(30, 'lab108', 'LAB', 'Hepatitisb', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(31, 'lab110', 'LAB', 'Hepatitis B', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(32, 'lo36', 'LAB', 'H.P', '0', '0', '150', 150, '0', '', '0', 5, 0, 0),
(33, 'lab104', 'LAB', 'H.Phylori', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(34, 'LA101', 'LAB', 'H. Phylori', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(35, 'lab102', 'LAB', 'H-Pylon', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(36, 'LA100', 'LAB', 'H_Pylori Test', '0', '0', '150', 150, '0', '', '0', 5, 0, 0),
(37, 'p10', 'LAB', 'H Pyrolli', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(38, 'L008', 'LAB', 'Hvs -P/M', NULL, '0', '300', 300, '0', NULL, NULL, 0, 0, NULL),
(39, 'l018', 'LAB', 'Lfts', NULL, '0', '1500', 2000, '0', NULL, NULL, 0, 0, NULL),
(40, 'L015', 'LAB', 'P24 Makers', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(41, 'L033', 'LAB', 'Pap Smear', NULL, '0', '2500', 3000, '0', NULL, NULL, 0, 0, NULL),
(42, 'L010', 'LAB', 'Pregnancy Test', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(43, 'L028', 'LAB', 'Prostrate Surface Antigen (Psa)', NULL, '0', '400', 500, '0', NULL, NULL, 0, 0, NULL),
(44, 'L025', 'LAB', 'Protein', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(45, 'lo10', 'LAB', 'Rbs', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(46, 'L019A', 'LAB', 'Rheumstoid Factor', NULL, '0', '150', 150, '0', NULL, NULL, 0, 0, NULL),
(47, 'LA099', 'LAB', 'Salmonella Test', NULL, '0', '500', 500, '0', NULL, NULL, 0, 0, NULL),
(48, 'lab105', 'LAB', 'Serum Crag', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(49, 'L016', 'LAB', 'Sputum', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(50, 'L002', 'LAB', 'Stool', NULL, '0', '100', 100, '0', NULL, NULL, 0, 0, NULL),
(51, 'L036', 'LAB', 'T3', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(52, 'L035', 'LAB', 'T4', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(53, 'L026', 'LAB', 'Transaminases', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(54, 'L014', 'LAB', 'Urea', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(55, 'L029', 'LAB', 'Urea & Electrolytes', NULL, '0', '800', 1200, '0', NULL, NULL, 0, 0, NULL),
(56, 'L003', 'LAB', 'Urinalysis', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(57, 'L011', 'LAB', 'Vdrl', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(58, 'L017', 'LAB', 'X-Mstch', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(59, 'MC003', 'MCH', 'Anc Card', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(60, 'MC001', 'MCH', 'A.N.C First Visit', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(61, 'MC004', 'MCH', 'Anc Profiles', NULL, '0', '800', 800, '0', NULL, NULL, 0, 0, NULL),
(62, 'MC004', 'MCH', 'Anc Profiles', NULL, '0', '800', 800, '0', NULL, NULL, 0, 0, NULL),
(63, 'MC002', 'MCH', 'A.N.C Rtevisit', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(64, 'MC002', 'MCH', 'A.N.C R Tevisit', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(65, 'MC006', 'MCH', 'Clean Gloves', '0', '0', '10', 10, '0', '', '0', 5, 0, 0),
(66, 'p23', 'MCH', 'Coil     Removal', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(67, 'MC005', 'MCH', 'C.W.C Card', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(68, 'MC007', 'MCH', 'Depo Injection', NULL, '0', '150', 200, '0', NULL, NULL, 0, 0, NULL),
(69, 'MC021', 'MCH', 'Depo Injection', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(70, 'MC008', 'MCH', 'Immunisation Needle And Syringe', '0', '0', '0', 0, '0', '', '0', 5, 0, 0),
(71, 'MC009', 'MCH', 'Iucd Checkup', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(72, 'MC010', 'MCH', 'Iucd Insertion', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(73, 'MC011', 'MCH', 'Iucd Removal', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(74, 'p22', 'MCH', 'Jeddel', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(75, 'MC018', 'MCH', 'Nets -Adult', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(76, 'MC019', 'MCH', 'Nets-Anc', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(77, 'MC012', 'MCH', 'Norplant insertion', '0', '0', '250', 250, '0', '', '0', 5, 0, 0),
(78, 'MC014', 'MCH', 'Norplant Removal', '0', '0', '250', 250, '0', '', '0', 5, 0, 0),
(79, 'MC015', 'MCH', 'Pills Per Packet', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(80, 'MC016', 'MCH', 'Speculum Exam', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(81, 'MC017', 'MCH', 'Sterile Gloves', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(82, 'MC017', 'MCH', 'Sterile Gloves', NULL, '0', '50', 50, '0', NULL, NULL, 0, 0, NULL),
(83, 'MC020', 'MCH', 'Under 5 Years', NULL, '0', '100', 100, '0', NULL, NULL, 0, 0, NULL),
(84, 'OT003', 'ORTHOPEDIC', 'Pop Application', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(85, 'OT002', 'ORTHOPEDIC', 'Pop Removal', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(86, 'OT001', 'ORTHOPEDIC', 'Pop Roll', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(87, 'OP021', 'OPD', '2% Lignocane (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(88, 'OP001', 'OPD', 'Consultation', NULL, '0', '200', 200, '0', NULL, NULL, 0, 0, NULL),
(89, 'OP002', 'OPD', 'Aminophyline (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(90, 'OP003', 'OPD', 'Ampiclox Inj. (Per Inj.)', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(91, 'OP004', 'OPD', 'Anticillin', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(92, 'OP005', 'OPD', 'Atropine (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(93, 'OP006', 'OPD', 'Augmentin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(94, 'OP007', 'OPD', 'Benzathine Penicillin 2.4 Mu', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(95, 'OP042', 'OPD', 'Branulla', '0', '0', '60', 60, '0', '', '0', 5, 0, 0),
(96, 'OP008', 'OPD', 'Buscopan (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(97, 'OP009', 'OPD', 'Chlorpromazine (Per Inj)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(98, 'OP040', 'OPD', 'Circumsission', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(99, 'OP011', 'OPD', 'Clean Gloves (Per Pair)', '0', '0', '10', 10, '0', '', '0', 5, 0, 0),
(100, '3', 'OPD', 'Cleaning', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(101, 'OP010', 'OPD', 'Climdamycin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(102, 'OP012', 'OPD', 'Dalacin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(103, 'OP013', 'OPD', 'Diazpan (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(104, 'OP037', 'OPD', 'Dressing', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(105, 'OP037', 'OPD', 'Dressing', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(106, 'OP037', 'OPD', 'Dressing', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(107, 'OP014', 'OPD', 'Ergometrine (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(108, 'OP015', 'OPD', 'Flucloxacilin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(109, 'OP016', 'OPD', 'Frusemide (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(110, 'OP017', 'OPD', 'Gentamycin (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(111, 'OP018', 'OPD', 'Giving Set', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(112, 'OP019', 'OPD', 'Hydrallazine (Per Inj.)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(113, 'OP020', 'OPD', 'Hydrocortisone (Per Inj.)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(114, 'OP039', 'OPD', 'I And D', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(115, '4', 'OPD', 'I&D', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(116, 'OP044', 'OPD', 'Nebulization Child', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(117, 'OP022', 'OPD', 'Need & Syringe', '0', '0', '5', 5, '0', '', '0', 5, 0, 0),
(118, 'OP023', 'OPD', 'Orbnenin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(119, 'OP045', 'OPD', 'Pelvic Assessment', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(120, 'OP024', 'OPD', 'Phenargan (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(121, 'OP025', 'OPD', 'Piriton (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(122, 'OP026', 'OPD', 'P.P.F (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(123, 'OP027', 'OPD', 'Pr (Per Rectal)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(124, 'OP034', 'OPD', 'Quinine Dihydrochloride', '0', '0', '0', 0, '0', '', '0', 5, 0, 0),
(125, 'op002', 'OPD', 'Removal Of Fb', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(126, 'OP046', 'OPD', 'Removal Of Stiches', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(127, 'OP028', 'OPD', 'Rocephine Inj (Per Inj.)', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(128, 'OP029', 'OPD', 'Scalp Vein ( Per Piece)', '0', '0', '5', 5, '0', '', '0', 5, 0, 0),
(129, 'OP038', 'OPD', 'Service', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(130, 'OP047', 'OPD', 'Service,Needle &Syringe', '0', '0', '25', 25, '0', '', '0', 5, 0, 0),
(131, 'OP030', 'OPD', 'Spectinomycin Inj.', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(132, 'OP031', 'OPD', 'Sterile Gloves (Per Pair)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(133, 'OPO48', 'OPD', 'Stiching', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(134, 'OP036', 'OPD', 'T.T', '0', '0', '45', 45, '0', '', '0', 5, 0, 0),
(135, 'OP036', 'OPD', 'T.T', '0', '0', '45', 45, '0', '', '0', 5, 0, 0),
(136, 'OP041', 'OPD', 'Urine Bag', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(137, 'OP032', 'OPD', 'V.E. (Vaginal Exam)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(138, 'OP033', 'OPD', 'Vitamin (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(139, 'OP035', 'OPD', 'X-Pen (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(140, 'p002', 'PHYSIOTHERAPY', 'Cyroherapy', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(141, 'p001', 'PHYSIOTHERAPY', 'Heat Therapy', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(142, 'ph004', 'PHYSIOTHERAPY', 'Pdl', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(143, 'p003', 'PHYSIOTHERAPY', 'Physiotheraphy', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(144, 'XRY025', 'X-RAY', 'Abdominal X-Ray', '0', '0', '350', 350, '0', '', '0', 5, 0, 0),
(145, 'XRY003', 'X-RAY', 'Ankle Xray', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(146, 'XRY026', 'X-RAY', 'Calcaneal X-Ray', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(147, 'XRY010', 'X-RAY', 'Cervical Spine(C-Spine)', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(148, 'XRY001', 'X-RAY', 'Chest Xray (Cxr)', '0', '0', '350', 350, '0', '', '0', 5, 0, 0),
(149, 'XRY015', 'X-RAY', 'Clavicle', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(150, 'XRY017', 'X-RAY', 'Elbow', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(151, 'XRY006', 'X-RAY', 'Femur', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(152, 'XRY022', 'X-RAY', 'Finger', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(153, 'XRY002', 'X-RAY', 'Foot Xray', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(154, 'XRY020', 'X-RAY', 'Hand', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(155, 'XRY008', 'X-RAY', 'Hip', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(156, 'XRY014', 'X-RAY', 'Humerus', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(157, 'XRY005', 'X-RAY', 'Knee', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(158, 'XRY009', 'X-RAY', 'Lumbar Spine(Lumbar Sacral)', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(159, 'XRY024', 'X-RAY', 'Mandible X-Ray', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(160, 'XRY021', 'X-RAY', 'Nasal Bone', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(161, 'XRY007', 'X-RAY', 'Pelvis', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(162, 'XRY018', 'X-RAY', 'R/Ulna', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(163, 'XRY016', 'X-RAY', 'Scapula', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(164, 'XRY013', 'X-RAY', 'Shoulder', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(165, 'XRY023', 'X-RAY', 'Skull X-Ray(Sxr)', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(166, 'XRY011', 'X-RAY', 'Thoracic Spine(T-Spine)', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(167, 'XRY012', 'X-RAY', 'Thoraco-Lumber', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(168, 'XRY004', 'X-RAY', 'Tibia Fibula', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(169, 'XRY019', 'X-RAY', 'Wrist', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(170, 'D038', 'DENTAL', 'Age Assessment', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(171, 'D001', 'DENTAL', 'Amalgam Filling', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(172, 'D048', 'DENTAL', 'Bilateral Bitewing', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(173, 'D026', 'DENTAL', 'Bite Wing', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(174, 'D046', 'DENTAL', 'Card', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(175, 'D002', 'DENTAL', 'Change Of Dressing', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(176, 'D003', 'DENTAL', 'Closed Simple Disimpaction', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(177, 'D004', 'DENTAL', 'Complete Denture', '0', '0', '3500', 3500, '0', '', '0', 5, 0, 0),
(178, 'd007', 'DENTAL', 'Composite Filling', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(179, 'D041', 'DENTAL', 'Consultation(Co-Operate Clients Only)', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(180, 'D039', 'DENTAL', 'Dental Check-Up/Advice', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(181, '3', 'DENTAL', 'Dental   Extraction', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(182, 'D030', 'DENTAL', 'Dental Recine Per Acrch', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(183, 'D005', 'DENTAL', 'Denture Repair', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(184, 'D005', 'DENTAL', 'Denture Repair', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(185, 'D005', 'DENTAL', 'Denture Repair', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(186, 'D036', 'DENTAL', 'Difficult Etraction', '0', '0', '350', 350, '0', '', '0', 5, 0, 0),
(187, 'D007', 'DENTAL', 'Disimpation Open', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(188, 'D035', 'DENTAL', 'Dressing Dry Socket', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(189, 'D009', 'DENTAL', 'Enucleation single comp Denture', '0', '0', '2000', 2000, '0', '', '0', 5, 0, 0),
(190, 'D009', 'DENTAL', 'Enucleation single comp Denture', '0', '0', '2000', 2000, '0', '', '0', 5, 0, 0),
(191, 'D010', 'DENTAL', 'Excision / Biospy', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(192, 'D010', 'DENTAL', 'Excision / Biospy', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(193, 'D037', 'DENTAL', 'Extraction Of Deciduous Teeth', '0', '0', '150', 150, '0', '', '0', 5, 0, 0),
(194, '4', 'DENTAL', 'Filling', '0', '0', '1200', 1200, '0', '', '0', 5, 0, 0),
(195, 'D032', 'DENTAL', 'Fine Scaling', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(196, 'D044', 'DENTAL', 'Fissure Sealing(Posterior Teeth)', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(197, 'D043', 'DENTAL', 'Fluoride Application', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(198, '5', 'DENTAL', 'Fms', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(199, 'D033', 'DENTAL', 'Full Mouth Scaling', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(200, 'D006', 'DENTAL', 'Gic Filling', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(201, 'D006', 'DENTAL', 'Gic Filling', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(202, 'D006', 'DENTAL', 'Gic Filling', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(203, 'D012', 'DENTAL', 'Incision & Drainage', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(204, 'D040', 'DENTAL', 'Inter Maxillary Fixation', '0', '0', '2000', 2000, '0', '', '0', 5, 0, 0),
(205, 'D047', 'DENTAL', 'Iopa X-Ray', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(206, 'D008', 'DENTAL', 'Masking(Per Tooth)', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(207, 'D008', 'DENTAL', 'Masking(Per Tooth)', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(208, 'D008', 'DENTAL', 'Masking(Per Tooth)', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(209, 'D013', 'DENTAL', 'Mersupialiasation MMF', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(210, 'D013', 'DENTAL', 'Mersupialiasation MMF', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(211, 'D022', 'DENTAL', 'Micro Abrasion Per Teeth', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(212, 'D034', 'DENTAL', 'Minor Oral Suegery', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(213, 'D011', 'DENTAL', 'Open Surgical Disimpaction', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(214, 'D011', 'DENTAL', 'Open Surgical Disimpaction', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(215, 'D011', 'DENTAL', 'Open Surgical Disimpaction', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(216, 'D045', 'DENTAL', 'Oral Prophylaxis', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(217, 'D031', 'DENTAL', 'parmanent filling', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(218, 'D031', 'DENTAL', 'parmanent filling', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(219, 'D015', 'DENTAL', 'Partial Denture (1 Tooth)', '0', '0', '800', 800, '0', '', '0', 5, 0, 0),
(220, 'D015', 'DENTAL', 'Partial Denture (1 Tooth)', '0', '0', '800', 800, '0', '', '0', 5, 0, 0),
(221, 'D018', 'DENTAL', 'Prophylaxis Polishing', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(222, 'D018', 'DENTAL', 'Prophylaxis Polishing', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(223, 'D018', 'DENTAL', 'Prophylaxis Polishing', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(224, 'D042', 'DENTAL', 'Pulpectomy', '0', '0', '600', 600, '0', '', '0', 5, 0, 0),
(225, 'D019', 'DENTAL', 'Pulpotomy alrylic splints', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(226, 'D019', 'DENTAL', 'Pulpotomy alrylic splints', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(227, 'D020', 'DENTAL', 'Removable orthodontic Appliances', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(228, 'D020', 'DENTAL', 'Removable orthodontic Appliances', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(229, 'D014', 'DENTAL', 'removal of sultures / wires', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(230, 'D014', 'DENTAL', 'removal of sultures / wires', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(231, 'D040', 'DENTAL', 'Replacement', '0', '0', '800', 800, '0', '', '0', 5, 0, 0),
(232, 'D016', 'DENTAL', 'Root Canal Treatment(Anteriors & Premolars)', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(233, 'D016', 'DENTAL', 'Root Canal Treatment(Anteriors & Premolars)', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(234, 'D017', 'DENTAL', 'Root Canal Treatment(Molars)', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(235, 'D017', 'DENTAL', 'Root Canal Treatment(Molars)', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(236, 'D021', 'DENTAL', 'Root Canal Treatment Per Canal', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(237, 'D021', 'DENTAL', 'Root Canal Treatment Per Canal', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(238, 'D023', 'DENTAL', 'Sacling And Polishing', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(239, 'D023', 'DENTAL', 'Sacling And Polishing', '0', '0', '400', 400, '0', '', '0', 5, 0, 0),
(240, 'D024', 'DENTAL', 'Simple Extraction', '0', '0', '250', 250, '0', '', '0', 5, 0, 0),
(241, 'D024', 'DENTAL', 'Simple Extraction', '0', '0', '250', 250, '0', '', '0', 5, 0, 0),
(242, 'D032', 'DENTAL', 'Space Maintainen', '0', '0', '800', 800, '0', '', '0', 5, 0, 0),
(243, 'D032', 'DENTAL', 'Space Maintainen', '0', '0', '800', 800, '0', '', '0', 5, 0, 0),
(244, 'D025', 'DENTAL', 'Splinting', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(245, 'D025', 'DENTAL', 'Splinting', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(246, 'D033', 'DENTAL', 'Suturing', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(247, 'D033', 'DENTAL', 'Suturing', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(248, 'D028', 'DENTAL', 'Temporary filling', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(249, 'D028', 'DENTAL', 'Temporary filling', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(250, 'D027', 'DENTAL', 'Then 100.00 For Additional tooth PD', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(251, 'D027', 'DENTAL', 'Then 100.00 For Additional tooth PD', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(252, 'D029', 'DENTAL', 'Tooth Extraction', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(253, 'D029', 'DENTAL', 'Tooth Extraction', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(254, 'D049', 'DENTAL', 'Uso', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(255, 'm52', 'REFERRALS', 'Ambulance To Emali', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(256, '51', 'REFERRALS', 'Ambulance To Machakos/Wote', '0', '0', '4000', 4000, '0', '', '0', 5, 0, 0),
(257, 'm49', 'REFERRALS', 'Ambulance to makindu', '0', '0', '3000', 3000, '0', '', '0', 5, 0, 0),
(258, 'm50', 'REFERRALS', 'Ambulance to nairobi', '0', '0', '5000', 5000, '0', '', '0', 5, 0, 0),
(259, '10', 'RECORDS', 'Card', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(260, '8', 'RECORDS', 'Catheterization', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(261, '8', 'RECORDS', 'Catheterization', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(262, '9', 'RECORDS', 'Files', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(263, '11', 'RECORDS', 'Revisit Fee', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(264, 'HP001', 'PUBLIC HEALTH', 'Bar/Hotel/Licences', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(265, 'HP002', 'PUBLIC HEALTH', 'Clinics', '0', '0', '750', 750, '0', '', '0', 5, 0, 0),
(266, 'HP003', 'PUBLIC HEALTH', 'Med.Exam (Food Handlers)', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(267, 'hp007', 'PUBLIC HEALTH', 'Multi-Storey (Plan Approval)', '0', '0', '5000', 5000, '0', '', '0', 5, 0, 0),
(268, 'HP004', 'PUBLIC HEALTH', 'Nursing Homes/Hospitals', '0', '0', '3000', 3000, '0', '', '0', 5, 0, 0),
(269, 'HP005', 'PUBLIC HEALTH', 'Plan Approvals', '0', '0', '3000', 3000, '0', '', '0', 5, 0, 0),
(270, 'HP006', 'PUBLIC HEALTH', 'Residential (Plan Approval)', '0', '0', '1000', 1000, '0', '', '0', 5, 0, 0),
(271, 'MIS002', 'MISCELLANEOUS INCOME(GENERAL)', '50% Dextrose (Per Inj.)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(272, 'MIS001', 'MISCELLANEOUS INCOME(GENERAL)', '5% Dextrose (Per Bottle)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(273, 'MIS003', 'MISCELLANEOUS INCOME(GENERAL)', 'Actal (Magnesium Trisilicate)', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(274, 'MIS004', 'MISCELLANEOUS INCOME(GENERAL)', 'Bbe', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(275, 'mis035', 'MISCELLANEOUS INCOME(GENERAL)', 'Bed Fee', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(276, 'MIS005', 'MISCELLANEOUS INCOME(GENERAL)', 'Beta Methasone Cream', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(277, 'MIS34', 'MISCELLANEOUS INCOME(GENERAL)', 'Borehole Water 20 Liters', '0', '0', '2', 2, '0', '', '0', 5, 0, 0),
(278, 'MIS006', 'MISCELLANEOUS INCOME(GENERAL)', 'Broric Acid Ear Drops', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(279, 'MIS007', 'MISCELLANEOUS INCOME(GENERAL)', 'Bruffen Syrup', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(280, 'MIS008', 'MISCELLANEOUS INCOME(GENERAL)', 'Calcium', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(281, 'MIS33', 'MISCELLANEOUS INCOME(GENERAL)', 'Canteen Rent', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(282, 'MIS10', 'MISCELLANEOUS INCOME(GENERAL)', 'Dexamethasone Tabs', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(283, 'MIS12', 'MISCELLANEOUS INCOME(GENERAL)', 'Gentamycine Eye/Ear Drops', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(284, 'MIS11', 'MISCELLANEOUS INCOME(GENERAL)', 'G.V Paint', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(285, 'MIS13', 'MISCELLANEOUS INCOME(GENERAL)', 'Half Strength Darrows (Per Bottle)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(286, 'MIS14', 'MISCELLANEOUS INCOME(GENERAL)', 'Haloperidol Tabs', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(287, 'MIS15', 'MISCELLANEOUS INCOME(GENERAL)', 'Hartmans Solution (Per Bottle)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(288, 'MIS16', 'MISCELLANEOUS INCOME(GENERAL)', 'Hycomycin Eye/Ear/Nose Drops', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(289, 'MIS17', 'MISCELLANEOUS INCOME(GENERAL)', 'Lingers Lactate Solution (Per Solution)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(290, 'MIS19', 'MISCELLANEOUS INCOME(GENERAL)', 'Mannitol 20% (Per Bottle)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(291, 'MIS035', 'MISCELLANEOUS INCOME(GENERAL)', 'mass excision', '0', '0', '10000', 10000, '0', '', '0', 5, 0, 0),
(292, 'MIS20', 'MISCELLANEOUS INCOME(GENERAL)', 'Methileted Spirit', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(293, 'MIS18', 'MISCELLANEOUS INCOME(GENERAL)', 'M/Vitamin Syrup', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(294, 'MIS21', 'MISCELLANEOUS INCOME(GENERAL)', 'Normal Saline (Per Bottle)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(295, 'MIS22', 'MISCELLANEOUS INCOME(GENERAL)', 'Nti-Asthmatic Syr/Franol', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(296, 'MIS23', 'MISCELLANEOUS INCOME(GENERAL)', 'Ors Sachets', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(297, 'MIS24', 'MISCELLANEOUS INCOME(GENERAL)', 'Phenegam (Promethazine)', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(298, 'MIS25', 'MISCELLANEOUS INCOME(GENERAL)', 'Plasil Tabs', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(299, 'MIS30', 'MISCELLANEOUS INCOME(GENERAL)', 'Research', '0', '0', '2000', 2000, '0', '', '0', 5, 0, 0),
(300, 'MIS31', 'MISCELLANEOUS INCOME(GENERAL)', 'Student Attacment Per Month', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(301, 'MIS26', 'MISCELLANEOUS INCOME(GENERAL)', 'Sulphadoxine/Pyrimetuane', '0', '0', '0', 0, '0', '', '0', 5, 0, 0),
(302, 'MIS27', 'MISCELLANEOUS INCOME(GENERAL)', 'Tabs Sulfate', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(303, 'MIS28', 'MISCELLANEOUS INCOME(GENERAL)', 'Tabs Vitamin B Compound', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(304, 'MIS009', 'MISCELLANEOUS INCOME(GENERAL)', 'Water Charges', '0', '0', '9200', 9200, '0', '', '0', 5, 0, 0),
(305, 'MIS009', 'MISCELLANEOUS INCOME(GENERAL)', 'Water Charges', '0', '0', '9200', 9200, '0', '', '0', 5, 0, 0),
(306, 'MIS009', 'MISCELLANEOUS INCOME(GENERAL)', 'Water Charges', '0', '0', '9200', 9200, '0', '', '0', 5, 0, 0),
(307, 'MIS29', 'MISCELLANEOUS INCOME(GENERAL)', 'Zincsulphate Eye/Ear Drops', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(308, 'ME001', 'MEDICAL EXAMINATION', 'Age Assessment', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(309, 'ME002', 'MEDICAL EXAMINATION', 'College Certificates', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(310, 'ME003', 'MEDICAL EXAMINATION', 'Leave Approval(Maternity)', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(311, 'ME004', 'MEDICAL EXAMINATION', 'Med. Certificate (Employment)', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(312, 'ME005', 'MEDICAL EXAMINATION', 'Medical Reports (Insurance)', '0', '0', '500', 500, '0', '', '0', 5, 0, 0),
(313, 'ME006', 'MEDICAL EXAMINATION', 'P3 Exam/Completion', '0', '0', '1500', 1500, '0', '', '0', 5, 0, 0),
(314, 'ME007', 'MEDICAL EXAMINATION', 'Pelvic Assessme Nt', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(315, 'ME008', 'MEDICAL EXAMINATION', 'School Certificates', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(316, 'ME009', 'MEDICAL EXAMINATION', 'Workman''S Compensation', '0', '0', '300', 300, '0', '', '0', 5, 0, 0),
(317, 'I025', 'GENERAL WARD', '2% Lignocane (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(318, 'I001', 'GENERAL WARD', 'Admission', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(319, 'I026', 'GENERAL WARD', 'Adrenaline (Per Inj.)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(320, 'I027', 'GENERAL WARD', 'Aminophyline (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(321, 'I028', 'GENERAL WARD', 'Ampiclox Inj. (Per Inj.)', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(322, 'I029', 'GENERAL WARD', 'Anticillin', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(323, 'I030', 'GENERAL WARD', 'Atropine (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(324, 'I031', 'GENERAL WARD', 'Augmentin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(325, 'gw002', 'GENERAL WARD', 'Bed Fee', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(326, 'I007', 'GENERAL WARD', 'Bed Fee(<5years)', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(327, 'I002', 'GENERAL WARD', 'Bed fees', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(328, 'I032', 'GENERAL WARD', 'Benzathine Penicillin 2.4 Mu', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(329, 'I008', 'GENERAL WARD', 'Blood Giving Set(Per Set Used)', '0', '0', '30', 30, '0', '', '0', 5, 0, 0),
(330, 'I062', 'GENERAL WARD', 'Branular (Per Piece)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(331, 'I033', 'GENERAL WARD', 'Buscopan (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(332, 'I009', 'GENERAL WARD', 'Catheter', '0', '0', '250', 250, '0', '', '0', 5, 0, 0),
(333, 'I034', 'GENERAL WARD', 'Chlorpromazine (Per Inj)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(334, 'I035', 'GENERAL WARD', 'Clean Gloves (Per Pair)', '0', '0', '10', 10, '0', '', '0', 5, 0, 0),
(335, 'I036', 'GENERAL WARD', 'Climdamycin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(336, 'gw001', 'GENERAL WARD', 'Daily Ward Charges', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(337, 'I037', 'GENERAL WARD', 'Dalacin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(338, 'I038', 'GENERAL WARD', 'Diazpan (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(339, 'I020', 'GENERAL WARD', 'Dressing', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(340, 'I010', 'GENERAL WARD', 'Enema', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(341, 'I039', 'GENERAL WARD', 'Ergometrine (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(342, 'I040', 'GENERAL WARD', 'Flucloxacilin', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(343, 'I041', 'GENERAL WARD', 'Frusemide (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(344, 'I042', 'GENERAL WARD', 'Gentamycin (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(345, '1044', 'GENERAL WARD', 'Gentermyzine', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(346, 'I043', 'GENERAL WARD', 'Giving Set', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(347, 'I044', 'GENERAL WARD', 'Hydrallazine (Per Inj.)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(348, 'I045', 'GENERAL WARD', 'Hydrocortisone (Per Inj.)', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(349, 'I003', 'GENERAL WARD', 'Injection', '0', '0', '10', 10, '0', '', '0', 5, 0, 0),
(350, 'I004', 'GENERAL WARD', 'Iv fluids', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(351, 'I013', 'GENERAL WARD', 'Last office Procedure', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(352, 'I015', 'GENERAL WARD', 'Needle And Syringe', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(353, 'I046', 'GENERAL WARD', 'Need & Syringe', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(354, 'I014', 'GENERAL WARD', 'N. G. Tube', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(355, '537', 'GENERAL WARD', 'Nursing Care', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(356, 'I047', 'GENERAL WARD', 'Orbnenin', '0', '0', '5', 5, '0', '', '0', 5, 0, 0),
(357, 'I049', 'GENERAL WARD', 'Pelvic Assessment', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(358, 'I050', 'GENERAL WARD', 'Phenargan (Per Inj.)', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(359, 'I051', 'GENERAL WARD', 'Piriton (Per Inj.)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(360, 'I048', 'GENERAL WARD', 'P.P.F (Per Inj.)', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(361, 'I052', 'GENERAL WARD', 'Pr (Per Rectal)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(362, 'I053', 'GENERAL WARD', 'Quinine Dihydrochloride', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(363, 'I061', 'GENERAL WARD', 'Rbs (Wd)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(364, 'I061', 'GENERAL WARD', 'Rbs (Wd)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(365, 'I054', 'GENERAL WARD', 'Rocephine Inj (Per Inj.)', NULL, '0', '2500', 2500, '0', NULL, NULL, 0, 0, NULL),
(366, 'I055', 'GENERAL WARD', 'Scalp Vein ( Per Piece', '0', '0', '5', 5, '0', '', '0', 5, 0, 0),
(367, 'I016', 'GENERAL WARD', 'Scalve Vein(All Gauge)', '0', '0', '5', 5, '0', '', '0', 5, 0, 0),
(368, 'I017', 'GENERAL WARD', 'Shaving For Theatre', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(369, 'I056', 'GENERAL WARD', 'Spectinomycin Inj.', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(370, 'I057', 'GENERAL WARD', 'Sterile Gloves (Per Pair)', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(371, 'I019', 'GENERAL WARD', 'Urine Bag', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(372, 'I021', 'GENERAL WARD', 'V.E.(Per Examination)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(373, 'I058', 'GENERAL WARD', 'V.E. (Vaginal Exam)', '0', '0', '20', 20, '0', '', '0', 5, 0, 0),
(374, 'I059', 'GENERAL WARD', 'Vitamin (Per Inj.)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(375, '536', 'GENERAL WARD', 'Wardpay', '0', '0', '200', 200, '0', '', '0', 5, 0, 0),
(376, 'I060', 'GENERAL WARD', 'X-Pen (Per Inj)', '0', '0', '40', 40, '0', '', '0', 5, 0, 0),
(377, 'moo2', 'CLINICS', 'Dermatology', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(378, '5', 'CLINICS', 'Gopc', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(379, 'MO01', 'CLINICS', 'Mopc', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(380, 'oo7', 'CLINICS', 'Nutrition', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(381, '4', 'CLINICS', 'Physiotheraphy', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(382, '6', 'CLINICS', 'Pop', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(383, 'm003', 'CLINICS', 'Psychotheraphy', '0', '0', '100', 100, '0', '', '0', 5, 0, 0),
(384, 'MO02', 'CLINICS', 'Sopc', '0', '0', '50', 50, '0', '', '0', 5, 0, 0),
(394, NULL, 'MCH', 'Jadel Inseration', NULL, '', '300', 500, NULL, NULL, NULL, NULL, NULL, NULL),
(395, NULL, 'lab', 'stool microscopy', NULL, '0.00', '100', 100, NULL, NULL, NULL, NULL, NULL, NULL),
(396, NULL, 'lab', 'urea / electrolytes / creatinine', NULL, '0.00', '1500.00', 1500, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'HOSPITAL MANAGEMENT SYSTEM'),
(7, 'system_email', ''),
(2, 'system_title', 'Hospital Management System'),
(3, 'address', ''),
(4, 'phone', '0701417887/0714767883'),
(5, 'paypal_email', 'paypal@paypal.com'),
(6, 'currency', 'Ksh');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE IF NOT EXISTS `shift` (
  `shift_id` int(11) NOT NULL AUTO_INCREMENT,
  `shift_name` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `shift_name`, `status`, `date`) VALUES
(1, 'Day Shift', 'Open', NULL),
(2, 'Night Shift', 'Open', NULL),
(3, 'Day Shift', 'Open', NULL),
(4, 'Day Shift', 'Open', '06-08-2021 ');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `c_price` int(11) DEFAULT NULL,
  `form` varchar(50) DEFAULT NULL,
  `experiy_date` varchar(15) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=801 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(2, '1004', '', '', '', '25', 35, '', '4/1/2018', '', 0, 0, 0),
(3, '1005', 'Acyclovir cream', '170', '', '230', 300, '', '10/1/2020', 'british pharmaceuticals', 0, 0, 2),
(4, '1006', 'Adrenaline inj 1ml 10''s', '35', '', '100', 150, '', '10/1/2019', 'british pharmaceuticals', 0, 0, 10),
(5, '1010', 'al tabs adults', '85', '', '120', 180, '', '6/5/2021', 'MBETI PHARMACY', 0, 0, 5),
(6, '1011', 'Aldomet 250mg Tabs', '4.5', '', '6', 10, '', '3/5/2022', 'MBETI PHARMACY', 0, 0, 50),
(7, '1013', 'Allerfast 180mg tabs 100''s', '26', '', '35', 40, '', '7/30/2021', 'MBETI PHARMACY', 0, 0, 10),
(8, '1014', 'Allopurinol 300mg', '5', '', '10', 20, '', '9/1/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(9, '1019', 'Amaryl 2mg', '40', '', '60', 70, '', '11/1/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(10, '1025', 'Amlodipine 5mg', '3.28', '', '10', 15, '', '6/1/2020', 'Veteran Pharm Ltd', 0, 0, 28),
(11, '1028', 'Amoxyclav 156.25mg/5ml', '175', '', '250', 300, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 3),
(12, '1029', 'Amoxyclav 228.5mg/5ml', '220', '', '300', 350, '', '7/1/2019', 'Veteran Pharm Ltd', 0, 0, 2),
(13, '1030', 'Amoxyclav 312.5mg/5ml', '374', '', '500', 550, '', '5/21/2019', 'MBETI PHARMACY', 0, 0, 3),
(14, '1034', 'Amoxyclav 1g tabs', '30', '', '40', 45, '', '7/30/2020', 'nextgen pharmaceuticals', 0, 0, 10),
(15, '1036', 'Amoxyl 500mg loose', '3.8', '', '5', 10, '', '5/7/2020', 'nextgen pharmaceuticals', 0, 0, 200),
(16, '1039', 'Ampiclox neonatal drops', '75', '', '60', 110, '', '5/1/2020', '', 0, 0, 3),
(17, '1042', 'Anomex suppositories', '20', '', '45', 55, '', '5/1/2020', 'MBETI PHARMACY', 0, 0, 5),
(18, '1045', 'Aptizoom 200ml', '385', '', '550', 600, '', '4/30/2019', 'MBETI PHARMACY', 0, 0, 0),
(19, '1046', 'Benzhezol 5mg', '2', '', '5', 10, '', '1/5/2020', 'british pharmaceuticals', 0, 0, 50),
(20, '1047', 'artemether inj 80/40', '', '', '', 0, '', '5/1/2019', '', 0, 0, 10),
(21, '1053', 'Augmentin tabs 1g', '130', '', '175', 185, '', '2/1/2018', 'MBETI PHARMACY', 0, 0, 14),
(22, '1064', 'Blood infusion set', '15', '', '25', 30, '', '1/5/2021', 'medisel kenya', 0, 0, 5),
(23, '1067', 'Branta', '54', '', '75', 85, '', '2/25/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(24, '1068', 'Bromocriptine 2.5mg tabs', '37', '', '50', 60, '', '5/1/2020', 'MBETI PHARMACY', 0, 0, 10),
(25, '1072', 'Brufen loose 200mg', '', '', '2', 5, '', '8/5/2020', '', 0, 0, 50),
(26, '1074', 'Budecort inhaler 200mcg', '1172.84', '', '1600', 1650, '', '4/1/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(27, '1076', 'buscopan injection', '33', '', '100', 150, '', '4/1/2019', '', 0, 0, 10),
(28, '1078', 'Calamine lotion', '15', '', '50', 100, '', '8/1/2019', 'MBETI PHARMACY', 0, 0, 3),
(29, '1081', 'Capsifenac gel', '140', '', '200', 250, '', '7/28/2020', 'MBETI PHARMACY', 0, 0, 1),
(30, '1083', 'Carbimazole 5mg', '2.35', '', '5', 10, '', '9/1/2021', 'max pharmaceuticals', 0, 0, 20),
(31, '1084', 'calci plex 500mg 15''s', '10.25', '', '15', 20, '', '1/5/2021', 'british pharmaceuticals', 0, 0, 15),
(32, '1093', 'Catoxymag n 200ml', '172', '', '250', 300, '', '1/5/2021', 'MBETI PHARMACY', 0, 0, 2),
(33, '1101', 'Cefuroxime i.v', '145', '', '200', 250, '', '7/31/2020', 'british pharmaceuticals', 0, 0, 3),
(34, '1106', 'Ceprolen eye drops', '100', '', '150', 200, '', '4/30/2021', '', 0, 0, 3),
(35, '1107', 'Ceprolen d ear/eye drops', '220', '', '320', 370, '', '3/3/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(36, '1108', 'cerumol ear drops', '320', '', '450', 500, '', '1/5/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(37, '1109', 'Cetrizine 60ml', '21', '', '50', 80, '', '3/5/2021', 'MBETI PHARMACY', 0, 0, 5),
(38, '1111', 'chloramphenical caps', '', '', '5', 10, '', '1/5/2018', '', 0, 0, 5),
(39, '1112', 'Chlorpromazine 100mg', '1.5', '', '3', 5, '', '1/5/2018', 'MBETI PHARMACY', 0, 0, 10),
(40, '1113', 'cilvas', '', '', '70', 80, '', '1/5/2018', '', 0, 0, 5),
(41, '1114', 'Ciprofloxacin 500mg 100''s', '9.5', '', '15', 20, '', '4/5/2020', 'british pharmaceuticals', 0, 0, 20),
(42, '1120', 'Clotrimazole cream', '18', '', '100', 150, '', '2/5/2022', 'MBETI PHARMACY', 0, 0, 5),
(43, '1122', 'cofnil n', '', '', '250', 300, '', '1/5/2018', '', 0, 0, 5),
(44, '1123', 'colchine 0.5mg', '5.5', '', '10', 15, '', '9/25/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(45, '1124', 'combizole tabs', '', '', '50', 60, '', '1/5/2018', '', 0, 0, 5),
(46, '1126', 'Coscof c 100ml', '146', '', '200', 250, '', '1/5/2018', '', 0, 0, 5),
(47, '1129', 'Diazepam tabs 5mg', '1.3', '', '5', 10, '', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(48, '1133', 'cypro b plus', '236', '', '320', 340, '', '1/5/2020', 'Mbeti Pharmacy', 0, 0, 2),
(49, '1135', 'Daflon 500mg tabs', '15', '', '35', 45, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 15),
(50, '1138', 'Dermazine cream 100mg', '165', '', '250', 300, '', '1/5/2023', 'MBETI PHARMACY', 0, 0, 1),
(51, '1139', 'Desloratdine syp 60ml', '100', '', '150', 200, '', '7/5/2020', 'MBETI PHARMACY', 0, 0, 3),
(52, '1141', 'dexamethasose inj 4mg', '15', '', '20', 25, '', '1/5/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(53, '1145', 'Df118 30mg', '15', '', '20', 25, '', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(54, '1148', 'diazepam injection', '', '', '100', 150, '', '1/5/2018', '', 0, 0, 5),
(55, '1150', 'Diclofenac 100mg Tabs', '2.3', '', '10', 10, '', '2/28/2021', 'nextgen pharmaceuticals', 0, 0, 20),
(56, '1151', 'Diclofenac 50mg', '2.8', '', '5', 10, '', '8/30/2019', 'nextgen pharmaceuticals', 0, 0, 20),
(57, '1154', 'Digoxin 0.25mg', '10', '', '15', 20, '', '2/27/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(58, '1155', 'Diprofos inj', '598.65', '', '800', 850, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 2),
(59, '1156', 'Diprosalic oint 10g', '332.5', '', '450', 500, '', '5/5/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(60, '1159', 'dobesil caps', '', '', '60', 70, '', '1/5/2018', '', 0, 0, 5),
(61, '1160', 'dobesil h cream', '', '', '660', 760, '', '1/5/2018', '', 0, 0, 5),
(62, '1161', 'doloact gel', '', '', '320', 370, '', '1/5/2018', '', 0, 0, 5),
(63, '1162', 'Flamoryl s tabs', '13.5', '', '20', 25, '', '12/30/2022', 'MBETI PHARMACY', 0, 0, 50),
(64, '1166', 'doxycline 100mg', '', '', '10', 20, '', '1/5/2022', '', 0, 0, 5),
(65, '1168', 'Bisacodyl tabs 5mg', '1', '', '5', 10, '', '5/30/2021', 'MBETI PHARMACY', 0, 0, 20),
(66, '1169', 'Duphaston 10mg', '69.2', '', '95', 100, '', '11/1/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(67, '1170', 'econazole pessaries', '', '', '200', 250, '', '1/5/2018', '', 0, 0, 5),
(68, '1171', 'elocom cream', '', '', '890', 920, '', '9/1/2018', '', 0, 0, 5),
(69, '1173', 'emanzen forte', '', '', '35', 45, '', '7/1/2018', '', 0, 0, 2),
(70, '1175', 'Enalapril 20mg', '13', '', '20', 30, '', '11/1/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(71, '1182', 'Epanutin inj', '', '', '1350', 1450, '', '1/5/2018', '', 0, 0, 5),
(72, '1185', 'erythromycin susp 100ml', '', '', '100', 150, '', '2/1/2019', '', 0, 0, 5),
(73, '1186', 'Esomeprazole 20mg 30s', '4.6', '', '10', 15, '', '8/30/2020', 'MBETI PHARMACY', 0, 0, 150),
(74, '1188', 'Exoderil cream 15 g', '203', '', '260', 310, '', '10/1/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(75, '1190', 'Feliz s 10', '65', '', '90', 95, '', '1/5/2023', 'MBETI PHARMACY', 0, 0, 10),
(76, '1191', 'felodipine', '', '', '100', 150, '', '1/5/2018', '', 0, 0, 5),
(77, '1197', 'Flagyl 400mg loose', '0.5', '', '3', 5, '', '10/1/2020', 'Veteran Pharm Ltd', 0, 0, 150),
(78, '1199', 'Flagyl i.v 100ml', '26', '', '100', 150, '', '1/1/2020', 'MBETI PHARMACY', 0, 0, 5),
(79, '1203', 'Flora norm sach', '87.9', '', '120', 150, '', '12/5/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(80, '1205', 'Flucloxacillin 250mg caps', '4.9', '', '10', 15, '', '10/1/2021', 'Veteran Pharm Ltd', 0, 0, 200),
(81, '1206', 'Flucloxacillin 500mg', '8.5', '', '15', 20, '', '4/1/2020', 'Veteran Pharm Ltd', 0, 0, 100),
(82, '1208', 'Fluconazole 150mg', '8', '', '10', 20, '', '1/5/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 10),
(83, '1210', 'Fluconazole syp', '227', '', '300', 350, '', '8/1/2019', 'Veteran Pharm Ltd', 0, 0, 2),
(84, '1212', 'Fybogel sach', '23.33', '', '30', 35, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(85, '1219', 'Gacet 125mg', '18.7', '', '25', 40, '', '2/1/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(86, '1220', 'Gacet 250MG', '18.7', '', '25', 35, '', '6/1/2019', '', 0, 0, 5),
(87, '1222', 'gastro kit', '', '', '1900', 2150, '', '1/5/2018', '', 0, 0, 2),
(88, '1224', 'Gemcal caps', '25', '', '30', 40, '', '2/1/2021', 'medisel kenya', 0, 0, 30),
(89, '1226', 'Gentamycin inj 80mg/2ml', '7', '', '100', 150, '', '1/5/2021', 'medisel kenya', 0, 0, 10),
(90, '1228', 'Glucomet 850mg', '7', '', '10', 20, '', '1/1/2020', 'MBETI PHARMACY', 0, 0, 28),
(91, '1230', 'Glucophage 1g', '11', '', '15', 20, '', '9/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(92, '1233', 'grabacin powder', '', '', '110', 120, '', '1/5/2018', '', 0, 0, 1),
(93, '1234', 'Griseofulvin 250mg tabs', '3.3', '', '5', 10, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 50),
(94, '1235', 'Griseofulvin 500mg Tabs', '5.7', '', '10', 15, '', '2/1/2020', '', 0, 0, 50),
(95, '1236', 'Daktarin Oral gel 40g', '835', '', '1150', 1250, '', '2/1/2019', 'MBETI PHARMACY', 0, 0, 1),
(96, '1237', 'Haloperidol  5mg tabs', '2.5', '', '5', 10, '', '8/1/2020', 'Veteran Pharm Ltd', 0, 0, 50),
(97, '1245', 'Hydrocortisone cream', '22', '', '100', 150, '', '1/1/2020', 'MBETI PHARMACY', 0, 0, 5),
(98, '1247', 'Hydrocortisone inj', '38', '', '100', 150, '', '9/1/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 10),
(99, '1254', 'Itorcip 150mg  (itopride)', '35', '', '45', 55, '', '1/5/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(100, '1255', 'Itraconazole 100mg(flucover)', '93.15', '', '130', 150, '', '6/30/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(101, '1257', 'ivysolone eye drops', '', '', '110', 120, '', '1/5/2018', '', 0, 0, 5),
(102, '1258', 'ivydexgent eye/ear drops', '', '', '150', 200, '', '1/1/2019', '', 0, 0, 5),
(103, '1259', 'Joint care caps', '50', '', '70', 80, '', '10/5/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(104, '1261', 'ketoconazole 200mg Tabs', '4', '', '10', 20, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(105, '1262', 'ketoconazole cream', '', '', '220', 270, '', '1/5/2018', '', 0, 0, 5),
(106, '1263', 'ketoconazole shampoo', '200', '', '300', 350, '', '5/1/2020', 'Mbeti Pharmacy', 0, 0, 2),
(107, '1269', 'lamictal 25mg', '', '', '100', 110, '', '3/1/2019', '', 0, 0, 5),
(108, '1272', 'lantus solostar', '', '', '1950', 2500, '', '1/5/2018', '', 0, 0, 5),
(109, '1274', 'Levofloxacin iv 100ml', '170', '', '250', 300, '', '1/5/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(110, '1275', 'Levothyroxine 100mcg', '9.75', '', '15', 20, '', '12/1/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(111, '1277', 'lincomycin 500mg', '', '', '70', 80, '', '9/1/2019', '', 0, 0, 20),
(112, '1279', 'logimax', '', '', '100', 150, '', '11/1/2018', '', 0, 0, 2),
(113, '1290', 'M2 tone', '21.16', '', '30', 40, '', '6/25/2019', 'MBETI PHARMACY', 0, 0, 10),
(114, '1292', 'Maalox sach', '23', '', '30', 35, '', '5/30/2022', 'Veteran Pharm Ltd', 0, 0, 2),
(115, '1295', 'Mefenamic acid 250mg', '12', '', '30', 35, '', '7/1/2019', 'MBETI PHARMACY', 0, 0, 10),
(116, '1297', 'Meloxicam 15 mg', '6.5', '', '10', 15, '', '3/10/2020', 'nextgen pharmaceuticals', 0, 0, 250),
(117, '1298', 'Meloxicam 7.5 mg', '3.25', '', '5', 10, '', '12/1/2020', 'nextgen pharmaceuticals', 0, 0, 50),
(118, '1299', 'meropenem inj', '', '', '1600', 1700, '', '4/1/2018', '', 0, 0, 5),
(119, '1301', 'Methotraxate 2.5mg', '7', '', '20', 25, '', '10/24/2019', 'Veteran Pharm Ltd', 0, 0, 20),
(120, '1302', 'Metolazone 2.5mg', '33', '', '45', 55, '', '10/25/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(121, '1306', 'miconazole pessaries', '', '', '550', 650, '', '1/5/2018', '', 0, 0, 5),
(122, '1311', 'Montelukast(luxat) 10mg', '16.07', '', '25', 30, '', '5/6/2021', 'Veteran Pharm Ltd', 0, 0, 56),
(123, '1312', 'Mosapride citrate 5mg', '25', '', '55', 65, '', '10/1/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(124, '1314', 'Multivitamin syrup 100ml', '33', '', '70', 100, '', '2/1/2019', 'MBETI PHARMACY', 0, 0, 5),
(125, '1318', 'Nebilong 5mg', '41.06', '', '60', 65, '', '1/30/2020', 'MBETI PHARMACY', 0, 0, 15),
(126, '1320', 'nemocid', '', '', '80', 90, '', '1/5/2018', '', 0, 0, 5),
(127, '1321', 'Neopeptine syp', '234', '', '320', 350, '', '3/31/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(128, '1323', 'Netazox 200 mg', '25', '', '35', 40, '', '5/30/2020', 'Veteran Pharm Ltd', 0, 0, 12),
(129, '1324', 'Netazox 500mg 6s', '48', '', '66.6', 70, '', '8/1/2021', 'MBETI PHARMACY', 0, 0, 12),
(130, '1326', 'nebilet 5mg 28''s', '', '', '100', 150, '', '4/1/2019', '', 0, 0, 5),
(131, '1328', 'Gabapentine 300mg 30''s', '15', '', '20', 25, '', '12/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(132, '1329', 'neurobion forte(generic)', '3.5', '', '5', 10, '', '6/1/2021', 'MBETI PHARMACY', 0, 0, 50),
(133, '1330', 'Neurobion inj', '60', '', '100', 150, '', '9/30/2020', 'MBETI PHARMACY', 0, 0, 5),
(134, '1333', 'nexium sachet', '', '', '190', 220, '', '1/5/2018', '', 0, 0, 5),
(135, '1334', 'nifedipine 20mg', '1.7', '', '5', 10, '', '8/1/2019', '', 0, 0, 100),
(136, '1336', 'Nitrofuratoin  100mg', '2', '', '5', 10, '', '10/1/2020', 'MBETI PHARMACY', 0, 0, 15),
(137, '1337', 'Nogluc 5mg 28''s', '1.67', '', '5', 10, '', '12/1/2019', 'Mbeti Pharmacy', 0, 0, 56),
(138, '1338', 'norfloxacin 400mg', '', '', '40', 50, '', '11/1/2018', '', 0, 0, 1),
(139, '1340', 'noxic plus tabs', '', '', '40', 50, '', '1/5/2021', '', 0, 0, 50),
(140, '1344', 'nystatin oral drops 12ml', '', '', '50', 60, '', '7/5/2020', '', 0, 0, 2),
(141, '1345', 'Nystatin oral drops 30ml', '48', '', '65', 70, '', '1/5/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 5),
(142, 'W5454h', 'oflodex eye/ear drops', '210', '0', '250', 300, '', '9/1/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(143, '', 'ofloxacin 200mg', '', '', '20', 30, '', '1/5/2018', '', 0, 0, 5),
(144, '', 'Ofloxacin 400mg', '34.9', '', '50', 55, '', '8/5/2020', 'max pharmaceuticals', 0, 0, 10),
(145, '', 'Osteocare tabs', '25', '', '35', 45, '', '5/5/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(146, '', 'osteocerin', '65', '', '90', 100, '', '6/1/2019', 'medisel kenya', 0, 0, 10),
(147, '', 'Waxoff ear drops', '170', '', '250', 280, '', '12/1/2021', '', 0, 0, 3),
(148, '', 'oxybral caps', '', '', '25', 35, '', '1/1/2019', '', 0, 0, 5),
(149, '', 'p alaxin sup', '220', '', '350', 250, '', '5/1/2018', '', 0, 0, 1),
(150, '', 'p-alaxin tabs', '', '', '310', 350, '', '7/1/2019', '', 0, 0, 5),
(151, '', 'panadol baby &infant 100ml', '', '', '320', 350, '', '1/1/2020', '', 0, 0, 5),
(152, '', 'panadol loose 500mg', '0.45', '', '2', 3, '', '1/5/2020', 'Veteran Pharm Ltd', 0, 0, 300),
(153, '', 'Pantoprazole 40mg', '19', '', '30', 35, '', '1/1/2020', 'MBETI PHARMACY', 0, 0, 30),
(154, '', 'Paracetamol 60ml', '25', '', '50', 60, '', '5/30/2021', 'max pharmaceuticals', 0, 0, 5),
(155, '', 'Paracetamol i.v', '200', '', '300', 350, '', '1/1/2021', 'nextgen pharmaceuticals', 0, 0, 50),
(156, '', 'pecol', '', '', '40', 50, '', '1/5/2018', '', 0, 0, 5),
(157, '', 'pethidine amps 100mg', '', '', '150', 200, '', '8/22/2034', '', 0, 0, 10),
(158, '', 'phenobarb inj', '50', '', '100', 150, '', '7/28/2021', 'nextgen pharmaceuticals', 0, 0, 2),
(159, '', 'phenobarb tabs 30mg', '2', '', '5', 10, '', '10/1/2020', 'MBETI PHARMACY', 0, 0, 50),
(160, '', 'Piogluc 30mg', '14.2', '', '20', 30, '', '6/5/2020', 'Veteran Pharm Ltd', 0, 0, 14),
(161, '', 'piriton syrup 60ml', '28', '', '50', 70, '', '7/1/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 10),
(162, '', 'Piriton tabs 4mg', '1', '', '3', 5, '', '7/1/2019', 'Veteran Pharm Ltd', 0, 0, 100),
(163, '', 'piriton inj', '', '', '20', 30, '', '2/1/2019', '', 0, 0, 5),
(164, '', 'Prednisolone syrup', '195', '', '260', 300, '', '12/3/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(165, '', 'Primolut N tabs', '25', '', '35', 40, '', '12/5/2021', 'MBETI PHARMACY', 0, 0, 0),
(166, '', 'primolut inj', '', '', '1100', 1200, '', '6/1/2021', '', 0, 0, 2),
(167, '', 'promethazine 60ml', '', '', '50', 70, '', '1/1/2020', '', 0, 0, 5),
(168, '', 'promethazine tabs', '', '', '5', 10, '', '1/5/2018', '', 0, 0, 5),
(169, '', 'Propofol inj', '90', '', '150', 200, '', '3/30/2021', 'nextgen pharmaceuticals', 0, 0, 10),
(170, '', 'Ranferon caps', '15', '', '20', 30, '', '11/1/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(171, '', 'Ranitidine inj', '13.9', '', '100', 150, '', '8/1/2019', 'max pharmaceuticals', 0, 0, 10),
(172, '', 'Ranitidine tabs 150mg', '3', '', '10', 15, '', '10/1/2020', 'british pharmaceuticals', 0, 0, 30),
(173, '', 'Rozavel 5mg', '42.8', '', '60', 65, '', '1/30/2021', 'MBETI PHARMACY', 0, 0, 30),
(174, '', 'Salbutamol `100ml', '32', '', '80', 100, '', '1/5/2020', 'MBETI PHARMACY', 0, 0, 3),
(175, '', 'spironolactone 25mg', '6', '', '10', 15, '', '6/20/2023', 'MBETI PHARMACY', 0, 0, 100),
(176, '', 'Steron 5mg', '13', '', '20', 30, '', '10/1/2020', '', 0, 0, 10),
(177, '', 'Sucrafil gel 100ml', '250', '', '300', 350, '', '9/30/2022', 'Veteran Pharm Ltd', 0, 0, 2),
(178, '', 'thiopental', '', '', '250', 300, '', '1/1/2019', '', 0, 0, 5),
(179, '', 'Tracilium', '825', '', '1100', 1150, '', '10/5/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(180, '', 'tramadol caps', '', '', '10', 20, '', '7/1/2018', '', 0, 0, 5),
(181, '', 'Tranexamic acid Tabs 500mg', '25', '', '35', 40, '', '2/8/2020', 'MBETI PHARMACY', 0, 0, 20),
(182, '', 'Trevia 50mg', '73', '', '100', 110, '', '4/28/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(183, '', 'Triam Denk inj 40mg/ml', '238', '', '350', 400, '', '8/12/2022', 'Veteran Pharm Ltd', 0, 0, 2),
(184, '', 'Aminosidine tabs 250mg', '25', '', '35', 40, '', '10/25/2022', 'MBETI PHARMACY', 0, 0, 24),
(185, '', 'Unicontin 400MG', '26', '', '35', 40, '', '9/12/2019', 'Veteran Pharm Ltd', 0, 0, 20),
(186, '', 'Vancomycin inj', '592', '', '800', 850, '', '5/30/2020', 'Veteran Pharm Ltd', 0, 0, 2),
(187, '', 'Vastarel mr 35mg', '25', '', '35', 40, '', '10/1/2021', 'MBETI PHARMACY', 0, 0, 30),
(188, '', 'ventil tabs 4mg', '1', '', '3', 5, '', '8/5/2019', 'MBETI PHARMACY', 0, 0, 100),
(189, '', 'ventolin inhaler', '225', '', '300', 350, '', '2/1/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(190, '', 'ventolin respirator', '', '', '1265', 1300, '', '2/5/2019', '', 0, 0, 3),
(191, '', 'vitadoc 30''s', '', '', '50', 80, '', '1/5/2022', '', 0, 0, 5),
(192, '', 'Panadol 500mg', '', '', '2', 5, 'Tablets', '6/30/2021', 'medisel kenya', 0, 0, 300),
(193, '', 'furosemide(lasix) tabs', '0.37', '', '2', 5, 'Tablets', '12/31/2020', 'british pharmaceuticals', 0, 0, 300),
(194, '', 'ferrous sulphate', '', '', '2', 2, 'Tabs', '6/1/2019', '', 0, 0, 2),
(195, '', 'Prednisolone 5mg', '0.55', '', '2', 5, 'Tabs', '2/5/2020', 'Mbeti Pharmacy', 0, 0, 200),
(196, '', 'Aminophyline inj 250mg/10ml', '15', '', '100', 150, 'Tabs', '12/1/2020', 'MBETI PHARMACY', 0, 0, 5),
(197, '', 'Atropine inj', '20', '', '100', 150, 'Tabs', '6/1/2020', '', 0, 0, 20),
(198, '', 'zinnat 500mg tabs', '203', '', '270', 320, 'Tabs', '7/1/2022', 'british pharmaceuticals', 0, 0, 2),
(199, '', 'Co-trimoxazole 480mg', '1', '', '5', 10, 'Tabs', '8/30/2020', 'Veteran Pharm Ltd', 0, 0, 50),
(200, '', 'Ephedrine drops(adults) 10ml', '20', '', '50', 100, 'Syrup', '8/1/2021', 'british pharmaceuticals', 0, 0, 2),
(201, '', 'folic acid', '', '', '5', 10, 'Tabs', '6/1/2019', '', 0, 0, 2),
(202, '', 'glyserin', '', '', '100', 150, 'Tabs', '8/1/2017', '', 0, 0, 1),
(203, '', 'Hydralazine 25mg', '6', '', '10', 15, 'Tabs', '12/30/2020', 'nextgen pharmaceuticals', 0, 0, 500),
(204, '', 'Levothyroxine 25mcg', '6.553', '', '10', 20, 'Tabs', '1/30/2020', 'max pharmaceuticals', 0, 0, 30),
(205, '', 'lonart suspension', '', '', '380', 430, 'Syrup', '1/1/2018', '', 0, 0, 1),
(206, '', 'lofnac gel', '', '', '200', 250, 'Tabs', '9/1/2017', '', 0, 0, 5),
(207, '', 'neostigmine inj', '', '', '100', 150, 'Tabs', '12/1/2018', '', 0, 0, 10),
(208, '', 'Propranolol', '1.24', '', '5', 10, 'Tabs', '6/1/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(209, '', 'magnesium sulphate', '', '', '200', 250, 'Tabs', '10/1/2019', '', 0, 0, 5),
(210, '', 'metpure-xl 25mg', '', '', '40', 100, 'Tabs', '4/1/2018', '', 0, 0, 5),
(211, '', 'augumentin 228/5ml', '600', '', '810', 900, 'Syrup', '4/1/2018', '', 0, 0, 1),
(212, '', 'Coveram 5mg/10mg', '75', '', '100', 110, 'Tabs', '5/30/2019', 'MBETI PHARMACY', 0, 0, 0),
(213, '', 'franol', '1.5', '', '5', 10, 'Tabs', '6/3/2020', 'MBETI PHARMACY', 0, 0, 50),
(214, '', 'ceregard', '', '', '151', 200, 'Tabs', '12/31/2019', '', 0, 0, 0),
(215, '', 'Tetracycline oint 3.5g', '15', '', '50', 70, 'Tabs', '4/1/2020', '', 0, 0, 5),
(216, '', 'CARDRONATE', '', '', '80', 100, 'Tabs', '12/1/2019', '', 0, 0, 0),
(217, '', 'Indometacin 25mg caps', '0.5', '', '2', 5, 'Tabs', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(218, '', 'multivitamin tabs', '0.2', '', '1', 2, 'Tabs', '5/1/2019', 'MBETI PHARMACY', 0, 0, 30),
(219, '', 'Omeprazole  20mg caps', '1', '', '5', 10, 'Tabs', '11/1/2020', 'max pharmaceuticals', 0, 0, 50),
(220, '', 'Septrin syp 100ml', '25', '', '60', 80, 'Syrup', '2/28/2020', 'MBETI PHARMACY', 0, 0, 3),
(221, '', 'dexeryl', '1035', '', '1400', 1500, 'Cream', '6/1/2019', 'Mbeti Pharmacy', 0, 0, 0),
(222, '', 'fluxate tabs', '', '', '25', 100, 'Tabs', '6/1/2018', 'max pharm ltd', 0, 0, 20),
(223, '', 'piroxicam 20mg', '1.5', '', '3', 5, 'Tabs', '7/31/2021', 'Medisel Kenya Ltd', 0, 0, 0),
(224, '', 'cetrizine 10mg', '1', '', '5', 10, 'Tabs', '3/5/2020', 'nextgen pharmaceuticals', 0, 0, 50),
(225, '', 'cavic c', '', '', '60', 70, 'Tabs', '1/2/2018', 'Mbeti Pharmacy', 0, 0, 0),
(226, '', 'combivent', '', '', '1000', 1200, 'Tabs', '', 'British Pharm Ltd', 0, 0, 0),
(227, '', 'oxytocin inj', '35', '', '100', 150, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(228, '', 'pancronium inj', '100', '', '150', 200, 'Tabs', '01/02/209', 'max pharm ltd', 0, 0, 0),
(229, '', 'Carbamezapine 200mg', '1', '', '5', 10, 'Tabs', '10/30/2021', 'max pharm ltd', 0, 0, 100),
(230, '', 'tetenus inj', '23', '', '100', 150, 'Powder', '5/9/2019', 'Mbeti Pharmacy', 0, 0, 10),
(231, '', 'Adalat 20mg', '67.75', '', '90', 100, 'Tabs', '4/12/2019', 'Mbeti Pharmacy', 0, 0, 30),
(232, '', 'Gastro gel 100ml', '30', '', '100', 150, 'Syrup', '7/10/2020', 'Mbeti Pharmacy', 0, 0, 5),
(233, '', 'Parafast-ET 500mg', '25', '', '50', 60, 'Tabs', '12/1/2019', 'Veteran Pharm Ltd', 0, 0, 16),
(234, '', 'Losartan H tabs', '7.3', '', '10', 15, 'Tabs', '8/2/2021', 'nextgen pharmaceuticals', 0, 0, 300),
(235, '', 'Colifree tabs', '7.4', '', '12', 15, 'Tabs', '10/2/2019', 'Veteran Pharm Ltd', 0, 0, 60),
(236, '', 'Erythromycin 500mg', '5', '', '10', 15, 'Tabs', '10/5/2019', 'max pharmaceuticals', 0, 0, 50),
(237, '', 'Amoxyl 250mg loose', '2', '', '5', 10, 'Tabs', '5/2/2019', 'medisel pharmaceuticals', 0, 0, 200),
(238, '', 'Tres orix forte 100ml', '520', '', '700', 750, 'Syrup', '12/6/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(239, '', 'Astymin syrup', '297', '', '400', 450, 'Syrup', '12/8/2019', 'Veteran Pharm Ltd', 0, 0, 1),
(240, '', 'Dapsone 100mg', '5', '', '10', 10, 'Tabs', '3/16/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(241, '', 'Manix caps', '56', '', '75', 80, 'Tabs', '10/29/2019', 'british pharmaceuticals', 0, 0, 10),
(242, '', 'Synervit tabs', '18.5', '', '25', 30, 'Tabs', '4/12/2022', 'Mbeti Pharmacy', 0, 0, 0),
(243, '', 'Cleaning and dressing', '50', '', '150', 200, 'Gel', '1/28/2020', 'max pharmaceuticals', 0, 0, 50),
(244, '', 'Fluoxetine 20mg', '17', '', '25', 30, 'Tabs', '12/12/2020', 'Mbeti Pharmacy', 0, 0, 10),
(245, '', 'Artesunate inj', '90', '', '150', 200, 'Powder', '1/11/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(246, '', 'al inj', '50', '', '100', 150, 'Powder', '5/5/2019', 'medisel pharmaceuticals', 0, 0, 10),
(247, '', 'Nebulization', '200', '', '500', 700, 'Tabs', '2/2/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(248, '', 'Brufen 60ml', '30', '', '50', 60, 'Syrup', '12/5/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 10),
(249, '', 'Tinidazole 2g', '15', '', '30', 50, 'Tabs', '2/28/2022', 'british pharmaceuticals', 0, 0, 6),
(250, '', 'Nutrivita syp 100ml', '108', '', '150', 200, 'Syrup', '8/1/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(251, '', 'surdex', '50', '', '70', 100, 'Syrup', '12/12/2018', 'british pharmaceuticals', 0, 0, 10),
(252, '', 'febrix tm', '25', '', '35', 45, 'Tabs', '3/3/2019', 'Mbeti Pharmacy', 0, 0, 10),
(253, '', 'delisprin 75mg', '2.8', '', '5', 10, 'Tabs', '12/12/2018', 'british pharmaceuticals', 0, 0, 10),
(254, '', 'Ossithiol adults 100ml', '95', '', '150', 200, 'Syrup', '3/6/2021', 'Mbeti Pharmacy', 0, 0, 3),
(255, '', 'dormicum tabs 15mg', '54.34', '', '75', 85, 'Tabs', '', 'Veteran Pharm Ltd', 0, 0, 5),
(256, '', 'grip water 60ml', '27', '', '50', 100, 'Syrup', '8/6/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 2),
(257, '', 'Nexiken kit', '1697.5', '', '2260', 2270, 'Tabs', '9/25/2021', 'Veteran Pharm Ltd', 0, 0, 1),
(258, '', 'ginsomin multivitamins caps', '27.8793', '', '40', 50, 'Tabs', '', 'Veteran Pharm Ltd', 0, 0, 30),
(259, '', 'Bactiflox 500mg', '147', '', '200', 210, 'Tabs', '8/10/2020', 'Veteran Pharm Ltd', 0, 0, 2),
(260, '', 'Benzathine penicillin 2.4mega', '70', '0', '100', 150, 'Tabs', '9/30/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(261, '', 'Rabeprazole 20mg', '13', '0', '20', 30, 'Tabs', '5/11/2021', 'medisel pharmaceuticals', 0, 0, 60),
(262, '', 'STITCHING +DRESSING', '200', '', '500', 600, 'Cream', '2/2/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(263, '', 'coversyl', '56', '', '75', 85, 'Tabs', '4/30/2020', 'Mbeti Pharmacy', 0, 0, 0),
(264, '', 'contractubex  gel', '855', '', '1150', 1200, 'Cream', '3/31/2019', 'Mbeti Pharmacy', 0, 0, 1),
(265, '', 'valtas 750', '53', '0', '70', 80, 'Tabs', '3/31/2019', 'Veteran Pharm Ltd', 0, 0, 0),
(266, '', 'Hemfer softgel caps', '8.5', '0', '10', 15, 'Tabs', '4/30/2020', 'medisel kenya', 0, 0, 30),
(267, '', 'vitacap 30''s', '25', '', '35', 45, 'Tabs', '12/31/2020', 'Mbeti Pharmacy', 0, 0, 10),
(268, '', 'calci  care', '15.6', '', '20', 30, 'Tabs', '3/31/2020', 'Mbeti Pharmacy', 0, 0, 10),
(269, '', 'noxicam 8mg', '15', '0', '20', 30, 'Tabs', '6/30/2018', 'Veteran Pharm Ltd', 0, 0, 0),
(270, '', 'Flatameal tabs Chewable', '5', '0', '10', 15, 'Tabs', '4/30/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(271, '', 'lorabil plus', '860', '0', '80', 100, 'Tabs', '3/31/2021', 'Mbeti Pharmacy', 0, 0, 0),
(272, '', 'Enterobiotic dry syrup', '300', '', '400', 450, 'Powder', '3/5/2019', 'Veteran Pharm Ltd', 0, 0, 1),
(273, '', 'novasept ointment', '175', '0', '250', 300, 'Cream', '7/7/2021', 'nextgen pharmaceuticals', 0, 0, 5),
(274, '', 'Terbinafine 250mg', '30', '', '40', 45, 'Tabs', '7/6/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(275, '', 'Terbinafine cream', '200', '', '300', 350, 'Cream', '7/5/2019', 'Veteran Pharm Ltd', 0, 0, 2),
(276, '', 'trimex diabetic', '195', '0', '250', 300, 'Syrup', '4/30/2020', 'Veteran Pharm Ltd', 0, 0, 3),
(277, '', 'Alugel 100ml', '40', '0', '70', 100, 'Syrup', '6/30/2020', 'nextgen pharmaceuticals', 0, 0, 5),
(278, '', 'Amoxyl 125/5ml 100ml', '60', '0', '100', 150, 'Tabs', '7/31/2019', 'Mbeti Pharmacy', 0, 0, 3),
(279, '', 'Amoxyl 250mg/5ml 100ml', '170', '0', '230', 270, 'Syrup', '9/30/2019', 'Veteran Pharm Ltd', 0, 0, 3),
(280, '', 'Purecal tabs', '30', '', '50', 50, 'Tabs', '3/28/2020', 'Mbeti Pharmacy', 0, 0, 0),
(281, '', 'Humulin N', '750', '', '1000', 1100, 'Tabs', '1/24/2020', 'Mbeti Pharmacy', 0, 0, 1),
(282, '', 'Humulin R', '675.45', '', '1000', 1100, 'Tabs', '1/26/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(283, '', 'Ofcian o tabs', '16', '', '25', 30, 'Tabs', '12/30/2021', 'nextgen pharmaceuticals', 0, 0, 50),
(284, '', 'Tridex 100ml', '45', '', '100', 150, 'Tabs', '12/31/2020', 'Mbeti Pharmacy', 0, 0, 3),
(285, '', 'loperamide', '10', '', '15', 50, 'Tabs', '3/31/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 5),
(286, '', 'Deprex 5mg', '9', '', '15', 20, 'Tabs', '7/4/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(287, '', 'Buscopan syp', '60', '0', '80', 100, 'Syrup', '7/31/2019', 'MBETI PHARMACY', 0, 0, 2),
(288, '', 'Domperidone syp', '65', '0', '100', 120, 'Syrup', '10/31/2019', 'Mbeti Pharmacy', 0, 0, 2),
(289, '', 'Ketotifen 1mg tabs', '8.5', '', '15', 20, 'Tabs', '2/11/2020', 'Mbeti Pharmacy', 0, 0, 10),
(290, '', 'Desloratidine 5mg tabs', '7', '', '10', 15, 'Tabs', '10/28/2021', 'max pharmaceuticals', 0, 0, 20),
(291, '', 'mycospor cream', '820', '', '1100', 1200, 'Cream', '10/28/2019', 'Mbeti Pharmacy', 0, 0, 1),
(292, '', 'IV OFLOXACIN 200MG', '500', '', '700', 750, 'Tabs', '9/30/2018', 'british pharmaceuticals', 0, 0, 20),
(293, '', 'isoptin sr 240', '90', '', '120', 130, 'Tabs', '10/30/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(294, '', 'linezolide(lizomed) 600mg', '170', '', '230', 240, 'Tabs', '6/30/2018', 'Mbeti Pharmacy', 0, 0, 6),
(295, '', 'delased non drowsy 100ml', '85', '', '150', 200, 'Syrup', '10/28/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(296, '', 'CEFTAFAIR I.V', '212', '', '300', 350, 'Powder', '4/30/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(297, '', 'Bonjela gel', '620', '', '850', 900, 'Gel', '12/25/2018', 'medisel pharmaceuticals', 0, 0, 1),
(298, '', 'Flagyl 200mg', '3', '0', '5', 7, 'Tabs', '10/31/2020', 'Veteran Pharm Ltd', 0, 0, 100),
(299, '', 'minoxin plus', '2755', '0', '3720', 3900, 'Syrup', '5/31/2019', 'Veteran Pharm Ltd', 0, 0, 0),
(300, '', 'Furosemide inj 10mg/ml', '20', '0', '100', 150, 'Tabs', '11/30/2019', 'Mbeti Pharmacy', 0, 0, 20),
(301, '', 'Acnesol cream', '125', '', '180', 200, 'Cream', '9/29/2019', 'max pharmaceuticals', 0, 0, 1),
(302, '', 'Flemnil syp 100ml', '170', '', '250', 270, 'Syrup', '2/25/2019', 'MBETI PHARMACY', 0, 0, 3),
(303, '', 'chlohexidine gel', '100', '', '150', 200, 'Tabs', '8/1/2020', 'Mbeti Pharmacy', 0, 0, 1),
(304, '', 'Solifenacin 5mg', '112', '', '150', 160, 'Tabs', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(305, '', 'X pen inj', '20', '', '100', 100, 'Tabs', '3/28/2023', 'Veteran Pharm Ltd', 0, 0, 10),
(306, '', '', '', '0', '50', 80, 'Tabs', '7/31/2019', 'Mbeti Pharmacy', 0, 0, 0),
(307, '', '', '', '0', '30', 50, 'Tabs', '12/31/2019', 'Mbeti Pharmacy', 0, 0, 0),
(308, '', '', '', '0', '15', 25, 'Tabs', '7/31/2019', 'medisel pharmaceuticals', 0, 0, 0),
(309, '', 'Itraconazole 100mg (icon)', '50', '', '60', 70, 'Tabs', '2/28/2021', 'MBETI PHARMACY', 0, 0, 10),
(310, '', 'normal saline drops', '50', '0', '80', 100, 'Syrup', '12/31/2019', 'Mbeti Pharmacy', 0, 0, 0),
(311, '', 'Domadol plus Tabs', '11', '0', '15', 25, 'Tabs', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(312, '', 'Seretide', '1666.667', '', '2250', 2300, 'Powder', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 1),
(313, '', 'Saline nasal drops', '35', '', '50', 100, 'Syrup', '12/31/2019', 'Mbeti Pharmacy', 0, 0, 3),
(314, '', 'Bulkot mix cream 20g', '90', '', '150', 200, 'Cream', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 4),
(315, '', 'lanpro 30mg', '13.5', '', '20', 25, 'Tabs', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(316, '', 'minocyline 50mg', '40.442', '', '55', 60, 'Tabs', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 28),
(317, '', 'regen d 150mg', '1605', '', '2200', 2250, 'Tabs', '12/12/2019', 'Mbeti Pharmacy', 0, 0, 0),
(318, '', 'Algic p Tabs', '7.63', '', '15', 20, 'Tabs', '12/31/2019', 'Mbeti Pharmacy', 0, 0, 60),
(319, '', 'glyceryl trinitrate spray', '2500', '', '3400', 3450, 'Powder', '12/31/2019', 'Mbeti Pharmacy', 0, 0, 0),
(320, '', 'presartan h', '11', '', '15', 20, 'Tabs', '9/7/2021', 'Veteran Pharm Ltd', 0, 0, 28),
(321, '', 'Tears naturalle', '257', '', '350', 400, 'Tabs', '12/31/2019', 'Veteran Pharm Ltd', 0, 0, 0),
(322, '', 'Amikacin 500mg/2ml inj', '85', '', '120', 150, 'Tabs', '1/30/2021', 'MBETI PHARMACY', 0, 0, 10),
(323, '', 'Tadalafil 5mg', '45', '', '60', 65, 'Tabs', '6/6/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(324, '', 'Aurocol-dm', '150', '', '200', 250, 'Syrup', '2/4/2019', 'Mbeti Pharmacy', 0, 0, 1),
(325, '', 'Clexane 0.8ml', '3205.3', '', '4300', 4350, 'Tabs', '8/2/2020', 'Veteran Pharm Ltd', 0, 0, 2),
(326, '', 'coc s', '30', '0', '50', 70, 'Tabs', '', 'Veteran Pharm Ltd', 0, 0, 5),
(327, '', 'Plasil 10mg', '0.65', '0', '5', 10, 'Tabs', '10/31/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 200),
(328, '', 'seven seas caps', '30', '', '30', 35, 'Tabs', '5/2/2020', 'max pharmaceuticals', 0, 0, 30),
(329, '', 'ornidazole 500mg tabs', '20', '', '25', 30, 'Tabs', '11/2/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(330, '', 'calcinol', '35', '', '50', 55, 'Powder', '2/3/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(331, '', 'dopam', '34', '', '45', 50, 'Tabs', '6/30/2020', 'medisel pharmaceuticals', 0, 0, 90),
(332, '', 'Clarithromycin 500mg', '20', '', '30', 35, 'Tabs', '5/28/2021', 'nextgen pharmaceuticals', 0, 0, 50),
(333, '', 'Nervit tabs', '36', '', '50', 55, 'Tabs', '4/28/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(334, '', 'Zulu tabs', '22.4', '', '30', 40, 'Tabs', '5/28/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(335, '', 'Losartan 50mg tabs', '6.4', '', '10', 15, 'Tabs', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 280),
(336, '', 'Bronchowin 400mg tabs', '35', '', '55', 60, 'Tabs', '9/30/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(337, '', 'Neurorubine acino', '20.7', '', '25', 30, 'Tabs', '12/30/2019', 'Veteran Pharm Ltd', 0, 0, 20),
(338, '', 'Atorvastatin 20mg', '6', '', '10', 15, 'Tabs', '22020-03-01', 'Mbeti Pharmacy', 0, 0, 60),
(339, '', 'Azithromycin susp', '40', '', '100', 120, 'Powder', '2/8/2020', 'Mbeti Pharmacy', 0, 0, 3),
(340, '', 'Azithromycin 250mg', '20', '', '40', 50, 'Tabs', '8/30/2020', 'Mbeti Pharmacy', 0, 0, 30),
(341, '', 'Desafe 100ml', '288', '', '400', 450, 'Syrup', '12/31/2019', 'medisel pharmaceuticals', 0, 0, 2),
(342, '', 'Cephalexin caps 500mg', '5.14', '', '10', 15, 'Tabs', '12/30/2020', 'Mbeti Pharmacy', 0, 0, 100),
(343, '', 'Cephalexin susp 100ml', '70', '', '100', 150, 'Powder', '12/25/2019', 'Mbeti Pharmacy', 0, 0, 3),
(344, '', 'Clotrimazole pessaries v6', '30', '', '80', 120, 'Tabs', '12/28/2020', 'Mbeti Pharmacy', 0, 0, 5),
(345, '', 'Dilomet M tabs 30''S', '2.33', '', '5', 10, 'Tabs', '2/1/2020', 'Mbeti Pharmacy', 0, 0, 60),
(346, '', 'Esomeprazole iv', '290', '', '400', 450, 'Tabs', '4/25/2021', 'nextgen pharmaceuticals', 0, 0, 30),
(347, '', 'Foralin inhaler 200mcg', '1375', '', '1850', 1950, 'Tabs', '12/30/2020', 'Veteran Pharm Ltd', 0, 0, 3),
(348, '', 'Glucomet N tabs', '7', '', '10', 15, 'Tabs', '12/30/2020', 'Mbeti Pharmacy', 0, 0, 56),
(349, '', 'Glucomet 500mg', '5', '', '10', 15, 'Tabs', '11/8/2021', 'nextgen pharmaceuticals', 0, 0, 560),
(350, '', 'Hepermaz sachets', '240', '', '320', 350, 'Powder', '12/9/2020', 'Mbeti Pharmacy', 0, 0, 10),
(351, '', 'Metro D 100ML', '80', '', '120', 170, 'Syrup', '12/28/2019', 'Mbeti Pharmacy', 0, 0, 3),
(352, '', 'Mucosolvan 100ml', '400', '', '550', 570, 'Syrup', '11/20/2019', 'Mbeti Pharmacy', 0, 0, 3),
(353, '', 'Mixtard insulin', '455', '', '600', 650, 'Syrup', '3/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(354, '', 'Panadol Extra', '8.4', '', '20', 25, 'Tabs', '11/4/2020', 'Mbeti Pharmacy', 0, 0, 10),
(355, '', 'purecal syp 200ml', '512', '', '670', 700, 'Syrup', '2/1/2021', 'Veteran Pharm Ltd', 0, 0, 1),
(356, '', 'spinal needles g22', '210', '', '280', 300, 'Syrup', '8/30/2021', 'Mbeti Pharmacy', 0, 0, 5),
(357, '', 'Isosorbide mononitrate 20MG', '22', '', '30', 35, 'Tabs', '2/22/2020', 'Mbeti Pharmacy', 0, 0, 5),
(358, '', 'Normal saline IV', '52', '', '100', 150, 'Syrup', '12/12/2020', 'Mbeti Pharmacy', 0, 0, 90),
(359, '', 'Cefixime 200mg', '28', '', '40', 45, 'Tabs', '7/4/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(360, '', 'Amlozaar H tabs 30s', '48', '', '60', 65, 'Tabs', '5/25/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(361, '', 'Amlozaar  tabs', '46', '', '65', 70, 'Tabs', '3/28/2020', 'MBETI PHARMACY', 0, 0, 10),
(362, '', 'Anusol oint 25mg', '540', '', '720', 750, 'Gel', '2/25/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(363, '', 'Baneocin oint 20gm', '202.5', '', '280', 300, 'Cream', '4/28/2020', 'Veteran Pharm Ltd', 0, 0, 2),
(364, '', 'cachnerve caps', '43.9', '', '60', 65, 'Tabs', '2/13/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(365, '', 'Catis forte tabs', '32', '', '45', 50, 'Tabs', '5/20/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(366, '', 'Dermiguard mixi cream', '115', '', '150', 200, 'Tabs', '6/21/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(367, '', 'D-Tam tabs', '52.41', '', '70', 75, 'Tabs', '4/25/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(368, '', 'Ephedrine30g/ml inj', '360', '', '500', 550, 'Tabs', '8/2/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(369, '', 'Etoricoxib 120mg', '38', '', '50', 55, 'Tabs', '5/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(370, '', 'Finosin tabs', '51.75', '', '70', 80, 'Tabs', '9/30/2021', 'Veteran Pharm Ltd', 0, 0, 60),
(371, '', 'Ibugesic syp 60ml', '65', '', '85', 110, 'Syrup', '12/30/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(372, '', 'Freeflex forte caps', '39.1', '', '55', 60, 'Tabs', '4/28/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(373, '', 'Irovel -H tabs', '53.333', '', '75', 80, 'Tabs', '12/25/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(374, '', 'Lyrica caps 75mg', '86.6', '', '115', 150, 'Tabs', '12/30/2020', 'Veteran Pharm Ltd', 0, 0, 28),
(375, '', 'Myospaz tabs', '17.24', '', '25', 30, 'Tabs', '10/25/2020', 'MBETI PHARMACY', 0, 0, 200),
(376, '', 'Nebilong H tabs', '37.3', '', '50', 55, 'Tabs', '8/20/2019', 'Veteran Pharm Ltd', 0, 0, 30),
(377, '', 'Neopeptine caps', '22', '', '25', 35, 'Tabs', '5/2/2020', 'MBETI PHARMACY', 0, 0, 10),
(378, '', 'Nosic tabs', '13.95', '', '20', 30, 'Tabs', '6/14/2020', 'Veteran Pharm Ltd', 0, 0, 90),
(379, '', 'Pregnacare caps', '20', '', '30', 35, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 15),
(380, '', 'Sign kit 7''s', '1402', '', '1900', 2000, 'Tabs', '12/21/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(381, '', 'Zinnat 250mg tabs', '103', '', '140', 150, 'Tabs', '9/28/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(382, '', 'Amlodipine 10mg', '7.7', '', '15', 20, 'Tabs', '2/28/2020', 'Veteran Pharm Ltd', 0, 0, 56),
(383, '', 'Pregabalin SR 75mg(segabin)', '26.25', '', '35', 40, 'Tabs', '8/21/2021', 'Veteran Pharm Ltd', 0, 0, 150),
(384, '', 'Tamsolusine 0.4mg', '38.25', '', '55', 60, 'Tabs', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(385, '', 'Klincord 10ml', '135', '', '200', 250, 'Syrup', '12/21/2019', 'Veteran Pharm Ltd', 0, 0, 3),
(386, '', 'Amoxyclav 375mg(acinet)', '22', '', '30', 35, 'Tabs', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(387, '', 'Abz 400mg', '45', '', '60', 70, 'Tabs', '6/5/2021', 'nextgen pharmaceuticals', 0, 0, 5),
(388, '', 'White field cream 15g', '44', '', '70', 100, 'Cream', '4/20/2022', 'Veteran Pharm Ltd', 0, 0, 2),
(389, '', 'Domperidone 10mg', '4.5', '', '10', 15, 'Tabs', '12/20/2020', 'Veteran Pharm Ltd', 0, 0, 50),
(390, '', 'Acyclovir 400MG', '25', '', '35', 40, 'Tabs', '12/12/2020', 'british pharmaceuticals', 0, 0, 30),
(391, '', 'Diracip M ds', '11.2', '', '25', 30, 'Tabs', '2/28/2022', 'Veteran Pharm Ltd', 0, 0, 15),
(392, '', 'Amoxyclav 625mg 10''s', '15', '', '25', 30, 'Tabs', '5/31/2020', 'nextgen pharmaceuticals', 0, 0, 60),
(393, '', 'Amoxyclav 457mg susp', '320', '', '430', 450, 'Powder', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(394, '', 'Buscopan 10mg 100s', '6.55', '', '10', 15, 'Tabs', '2/28/2021', 'max pharmaceuticals', 0, 0, 50),
(395, '', 'Cataflam tabs 50mg', '44.2', '', '60', 65, 'Tabs', '4/30/2020', 'max pharmaceuticals', 0, 0, 50),
(396, '', 'Consed 100ml', '32', '', '100', 150, 'Syrup', '2/29/2020', 'max pharmaceuticals', 0, 0, 3),
(397, '', 'Fastum GEL 30g', '417', '', '550', 600, 'Cream', '12/31/2022', 'max pharmaceuticals', 0, 0, 2),
(398, '', 'Femiplan inj 6s', '60.166', '', '150', 150, 'Tabs', '10/31/2022', 'max pharmaceuticals', 0, 0, 6),
(399, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(400, '', 'Kly gel 42g', '149', '', '250', 300, 'Cream', '3/31/2020', 'max pharmaceuticals', 0, 0, 5),
(401, '', 'Secnidazole tabs 2s', '25', '', '40', 50, 'Tabs', '9/30/2019', 'max pharmaceuticals', 0, 0, 10),
(402, '', 'Sylate inj 125mg/2ml', '85', '', '150', 200, 'Syrup', '3/31/2020', 'max pharmaceuticals', 0, 0, 10),
(403, '', 'Sylate tabs 500mg', '30', '', '40', 45, 'Tabs', '4/30/2021', 'max pharmaceuticals', 0, 0, 18),
(404, '', 'Gypsona 6''''', '180', '', '240', 270, 'Powder', '12/31/2022', 'max pharmaceuticals', 0, 0, 5),
(405, '', 'Aminosidine syp 125mg/5ml', '185', '', '260', 300, 'Syrup', '10/31/2020', 'max pharmaceuticals', 0, 0, 3),
(406, '', 'Medrol tabs 4mg', '15.333', '', '25', 30, 'Tabs', '6/30/2020', 'max pharmaceuticals', 0, 0, 30),
(407, '', 'Flucloxacillin dry powder', '90', '', '150', 180, 'Powder', '4/30/2021', 'max pharmaceuticals', 0, 0, 5),
(408, '', 'Gauze swab STERILE 4''''', '4.95', '', '10', 15, 'Tabs', '7/31/2020', 'max pharmaceuticals', 0, 0, 50),
(409, '', 'Gauze swabs NON STERILE', '1.6', '', '5', 10, 'Tabs', '4/30/2021', 'max pharmaceuticals', 0, 0, 20),
(410, '', 'Ceftriaxone iv 1g', '150', '0', '200', 250, 'Tabs', '10/29/2022', 'nextgen pharmaceuticals', 0, 0, 50),
(411, '', 'Nilol SR tabs', '26.5', '', '35', 40, 'Tabs', '12/12/2020', 'british pharmaceuticals', 0, 0, 60),
(412, '', 'Cefuroxime 100ml(lebac)', '320', '', '450', 450, 'Powder', '12/12/2020', 'nextgen pharmaceuticals', 0, 0, 4),
(413, '', 'Augmentin 625mg (orig)', '78', '', '110', 115, 'Tabs', '12/12/2020', 'Mbeti Pharmacy', 0, 0, 14),
(414, '', 'sterile surgical gloves 705', '13.79', '', '20', 25, 'Tabs', '12/20/2021', 'medisel pharmaceuticals', 0, 0, 50),
(415, '', 'Unizar AM 28s', '35.2', '', '50', 55, 'Tabs', '12/12/2020', 'medisel pharmaceuticals', 0, 0, 28),
(416, '', 'Suxamethonium 50mg/ml', '50', '', '100', 150, 'Syrup', '2/20/2020', 'medisel pharmaceuticals', 0, 0, 10),
(417, '', 'Ondansetron 8mg tabs', '60', '', '80', 85, 'Tabs', '3/1/2022', 'medisel pharmaceuticals', 0, 0, 10),
(418, '', 'Emadon syp 2mg/5ml', '340', '', '500', 550, 'Syrup', '12/12/2020', 'medisel pharmaceuticals', 0, 0, 5),
(419, '', 'Cefuroxime 500mg tabs', '30', '', '40', 45, 'Tabs', '12/12/2020', 'nextgen pharmaceuticals', 0, 0, 50),
(420, '', 'Cefuroxime 250mg tabs', '17.5', '', '25', 30, 'Tabs', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 50),
(421, '', 'Eyetamin caps', '45', '', '60', 65, 'Tabs', '12/12/2020', 'Mbeti Pharmacy', 0, 0, 10),
(422, '', 'Loc Tears 10ML', '440', '', '600', 650, 'Syrup', '12/12/2020', 'Mbeti Pharmacy', 0, 0, 1),
(423, '', 'Moduretic 5/50mg tabs', '21.16', '', '30', 35, 'Tabs', '2/12/2021', 'Mbeti Pharmacy', 0, 0, 28),
(424, '', 'Pregnacare cream 100ml', '978.5', '', '1320', 1350, 'Cream', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(425, '', 'Mamalait Granules 250g', '2340', '', '3120', 3150, 'Powder', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(426, '', 'Mirtazapine 15mg', '65', '', '85', 95, 'Tabs', '7/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(427, '', 'Alprazolam 0.5mg', '28', '', '40', 50, 'Tabs', '12/12/2020', 'MBETI PHARMACY', 0, 0, 20),
(428, '', 'Gabanerve tabs', '105.7', '', '140', 150, 'Tabs', '2/20/2020', 'medisel pharmaceuticals', 0, 0, 10),
(429, '', 'Dentol gel 10mg', '148', '0', '200', 250, 'Cream', '10/31/2022', 'Veteran Pharm Ltd', 0, 0, 1),
(430, '', 'Benacoff paed 100ml', '70', '', '150', 200, 'Syrup', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(431, '', 'augumentin 625', '65', '0', '75', 85, 'Tabs', '1/31/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(432, '', 'Vagid-CL supp', '220', '0', '320', 350, 'Tabs', '9/30/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(433, '', 'Cartil super forte', '56.6', '', '75', 80, 'Tabs', '12/12/2019', 'british pharmaceuticals', 0, 0, 30),
(434, '', 'mesacol', '125', '0', '170', 175, 'Tabs', '12/31/2019', 'british pharmaceuticals', 0, 0, 0),
(435, '', 'mesacol 400mg', '125', '0', '170', 175, 'Tabs', '12/31/2019', 'british pharmaceuticals', 0, 0, 0),
(436, '', 'Keppra  250mg', '62', '', '85', 95, 'Tabs', '7/30/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(437, '', 'Neurozan tabs', '37', '', '50', 60, 'Tabs', '10/20/2020', 'british pharmaceuticals', 0, 0, 30),
(438, '', 'Marcaine 8% 4ML', '315', '', '450', 460, 'Syrup', '9/12/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(439, '', '', '', '', '', 0, '', '', '', 0, 0, 0),
(440, '', 'Oilatum soap', '581', '', '800', 850, 'Cream', '12/12/2021', 'MBETI PHARMACY', 0, 0, 2),
(441, '', 'Rivotril 2mg', '20.3', '', '30', 35, 'Tabs', '7/28/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(442, '', 'MenoEase caps', '36.5', '', '50', 55, 'Tabs', '9/28/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(443, '', 'Glemont L', '73', '', '100', 110, 'Tabs', '10/2/2020', 'Veteran Pharm Ltd', 0, 0, 14),
(444, '', 'Ketesse tabs', '42.07', '', '60', 65, 'Tabs', '20210-12-12', 'Veteran Pharm Ltd', 0, 0, 0),
(445, '', 'PA 12 1000mg', '15', '', '20', 25, 'Tabs', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 12),
(446, '', 'Avamys Aq nasal spray', '775.8', '', '1050', 1100, 'Tabs', '10/20/2021', 'Veteran Pharm Ltd', 0, 0, 1),
(447, '', 'Halothane 250ml', '3240', '', '4350', 4500, 'Tabs', '12/12/2022', 'Veteran Pharm Ltd', 0, 0, 2),
(448, '', 'Cox B 200MG', '20', '', '30', 35, 'Tabs', '12/20/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(449, '', 'Cavinton tabs 5mg', '18.98', '', '25', 30, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(450, '', 'Vomikind inj 2mg/ml', '135', '', '180', 200, 'Tabs', '12/12/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(451, '', 'Carvedilol(vidol) 6.25mg', '7.5', '', '10', 15, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 56),
(452, '', 'Betapyn Tabs 18s', '16.3', '', '25', 30, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 90),
(453, '', 'Imipramine 25mg', '11.5', '', '15', 20, 'Tabs', '11/12/2021', 'Veteran Pharm Ltd', 0, 0, 56),
(454, '', 'Cosvate cream 15g', '135.9', '', '180', 200, 'Cream', '12/11/2022', 'Veteran Pharm Ltd', 0, 0, 5),
(455, '', 'Ambrodil drops 15ml', '180', '', '250', 270, 'Syrup', '12/11/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(456, '', 'cyclopam susp 30ml', '121.5', '', '170', 200, 'Syrup', '12/20/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(457, '', 'Tramacet tabs', '33.6', '', '45', 50, 'Tabs', '2/20/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(458, '', 'Duphalac susp 200ml', '735', '', '1000', 1050, 'Syrup', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(459, '', 'Amitriptyline 25mg', '1.12', '', '2', 5, 'Tabs', '12/12/2022', 'Veteran Pharm Ltd', 0, 0, 50),
(460, '', 'Clopidogrel 75mg', '25', '', '30', 35, 'Tabs', '2/10/2021', 'MBETI PHARMACY', 0, 0, 30),
(461, '', 'Warfarin 5mg', '3.28', '', '5', 10, 'Tabs', '12/1/2022', 'Veteran Pharm Ltd', 0, 0, 20),
(462, '', 'Probrain 90mg', '95.5', '', '115', 120, 'Tabs', '10/12/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(463, '', 'Joint Ease Tabs', '48', '', '60', 65, 'Tabs', '11/30/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(464, '', 'Pregnacare MAX', '1938', '', '2650', 2700, 'Tabs', '2/12/2022', 'Veteran Pharm Ltd', 0, 0, 1),
(465, '', 'Pregnacare Breastfeeding', '1995', '', '2700', 2800, 'Tabs', '5/20/2021', 'Veteran Pharm Ltd', 0, 0, 1),
(466, '', 'Calcium sandoz 10s', '40.08', '', '55', 60, 'Tabs', '1/12/2022', 'Veteran Pharm Ltd', 0, 0, 20),
(467, '', 'Cartil Omega caps', '54', '', '75', 80, 'Tabs', '12/21/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(468, '', 'Neurocare plus 30s', '53', '', '71', 75, 'Tabs', '5/12/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(469, '', 'BG Glutamin plus 20s', '13.95', '', '20', 25, 'Tabs', '12/20/2021', 'Veteran Pharm Ltd', 0, 0, 40),
(470, '', 'Gabbroral 250mg 12s', '50', '', '70', 75, 'Tabs', '2/12/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(471, '', 'Ciprofloxacin iv 100ml', '90', '', '150', 200, 'Syrup', '3/12/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(472, '', 'Sodium valproate 500mg', '49.87', '', '68', 75, 'Tabs', '7/3/2022', 'Veteran Pharm Ltd', 0, 0, 50),
(473, '', 'Lexotanil tabs 1.5mg', '17.13', '', '25', 30, 'Tabs', '3/12/2022', 'Veteran Pharm Ltd', 0, 0, 60),
(474, '', 'Lexotanil  tabs 3mg', '23.97', '', '32', 37, 'Tabs', '6/3/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(475, '', 'Hcqs Tabs 200MG', '40', '', '55', 65, 'Tabs', '4/17/2022', 'MBETI PHARMACY', 0, 0, 0),
(476, '', 'MGR-10 Tabs', '28.68', '', '40', 45, 'Tabs', '4/4/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(477, '', 'Amaryl 1mg Tabs', '22.44', '', '30', 35, 'Tabs', '6/8/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(478, '', 'Irovel 300mg 30s', '69.6', '', '95', 100, 'Tabs', '11/30/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(479, '', 'Cardispirin 75mg', '2.25', '', '5', 10, 'Tabs', '3/3/2021', 'Veteran Pharm Ltd', 0, 0, 56),
(480, '', 'Cardinol 25mg tabs', '2.8', '', '5', 10, 'Tabs', '9/25/2019', 'Veteran Pharm Ltd', 0, 0, 56),
(481, '', 'Cardinol 100mg Tabs', '6', '', '10', 15, 'Tabs', '9/30/2020', 'Veteran Pharm Ltd', 0, 0, 56),
(482, '', 'Unitel  40H Tabs', '50', '', '65', 70, 'Tabs', '9/29/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(483, '', 'Clindamycin 300mg', '18', '', '25', 30, 'Tabs', '20200-02-20', 'Veteran Pharm Ltd', 0, 0, 50),
(484, '', 'Azithromycin 500mg 3s', '60', '', '80', 100, 'Tabs', '6/12/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(485, '', 'Fentanyl inj 100mcg/2ml', '144', '', '250', 300, 'Tabs', '12/21/2022', 'Veteran Pharm Ltd', 0, 0, 5),
(486, '', 'Vitamin K paed', '185', '', '250', 300, 'Tabs', '2/12/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(487, '', 'Grabacin 3-oint 20g', '171', '', '230', 250, 'Tabs', '5/23/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(488, '', 'Ampiclox susp 100ml', '55', '', '100', 130, 'Tabs', '3/12/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(489, '', 'Probeta N eye/ear drops', '78.23', '', '105', 120, 'Tabs', '4/4/2022', 'Veteran Pharm Ltd', 0, 0, 3),
(490, '', 'Benacoff dry 100ml', '81', '', '110', 150, 'Syrup', '1/25/2022', 'Veteran Pharm Ltd', 0, 0, 3),
(491, '', 'Rocephin 1g', '1637', '', '2200', 2250, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(492, '', 'Femiplan pills 28s', '49.5', '', '70', 75, 'Tabs', '12/12/2022', 'Veteran Pharm Ltd', 0, 0, 5),
(493, '', 'Ampiclox 500mg', '3.9', '', '6', 9, 'Tabs', '4/1/2020', 'british pharmaceuticals', 0, 0, 100),
(494, '', 'Amoxyclav inj 1.2g', '150', '', '200', 250, 'Tabs', '8/6/2021', 'PRAYOSHA HEALTHCARE', 0, 0, 10),
(495, '', 'O.R.S sachets', '12', '', '17', 20, 'Powder', '3/3/2021', 'british pharmaceuticals', 0, 0, 20),
(496, '', 'Benzyl Benzoate sol 25%', '45', '', '70', 100, 'Cream', '10/1/2021', 'british pharmaceuticals', 0, 0, 5),
(497, '', 'Povidone iodine m/w 100ml', '63', '', '90', 120, 'Syrup', '5/1/2023', 'Veteran Pharm Ltd', 0, 0, 5),
(498, '', 'Flagyl(eflaron) 100ml', '34', '', '70', 100, 'Syrup', '1/1/2021', 'british pharmaceuticals', 0, 0, 10),
(499, '', 'Hydralazine inj 20mg', '700', '', '950', 1000, 'Tabs', '9/1/2019', 'british pharmaceuticals', 0, 0, 5),
(500, '', 'Glypin 4mg 30s', '17', '', '25', 35, 'Tabs', '7/1/2021', 'MBETI PHARMACY', 0, 0, 14),
(501, '', 'HCTZ 50mg', '0.99', '', '2', 5, 'Tabs', '2/1/2021', 'british pharmaceuticals', 0, 0, 100),
(502, '', 'Sildenafil 50mg', '8.75', '', '15', 20, 'Tabs', '4/1/2021', 'british pharmaceuticals', 0, 0, 20),
(503, '', 'Clexane 0.4ml inj', '1725', '', '2300', 2350, 'Tabs', '5/5/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(504, '', 'Cotton wool 400mg', '133.62', '', '200', 220, 'Tabs', '4/4/2023', 'max pharmaceuticals', 0, 0, 5);
INSERT INTO `stock` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(505, '', 'Endotracheal tube 4.5', '130', '', '180', 200, 'Tabs', '3/25/2021', 'max pharmaceuticals', 0, 0, 3),
(506, '', 'Fluconazole 200mg', '15', '', '20', 25, 'Tabs', '12/12/2021', 'nextgen pharmaceuticals', 0, 0, 50),
(507, '', 'Ambrox 100ml', '150', '', '200', 250, 'Tabs', '12/20/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(508, '', 'Induric tabs 1.5mg', '15', '', '20', 25, 'Tabs', '9/1/2020', 'max pharmaceuticals', 0, 0, 28),
(509, '', 'Anti-Rabies vaccine', '580', '', '900', 1000, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(510, '', 'Cephalexin caps 250mg', '17', '', '22', 30, 'Tabs', '9/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(511, '', 'TreviaMet 50+1000', '58', '', '80', 85, 'Tabs', '12/12/2022', 'MBETI PHARMACY', 0, 0, 10),
(512, '', 'Cardinol 50mg 28s', '2.8', '', '5', 10, 'Tabs', '8/12/2021', 'Veteran Pharm Ltd', 0, 0, 26),
(513, '', 'Brufen 400mg loose', '1.24', '', '3', 5, 'Tabs', '8/12/2022', 'Veteran Pharm Ltd', 0, 0, 100),
(514, '', 'Stugeron 25mg', '10', '', '15', 20, 'Tabs', '3/28/2021', 'Veteran Pharm Ltd', 0, 0, 25),
(515, '', 'Tramadol  inj 100mg', '22.5', '', '100', 120, 'Tabs', '1/30/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(516, '', 'Insulin syringes 1ml', '8', '', '15', 20, 'Tabs', '2/28/2022', 'Veteran Pharm Ltd', 0, 0, 50),
(517, '', 'Enema 133ml', '240', '', '330', 360, 'Tabs', '4/12/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(518, '', 'IV infusion set', '15', '', '100', 150, 'Tabs', '12/12/2022', 'Veteran Pharm Ltd', 0, 0, 25),
(519, '', 'Montel tabs', '37', '', '50', 55, 'Tabs', '6/12/2021', 'Veteran Pharm Ltd', 0, 0, 150),
(520, '', 'Erythropoietin iv 4000iu', '1512', '', '2050', 2100, 'Tabs', '12/28/2022', 'Veteran Pharm Ltd', 0, 0, 3),
(521, '', 'Tranexamic acid inj 500mg', '121', '', '170', 200, 'Tabs', '12/12/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(522, '', 'Sodium valproate 200mg', '12.7', '', '20', 25, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 100),
(523, '', 'Esomeprazole 40mg', '11.6', '', '20', 25, 'Tabs', '3/12/2022', 'nextgen pharmaceuticals', 0, 0, 150),
(524, '', 'Satrogyl Tabs 300mg', '36', '', '50', 55, 'Tabs', '8/10/2021', 'Veteran Pharm Ltd', 0, 0, 60),
(525, '', 'Transpore', '120', '', '160', 200, 'Tabs', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 6),
(526, '', 'Zinc oxide strapping', '88', '', '120', 150, 'Tabs', '1/30/2023', 'Veteran Pharm Ltd', 0, 0, 5),
(527, '', 'Hemofer inj 2s', '1000', '', '1350', 1450, 'Tabs', '10/29/2019', 'Veteran Pharm Ltd', 0, 0, 5),
(528, '', 'Flucloxacillin inj 1s', '80', '', '120', 150, 'Tabs', '8/8/2021', 'nextgen pharmaceuticals', 0, 0, 10),
(529, '', 'Levofloxacin 500mg 10s', '20', '', '30', 35, 'Tabs', '3/25/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(530, '', 'Nilacid susp 200ml', '200', '', '280', 300, 'Syrup', '9/28/2020', 'nextgen pharmaceuticals', 0, 0, 5),
(531, '', 'Diclofenac inj 75mg', '18', '', '100', 150, 'Tabs', '4/28/2021', 'nextgen pharmaceuticals', 0, 0, 30),
(532, '', 'Syringe 10cc', '4', '', '10', 15, 'Tabs', '5/1/2023', 'Veteran Pharm Ltd', 0, 0, 100),
(533, '', 'Syringe 20ml', '7', '', '10', 15, 'Tabs', '10/30/2022', 'Veteran Pharm Ltd', 0, 0, 100),
(534, '', 'Syringe 2cc', '2.9', '', '5', 10, 'Tabs', '5/10/2023', 'Veteran Pharm Ltd', 0, 0, 100),
(535, '', 'Crepe bandage 6''''', '36', '', '70', 100, 'Tabs', '7/21/2023', 'Veteran Pharm Ltd', 0, 0, 10),
(536, '', 'Nepatop drops', '550', '', '750', 800, 'Syrup', '4/30/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(537, '', 'Duratears Oint 3.5g', '294', '', '400', 450, 'Cream', '11/30/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(538, '', 'Duzela 60mg', '93', '', '125', 135, 'Tabs', '10/10/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(539, '', 'Diapride plus 30s', '24', '', '35', 40, 'Tabs', '4/1/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(540, '', 'Momate nasal spray 50MCG', '601.25', '', '850', 900, 'Tabs', '5/30/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(541, '', 'Enalapril 10mg', '3.5', '', '5', 10, 'Tabs', '12/30/2021', 'nextgen pharmaceuticals', 0, 0, 200),
(542, '', 'Diclofenac gel 20g', '22', '', '100', 120, 'Cream', '4/21/2021', 'medisel kenya', 0, 0, 3),
(543, '', 'Water lubricant gel 50g', '86.2', '', '150', 180, 'Cream', '4/30/2021', 'medisel kenya', 0, 0, 2),
(544, '', 'Enalapril 5mg', '2.8', '', '5', 10, 'Tabs', '11/30/2021', 'nextgen pharmaceuticals', 0, 0, 100),
(545, '', 'Gentamycin eye/ear drops', '14.5', '', '50', 60, 'Syrup', '5/30/2021', 'medisel kenya', 0, 0, 3),
(546, '', 'Heparine inj 10mg/5ml', '360', '', '480', 500, 'Tabs', '2/28/2023', 'MBETI PHARMACY', 0, 0, 20),
(547, '', 'Lignocaine 2% inj', '35', '', '100', 120, 'Tabs', '12/30/2023', 'medisel kenya', 0, 0, 3),
(548, '', 'Plasil inj 10mg/2ml', '8', '', '100', 120, 'Syrup', '12/21/2023', 'medisel kenya', 0, 0, 20),
(549, '', 'Gabacare tabs', '63', '', '85', 95, 'Tabs', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 14),
(550, '', 'Oxifast MR', '54', '', '75', 80, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(551, '', 'Montel DT', '33', '', '45', 50, 'Tabs', '12/10/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(552, '', 'Dexamethasone 0.5mg tabs', '1', '', '5', 10, 'Tabs', '2/2/2019', 'Veteran Pharm Ltd', 0, 0, 100),
(553, '', 'Fluconazole iv', '270', '', '370', 400, 'Syrup', '12/12/2020', 'MBETI PHARMACY', 0, 0, 2),
(554, '', 'Hemfer syp 200ml', '150', '', '200', 250, 'Syrup', '3/12/2020', 'medisel kenya', 0, 0, 1),
(555, '', 'Aurotaz-p 4.5gm', '1452', '', '2000', 2100, 'Tabs', '2/12/2019', 'Veteran Pharm Ltd', 0, 0, 3),
(556, '', 'Abz susp', '45', '', '60', 70, 'Syrup', '3/30/2021', 'nextgen pharmaceuticals', 0, 0, 3),
(557, '', 'Norash cream', '204', '', '270', 300, 'Tabs', '3/25/2019', 'MBETI PHARMACY', 0, 0, 2),
(558, 'pw059', 'Casodex 50mg Tabs', '228', '', '300', 320, 'Tabs', '9/11/2023', 'Veteran Pharm Ltd', 0, 0, 10),
(559, '', 'mebedazole sup', '30', '0', '50', 70, 'Syrup', '5/30/2021', 'Veteran Pharm Ltd', 0, 0, 1),
(560, '', 'mebedazole 100mg tabs', '39', '0', '55', 65, 'Tabs', '7/30/2021', 'Veteran Pharm Ltd', 0, 0, 12),
(561, '', 'Broxol 100ml', '108', '', '140', 160, 'Syrup', '4/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(562, '', 'Glucophage XR 500mg', '13.55', '', '20', 25, 'Tabs', '12/12/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(563, '', 'Clindamycin iv 300mg', '100', '', '150', 500, 'Syrup', '1/30/2020', 'Veteran Pharm Ltd', 0, 0, 5),
(564, '', 'Chlorpromaxzine iv', '30', '', '100', 150, 'Syrup', '2/28/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(565, '', 'Hydrocortisone eye drops', '28', '', '50', 100, 'Syrup', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(566, '', 'Liquid parafin', '30', '', '80', 100, 'Tabs', '8/30/2019', 'Veteran Pharm Ltd', 0, 0, 2),
(567, '', 'Ceftazidime inj', '220', '', '300', 350, 'Powder', '6/30/2019', 'british pharmaceuticals', 0, 0, 2),
(568, '', 'Meftal forte', '15', '', '25', 35, 'Tabs', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 20),
(569, '', 'Ensure nutri vannnilla 400mg', '1326', '', '1760', 1810, 'Powder', '8/31/2024', 'Veteran Pharm Ltd', 0, 0, 1),
(570, '', 'Threptin micromix 200g', '950', '0', '1300', 1350, 'Powder', '12/30/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(571, '', 'Febuxostat tabs 40mg', '40', '', '55', 60, 'Tabs', '9/30/2021', 'Veteran Pharm Ltd', 0, 0, 14),
(572, '', 'Torsemide 20mg', '21', '', '30', 40, 'Tabs', '6/30/2020', 'MBETI PHARMACY', 0, 0, 10),
(573, '', 'Deriphyllin retard 300mg', '22', '', '30', 35, 'Tabs', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 100),
(574, '', 'Omeprazole 20mg iv', '162', '', '220', 270, 'Powder', '5/31/2022', 'Veteran Pharm Ltd', 0, 0, 1),
(575, '', 'Ossithiol paed 100ml', '95', '', '150', 200, 'Syrup', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(576, '', 'Dr Toux 100ml', '165', '', '230', 280, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(577, '', 'Brufamol 725mg', '8.1', '', '13', 20, 'Tabs', '11/12/2020', 'Veteran Pharm Ltd', 0, 0, 20),
(578, '', 'Montiget 10mg', '54', '', '75', 80, 'Tabs', '9/30/2019', 'Veteran Pharm Ltd', 0, 0, 7),
(579, '', 'Zedex 100ml', '153', '', '205', 255, 'Syrup', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(580, '', 'Venofer inj', '2420', '', '3300', 3500, 'Tabs', '12/30/2021', 'MBETI PHARMACY', 0, 0, 1),
(581, '', 'Prozacin plus 15g', '51', '', '100', 150, 'Cream', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(582, '', 'Oculast Eye drops', '260.1', '', '350', 400, 'Syrup', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(583, '', 'letroz 2.5mg', '160', '0', '200', 250, 'Tabs', '10/31/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(584, '', 'Beclofen 10mg', '18', '', '25', 30, 'Tabs', '9/30/2021', 'MBETI PHARMACY', 0, 0, 20),
(585, '', 'Kitpylo c', '1200', '', '1600', 1700, 'Tabs', '9/30/2019', 'Veteran Pharm Ltd', 0, 0, 0),
(586, '', 'Bonium tabs', '10', '', '15', 20, 'Tabs', '12/3/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(587, '', 'Levofloxacin 750mg', '25', '', '35', 40, 'Tabs', '1/30/2020', 'MBETI PHARMACY', 0, 0, 20),
(588, '', 'Tofen 1mg', '8.91', '', '15', 20, 'Tabs', '3/28/2021', 'MBETI PHARMACY', 0, 0, 30),
(589, '', 'Contus-650 tabs', '8.1', '', '15', 15, 'Syrup', '11/30/2023', 'Veteran Pharm Ltd', 0, 0, 10),
(590, '', 'Anusol supp', '46', '', '50', 60, 'Tabs', '12/30/3020', 'MBETI PHARMACY', 0, 0, 6),
(591, '', 'Glycerol supp 1g', '30', '', '50', 60, 'Tabs', '12/12/2019', 'Veteran Pharm Ltd', 0, 0, 3),
(592, '', 'joint flex', '30', '0', '40', 45, 'Tabs', '8/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(593, '', 'ginsomin', '36', '0', '50', 55, 'Tabs', '12/31/2019', 'MBETI PHARMACY', 0, 0, 0),
(594, '', 'Citro-soda 120g', '652', '', '870', 900, 'Powder', '4/28/2021', 'MBETI PHARMACY', 0, 0, 2),
(595, '', 'Hb Rich plus 200ml', '270', '', '370', 400, 'Syrup', '7/28/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(596, '', 'Flexiseq 50g', '2265', '', '3000', 3100, 'Cream', '5/28/2021', 'MBETI PHARMACY', 0, 0, 1),
(597, '', 'Drez v gel', '297', '', '400', 450, 'Cream', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(598, '', 'Colestylamine 4g sach', '125', '', '170', 200, 'Powder', '8/30/2021', 'MBETI PHARMACY', 0, 0, 6),
(599, '', 'Iron dex 200ml', '157.89', '', '250', 300, 'Syrup', '12/12/2021', 'nextgen pharmaceuticals', 0, 0, 5),
(600, '', 'seven seas multivitamin syp', '504', '', '670', 720, 'Tabs', '5/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(601, '', 'Piogluc 15mg', '7', '', '15', 15, 'Tabs', '12/3/2021', 'Veteran Pharm Ltd', 0, 0, 14),
(602, '', 'Ephedrine drops paed 10ml', '20', '', '50', 100, 'Syrup', '3/2/2021', 'british pharmaceuticals', 0, 0, 2),
(603, '', 'Esofag D', '20', '', '30', 35, 'Tabs', '82021-02-10', 'MBETI PHARMACY', 0, 0, 10),
(604, '', 'Cefpodoxime 200mg', '50', '', '70', 80, 'Tabs', '2/28/2021', 'MBETI PHARMACY', 0, 0, 0),
(605, '', 'Esofag kit', '800', '', '1100', 1150, 'Tabs', '12/30/2021', 'MBETI PHARMACY', 0, 0, 1),
(606, '', 'Diclogenta eye drops', '173', '', '230', 250, 'Syrup', '12/30/2021', 'MBETI PHARMACY', 0, 0, 2),
(607, '', 'atarax 25mg', '15', '0', '20', 30, 'Tabs', '10/31/2020', 'MBETI PHARMACY', 0, 0, 0),
(608, '', 'Maxitrol eye drops', '232', '', '350', 400, 'Syrup', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(609, '', 'Montiget sachets 4mg', '41', '', '55', 60, 'Powder', '3/30/2020', 'MBETI PHARMACY', 0, 0, 2),
(610, '', 'Digeva-f 200ml', '231', '', '320', 350, 'Syrup', '10/30/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(611, '', 'Gaviscon 200ml', '516', '', '700', 750, 'Syrup', '10/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(612, '', 'cefuroxime 60ml(zinaxime)', '300', '', '400', 450, 'Powder', '10/30/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(613, '', 'vitamin c1000mg', '25', '', '35', 40, 'Tabs', '5/31/2022', 'nextgen pharmaceuticals', 0, 0, 0),
(614, '', 'Potassium chloride INJ', '66.3', '', '100', 150, 'Syrup', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 3),
(615, '', 'omega 3 multivitamin syp 100ml', '523', '', '700', 750, 'Syrup', '7/10/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(616, '', 'Trimin tabs 30s', '16', '0', '25', 30, 'Tabs', '12/30/2021', 'medisel kenya', 0, 0, 30),
(617, '', 'Hepatitis B vaccine', '209', '0', '500', 700, 'Syrup', '2/26/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(618, '', 'Aceclofenac sr 200mg', '29.4', '', '40', 45, 'Tabs', '12/30/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(619, '', 'Momate cream', '470', '', '650', 700, 'Cream', '12/30/2021', 'MBETI PHARMACY', 0, 0, 1),
(620, '', 'liv .52', '6', '', '10', 15, 'Tabs', '1/30/2019', 'Veteran Pharm Ltd', 0, 0, 0),
(621, '', 'Clobederm lotion', '110', '', '150', 200, 'Gel', '12/23/2020', 'MBETI PHARMACY', 0, 0, 0),
(622, '', 'concor 5', '27', '0', '35', 45, 'Tabs', '1/31/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(623, '', 'joint fix', '25', '0', '35', 45, 'Tabs', '1/31/2022', 'MBETI PHARMACY', 0, 0, 0),
(624, '', 'phenytoin tabs', '10', '', '15', 20, 'Tabs', '2/28/2021', 'MBETI PHARMACY', 0, 0, 0),
(625, '', 'subsyde cr', '15', '0', '20', 25, 'Tabs', '3/31/2021', 'MBETI PHARMACY', 0, 0, 0),
(626, '', 'Amaryl 3mg', '40', '', '50', 55, 'Tabs', '12/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(627, '', 'crafe away ciggarette', '216', '0', '290', 350, 'Tabs', '2/28/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(628, '', 'Cordarone 200mg', '56.8', '', '75', 80, 'Tabs', '5/30/2021', 'MBETI PHARMACY', 0, 0, 10),
(629, '', 'Ivadin 5mg', '65', '', '85', 95, 'Tabs', '4/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(630, '', 'Activated charcoal tabs', '3.2', '', '10', 15, 'Tabs', '3/1/2022', 'Veteran Pharm Ltd', 0, 0, 20),
(631, '', 'Brozedex 100ml', '150', '0', '200', 250, 'Syrup', '2/28/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(632, '', 'Mirtazapne 30mg', '103', '', '140', 145, 'Tabs', '1/30/2020', 'MBETI PHARMACY', 0, 0, 7),
(633, '', 'kofarest 1ooml', '129', '0', '180', 200, 'Syrup', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(634, '', 'Keppra 500mg', '76.8', '', '105', 110, 'Tabs', '12/30/2020', 'Veteran Pharm Ltd', 0, 0, 30),
(635, '', 'Entamaxin susp 100ml', '75', '', '100', 130, 'Syrup', '7/30/2023', 'MBETI PHARMACY', 0, 0, 2),
(636, '', 'Ascard 75MG', '3', '', '5', 10, 'Tabs', '12/30/2021', 'MBETI PHARMACY', 0, 0, 14),
(637, '', 'Unitel 80H Tabs', '62', '', '90', 100, 'Tabs', '12/30/2021', 'medisel kenya', 0, 0, 14),
(638, '', 'caustic pencil', '165', '0', '200', 250, 'Cream', '4/30/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(639, '', 'Labetalol 100mg', '10', '', '15', 20, 'Tabs', '3/30/2021', 'MBETI PHARMACY', 0, 0, 10),
(640, '', 'Zupricin 15g', '415.33', '', '550', 600, 'Cream', '12/30/2022', 'MBETI PHARMACY', 0, 0, 2),
(641, '', 'Ferosoft FA', '16.6', '', '25', 30, 'Tabs', '5/30/2022', 'MBETI PHARMACY', 0, 0, 20),
(642, '', 'Carvedilol 12.5mg', '12', '', '15', 20, 'Tabs', '12/30/2022', 'MBETI PHARMACY', 0, 0, 28),
(643, '', 'Pregabalin sr 150mg (segabin)', '45', '', '60', 65, 'Tabs', '3/3/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(644, '', 'Entamaxin caps', '7.333', '', '10', 15, 'Syrup', '12/30/2022', 'MBETI PHARMACY', 0, 0, 30),
(645, '', 'Funbact A cream', '101', '', '150', 200, 'Cream', '4/30/2020', 'MBETI PHARMACY', 0, 0, 1),
(646, '', 'Citro soda 60g', '430', '', '580', 630, 'Powder', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(647, '', 'Deprex 10mg', '14', '', '20', 25, 'Tabs', '12/30/2022', 'MBETI PHARMACY', 0, 0, 20),
(648, '', 'Urine bag adult', '25', '', '100', 150, 'Tabs', '3/12/2023', 'MBETI PHARMACY', 0, 0, 0),
(649, '', 'Ringers lactate 500ml', '45', '', '100', 150, 'Syrup', '12/30/2023', 'MBETI PHARMACY', 0, 0, 0),
(650, '', 'Dextrose 50% 500ml', '48', '', '100', 150, 'Syrup', '3/12/2023', 'MBETI PHARMACY', 0, 0, 0),
(651, '', 'Paraffin gauze', '21', '', '50', 100, 'Tabs', '3/30/2023', 'MBETI PHARMACY', 0, 0, 0),
(652, '', 'Primapore 25cm*10cm', '140', '', '200', 250, 'Tabs', '12/30/2023', 'MBETI PHARMACY', 0, 0, 0),
(653, '', 'Pabrinex I&II', '548', '', '730', 800, 'Tabs', '222022-03-01', 'MBETI PHARMACY', 0, 0, 6),
(654, '', 'Ilaprazole 10mg', '55', '', '75', 80, 'Tabs', '11/30/2020', 'Veteran Pharm Ltd', 0, 0, 1),
(655, '', 'Dynacort 18mg', '25', '', '35', 40, 'Tabs', '6/30/2022', 'Veteran Pharm Ltd', 0, 0, 5),
(656, '', 'ifas tabs', '5', '0', '7', 10, 'Tabs', '1/1/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(657, '', 'clear T', '425', '0', '550', 600, 'Cream', '1/2/2021', 'MBETI PHARMACY', 0, 0, 0),
(658, '', 'floxapen 125/5 origi', '653', '0', '880', 950, 'Syrup', '11/1/2021', 'MBETI PHARMACY', 0, 0, 0),
(659, '', 'Nemiderm 5cm87cm', '12', '0', '15', 20, 'Tabs', '12/31/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(660, '', 'Siclofen MR tabs', '5', '', '10', 15, 'Tabs', '12/30/2020', 'MBETI PHARMACY', 0, 0, 20),
(661, '', 'lactulose 100ml', '200', '0', '300', 350, 'Syrup', '12/30/2020', 'nextgen pharmaceuticals', 0, 0, 5),
(662, '', 'acp tabs', '18', '0', '25', 30, 'Tabs', '2/28/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(663, '', 'otorex ear drops', '177', '0', '250', 300, 'Syrup', '1/31/2021', 'MBETI PHARMACY', 0, 0, 1),
(664, '', 'Hydroxyurea 500mg', '24.75', '', '35', 40, 'Tabs', '12/12/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(665, '', 'Acid concentrate', '500', '', '670', 700, 'Powder', '5/13/2024', 'Veteran Pharm Ltd', 0, 0, 0),
(666, '', 'Bloodlines', '580', '', '800', 850, 'Tabs', '5/31/2024', 'Veteran Pharm Ltd', 0, 0, 0),
(667, '', 'Bicarbonate cartridge', '500', '', '670', 750, 'Tabs', '6/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(668, '', 'Dialyser Elisio', '1400', '', '1870', 1950, 'Tabs', '12/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(669, '', 'Nemiderm 10cm*25cm', '61', '', '100', 150, 'Tabs', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(670, '', 'Nemiderm 10cm*25cm', '61', '', '100', 150, 'Tabs', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(671, '', 'Netazox OF tabs', '37.5', '', '50', 60, 'Tabs', '11/30/2019', 'Veteran Pharm Ltd', 0, 0, 10),
(672, '', 'Novelta susp 200ml', '160', '', '250', 300, 'Syrup', '12/30/2022', 'nextgen pharmaceuticals', 0, 0, 1),
(673, '', 'Dynacort 6mg', '17', '', '25', 30, 'Tabs', '3/3/2022', 'MBETI PHARMACY', 0, 0, 0),
(674, '', 'MZ cal tabs', '13', '', '20', 25, 'Tabs', '12/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(675, '', 'TX-MF tabs', '53', '', '70', 80, 'Tabs', '12/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(676, '', 'Enzoflam tabs', '30', '', '40', 45, 'Tabs', '6/30/2021', 'medisel kenya', 0, 0, 10),
(677, '', 'Aceclofenac 100mg', '9.5', '', '15', 20, 'Tabs', '12/30/2022', 'nextgen pharmaceuticals', 0, 0, 60),
(678, '', 'Bio oil 125ml', '650', '', '900', 1000, 'Tabs', '9/30/2024', 'Veteran Pharm Ltd', 0, 0, 0),
(679, '', 'Eclam kit', '2100', '', '2800', 3000, 'Tabs', '12/4/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(680, '', 'Benacoff exp 100ml', '85', '', '120', 150, 'Syrup', '12/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(681, '', 'Epanutin caps 100mg', '9', '', '15', 20, 'Tabs', '12/30/2022', 'MBETI PHARMACY', 0, 0, 20),
(682, '', 'Dexa G eye drops', '320', '', '450', 500, 'Syrup', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 2),
(683, '', 'soft ban', '45', '0', '100', 150, 'Powder', '7/31/2021', 'medisel kenya', 0, 0, 0),
(684, '', 'Collacare forte', '50', '', '70', 75, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(685, '', 'Letzgo MR', '47', '', '65', 70, 'Tabs', '10/30/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(686, '', 'Morphine inj 10mg', '95.5', '', '150', 200, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 2),
(687, '', 'Spironolactone 100mg', '18', '', '25', 30, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 10),
(688, '', 'Sodium valproate 300mg', '32', '', '45', 50, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 10),
(689, '', 'L montus', '42.5', '', '55', 60, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 5),
(690, '', 'mz cal plus', '10', '0', '15', 20, 'Tabs', '10/31/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(691, '', 'naproxen 500mg', '26', '0', '35', 40, 'Tabs', '4/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(692, '', 'actiflex 10.2 gm', '110', '0', '150', 170, 'Tabs', '8/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(693, '', 'MA-Kare', '450', '', '600', 700, 'Tabs', '3/4/2021', 'Veteran Pharm Ltd', 0, 0, 1),
(694, '', 'fertilady', '12', '0', '15', 20, 'Tabs', '5/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(695, '', 'Jointy plus gel 30g', '100', '', '150', 180, 'Gel', '22023-03-01', 'nextgen pharmaceuticals', 0, 0, 2),
(696, '', 'Paracetamol IM 150mg/ml', '35', '', '100', 150, 'Syrup', '6/30/2021', 'max pharmaceuticals', 0, 0, 5),
(697, '', 'Sonaderm-GM cream 10g', '178', '', '250', 280, 'Cream', '5/30/2020', 'MBETI PHARMACY', 0, 0, 1),
(698, '', 'Equinerve tabs', '43', '', '60', 65, 'Tabs', '6/30/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(699, '', 'Udihep forte', '76', '', '110', 120, 'Tabs', '6/30/2021', 'MBETI PHARMACY', 0, 0, 5),
(700, '', 'unitel 80(telmisartan)', '61', '0', '85', 90, 'Tabs', '7/31/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(701, '', 'Mask', '70', '', '100', 120, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 50),
(702, '', 'Candid b cream 15g', '173.5', '', '250', 280, 'Cream', '12/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(703, '', 'Levobact 750mg', '90', '', '125', 150, 'Tabs', '12/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(704, '', 'Arbiel 40H', '40', '', '55', 60, 'Tabs', '12/3/2022', 'MBETI PHARMACY', 0, 0, 10),
(705, '', 'Natrixium 1.5/10mg', '41', '', '55', 60, 'Tabs', '12/28/2021', 'MBETI PHARMACY', 0, 0, 0),
(706, '', 'diamox 250mg', '33', '0', '45', 55, 'Tabs', '4/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(707, '', 'duodart 0.5mg/0.4mg', '74', '0', '100', 110, 'Tabs', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(708, '', 'oxybutin 5mg', '44', '0', '60', 70, 'Tabs', '4/22/2020', 'Veteran Pharm Ltd', 0, 0, 0),
(709, '', 'Demelan cream 15g', '1568', '', '2100', 2200, 'Cream', '3/10/2021', 'MBETI PHARMACY', 0, 0, 0),
(710, '', 'etoricoxib 90mg', '30', '0', '40', 45, 'Tabs', '4/30/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(711, '', 'diclofenac supps', '25', '0', '35', 40, 'Tabs', '3/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(712, '', 'ETR-P 30s', '39', '', '55', 60, 'Tabs', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(713, '', 'Maxiplex tabs', '13.66', '', '20', 25, 'Tabs', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(714, '', 'Fluphenazine decanoate 25mg', '95', '', '150', 200, 'Syrup', '11/30/2021', 'MBETI PHARMACY', 0, 0, 2),
(715, '', 'Evit 400', '35', '0', '50', 55, 'Tabs', '1/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(716, '', 'Cartil collagen', '62', '', '85', 90, 'Tabs', '8/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(717, '', 'Vitamin D3 inj', '395', '', '550', 600, 'Tabs', '2/28/2024', 'MBETI PHARMACY', 0, 0, 0),
(718, '', 'syringes 5cc', '3.5', '', '7', 12, 'Powder', '8/30/2023', 'Veteran Pharm Ltd', 0, 0, 200),
(719, '', 'Proguanil 100mg', '6.8', '', '10', 15, 'Tabs', '9/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(720, '', 'PULMICORT NEBU SOL 0.5MG/ML', '255', '', '350', 400, 'Powder', '9/6/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(721, '', 'NALOXONE 400MCG/1ML INJ', '621', '', '850', 900, 'Powder', '8/6/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(722, '', 'IRON SUCROSE INJ', '950', '', '1300', 1350, 'Powder', '5/6/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(723, '', 'Arbitel 80mg', '43.5', '', '60', 65, 'Tabs', '7/30/2022', 'MBETI PHARMACY', 0, 0, 10),
(724, '', 'Carca 25mg', '38.76', '', '55', 60, 'Tabs', '12/30/2022', 'MBETI PHARMACY', 0, 0, 10),
(725, '', 'Epilim 500mg', '58', '', '80', 85, 'Tabs', '7/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(726, '', 'Epilim syrup 300ml', '1411', '', '1900', 2000, 'Tabs', '12/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(727, '', 'Heparesist XL', '85', '', '115', 120, 'Tabs', '11/28/2020', 'MBETI PHARMACY', 0, 0, 0),
(728, '', 'PEDIASURE', '1601', '', '2150', 2200, 'Powder', '3/6/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(729, '', 'omeba 100mls', '64.8', '', '100', 150, 'Syrup', '3/6/2021', 'Veteran Pharm Ltd', 0, 0, 5),
(730, '', 'nebzmart s 2.5mls', '693.75', '', '950', 1000, 'Powder', '3/6/2021', 'Veteran Pharm Ltd', 0, 0, 2),
(731, '', 'nebzmart si 2.5mls', '832.5', '', '1150', 1200, 'Powder', '3/6/2020', 'Veteran Pharm Ltd', 0, 0, 10),
(732, '', 'dermo emolllent', '756', '', '1050', 1100, 'Cream', '11/6/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(733, '', 'conace mr', '7.2', '', '10', 15, 'Tabs', '12/6/2021', 'Veteran Pharm Ltd', 0, 0, 90),
(734, '', 'flazol m', '100', '', '150', 160, 'Tabs', '12/6/2021', 'MBETI PHARMACY', 0, 0, 10),
(735, '', 'clean gloves', '580', '', '780', 800, 'Powder', '12/6/2022', 'MBETI PHARMACY', 0, 0, 5),
(736, '', 'wepox 4000iu', '1400', '', '1900', 1950, 'Powder', '12/6/2018', 'Veteran Pharm Ltd', 0, 0, 2),
(737, '', 'lipitas 80mg', '59.2', '', '80', 90, 'Tabs', '2/20/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(738, '', 'pradaxa 110mg', '114', '', '150', 160, 'Tabs', '2/20/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(739, '', 'duzela 30mg', '46.75', '', '65', 70, 'Tabs', '2/20/2022', 'Veteran Pharm Ltd', 0, 0, 30),
(740, '', 'epinone 25mg', '74.07', '', '100', 110, 'Tabs', '2/20/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(741, '', 'ceregard', '125.28', '', '170', 180, 'Tabs', '2/20/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(742, '', 'amlozaar', '39.3', '', '55', 60, 'Tabs', '2/20/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(743, '', 'Cloasp 30s', '39', '', '55', 60, 'Tabs', '10/30/2021', 'MBETI PHARMACY', 0, 0, 10),
(744, '', 'Metrogyl denta 20g', '199', '', '270', 300, 'Gel', '8/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(745, '', 'Actilosa caps', '58.5', '', '80', 85, 'Tabs', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(746, '', 'Metolazone 5mg', '40', '0', '55', 60, 'Tabs', '11/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(747, '', 'Hilderm cream CH 30g', '136', '', '200', 250, 'Cream', '7/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(748, '', 'rocimus 0.1%', '1396', '', '1900', 1950, 'Cream', '9/7/2022', 'MBETI PHARMACY', 0, 0, 2),
(749, '', 'ROCIMUS 0.03%', '915', '', '1250', 1300, 'Cream', '9/7/2022', 'MBETI PHARMACY', 0, 0, 2),
(750, '', 'Drez oint', '100', '', '150', 200, 'Cream', '12/30/2022', 'Veteran Pharm Ltd', 0, 0, 1),
(751, '', 'Flagentyl 500mg 4s', '358', '', '480', 550, 'Tabs', '11/30/2022', 'MBETI PHARMACY', 0, 0, 1),
(752, '', 'Nexium 20mg', '108', '', '150', 160, 'Tabs', '3/1/2023', 'MBETI PHARMACY', 0, 0, 2),
(753, '', 'Prostaflo OD', '63', '', '85', 95, 'Tabs', '5/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(754, '', 'Rabeflux DSR', '25.5', '', '35', 40, 'Tabs', '8/30/2021', 'Veteran Pharm Ltd', 0, 0, 10),
(755, '', 'Meloxicam inj 15mg/3ml', '78', '', '120', 150, 'Tabs', '12/30/2023', 'PRAYOSHA HEALTHCARE', 0, 0, 30),
(756, '', 'Risperidone 2mg', '54', '0', '75', 80, 'Tabs', '1/30/2023', 'MBETI PHARMACY', 0, 0, 10),
(757, '', 'Harteze 15mg', '65', '', '85', 90, 'Tabs', '5/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(758, '', 'Spasmolar tabs', '18.5', '', '25', 30, 'Tabs', '3/30/2022', 'Veteran Pharm Ltd', 0, 0, 10),
(759, '', 'Pernex AC 5% gel', '288', '', '385', 420, 'Cream', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(760, '', 'Goticare tabs', '50', '', '65', 0, 'Tabs', '9/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(761, '', 'Zupricin B', '550', '', '700', 750, 'Cream', '12/30/2023', 'Veteran Pharm Ltd', 0, 0, 1),
(762, '', 'cilnitel 5/80mg ct', '47', '', '65', 75, 'Tabs', '3/1/2021', 'MBETI PHARMACY', 0, 0, 10),
(763, '', 'Dexomet N eye/ear drop', '55', '', '80', 100, 'Syrup', '12/30/2020', 'MBETI PHARMACY', 0, 0, 2),
(764, '', 'Ulcerid 100ml', '45', '', '80', 100, 'Syrup', '12/30/2022', 'MBETI PHARMACY', 0, 0, 3),
(765, '', 'epimax all purpose(aldult)', '1020', '0', '1380', 1500, 'Cream', '6/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(766, '', 'epimax junior cream 400g', '1020', '0', '1380', 1450, 'Cream', '6/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(767, '', 'dermikelp skin cream 25g', '690', '0', '930', 1000, 'Cream', '10/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(768, '', 'momate furoate oint 15gm', '465', '0', '620', 670, 'Cream', '12/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(769, '', 'sinemet cr', '100', '0', '135', 145, 'Tabs', '5/31/2022', 'MBETI PHARMACY', 0, 0, 0),
(770, '', 'FORXIGA', '170', '', '225', 235, 'Tabs', '6/30/2022', 'MBETI PHARMACY', 0, 0, 30),
(771, '', 'rovista 10mg', '48', '0', '65', 75, 'Tabs', '6/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(772, '', 'ketorolac tromethamine 30mg', '195', '0', '265', 275, 'Cream', '3/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(773, '', 'acetal mr', '7', '0', '10', 15, 'Tabs', '7/29/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(774, '', 'laxilac satchets', '135', '', '180', 200, 'Tabs', '', 'Veteran Pharm Ltd', 0, 0, 10),
(775, '', 'tamepyn', '9', '', '15', 20, 'Tabs', '7/31/2023', 'MBETI PHARMACY', 0, 0, 20),
(776, '', 'yescort 6mg', '23', '', '30', 40, 'Tabs', '4/30/2021', 'MBETI PHARMACY', 0, 0, 0),
(777, '', 'pregatas me 75', '58', '0', '75', 80, 'Tabs', '7/31/2021', 'MBETI PHARMACY', 0, 0, 0),
(778, '', 'Becoactin Tablets', '14.7', '0', '20', 20, 'Tabs', '2/16/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(779, '', 'clear t', '414', '', '600', 650, 'Cream', '11/17/2021', 'MBETI PHARMACY', 0, 0, 1),
(780, '', 'Fenplus tabs', '12', '', '20', 25, 'Tabs', '3/16/2021', 'Veteran Pharm Ltd', 0, 0, 30),
(781, '', 'klenzit c gel', '862', '0', '1150', 1200, 'Gel', '3/31/2022', 'MBETI PHARMACY', 0, 0, 0),
(782, '', 'Glencee (vit C)', '39', '', '50', 55, 'Tabs', '7/31/2022', 'MBETI PHARMACY', 0, 0, 1),
(783, '', 'Aldactone 25mg', '22', '0', '30', 35, 'Tabs', '9/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(784, '', 'digoxin 125mcg', '2', '0', '5', 7, 'Tabs', '1/31/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(785, '', 'depo medral inj', '573', '0', '750', 800, 'Tabs', '10/30/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(786, '', 'galvusmet 50mg/500mg', '89', '0', '120', 125, 'Tabs', '7/31/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(787, '', 'momate furoate and azelastine hcl nasal spray', '1323', '0', '1800', 1850, 'Tabs', '3/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(788, '', 'anafranil 25mg', '31', '0', '40', 45, 'Tabs', '6/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(789, '', 'thiorelax', '47', '0', '62', 70, 'Tabs', '10/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(790, '', 'daonil 5mg', '14', '0', '20', 25, 'Tabs', '2/28/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(791, '', 'epimol-e 100mg', '337', '0', '450', 500, 'Cream', '1/1/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(792, '', 'epimol-b cream', '826', '0', '1150', 1200, 'Cream', '6/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(793, '', 'empagliflozin 10mg', '52', '0', '65', 70, 'Tabs', '9/30/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(794, '', 'multivitamin + cod liver oil', '210', '', '300', 350, 'Syrup', '12/31/2021', 'nextgen pharmaceuticals', 0, 0, 0),
(795, '', 'zinc sulphate 20mg', '10', '0', '15', 20, 'Tabs', '12/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(796, '', 'Zyrtal Gel', '', '', '450', 500, 'Gel', '11/11/2021', 'Veteran Pharm Ltd', 0, 0, 0),
(797, '', 'zinnat 250/5ml', '1050', '0', '1400', 1500, 'Syrup', '9/30/2022', 'MBETI PHARMACY', 0, 0, 0),
(798, '', 'dazolic 500mg(ornidazole', '24', '0', '30', 35, 'Tabs', '2/28/2023', 'Veteran Pharm Ltd', 0, 0, 0),
(799, '', 'orelox 200mg', '163', '0', '215', 225, 'Tabs', '5/31/2022', 'Veteran Pharm Ltd', 0, 0, 0),
(800, '', 'SUGAR', '0', '0', '20', 30, 'Tabs', '3/25/2021', 'Veteran Pharm Ltd', 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE IF NOT EXISTS `supliers` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`) VALUES
(1, 'Colortex', 'Binondo Manila', 'none', 'Sample'),
(2, 'Meds', '12346', '07654235353', 'john'),
(3, 'Jacob Nthiwa', 'PO BOX 89 KATANGI', '0791417887', 'Jacob NTHIWA'),
(4, 'LIMELIGHT CHEMIST', '0726773385  DENNIS', '0720351924 ISAAC', 'DR.DENNIS / ISAAC MUNGA');

-- --------------------------------------------------------

--
-- Table structure for table `theatre_inventory`
--

CREATE TABLE IF NOT EXISTS `theatre_inventory` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `price` varchar(100) NOT NULL,
  `c_price` int(11) NOT NULL,
  `form` varchar(50) NOT NULL,
  `experiy_date` varchar(15) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `new` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `theatre_inventory`
--

INSERT INTO `theatre_inventory` (`product_id`, `product_code`, `product_name`, `cost`, `discount`, `price`, `c_price`, `form`, `experiy_date`, `supplier`, `qty`, `new`, `level`) VALUES
(12, '', 'Mumo', '', '', '300', 500, 'Syrup', '', '', 10, 0, 40);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` int(11) NOT NULL,
  `department` varchar(200) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL DEFAULT '2018-12-20',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `contact`, `department`, `position`, `date`) VALUES
(38, 'admin', '12345', 'DR. Dino kyalo', 0, 'OPD', 'admin', '2018-12-25'),
(48, 'Kyalo', '12345', 'DR. Dino kyalo', 0, 'Consultation', 'doctor', '2018-12-20'),
(49, 'LAB', 'LAB', 'LAB', 0, 'LAB', 'lab', '2018-12-20'),
(50, 'Pharmacy', 'pharmacy', 'pharmacy', 799852873, 'PHARMACY', 'pharmacy', '2018-12-20'),
(53, 'Cashier', 'cash', 'Cashier', 799852873, 'RECEPTION', 'accounts', '2018-12-20'),
(54, 'store', 'store', 'store', 0, 'STORE', 'procument', '2018-12-20'),
(55, 'reception', 'reception', 'reception', 0, 'RECEPTION', 'reception', '2018-12-20'),
(56, 'jacob', 'jacob', 'jacob', 0, 'C.O.', 'doctor', '2018-12-20'),
(57, 'dental', 'dental', 'dental', 0, 'DENTAL', 'dental', '2018-12-20'),
(58, 'optical', 'optical', 'optical', 0, 'OPTICAL', 'optical', '2018-12-20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
