DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_navg`(IN `logid_navg` INT)
    READS SQL DATA
    COMMENT 'Calculates Navg for given Log-id'
SELECT AVG(ITEM_AVG) AS Navg FROM ( SELECT (0000_0010 + 	0010_0020 + 	0020_0030 + 	0030_0040 + 	0040_0050 + 	0050_0100 + 	0100_0110 + 	0110_0120 + 	0120_0130 + 	0130_0140 + 	0140_0150 + 	0150_0200 + 	0200_0210 + 	0210_0220 + 	0220_0230 + 	0230_0240 + 	0240_0250 + 	0250_0300 + 	0300_0310 + 	0310_0320 + 	0320_0330 + 	0330_0340 + 	0340_0350 + 	0350_0400 + 	0400_0410 + 	0410_0420 + 	0420_0430 + 	0430_0440 + 	0440_0450 + 	0450_0500 + 	0500_0510 + 	0510_0520 + 	0520_0530 + 	0530_0540 + 	0540_0550 + 	0550_0600 + 	0600_0610 + 	0610_0620 + 	0620_0630 + 	0630_0640 + 	0640_0650 + 	0650_0700 + 	0700_0710 + 	0710_0720 + 	0720_0730 + 	0730_0740 + 	0740_0750 + 	0750_0800 + 	0800_0810 + 	0810_0820 + 	0820_0830 + 	0830_0840 + 	0840_0850 + 	0850_0900 + 	0900_0910 + 	0910_0920 + 	0920_0930 + 	0930_0940 + 	0940_0950 + 	0950_1000 + 	1000_1010 + 	1010_1020 + 	1020_1030 + 	1030_1040 + 	1040_1050 + 	1050_1100 + 	1100_1110 + 	1110_1120 + 	1120_1130 + 	1130_1140 + 	1140_1150 + 	1150_1200 + 	1200_1210 + 	1210_1220 + 	1220_1230 + 	1230_1240 + 	1240_1250 + 	1250_1300 + 	1300_1310 + 	1310_1320 + 	1320_1330 + 	1330_1340 + 	1340_1350 + 	1350_1400 + 	1400_1410 + 	1410_1420 + 	1420_1430 + 	1430_1440 + 	1440_1450 + 	1450_1500 + 	1500_1510 + 	1510_1520 + 	1520_1530 + 	1530_1540 + 	1540_1550 + 	1550_1600 + 	1600_1610 + 	1610_1620 + 	1620_1630 + 	1630_1640 + 	1640_1650 + 	1650_1700 + 	1700_1710 + 	1710_1720 + 	1720_1730 + 	1730_1740 + 	1740_1750 + 	1750_1800 + 	1800_1810 + 	1810_1820 + 	1820_1830 + 	1830_1840 + 	1840_1850 + 	1850_1900 + 	1900_1910 + 	1910_1920 + 	1920_1930 + 	1930_1940 + 	1940_1950 + 	1950_2000 + 	2000_2010 + 	2010_2020 + 	2020_2030 + 	2030_2040 + 	2040_2050 + 	2050_2100 + 	2100_2110 + 	2110_2120 + 	2120_2130 + 	2130_2140 + 	2140_2150 + 	2150_2200 + 	2200_2210 + 	2210_2220 + 	2220_2230 + 	2230_2240 + 	2240_2250 + 	2250_2300 + 	2300_2310 + 	2310_2320 + 	2320_2330 + 	2330_2340 + 	2340_2350 + 	2350_2359) / 144 AS ITEM_AVG FROM log WHERE log_id= logid_navg )  AS tmp$$
DELIMITER ;