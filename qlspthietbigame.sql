-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 04:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlspthietbigame`
--
CREATE DATABASE IF NOT EXISTS `qlspthietbigame` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qlspthietbigame`;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `madh` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `masp` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `dongia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `sdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhgiasp`
--

CREATE TABLE `danhgiasp` (
  `makh` int(11) NOT NULL,
  `masp` varchar(20) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `ngaydanhgia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madh` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngaymua` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `ngaysinh` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sodt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `pass`, `ngaysinh`, `email`, `sodt`) VALUES
(6, 'khang1', '123456', '23/11/1999', 'khang1@gmail.com', '099999999'),
(7, 'khang2', '222222222', '06/06/1996', 'khang2@gmail.com', '09000000000'),
(8, 'huy1', '333333', '22/04/2000', 'huy1@gmail.com', '0988766644'),
(9, 'huy2', '111111', '44/22/4444', 'huy2@gmail.com', '0878787342'),
(10, 'khang123', '666666', '15/05/2003', 'khang123@gmai.com', '09099990099'),
(11, 'tuan1', '1999', '02/09/1999', 'tuan1@gmail.com', '0978766733'),
(12, 'minhhuy123', '999999', '33/55/3324', 'mh@gmail.com', '5233255235');

-- --------------------------------------------------------

--
-- Table structure for table `menusp`
--

CREATE TABLE `menusp` (
  `maloai` varchar(20) NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `hinhloai` varchar(250) NOT NULL,
  `mota` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menusp`
--

INSERT INTO `menusp` (`maloai`, `tenloai`, `hinhloai`, `mota`) VALUES
('loai1', 'Alien', 'alien.png', ''),
('loai10', 'SteelSeries', 'SteelSeries.png', ''),
('loai2', 'Kingston', 'kingston.png', ''),
('loai3', 'msi', 'logomsi.png', ''),
('loai4', 'samsung', 'samsung.png', ''),
('loai5', 'xiaomi', 'xiaomi.png', ''),
('loai6', 'HyperX', 'HyperX.png', ''),
('loai7', 'Logitech', 'Logitech.png', ''),
('loai8', 'Predator', 'Predator.png', ''),
('loai9', 'Sony', 'sony.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(20) NOT NULL,
  `maloai` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `chitietsp` varchar(250) NOT NULL,
  `danhgiasp` varchar(250) NOT NULL,
  `dongiasp` int(11) NOT NULL,
  `hinhsp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `maloai`, `tensp`, `chitietsp`, `danhgiasp`, `dongiasp`, `hinhsp`) VALUES
