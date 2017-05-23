-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 23 May 2017, 23:06:33
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ips`
--
CREATE DATABASE IF NOT EXISTS `ips` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ips`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `0000_0010` int(11) DEFAULT '0',
  `0010_0020` int(11) DEFAULT '0',
  `0020_0030` int(11) DEFAULT '0',
  `0030_0040` int(11) DEFAULT '0',
  `0040_0050` int(11) DEFAULT '0',
  `0050_0100` int(11) DEFAULT '0',
  `0100_0110` int(11) DEFAULT '0',
  `0110_0120` int(11) DEFAULT '0',
  `0120_0130` int(11) DEFAULT '0',
  `0130_0140` int(11) DEFAULT '0',
  `0140_0150` int(11) DEFAULT '0',
  `0150_0200` int(11) DEFAULT '0',
  `0200_0210` int(11) DEFAULT '0',
  `0210_0220` int(11) DEFAULT '0',
  `0220_0230` int(11) DEFAULT '0',
  `0230_0240` int(11) DEFAULT '0',
  `0240_0250` int(11) DEFAULT '0',
  `0250_0300` int(11) DEFAULT '0',
  `0300_0310` int(11) DEFAULT '0',
  `0310_0320` int(11) DEFAULT '0',
  `0320_0330` int(11) DEFAULT '0',
  `0330_0340` int(11) DEFAULT '0',
  `0340_0350` int(11) DEFAULT '0',
  `0350_0400` int(11) DEFAULT '0',
  `0400_0410` int(11) DEFAULT '0',
  `0410_0420` int(11) DEFAULT '0',
  `0420_0430` int(11) DEFAULT '0',
  `0430_0440` int(11) DEFAULT '0',
  `0440_0450` int(11) DEFAULT '0',
  `0450_0500` int(11) DEFAULT '0',
  `0500_0510` int(11) DEFAULT '0',
  `0510_0520` int(11) DEFAULT '0',
  `0520_0530` int(11) DEFAULT '0',
  `0530_0540` int(11) DEFAULT '0',
  `0540_0550` int(11) DEFAULT '0',
  `0550_0600` int(11) DEFAULT '0',
  `0600_0610` int(11) DEFAULT '0',
  `0610_0620` int(11) DEFAULT '0',
  `0620_0630` int(11) DEFAULT '0',
  `0630_0640` int(11) DEFAULT '0',
  `0640_0650` int(11) DEFAULT '0',
  `0650_0700` int(11) DEFAULT '0',
  `0700_0710` int(11) DEFAULT '0',
  `0710_0720` int(11) DEFAULT '0',
  `0720_0730` int(11) DEFAULT '0',
  `0730_0740` int(11) DEFAULT '0',
  `0740_0750` int(11) DEFAULT '0',
  `0750_0800` int(11) DEFAULT '0',
  `0800_0810` int(11) DEFAULT '0',
  `0810_0820` int(11) DEFAULT '0',
  `0820_0830` int(11) DEFAULT '0',
  `0830_0840` int(11) DEFAULT '0',
  `0840_0850` int(11) DEFAULT '0',
  `0850_0900` int(11) DEFAULT '0',
  `0900_0910` int(11) DEFAULT '0',
  `0910_0920` int(11) DEFAULT '0',
  `0920_0930` int(11) DEFAULT '0',
  `0930_0940` int(11) DEFAULT '0',
  `0940_0950` int(11) DEFAULT '0',
  `0950_1000` int(11) DEFAULT '0',
  `1000_1010` int(11) DEFAULT '0',
  `1010_1020` int(11) DEFAULT '0',
  `1020_1030` int(11) DEFAULT '0',
  `1030_1040` int(11) DEFAULT '0',
  `1040_1050` int(11) DEFAULT '0',
  `1050_1100` int(11) DEFAULT '0',
  `1100_1110` int(11) DEFAULT '0',
  `1110_1120` int(11) DEFAULT '0',
  `1120_1130` int(11) DEFAULT '0',
  `1130_1140` int(11) DEFAULT '0',
  `1140_1150` int(11) DEFAULT '0',
  `1150_1200` int(11) DEFAULT '0',
  `1200_1210` int(11) DEFAULT '0',
  `1210_1220` int(11) DEFAULT '0',
  `1220_1230` int(11) DEFAULT '0',
  `1230_1240` int(11) DEFAULT '0',
  `1240_1250` int(11) DEFAULT '0',
  `1250_1300` int(11) DEFAULT '0',
  `1300_1310` int(11) DEFAULT '0',
  `1310_1320` int(11) DEFAULT '0',
  `1320_1330` int(11) DEFAULT '0',
  `1330_1340` int(11) DEFAULT '0',
  `1340_1350` int(11) DEFAULT '0',
  `1350_1400` int(11) DEFAULT '0',
  `1400_1410` int(11) DEFAULT '0',
  `1410_1420` int(11) DEFAULT '0',
  `1420_1430` int(11) DEFAULT '0',
  `1430_1440` int(11) DEFAULT '0',
  `1440_1450` int(11) DEFAULT '0',
  `1450_1500` int(11) DEFAULT '0',
  `1500_1510` int(11) DEFAULT '0',
  `1510_1520` int(11) DEFAULT '0',
  `1520_1530` int(11) DEFAULT '0',
  `1530_1540` int(11) DEFAULT '0',
  `1540_1550` int(11) DEFAULT '0',
  `1550_1600` int(11) DEFAULT '0',
  `1600_1610` int(11) DEFAULT '0',
  `1610_1620` int(11) DEFAULT '0',
  `1620_1630` int(11) DEFAULT '0',
  `1630_1640` int(11) DEFAULT '0',
  `1640_1650` int(11) DEFAULT '0',
  `1650_1700` int(11) DEFAULT '0',
  `1700_1710` int(11) DEFAULT '0',
  `1710_1720` int(11) DEFAULT '0',
  `1720_1730` int(11) DEFAULT '0',
  `1730_1740` int(11) DEFAULT '0',
  `1740_1750` int(11) DEFAULT '0',
  `1750_1800` int(11) DEFAULT '0',
  `1800_1810` int(11) DEFAULT '0',
  `1810_1820` int(11) DEFAULT '0',
  `1820_1830` int(11) DEFAULT '0',
  `1830_1840` int(11) DEFAULT '0',
  `1840_1850` int(11) DEFAULT '0',
  `1850_1900` int(11) DEFAULT '0',
  `1900_1910` int(11) DEFAULT '0',
  `1910_1920` int(11) DEFAULT '0',
  `1920_1930` int(11) DEFAULT '0',
  `1930_1940` int(11) DEFAULT '0',
  `1940_1950` int(11) DEFAULT '0',
  `1950_2000` int(11) DEFAULT '0',
  `2000_2010` int(11) DEFAULT '0',
  `2010_2020` int(11) DEFAULT '0',
  `2020_2030` int(11) DEFAULT '0',
  `2030_2040` int(11) DEFAULT '0',
  `2040_2050` int(11) DEFAULT '0',
  `2050_2100` int(11) DEFAULT '0',
  `2100_2110` int(11) DEFAULT '0',
  `2110_2120` int(11) DEFAULT '0',
  `2120_2130` int(11) DEFAULT '0',
  `2130_2140` int(11) DEFAULT '0',
  `2140_2150` int(11) DEFAULT '0',
  `2150_2200` int(11) DEFAULT '0',
  `2200_2210` int(11) DEFAULT '0',
  `2210_2220` int(11) DEFAULT '0',
  `2220_2230` int(11) DEFAULT '0',
  `2230_2240` int(11) DEFAULT '0',
  `2240_2250` int(11) DEFAULT '0',
  `2250_2300` int(11) DEFAULT '0',
  `2300_2310` int(11) DEFAULT '0',
  `2310_2320` int(11) DEFAULT '0',
  `2320_2330` int(11) DEFAULT '0',
  `2330_2340` int(11) DEFAULT '0',
  `2340_2350` int(11) DEFAULT '0',
  `2350_2359` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `policy`
