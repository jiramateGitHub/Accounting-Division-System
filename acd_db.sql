-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 02:30 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acd_accountant`
--

CREATE TABLE `acd_accountant` (
  `act_id` int(11) NOT NULL,
  `act_code` varchar(255) NOT NULL COMMENT 'รหัส',
  `act_name` varchar(255) NOT NULL COMMENT 'ชื่อ-สกุล',
  `act_phone` varchar(255) NOT NULL COMMENT 'เบอร์โทร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_accountant`
--

INSERT INTO `acd_accountant` (`act_id`, `act_code`, `act_name`, `act_phone`) VALUES
(1, 'R001', 'ชุติกานต์   จรกา\r\n', '095-456-2343\r\n'),
(2, 'R002', 'นุสราทิพย์  มีกุศล\r\n', '087-345-2189\r\n'),
(3, 'R003\r\n', 'อริยา   ก้อนแพง\r\n', '095-434-7866\r\n'),
(4, 'R004\r\n', 'พิพรรชน์   มิตรชื่น\r\n', '082-433-1212\r\n'),
(5, 'R005\r\n', 'สโรชา  สีทะเล\r\n', '099-454-3477\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `acd_customer`
--

CREATE TABLE `acd_customer` (
  `cus_id` int(11) NOT NULL,
  `cus_code` varchar(255) NOT NULL COMMENT 'รหัสลูกค้า',
  `cus_name` varchar(255) NOT NULL COMMENT 'ชื่อลูกค้า',
  `cus_address` text NOT NULL COMMENT 'ที่อยู่',
  `cus_email` varchar(255) NOT NULL COMMENT 'Email',
  `cus_phone` varchar(255) NOT NULL COMMENT 'เบอร์โทร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_customer`
--

INSERT INTO `acd_customer` (`cus_id`, `cus_code`, `cus_name`, `cus_address`, `cus_email`, `cus_phone`) VALUES
(1, 'C0001', 'นายสมบัติ มีเงิน', '1168/52 แขวงทุ่งมหาเมฆ เขตสาทร กรุงเทพ 10120', 'sombutt@gmail.com', '081-111-1119'),
(2, 'C0002', 'นายเอกวิทย์ แก้วมณี', '166-166/1-5 แขวงดินแดง เขตดินแดง กรุงเทพ 10400', 'a_awit@gmail.com', '082-123-3356'),
(3, 'C0003', 'นางลำดวน พงไพร', '244 ถ.ศรีนคริทร์ แขวงหัวหมาก เขตบางกะปิ', 'pongppl@hotmail.com', '088-881-1113'),
(4, 'C0004', 'นางสาวจันทร์พร ไพศาล', '299-7 ต.หัวลำโพลง อ.แปลงนายาว จ.ฉะเชิงเทรา', 'jp_paisan@hotmail.com', '099-123-4567'),
(5, 'C0005', 'นายพีสมา กุลวงศ์', '123-339 ต.หัวลำโพลง อ.แปลงนายาว จ.ฉะเชิงเทรา', 'ppsama@gmal.com', '088-000-1222'),
(6, 'C0006', 'นายธนดล  คนกลาง', '6/3 ถนนสุรนารายณ์ ตำบลในเมือง อำเภอเมือง จังหวัดนครราชสีมา 30000', 'Thanadol_11@gmail.com', '096-980-3434'),
(7, 'C0007', 'นางสาวรพี ผ่องพาน', '115  มิตรภาพ ต.ในเมือง อ.เมือง จ.ขอนแก่น 40000', 'Rapeepanpp@gmail.com', '086-454-8989'),
(8, 'C0008', 'นางสาวชัชชุอร อรทัย', '43 หมู่ที่ 10 ถนน น้ำพอง-กระนวน จ.ขอนแก่น', 'Chatchuorn@gmail.com', '094-345-4545'),
(9, 'C0009', 'นายภาส  โกสน', '298 หมู่ 10 ตำบลท่าตูม อำเภอศรีมหาโพธิ จังหวัดปราจีนบุรี 25140', 'Pskoson@gamil.com', '093-232-1256'),
(10, 'C0010', 'นายสมิท  แก้วเกตุ', '52/3 หมู่ 13  แขวงสะพานสูง เขตสะพานสูง กรุงเทพมหานคร 10250', 'Smith@gmailc0m', '082-124-4367'),
(11, 'C0011', 'นางเมราณี  วิเศษ', '2 หมู่ 9 ซอยใจเอื้อ ถนนนนท์-ปทุม ตำบลบางคูวัด อ.เมือง จ.ปทุมธานี 12000', 'Meraneews@gmail.com', '082-189-9767'),
(12, 'C0012', 'นางอภิชญา  โคตรแสนดี', '1 มิตรภาพ - หนองปลิง โคกกรวด อ.เมือง  จ.นครราชสีมา 30280', 'Apitchya@gmail.com', '098-345-8766'),
(13, 'C0013', 'นางธนพร  แก้วกลาง', ' 550 ถนนเพลินจิต แขวงลุมพินี เขตปทุมวัน กรุงเทพมหานคร 10330', 'Thanaporn@gmail.com', '091-232-5675'),
(14, 'C0014', 'นายณดล  ลีลา', 'แขวงตลาดน้อย เขตสัมพันธวงศ์ กรุงเทพมหานคร', 'Nadollll@gmail.com', '084-223-6787'),
(15, 'C0015', 'นางสาวไกรแก้ว  สิงห์ราช', '301 หมู่ 2 ถนนเชียงใหม่-ลำปาง ต.หนองผึ้ง ต.สารภี จ.เชียงใหม่ 50140', 'Kaikeaw@gmail.com', '095-458-3231');

-- --------------------------------------------------------

--
-- Table structure for table `acd_item`
--

CREATE TABLE `acd_item` (
  `item_id` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL COMMENT 'รหัสสินค้า',
  `item_name` varchar(255) NOT NULL COMMENT 'รายการสินค้า',
  `item_price` float NOT NULL COMMENT 'ราคา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_item`
--

INSERT INTO `acd_item` (`item_id`, `item_code`, `item_name`, `item_price`) VALUES
(1, 'A1001', 'นมโคสด', 1450),
(2, 'A2002', 'น้ำตาล', 2000),
(3, 'A3001', 'บรรจุภัณฑ์', 650),
(4, 'A3002', 'หลอด', 150),
(5, 'A3003', 'ลัง', 5),
(6, 'A3004', 'พลาสติก', 900),
(7, 'A4001', 'สารกันบูด', 1200),
(8, 'A5001', 'ผงโกโก้', 500),
(9, 'A5002', 'ผงกล้วย', 400),
(10, 'A5003', 'ผงวนิลา', 500),
(11, 'A5004', 'ผงสตอเบอรี่', 500),
(12, 'M1001', 'น้ำมันหล่อลื่น', 1500),
(13, 'M1002', 'อุปกรณ์ซ่อมบำรุง', 850),
(14, 'OF1001', 'กระดาษ', 600),
(15, 'OF1002', 'ปากกา', 120),
(16, 'OF1003', 'ดินสอ', 100),
(17, 'OF1004', 'ยางลบ', 60),
(18, 'OF1005', 'คลิปหนีบ', 50),
(19, 'OF1006', 'เทปใส', 450),
(20, 'OF1007', 'ปากกาหมึกซึม', 150),
(21, 'OF1008', 'กรรไกร', 600),
(22, 'OF1009', 'สมุด', 600),
(23, 'OF1010', 'ไม้บรรทัด', 200),
(24, 'OF1011', 'แม็ก', 80),
(25, 'OF1012', 'ลูกแม็ก', 120),
(26, 'OF1013', 'น้ำยาลบคำผิด', 600),
(27, 'OF1014', 'เครื่องคิดเลข', 300),
(28, 'P1001\r\n', 'นมรสออริจินัล\r\n', 490),
(29, 'P1002\r\n', 'นมรสหวาน\r\n', 450),
(30, 'P1003\r\n', 'นมรสสตรอเบอรี่\r\n', 450),
(31, 'P1004\r\n', 'นมรสกล้วย\r\n', 450),
(32, 'P1005\r\n', 'นมรสช็อกโกแลต\r\n', 450);

-- --------------------------------------------------------

--
-- Table structure for table `acd_item_detail`
--

CREATE TABLE `acd_item_detail` (
  `itdt_id` int(11) NOT NULL,
  `itdt_item_code` varchar(255) NOT NULL,
  `itdt_code` varchar(255) NOT NULL,
  `itdt_name` varchar(255) NOT NULL,
  `itdt_detail` varchar(255) NOT NULL,
  `itdt_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_item_detail`
--

INSERT INTO `acd_item_detail` (`itdt_id`, `itdt_item_code`, `itdt_code`, `itdt_name`, `itdt_detail`, `itdt_price`) VALUES
(1, 'A1001', 'P1001\r\n', 'นมรสออริจินัล\r\n', 'นมวัว 100%\r\n', 490),
(2, 'A1001', 'P1002\r\n', 'นมรสหวาน\r\n', 'นมวัว 96% น้ำตาล 4%\r\n', 450),
(3, 'A1001', 'P1003\r\n', 'นมรสสตรอเบอรี่\r\n', 'นมวัว 94% น้ำตาล 5% ผงสตอเบอรี่ 1%\r\n', 450),
(4, 'A1001', 'P1004\r\n', 'นมรสกล้วย\r\n', 'นมวัว 94% น้ำตาล 5% ผงกล้วย 1%\r\n', 450),
(5, 'A1001', 'P1005\r\n', 'นมรสช็อกโกแลต\r\n', 'นมวัว 94% น้ำตาล 5% ผงโกโก้ 1%\r\n', 450);

-- --------------------------------------------------------

--
-- Table structure for table `acd_log`
--

CREATE TABLE `acd_log` (
  `log_id` int(11) NOT NULL,
  `log_date` date NOT NULL COMMENT 'วันที่',
  `log_code` varchar(255) NOT NULL COMMENT 'รหัส',
  `log_item_code` varchar(255) NOT NULL COMMENT 'รหัสสินค้า',
  `log_act_code` varchar(255) NOT NULL COMMENT 'รหัสผู้กรอก',
  `log_amount` float NOT NULL COMMENT 'จำนวน',
  `log_type` varchar(1) NOT NULL COMMENT 'ประเภท 1=income , 2=expense'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_log`
--

INSERT INTO `acd_log` (`log_id`, `log_date`, `log_code`, `log_item_code`, `log_act_code`, `log_amount`, `log_type`) VALUES
(13, '2019-11-20', 'C0001', 'P1004\r\n', 'R001', 200, '1');

-- --------------------------------------------------------

--
-- Table structure for table `acd_log_expense`
--

CREATE TABLE `acd_log_expense` (
  `log_exp_id` int(11) NOT NULL,
  `log_exp_date` date NOT NULL COMMENT 'วันที่',
  `log_exp_sup_code` varchar(255) NOT NULL COMMENT 'รหัสผู้ขาย',
  `log_exp_item_code` varchar(255) NOT NULL COMMENT 'รหัสสินค้า',
  `log_exp_act_code` varchar(255) NOT NULL COMMENT 'พนักงานบัญชี',
  `log_exp_amount` int(11) NOT NULL COMMENT 'จำนวนรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `acd_log_income`
--

CREATE TABLE `acd_log_income` (
  `log_ic_id` int(11) NOT NULL,
  `log_ic_date` date NOT NULL COMMENT 'วันที่',
  `log_ic_cus_code` varchar(255) NOT NULL COMMENT 'รหัสลูกค้า	',
  `log_ic_item_code` varchar(255) NOT NULL COMMENT 'รหัสสินค้า',
  `log_ic_act_code` varchar(255) NOT NULL COMMENT 'พนักงานบัญชี',
  `log_ic_amount` int(11) NOT NULL COMMENT 'จำนวนรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_log_income`
--

INSERT INTO `acd_log_income` (`log_ic_id`, `log_ic_date`, `log_ic_cus_code`, `log_ic_item_code`, `log_ic_act_code`, `log_ic_amount`) VALUES
(9, '2019-11-20', 'C0001', 'P1004\r\n', 'R001', 200);

-- --------------------------------------------------------

--
-- Table structure for table `acd_supplier`
--

CREATE TABLE `acd_supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_code` varchar(255) NOT NULL COMMENT 'รหัสsupplier',
  `sup_name` varchar(255) NOT NULL COMMENT 'ชื่อ',
  `sup_company` varchar(255) NOT NULL COMMENT 'ชื่อบริษัท',
  `sup_address` text NOT NULL COMMENT 'ที่อยู่',
  `sup_email` varchar(255) NOT NULL COMMENT 'อีเมลล์',
  `sup_phone` varchar(255) NOT NULL COMMENT 'เบอร์โทร',
  `sup_fax` varchar(255) NOT NULL COMMENT 'Fax'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acd_supplier`
--

INSERT INTO `acd_supplier` (`sup_id`, `sup_code`, `sup_name`, `sup_company`, `sup_address`, `sup_email`, `sup_phone`, `sup_fax`) VALUES
(1, 'G001', 'นางลำดวน ทองเจือ\r\n', 'มิลค์ นมสด (MiLK นมสด)', 'สหกรณ์หนองโพ ราชบุรี ', 'Thong-j@gmail.com', '086-212-5600', '02-238-2483'),
(2, 'G002', 'นายกีรกิต  แก้วการ\r\n', 'บริษัท ซีโน-แปซิฟิค เทรดดิ้ง (ไทยแลนด์) จำกัด', '122/2-3 นนทรี ช่องนนทรี ยานนาวา กรุงเทพมหานคร 10120', 'Keerakitkk@gmail.com', '096-323-9877', '02-234-1222'),
(3, 'G003', 'นางมณี  ศรีไทย', 'บริษัท เทคนิคโอเอโปร จำกัด', ' 82/30 หมู่ที่ 2 ถนนเหล่านาดี ต.ในเมือง อ.เมือง จ.ขอนแก่น 40000', 'ManeeST@gmail.com', '093-434-1165', '02-241-9000'),
(4, 'G004', 'นายอดัม ไคน์', 'บริษัท โอวาท โปร แอนด์ ควิก จำกัด', '20 ซอยสีบุรานุกิจ4 แขวงมีนบุรี กรุงเทพมหานคร 10510', 'Kadam@gmail.com', '082-866-1298', '02-223-7000'),
(5, 'G005', 'นางสาวสิริยากร สิงหวิราช', 'บริษัท เคซี อินเตอร์ฟูดส์ ', '143/463 ถนนบรมราชชนนี แขวงอรุณอมรินทร์ เขตบางกอกน้อย กรุงเทพ 10700', 'Siriyakorn@gmail.com', '032-112-4567', '02-343-5000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acd_accountant`
--
ALTER TABLE `acd_accountant`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `acd_customer`
--
ALTER TABLE `acd_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `acd_item`
--
ALTER TABLE `acd_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `acd_item_detail`
--
ALTER TABLE `acd_item_detail`
  ADD PRIMARY KEY (`itdt_id`);

--
-- Indexes for table `acd_log`
--
ALTER TABLE `acd_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `acd_log_expense`
--
ALTER TABLE `acd_log_expense`
  ADD PRIMARY KEY (`log_exp_id`);

--
-- Indexes for table `acd_log_income`
--
ALTER TABLE `acd_log_income`
  ADD PRIMARY KEY (`log_ic_id`);

--
-- Indexes for table `acd_supplier`
--
ALTER TABLE `acd_supplier`
  ADD PRIMARY KEY (`sup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acd_accountant`
--
ALTER TABLE `acd_accountant`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `acd_customer`
--
ALTER TABLE `acd_customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `acd_item`
--
ALTER TABLE `acd_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `acd_item_detail`
--
ALTER TABLE `acd_item_detail`
  MODIFY `itdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `acd_log`
--
ALTER TABLE `acd_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `acd_log_expense`
--
ALTER TABLE `acd_log_expense`
  MODIFY `log_exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `acd_log_income`
--
ALTER TABLE `acd_log_income`
  MODIFY `log_ic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `acd_supplier`
--
ALTER TABLE `acd_supplier`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
