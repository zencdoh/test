/*
SQLyog - Free MySQL GUI v5.12
Host - 5.5.30 : Database - book_my_doc
*********************************************************************
Server version : 5.5.30
*/
SET NAMES utf8;
SET SQL_MODE='';
create database if not exists `book_my_doc`;
USE `book_my_doc`;
/*Table structure for table `admin` */
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `A_PASSWORD` varchar(100) NOT NULL,
  `A_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=latin1;
/*Data for the table `admin` */
insert into `admin` (`ID`,`A_PASSWORD`,`A_NAME`) values (10000,'password','10000');
/*Table structure for table `appointment` */
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PATIENT_ID` int(11) NOT NULL,
  `DOCTOR_ID` int(11) NOT NULL,
  `A_DATE` date DEFAULT NULL,
  `A_SLOT` varchar(100) DEFAULT NULL,
  `A_FEEDBACK` varchar(100) DEFAULT NULL,
  `A_PRESCRIPTION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*Data for the table `appointment` */
/*Table structure for table `doctor` */
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `DAYS` varchar(100) DEFAULT NULL,
  `SLOT1` varchar(100) DEFAULT NULL,
  `SLOT2` varchar(100) DEFAULT NULL,
  `SLOT3` varchar(100) DEFAULT NULL,
  `SLOT4` varchar(100) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10055 DEFAULT CHARSET=latin1;
/*Table structure for table `patient` */
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_NAME` varchar(100) NOT NULL,
  `P_AGE` int(3) NOT NULL,
  `P_PASSWORD` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19003 DEFAULT CHARSET=latin1;
GRANT ALL ON *. * TO root@'"$ip"' IDENTIFIED BY 'Redhat#10';
FLUSH PRIVILEGES;