('Alien', 'loai1', 'CYPER I5 10400F RTX 2060', ' CPU Intel Core I5 10400F 6 nhân 12 luồng\r\nMainboard GIGABYTE H410M H V2 (Chipset H470 - Cao hơn cả B460)\r\n Ram ADATA D50 BLACK RGB 16GB (2x8GB) DDR4 3200Mhz \r\n GIGABYTE 240GB SATA 3\r\n NVIDIA RTX 2060 6GB (Bảo hành 20th)\r\n ANTEC ATOM 550W\r\n Vỏ case X', '', 1300, 'pcCypher.png'),
('Alien2', 'loai1', 'RTX 3070TI', 'Intel Core I5 12400F\r\nMainboard ASROCK B660M-HDV\r\nRam ADATA XPG SPECTRIX D50 16GB (2x8GB) DDR4 3200MHz\r\nGIGABYTE 500GB NVME Gen3x4\r\nNVIDIA RTX 3070TI\r\nANTEC 750W 80Plus Bronze\r\nCase XIGMATEK GAMING 3F', '', 1999, 'rtx3070.jpg'),
('Alien3', 'loai1', 'Steam Deck 256GB', '\"Chi tiết CPU	CPU: Zen 2 4c/8t, 2.4-3.5GHz (lên tới 448 GFlops FP32)\r\nHỗ trợ thẻ nhớ	UHS-I hỗ trợ SD, SDXC và SDHC\r\nHệ điều hành	SteamOS 3.0 (Arch-based)\r\nGPU	GPU: 8 RDNA 2 CUs, 1.0-1.6GHz (lên tới 1.6 TFlops FP32)\r\nBộ nhớ trong	256 GB NVMe SSD (PCIe', '', 9000, 'steamdeck.jpg'),
('HyperX', 'loai6', 'MSI GeForce RTX 3060', '\"HÃNG SẢN XUẤT	MSI\r\nMODEL	GeForce RTX 3060 AERO ITX 12G OC\r\nMEMORY	\r\n12GB GDDR6\r\n\r\nVI XỬ LÝ ĐỒ HỌA	\r\nNVIDIA® GeForce RTX™ 3060\r\n\r\nCHUẨN GIAO TIẾP	\r\nPCI Express® Gen 4\r\n\r\nBUS BỘ NHỚ	\r\n192-bit\r\n\r\nXUNG NHỊP NHÂN ĐỒ HỌA(MHZ)	\r\nBoost:1792 MHz\r\n\r\nXUNG NHỊP', '', 3000, 'Geforce360.jpg'),
('HyperX2', 'loai6', 'Asus ROG STRIX RTX 3070', '\" Nhân đồ họa: Nvidia RTX 3070 Ti\r\n Số nhân Cuda: 6144\r\n Dung lượng VRAM: 8GB GDDR6X\"\r\n', '', 5000, 'Rog3070.jpg'),
('HyperX3', 'loai6', 'Asus TUF RTX 3070', '\" Nhân đồ họa: Nvidia RTX 3070 Ti\r\n Số nhân Cuda: 6144\r\n Dung lượng VRAM: 8GB GDDR6X\"\r\n', '', 3000, 'tuf370.jpg'),
('HyperX4', 'loai6', 'Gigabyte RTX 3060 ', '\"Sản phẩm\r\n\r\nCard đồ họa VGA\r\n\r\nHãng sản xuất\r\n\r\nGIGABYTE\r\n\r\nEngine đồ họa\r\n\r\nNVIDIA® RTX 3060 Ti™\r\n\r\nChuẩn Bus\r\n\r\nPCI Express 4.0\r\n\r\nBộ nhớ\r\n\r\n8GB GDDR6\r\n\r\nMemory Speed\r\n\r\n14 Gbps\r\n\r\nBus bộ nhớ\r\n\r\n256-bit\r\n\r\nEngine Clock\r\n\r\n1755 MHz (Reference card:', '', 3000, 'gigabyte3060.jpg'),
('HyperX5', 'loai6', 'Zotac GTX 1660', '\"GEFORCE GTX 1660 SUPER 6GB \r\nDung lượng bộ nhớ: 6GB GDDR6\r\nBăng thông: 192-bit \r\nKết nối: 3x DisplayPort 1.4, HDMI 2.0b \r\nNguồn yêu cầu: 450W (TDP: 125W)\r\nĐầu nguồn phụ: 1x 8-Pin\"\r\n', '', 5200, 'zotac1660.jpg'),
('Kingston', 'loai2', 'Mini Retro Game 3000 in 1', 'Máy chơi game Mini Retro Game 3000 in 1 là một sản phẩm tổng hợp của các dòng máy Retro thịnh hành vào thời điểm 199x như Game Boy Advance, Game Boy Color, NES, SNES, SEGA MD, Neo Geo, Game Gear, Sega Master System Game Series,... Được tích hợp sẵn đ', '', 8000, 'miniretrogame3000in1.jpg'),
('Kingston2', 'loai2', 'Bàn phím Steelseries APEX Pro', 'Công tắc cơ học có thể điều chỉnh cho độ nhạy tùy chỉnh trên mỗi phím\r\n\r\nPhản ứng nhanh hơn 8 lần, truyền động nhanh hơn 5x và độ bền gấp 2 lần\r\n\r\nMàn hình thông minh OLED cung cấp thông tin trực tiếp từ các trò chơi và ứng dụng\r\n\r\nKê tay có thể tháo', '', 3000, 'apex.jpg\r\n'),
('Kingston3', 'loai2', 'SteelSeries Arctis Nova Pro ', 'ên sản phẩm: SteelSeries Arctis Nova Pro Wireless - New 2023\r\nThương hiệu: SteelSeries\r\nKiểu tai nghe: Over-ear\r\nMàu: Đen\r\nÂm thanh 360 độ: có hỗ trợ\r\nHình thức kết nối: Game DAC Gen 2\r\nKhung tai nghe: Kim loại\r\nCông nghệ Microphone: Khử tiếng ồn hai', '', 3000, 'head.png'),
('Logitech', 'loai7', 'Microsoft Hololens 2', 'THƯƠNG HIỆU	Microsoft\r\nMÀN HÌNH:	Thấu kính: Thấu kính 3 chiều nhìn xuyên thấu\r\n	Độ phân giải: 2K tỉ lệ 3:2\r\n	Tối ưu hóa cho hiển thị không gian 3D\r\nCẢM BIẾN:	Head Tracking: 4 camera theo dõi ngoài\r\n	Eye tracking: 2 camera hồng ngoại\r\n	Tích hợp cảm bi', '', 3000, 'hololens.jpg'),
('Logitech1', 'loai7', ' Oculus Quest 2 ', '\"\r\nWEIGHT	5000 g\r\nTHƯƠNG HIỆU	\r\nOculus\r\n\r\nĐỘ PHÂN GIẢI	\r\n1,832 × 1,920 (mỗi mắt) tổng 3664×1920\r\n\r\nTẦN SỐ QUÉT	\r\n90Hz\r\n\r\nCPU	\r\nSnapdragon XR2\r\n\r\nRAM	\r\n6GB\r\n\r\nTHỜI LƯỢNG PIN	\r\n2–3 tiếng\r\n\r\nCÁC MỨC ĐIỀU CHỈNH IPD	\r\n58mm, 63mm, 68mm\r\n\r\nTRỌNG LƯỢNG HEADS', '', 1100, 'OculusQ2.jpg'),
('Logitech2', 'loai7', 'HTC Vive XR Elite', 'THƯƠNG HIỆU	HTC\r\nĐỘ PHÂN GIẢI	1920*1920 pixels mỗi mắt (3840*1920 pixels tổng 2 mắt)\r\nTRACKING THEO DÕI	6 DoF Inside-out Tracking\r\n	Tracking Inside-out bằng camera tích hợp sẵn trên kính\r\n	Không gian sử dụng tối đa 10m x 10m\r\nTẦN SỐ QUÉT	90 Hz\r\nTRƯỜN', '', 1300, 'htc.jpg\r\n'),
('Logitech3', 'loai7', ' SONY PSVR 2', '\"\r\nTHƯƠNG HIỆU	\r\nSony\r\n\r\nĐỘ PHÂN GIẢI:	\r\n2,000 × 2,040 (4.1MP) mỗi mắt\r\nMàn hình OLED, HDR\r\n\r\nTẦN SỐ QUÉT:	\r\n90Hz, 120Hz\r\n\r\nFOV FIELD-OF-VIEW	\r\n110°\r\n\r\nĐIỀU CHỈNH IPD VẬT LÝ	\r\nCó\r\n\r\nKẾT NỐI VỚI MÁY PS5	\r\nUSB-C\r\n\r\nCHIỀU DÀI CÁP	\r\n4,5m\r\n\r\nTRACKING	\r\nIn', '', 13000, 'psvr2.jpg'),
('Logitech4', 'loai7', 'Pico 4', 'KÍCH THƯỚC:	255 (nhỏ nhất) / 310 (lớn nhất) mm (Chiều dài)\r\n	163mm (Chiều rộng kính)\r\n	83.5mm (Chiều cao của kính)\r\nTRỌNG LƯỢNG:	295g (Không tính strap)\r\n	586g Tổng trọng lượng đầy đủ\r\nHỆ ĐIỀU HÀNH:	Snapdragon Qualcomm XR2\r\n	8-core 64-bit\r\n	2.84 GHz\r', '', 3000, 'pico4.jpg'),
('Logitech5', 'loai7', 'Valve Index VR Kit', '\"Windows 10.\r\n8GB RAM.\r\nNVIDIA GeForce GTX 970+ or AMD RX480+.\r\nCPU tối thiểu 2 nhân.\r\nPhải có cổng DisplayPort và USB 3.0+.\"\r\n', '', 9000, 'valve.jpg'),
('msi', 'loai3', 'Anker SoundBuds Curve', 'Phù hợp lối sống năng động', '', 1100, 'Anker SoundBuds.jpg'),
('msi2', 'loai3', 'vr meta', '\"Snapdragon XR2-Prozessor und 6 GB RAM für reibungslose Leistung\r\nNeue Kontroller für optimale Bewegungsverfolgung\r\nQualitativ hochwertige Grafiken dank einer Auflösung von 1832 x 1920 Pixel pro Auge\r\nSichtfeld 110°\r\nBildwiederholrate von 90 Hz\r\n3D-P', '', 5000, 'vr.jpg'),
('Predator', 'loai8', 'GHẾ GAMING EXTREME ZERO', 'ghế được sản xuất để giúp cho các game thủ có một kiểu ngồi đúng tư thế để không bị các vấn đề về xương khớp.', '', 1100, 'zeroS.jpg'),
('Predator2', 'loai8', 'GHẾ GAMING MASSAGE FUFUTECH', 'ghế được sản xuất để giúp cho các game thủ có một kiểu ngồi đúng tư thế để không bị các vấn đề về xương khớp.', '', 1100, 'ghehong.jpg'),
('Predator3', 'loai8', 'GHẾ GAMING MASSAGE CÓ GÁC CHÂN CAO CẤP 002', '\"Thiết kế đơn giản nhưng cao cấp, tinh tế\r\n- Màu sắc: Đen, hồng, đỏ, trắng, vàng\r\n- Chất liệu: Chân thép\r\n- Được thiết kế kiểu ghế xoay tiện lợi\r\n- Nơi sử dụng: phòng họp, phòng lãnh đạo công ty, phòng hội nghị,…\"\r\n', '', 18000, 'ghegaming2.jpg'),
('Predator4', 'loai8', 'Ghế game E-Dra LUX Draco EGC2029', 'E-Dra Draco EGC2029 là ghế gaming đầu tiên của hãng được ứng dụng công nghệ da Breath PU (da pu với các lỗ thông khí) - đây là vật liệu da PU có độ bện cao nhất và cũng là cho trải nghiệm sử dụng thoải mái, mềm mại, thoáng mát nhất. Qua sử dụng thực ', '', 15000, 'ghegaming.jpg'),
('samsung', 'loai4', 'giá đỡ tay cầm', '\"Giá đỡ tay cầm Resin FDM Call Of Duty là một sản phẩm hoàn hảo cho những game thủ yêu thích game bắn súng Call Of Duty. Với chất liệu từ resin, giá đỡ tay cầm có độ bền cao, không bị trầy xước hay gãy gập trong quá trình sử dụng.\r\n\r\nSản phẩm được là', '', 500, 'giadotaycam.jpg'),
('samsung2', 'loai4', 'case nitendo', 'Giúp bảo vệ máy tay cầm và làm cho máy có thẩm mỹ hơn.\r\n', '', 5800, 'casenitendo.jpg'),
('samsung3', 'loai4', 'nitendo gray', '\"Chi tiết CPU	NVIDIA Custom Tegra processor\r\nHỗ trợ thẻ nhớ tối đa	2TB\r\nGPU	NVIDIA Custom\r\nBộ nhớ trong	32GB\r\nCảm biến	Cảm biến gia tốc, con quay hồi chuyển\"\r\n', '', 5000, 'gray.jpg'),
('Sony', 'loai9', 'nitendo Lite', '\"Chi tiết CPU	NVIDIA Custom Tegra processor\r\nHỗ trợ thẻ nhớ tối đa	2TB\r\nGPU	NVIDIA Custom\r\nBộ nhớ trong	32GB\r\nCảm biến	Cảm biến gia tốc, con quay hồi chuyển\"\r\n', '', 5000, 'nitendoLite.jpg'),
('Sony1', 'loai9', 'nitendo Oled', '\"Chi tiết CPU	NVIDIA Tegra X1, 20nm, Cortex A7 bốn nhân\r\nHỗ trợ thẻ nhớ	Có, dung lượng tối đa 2TB\r\nGPU	NVIDIA Custom\r\nBộ nhớ trong	64GB\r\nCảm biến	Cảm biến gia tốc, con quay hồi chuyển, cảm biến ánh sáng\"\r\n', '', 9000, 'nitendo.jpg'),
('Sony2', 'loai9', 'thùng máy ps4', '\"Mã sản phẩm	CUH-2218B series\r\nChi tiết CPU	x86-64 AMD \"\"Jaguar\"\", 8 nhân\r\nGPU	1.84 TFLOPS, đồ họa nền tảng AMD Radeon\r\nRAM	GDDR5 8GB\r\nBộ nhớ trong	1TB                                  \"\r\n', '', 14000, 'thungmay.jpg'),
('Sony3', 'loai9', 'bộ ps5', '\"CPU: AMD Zen 2 8 nhân 16 luồng, xung nhịp 3.5GHz, Kiến trúc RDNA 2 của AMD, sức mạnh 10.3 TFLOPS, tốc độ 2.23GHz, hỗ trợ Ray-Tracing\r\nRAM: GDDR 16GB\r\n825GB Custom SSD tốc độ đạt 5,5 GB/s\r\nỔ đĩa: Ultra HD Blu-ray (66G/100G) ~10xCAV, BD-ROM (25G/50G) ', '', 20000, 'bomayps5.jpg'),
('Sony4', 'loai9', 'control', 'Tay cầm LiKe New Tay cầm gần như mới 100%, rất đẹp về ngoại hình, mới sử dụng vài lần, phù hợp với khách hàng tiết kiệm tiền thay vì mua Tay cầm mới. (The item is in like-new condition, only used a few times.)', '', 1000, 'taycamhong.jpg'),
('xbox1t', 'loai10', 'Xbox Series X 1T', 'Chi tiết CPU	8X Cores @ 3.8 GHz (3.66 GHz w/SMT) Custom Zen 2 CPU, 7nm Enhanced SoC\r\nGPU	12 TFLOPS, 52 CUs @1.825 GHz Custom AMD RDNA 2 GPU\r\nRAM	16GB GDDR6\r\nBộ nhớ trong	1TB PCle Gen 4 NVME SSD\r\nTính năng mới	Hỗ trợ Ray-Tracing, Variate Rate Shading ', '', 5000, 'xbox1t.jpg'),
('xboxfr', 'loai10', 'Xbox Series S - Fortnite & Rocket League Bundle', '\"Chi tiết CPU	8X Cores @ 3.6 GHz (3.4 GHz w/SMT) Custom Zen 2 CPU, 7nm Enhanced SoC\r\nGPU	4 TFLOPS, 20 CUs @1.565 GHz Custom AMD RDNA 2 GPU\r\nRAM	10GB GDDR6\r\nBộ nhớ trong	512GB Custom NVME SSD\r\nTính năng mới	Hỗ trợ Ray-Tracing, Variate Rate Shading (VR', '', 9000, 'XboxSeriesS-Fortnite&RocketLeagueBundle.jpg'),
('xboxs', 'loai10', 'Xbox Series S 512GB', '\"Chi tiết CPU	8X Cores @ 3.6 GHz (3.4 GHz w/SMT) Custom Zen 2 CPU, 7nm Enhanced SoC\r\nGPU	4 TFLOPS, 20 CUs @1.565 GHz Custom AMD RDNA 2 GPU\r\nRAM	10GB GDDR6\r\nBộ nhớ trong	512GB Custom NVME SSD\r\nTính năng mới	Hỗ trợ Ray-Tracing, Variate Rate Shading (VR', '', 8000, 'XboxSeriesS512GB.jpg'),
('xiaomi', 'loai5', 'Loa Marshall Stanmore', 'giai điệu êm ả. thoải mái nhỏ gọn. có thể mang theo bất cứ đâu.', '', 7300000, 'loaMars.jpg'),
('xiaomi2', 'loai5', 'Loa Beolit 20', 'giai điệu êm ả. thoải mái nhỏ gọn. có thể mang theo bất cứ đâu', '', 18000000, 'loaBeo.jpg'),
('xiaomi3', 'loai5', 'Loa Razer Leviathan V2 Bluetooth Gaming Speaker', '\"Razer Chroma ™ RGB (18 vùng)\r\nTHX Spatial Audio (PC dựa trên Synapse 3)\r\nBluetooth 5.2 (độ trễ thấp 60ms)\r\nĐầu vào âm thanh USB\r\nỨng dụng Razer Audio\r\nỨng dụng Razer Chroma RGB\r\nEQ 10 băng tần tùy chỉnh\r\nNâng chân trên soundbar\r\nChuyển đổi nhanh tai', '', 12000, 'loagaming.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`madh`),
  ADD KEY `fr_ctdhmakh` (`makh`),
  ADD KEY `fr_ctdhmasp` (`masp`);

--
-- Indexes for table `danhgiasp`
--
ALTER TABLE `danhgiasp`
  ADD KEY `fr_danhgiaidkh` (`makh`),
  ADD KEY `fr_danhgiaidsp` (`masp`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD KEY `fr_dhmactdh` (`madh`),
  ADD KEY `fr_dhmakh` (`makh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `menusp`
--
ALTER TABLE `menusp`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fr_sanphamloai` (`maloai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `madh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fr_ctdhmakh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `fr_ctdhmasp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `danhgiasp`
--
ALTER TABLE `danhgiasp`
  ADD CONSTRAINT `fr_danhgiaidkh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `fr_danhgiaidsp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fr_dhmactdh` FOREIGN KEY (`madh`) REFERENCES `chitietdonhang` (`madh`),
  ADD CONSTRAINT `fr_dhmakh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fr_sanphamloai` FOREIGN KEY (`maloai`) REFERENCES `menusp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