--

DROP TABLE IF EXISTS `policy`;
CREATE TABLE `policy` (
  `id` int(11) NOT NULL,
  `srcip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `dstip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(11) NOT NULL,
  `action` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `runtime_tmp`
--

DROP TABLE IF EXISTS `runtime_tmp`;
CREATE TABLE `runtime_tmp` (
  `packet_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `srcip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `dstip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(5) NOT NULL,
  `service` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) NOT NULL,
  `debug` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `service` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(11) NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `system_constants`
--

DROP TABLE IF EXISTS `system_constants`;
CREATE TABLE `system_constants` (
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `system_constants`
--

INSERT INTO `system_constants` (`name`, `description`, `value`) VALUES
('Ni', '<b>Number of internal nodes</b>\r\nThe number of IP addresses used for the services and servers including the clustered servers. ', 60),
('Nu', '<b>Number of users/clients</b>\r\nThe number of possible client connections (customers/devices) that the system has. External connections to the system are made by users of the services. For instance, for a university system, the population of students and ', 350000),
('Ns', '<b>Number of services</b>\r\nThe number of available services (such as FTP, HTTP, POP, SMTP, etc. ) that the system offers. \r\n', 50),
('t', '<b>Tolerance</b>\r\nratio (%) (Default: %15)\r\n', 10),
('L', 'Threshold score for deny operation defined by the system admin depending on the risk appetite of the organization 0.0 – 1.0', 80);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `traffic`
--

DROP TABLE IF EXISTS `traffic`;
CREATE TABLE `traffic` (
  `log_id` int(11) NOT NULL,
  `srcip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dstip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `log`
--
ALTER TABLE `log`
  ADD UNIQUE KEY `logs-unique` (`log_id`,`date`);

--
-- Tablo için indeksler `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `policy_index` (`srcip`,`dstip`,`port`);

--
-- Tablo için indeksler `runtime_tmp`
--
ALTER TABLE `runtime_tmp`
  ADD PRIMARY KEY (`packet_id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service`,`port`);

--
-- Tablo için indeksler `system_constants`
--
ALTER TABLE `system_constants`
  ADD PRIMARY KEY (`name`);

--
-- Tablo için indeksler `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `traffic-unique` (`srcip`,`dstip`,`port`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `runtime_tmp`
--
ALTER TABLE `runtime_tmp`
  MODIFY `packet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665858;
--
-- Tablo için AUTO_INCREMENT değeri `traffic`
--
ALTER TABLE `traffic`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1289769;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
