
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'testuser', '81dc9bdb52d04dc20036dbd8313ed055', '0000-00-00 00:00:00', '');


CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2022-01-24 19:17:37', '30-01-2022 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2022-01-24 19:19:32', ''),
(5, 'Furniture', 'test', '2022-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2022-02-20 19:18:52', '');


CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2022-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2022-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2022-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2022-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2022-03-08 19:21:38', 'COD', NULL),
(7, 4, '14', 1, '2023-01-12 17:17:53', 'COD', NULL);


CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2022-12-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2022-12-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2022-12-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2022-12-10 19:50:36');


CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Fahim', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2022-12-10 20:43:57'),
(3, 3, 3, 4, 3, 'Sara', 'Nice Product', 'Value for money', '2022-12-10 20:52:46'),
(4, 3, 3, 4, 3, 'Subah', 'Nice Product', 'Value for money', '2022-12-10 20:59:19');


CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 24990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR4 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2022-11-04 04:26:17', ''),
(13, 4, 6, 'HP Core i5 8th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 8th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 8th Gen )<br></li><li>4 GB DDR4 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2022-11-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 9th Gen', 'Lenovo', 32990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 9th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 9th Gen )<br></li><li>4 GB DDR4 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2022-11-04 04:32:15', ''),
(21, 4, 4, 'Samsung Galaxy F23 5G', 'Samsung', 31000, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Samsung Galaxy F23 5G comes with 6.6 inches Full HD+ TFT LCD screen. It has a waterdrop notch front camera design. The back camera is of triple 50+8+2 with PDAF, ultrawide, dedicated macro camera etc. and Ultra HD video recording. The front camera is of 8 MP. Galaxy F23 5G&nbsp;comes with 5000 mAh battery with 25W fast charging. It has 6 GB RAM, up to 2.2 GHz octa-core CPU and Adreno 619 GPU. It is powered by a Qualcomm Snapdragon 750G 5G (8 nm) chipset. The device comes with 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</span><br>', 'galaxy-a23-5g-1 (2).jpg', 'galaxy-a23-5g-1 (3).jpg', 'Samsung-Galaxy-F23-5G.jpg', 0, 'In Stock', '2023-01-11 15:29:51', NULL),
(22, 4, 4, 'Xiaomi Redmi Note 11S (6/128)', 'Xiaomi', 27999, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Xiaomi Redmi Note 11S comes with 6.43 inches Full HD+ AMOLED screen. It has a center punch-hole design on the front. The display is protected by a 3rd generation Gorilla Glass. The back camera is of quad 108+8+2+2 MP with PDAF, f/1.9 aperture, 118º ultrawide, depth sensor, dedicated macro camera etc. and Full HD video recording. The front camera is of 16 MP. Xiaomi Redmi Note 11S comes with 5000 mAh battery with a 33W Fast Charging. It has 6 or 8 GB RAM, up to 2.05 GHz octa-core CPU and Mali-G57 MC2 GPU. It is powered by a Mediatek Helio G96 (12 nm)&nbsp;chipset. The phone comes with 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</span><br>', '51YxFQpw+QL._AC_SX679_.jpg', 'mimg03.jpg', 'Xiaomi-Redmi-Note-11S.jpg', 0, 'In Stock', '2023-01-11 15:49:44', NULL),
(23, 4, 4, 'Xiaomi Mi 11X 5G', 'Xiaomi', 34999, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Xiaomi Mi 11X 5G comes with&nbsp;6.67 inches Full HD+ Super AMOLED screen. It has a&nbsp;Full-View punch-hole design. Both front and backside are protected by 5th generation Gorilla Glasses. The&nbsp;back camera is of triple 48+8+5 MP&nbsp;with PDAF, LED flash, ultrawide, dedicated macro camera, etc. and 4K video recording. The&nbsp;front camera is of 20 MP. Mi 11X comes with&nbsp;4520 mAh battery with 33W fast charging. It has 6 or 8 GB RAM, up to 3.2 GHz octa-core CPU and Adreno 650 GPU. It is powered by&nbsp;a Qualcomm Snapdragon 870 5G (7 nm)&nbsp;chipset. The device comes in 128 GB UFS 3.1 internal storage and no external Memory Card slot. There is aside-mounted&nbsp;fingerprint sensor&nbsp;in this phone.</span><br>', 'Xiaomi-Mi-11X.jpg', 'BDD3D6D2-CBE8-F316-4383-CD6DBD4FD2C9.png', 'Xiaomi-Mi-11X-image.jpg', 0, 'In Stock', '2023-01-11 15:53:45', NULL),
(24, 4, 4, 'OnePlus 8T (8/128)', 'OnePlus', 49990, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">OnePlus 8T&nbsp;comes with&nbsp;6.55 inches Full HD+ Fluid AMOLED screen. It has&nbsp;a left punch-hole front camera design. The&nbsp;back camera is of quad 48+16+5+2 MP&nbsp;with PDAF, OIS, ultrawide, dedicated macro camera, monochrome, dual-LED flash etc. and Ultra HD video recording. The&nbsp;front camera is of 16 Megapixel. OnePlus 8T comes with&nbsp;4500 mAh battery with 65W fast charging. It has&nbsp;8 GB RAM, up to 2.84 GHz octa-core CPU and Adreno 650 GPU. It is powered by&nbsp;Qualcomm Snapdragon 865 (7nm+)&nbsp;chipset. The device comes with 128 GB internal storage and no MicroSD slot. There is an optical in-display&nbsp;fingerprint sensor&nbsp;in this phone.</span><br>', '8t-green.png', '138581-v4-oneplus-8t-mobile-phone-large-2.jpg', 'OnePlus-8T.jpg', 0, 'In Stock', '2023-01-11 16:05:32', NULL),
(25, 4, 4, 'OnePlus Nord 2 5G', 'OnePlus', 38999, 40000, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">OnePlus Nord&nbsp;2 5G comes with&nbsp;6.43 inches Full HD+ Fluid AMOLED screen. It has&nbsp;a left punch-hole front camera design. The&nbsp;back camera is of triple 50+8+2 MP&nbsp;with PDAF, OIS, ultrawide, monochrome, dual-LED flash etc. and Ultra HD video recording. The&nbsp;front camera is of 32 Megapixel. OnePlus Nord 2 5G comes with&nbsp;4500 mAh battery with 65W fast charging. It has&nbsp;8 or 12 GB RAM, up to 3.0 GHz octa-core CPU and Mali-G77 MC9 GPU. It is powered by&nbsp;a MediaTek Dimensity 1200 5G (6 nm)&nbsp;chipset. The device comes with 128 or 256 GB internal storage and no MicroSD slot. There is an optical in-display&nbsp;fingerprint sensor&nbsp;in this phone.</span><br>', 'OnePlus-Nord-2-5G-image.jpg', 'gray-3-d48255.jpg', 'Nord-2-5G-3-800x800.png', 0, 'In Stock', '2023-01-11 16:09:33', NULL),
(26, 4, 4, 'Realme Narzo 50', 'Realme', 16999, 17999, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Realme Narzo 50 comes with 6.6 inches Full HD+ IPS LCD screen. It has a Full-View left punch-hole design. The back camera is of triple 50+2+2 MP with PDAF, f/1.8 aperture, LED flash, macro, depth sensor etc. and Full HD video recording. The front camera is of 16 MP. Realme Narzo 50 comes with 5000 mAh battery with 33W fast charging. It has 4 or 6 GB RAM, up to 2.05 GHz octa-core CPU and Mali-G57 MC2 GPU. It is powered by a 12 nm MediaTek Helio G96 chipset. The device comes with 64 or 128 GB fast UFS 2.1 internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</span><br>', 'Realme-Narzo-50-Speed-Blue-Price-in-Bangladesh-800x800.jpeg', 'Realme-Narzo-50.jpg', 'Realme-Narzo-50-800x800.jpg', 0, 'Out of Stock', '2023-01-11 16:14:59', NULL),
(27, 4, 4, 'Realme GT Master Edition', 'Realme', 35000, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Realme GT Master Edition comes with 6.43 inches Full HD+ Super AMOLED screen. It has a Full-View left punch-hole design. The back camera is of triple 64+8+2 MP with PDAF, LED flash, dedicated macro camera, ultrawide lens etc. and 4K video recording. The front camera is of 32 MP. Realme GT Master comes with 4300 mAh battery with 65W Fast Charging. It has 8 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 642L GPU. It is powered by a Qualcomm Snapdragon 778G 5G (6 nm)&nbsp;chipset. The device comes with 128 GB internal storage and no MicroSD slot. There is a in-display fingerprint sensor in this phone.</span><br>', 'Realme-GT-Master-Edition-7.png', 'Realme-GT-Master-Edition-image.jpg', 'Realme_GT_Master_8GB_128GB_brothers_electronics_02-800x800.png', 0, 'In Stock', '2023-01-11 16:20:09', NULL),
(28, 4, 4, 'Nokia 6.2', 'Nokia', 18999, 20999, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Nokia 6.2 comes with 6.3 inches Full HD+ screen. It has a a Full-View waterdrop-notch design. Both front and back sides are protected by 3rd generation Gorilla Glasses. The back camera is of triple 16+8+5 MP with PDAF, ultrawide, depth sensor etc. and 4K video recording. The front camera is of 8 MP. Nokia 6.2&nbsp;comes with 3500 mAh battery with 10W fast charing. It has 3 or 4 GB RAM, 1.8 GHz octa-core CPU and Adreno 509 GPU. It is powered by Qualcomm Snapdragon 636 (14 nm) chipset. The device comes with 32 or 64 GB internal storage and dedicated MicroSD slot. There is a back-mounted fingerprint sensor in this phone.</span><br>', 'Nokia-6.2-Ice.jpg', 'nokia-6_2-ice-back-int.png', 'Nokia-6.2-new.jpg', 0, 'In Stock', '2023-01-11 16:24:14', NULL),
(29, 4, 4, 'Oppo F21s Pro', 'Oppo', 29990, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Oppo F21s Pro comes with&nbsp;6.43 inches Full HD+ AMOLED screen. It has a&nbsp;left punch-hole front camera design. The&nbsp;back camera is of triple 64+2+2 MP&nbsp;with PDAF, LED flash, f/1.7 aperture, microscope, depth sensor, etc. features and Full HD video recording option. The&nbsp;front camera is of 32 MP. Oppo F21s Pro comes with&nbsp;4500 mAh battery with 33W fast charging. It has&nbsp;8 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 610 GPU. It is powered by&nbsp;a Qualcomm Snapdragon 680 4G (6 nm) chipset. The device comes with 128 GB internal storage and dedicated MicroSD slot. There is&nbsp;an optical in-display&nbsp;fingerprint sensor&nbsp;in this phone.</span><br>', 'reno8-dawnlight-gold-427_600.png', 'oppo-f21s-pro-dawnlight-gold.jpg-1_1.jpg', 'Oppo-F21-Pro.jpg', 0, 'In Stock', '2023-01-11 17:16:08', NULL),
(30, 4, 4, 'Oppo Reno 6', 'Oppo', 30999, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Oppo Reno6&nbsp;comes with&nbsp;6.4 inches Full HD+ AMOLED screen. It has a&nbsp;left punch-hole front camera design. The&nbsp;back camera is of Quad 64+8+2+2 MP&nbsp;with PDAF, LED flash, ultrawide, depth sensor, dedicated macro camera etc. features and Ultra HD video recording option. The&nbsp;front camera is of 44 MP. Oppo Reno6 comes with&nbsp;4310 mAh battery with 50W VOOC 4.0 fast charging. It has&nbsp;8 GB RAM, up to 2.3 GHz octa-core CPU and Adreno 618 GPU. It is powered by&nbsp;a Qualcomm Snapdragon 720G (8 nm)&nbsp;chipset. The device comes with 128 GB internal storage and dedicated MicroSD slot. There is&nbsp;an in-display optical&nbsp;fingerprint sensor&nbsp;in this phone.</span><br>', 'Oppo-Reno-6-Pro.jpg', 'reno6-pdp-design-glow-sm-320.jpg', 'reno6-pdp-design-aurora-sm-320.jpg', 0, 'In Stock', '2023-01-11 17:19:57', NULL),
(31, 4, 4, 'Vivo V25e', 'Vivo', 31999, 34999, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Vivo V25e comes with 6.44 inches Full HD+ AMOLED screen. It has a waterdrop notch front camera design. The back camera is of triple 64+2+2 MP with PDAF, OIS, depth sensor, macro lens, dual-LED flash etc. and Full HD video recording. The front camera is of 32 MP. Vivo V25e comes with 4500 mAh battery with 44W Fast Charging. It has 8 GB RAM, up to 2.2 GHz octa-core CPU and Mali-G57 MC2 GPU. It is powered by a MediaTek Helio G99 (6 nm)&nbsp;chipset. The device comes with 128 GB internal storage and shared MicroSD slot. There is an in-display (optical) fingerprint sensor in this phone.</span><br>', 'vivo-v25e-1.jpg', '20221006_1665040260_374060.jpeg', 'vivo-V25e-APS-600x600.jpg', 0, 'In Stock', '2023-01-11 17:24:08', NULL),
(32, 4, 4, 'Apple iPhone 13 Pro (128GB)', 'Apple', 147999, 0, '<span style=\"color: rgb(44, 47, 52); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\">Apple iPhone 13 Pro comes with a 6.1 inches Super Retina XDR OLED Full HD+ screen. It has a Apple iPhone notch design. The back camera is of quad 12+12+12 Megapixel + TOF 3D LiDAR scanner with powerful image processing capability and 4K video recording. The front one is of Dual 12 MP and SL 3D camera. Apple iPhone 13 Pro comes with 3095 mAh battery with 23W fast charging solution. It has 6 GB RAM, up to 3.22 GHz Hexa-core CPU and Apple GPU. It is powered by a 5 nm Apple A15&nbsp;Bionic chipset. The device comes with 128, 256, 512 GB or 1 TB internal storage.</span><br>', 'Apple-iPhone-13-Pro-Sierra-Blue-500x500.jpg', 'Apple_iPhone-13-Pro_iPhone-13-Pro-Max_09142021_inline.jpg.large.jpg', 'Alpine-Green-1998.jpg', 0, 'In Stock', '2023-01-11 17:39:43', NULL),
(33, 4, 5, 'Nillkin Samsung Galaxy S22 Ultra CamShield Pro Case', 'Nillkin', 790, 990, '<p style=\"box-sizing: border-box; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Hind, Arial, Helvetica, sans-serif; font-size: 14px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Features:</span></p><ul style=\"box-sizing: border-box; margin-bottom: var(--list-mb); margin-left: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Hind, Arial, Helvetica, sans-serif; font-size: 14px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px;\"><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">CamShield Pro case combines with classic, fashion and protective elements.</li><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Slide cover protects phone camera from scratch, and protects your privacy.</li><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Made of environmentally friendly PC and TPU material, which is tough and wear-resistant.</li><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Processed by advanced technology. Good touch feeling.</li><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Anti fingerprint and oil stain. One-piece molding, completely fits your device. Provides reliable protection.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Impact resistant airbags on four corners. All around coverage.</li></ul>', 'nillkin-samsung-galaxy-s22-ultra-camshield-pro-case-1.jpg', 'nillkin-samsung-galaxy-s22-ultra-camshield-pro-case-2.jpg', 'nillkin-samsung-galaxy-s22-ultra-camshield-pro-case-3.jpg', 0, 'In Stock', '2023-01-11 17:46:30', NULL),
(34, 4, 5, 'Anker 535 Power Bank PD 30W (PowerCore 20K)', 'Anker', 5090, 0, '<h5 style=\"box-sizing: border-box; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-family: Hind, Arial, Helvetica, sans-serif; font-size: 16px; color: var(--wd-title-color);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Features:</span></h5><ul style=\"box-sizing: border-box; margin-bottom: var(--list-mb); margin-left: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Hind, Arial, Helvetica, sans-serif; font-size: 14px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px;\"><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">One Power Bank, All Devices: Charge a laptop* with 30W max output, a tablet, or an iPhone with zero hassle.</li><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Colossal Cell Capacity: Equipped with a massive 20,000mAh capacity to charge an iPhone 13 up to 4 times and an iPad Pro 12.9? (2021) 1.5 times.</li><li style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">High-Speed Charging: Power up your phone 3× faster than an original 5W. A full recharge of the power bank takes less than 4 hours via a 30W high-speed charger. Charge an iPhone 13 to 50% in just 30 minutes.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;\">Superior Protection: Equipped with long-lasting premium batteries, MultiProtect safety system, and intelligent temperature monitoring, the power bank is protected against overheating and many more features to keep you and your devices safe.</li></ul>', 'ezgif-1-da92a29db5.jpg', 'anker-535-power-bank-pd-30w-powercore-20k-1.webp', 'A1366011-TD03-V1.webp', 0, 'In Stock', '2023-01-11 18:00:57', NULL),
(35, 4, 2, 'Sony Bravia KD-75X85K 75 Inch 4K Ultra HD Smart LED Android TV', 'Sony', 245000, 0, '<ul><li><b style=\"font-size: 15px;\"><font face=\"helvetica\">Model: Bravia KD-75X85K</font></b></li><li><b style=\"font-size: 15px;\"><font face=\"helvetica\">Display: 75\" 4K UHD (3840 x 2160)</font></b></li><li><b style=\"font-size: 15px;\"><font face=\"helvetica\">Google Assistant with Alexa Compatibility</font></b></li><li><b style=\"font-size: 15px;\"><font face=\"helvetica\">Built-In Wi-Fi &amp; Ethernet Connectivity</font></b></li><li><b style=\"font-size: 15px;\"><font face=\"helvetica\">Dolby Audio Support</font></b></li></ul>', 'bravia-kd-75x85k-01-500x500.webp', 'bravia-kd-75x85k-02-500x500.webp', 'bravia-kd-75x85k-03-500x500.webp', 0, 'In Stock', '2023-01-11 18:07:15', NULL),
(36, 4, 2, 'OnePlus 32 Y1 Y Series 32-Inch HD Smart Android LED Television', 'OnePlus', 23500, 0, '<ul><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Model: Y1</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Display Size (inches, visible size): 32 inches</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Resolution: 1366 × 768 pixel</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">RAM: 1GB, ROM: 8GB</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Dolby Digital: Dolby Audio</span></li></ul>', 'Y1G-02-500x500.webp', 'Y1G-1-500x500.webp', 'Y1G-03-500x500.webp', 0, 'In Stock', '2023-01-11 18:11:35', NULL),
(37, 4, 2, 'Xiaomi Mi A2 L32M7-EAUKR 32-Inch Smart Android HD LED TV ', 'Xiaomi', 24000, 26500, '<ul><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Key Features</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">MPN: L32M7-EAUKR</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Model: Mi A2 L32M7-EAUKR</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Resolution: 32\" HD (1,366 x 768)</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Processor: CPU: CA55 × 4, GPU: Mali G31 MP2</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">RAM: 1.5GB, Storage: 8GB</span></li><li><span style=\"font-family: helvetica; color: rgb(0, 0, 0); font-size: 15px;\">Supports Dolby Audio, DTS-X, and DTS, Virtual:X Sound</span></li></ul>', 'mi-a2-l32m7-eaukr-02-500x500.jpg', 'mi-a2-l32m7-eaukr-01-500x500.jpg', 'mi-a2-l32m7-eaukr-03-500x500.jpg', 0, 'In Stock', '2023-01-11 18:14:32', NULL),
(38, 4, 7, 'HP 280 Pro G9 Core i3 12th Gen Tower Brand PC', 'HP', 65000, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 15px;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\"><font face=\"helvetica\">Model: 280 Pro G9</font></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\"><font face=\"helvetica\">Processor: Intel Core i3-12100 (12M Cache, 3.30 GHz to 4.30 GHz)</font></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\"><font face=\"helvetica\">Memory: 8GB DDR4 RAM</font></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\"><font face=\"helvetica\">Storage: 1TB 7200 rpm SATA HDD</font></li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; display: block;\"><font face=\"helvetica\">HP P204v 19.5 Inch HD LED Monitor</font></li></ul>', '280-pro-g9-01-500x500.webp', '280-pro-g9-03-500x500.webp', '280-pro-g9-04-500x500.webp', 0, 'In Stock', '2023-01-11 18:17:35', NULL),
(39, 6, 12, 'Under Armour mens Charged Assert 9 Running Shoe, Black (003 Black, 10.5 US)', 'Under Armour', 6590, 0, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Made in the USA or Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Rubber sole</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Lightweight mesh upper with 3-color digital print delivers complete breathability</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Durable leather overlays for stability &amp; that locks in your midfoot</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">EVA sockliner provides soft, step-in comfort</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Charged Cushioning midsole uses compression molded foam for ultimate responsiveness &amp; durability</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; overflow-wrap: break-word; display: block;\">Solid rubber outsole covers high impact zones for greater durability with less weight</span></li></ul>', '51Hto8f8pgL._AC_UY575_.jpg', '41YCefsDCSL._AC_UY575_.jpg', '61JmUsfpjwL._AC_UY575_.jpg', 0, 'In Stock', '2023-01-11 18:25:32', NULL);



CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2022-12-26 16:24:52', '26-12-2022 11:03:40 PM'),
(3, 4, 'Television', '2022-12-26 16:29:09', ''),
(4, 4, 'Mobiles', '2022-12-26 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2022-12-26 04:12:40', ''),
(6, 4, 'Laptops', '2022-12-26 04:13:00', ''),
(7, 4, 'Computers', '2022-12-26 04:13:27', ''),
(8, 3, 'Comics', '2022-12-26 04:13:54', ''),
(9, 5, 'Beds', '2022-12-26 04:36:45', ''),
(10, 5, 'Sofas', '2022-12-26 04:37:02', ''),
(11, 5, 'Dining Tables', '2022-12-26 04:37:51', ''),
(12, 6, 'Men Footwears', '2022-12-25 20:12:59', '');


CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2022-12-26 09:30:40', '', 1),
(24, 'fahim@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-12 17:17:24', NULL, 1),
(25, 'fahim@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-12 17:39:21', '12-01-2023 11:09:35 PM', 1);


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2022-12-26 09:30:32', ''),
(4, 'Fahim Zaman', 'fahim@gmail.com', 1818777777, '81dc9bdb52d04dc20036dbd8313ed055', 'Ngonj', 'Ngonj', 'Ngonj', 123, 'Narayanganj', 'Ngonj', 'Ngonj', 123, '2023-01-12 17:16:45', NULL);



CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2022-12-25 18:53:17');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

-
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

-
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
