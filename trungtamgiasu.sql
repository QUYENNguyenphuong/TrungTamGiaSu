-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2018 lúc 08:08 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trungtamgiasu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ki_mon`
--

CREATE TABLE `dang_ki_mon` (
  `ma_dang_ki` varchar(20) NOT NULL,
  `ma_mon_hoc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dang_ki_mon`
--

INSERT INTO `dang_ki_mon` (`ma_dang_ki`, `ma_mon_hoc`) VALUES
('35101', 'MH01'),
('35101', 'MH02'),
('35101', 'MH03'),
('35102     ', 'MH15'),
('35103', 'MH05'),
('35103', 'MH15'),
('35104     ', 'MH03'),
('35104     ', 'MH05'),
('35105', 'MH02'),
('35106     ', 'MH06'),
('35107     ', 'MH13'),
('35108     ', 'MH11'),
('35109     ', 'MH01'),
('35109     ', 'MH02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_day`
--

CREATE TABLE `dang_ky_day` (
  `ma_mon_hoc` varchar(20) NOT NULL,
  `ma_gs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_day`
--

INSERT INTO `dang_ky_day` (`ma_mon_hoc`, `ma_gs`) VALUES
('MH01', 'GS01'),
('MH01', 'GS07'),
('MH02', 'GS01'),
('MH02', 'GS07'),
('MH03', 'GS01'),
('MH03', 'GS07'),
('MH04', 'GS01'),
('MH04', 'GS08'),
('MH05', 'GS03'),
('MH05', 'GS10'),
('MH06', 'GS02'),
('MH06', 'GS04'),
('MH06', 'GS08'),
('MH07', 'GS02'),
('MH07', 'GS04'),
('MH08', 'GS02'),
('MH08', 'GS04'),
('MH08', 'GS08'),
('MH09', 'GS05'),
('MH09', 'GS09'),
('MH10', 'GS05'),
('MH11', 'GS02'),
('MH12', 'GS06'),
('MH12', 'GS10'),
('MH13', 'GS06'),
('MH14', 'GS03'),
('MH14', 'GS10'),
('MH15', 'GS02'),
('MH15', 'GS05'),
('MH15', 'GS09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dk_tim_gs`
--

CREATE TABLE `dk_tim_gs` (
  `ma_dang_ki` varchar(20) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `sdt` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `so_luong` int(10) NOT NULL,
  `ma_lop` varchar(20) NOT NULL,
  `hoc_luc` varchar(100) NOT NULL,
  `yeu_cau_khac` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dk_tim_gs`
--

INSERT INTO `dk_tim_gs` (`ma_dang_ki`, `ho_ten`, `dia_chi`, `sdt`, `email`, `so_luong`, `ma_lop`, `hoc_luc`, `yeu_cau_khac`) VALUES
('35101', 'Huỳnh Như', 'Quận 2', 1229696555, 'Huynhnhu555@gmail.com', 2, 'L07', 'Trung Bình', 'Không'),
('35102     ', 'Lê Thạch Anh', 'Quận Tân Bình', 1618257333, 'Leloi333@gmail.com', 1, 'L02', 'Khá', 'Không'),
('35103', 'Nguyễn Yến Vy', 'Quận 6', 1266883846, 'YenVy846@gmail.com', 2, 'L04', 'Khá', 'Không'),
('35104     ', 'Trương Như Ý', 'Quận Bình Tân', 1234567899, 'NhuY7899@gmail.com', 1, 'L12', 'Trung Bình', 'Không'),
('35105', 'Lý Băng Băng', 'Quận 1', 163458474, 'BangBang477@gmail.com', 1, 'L11', 'Yếu ', 'Không'),
('35106     ', 'Nguyễn Văn Tiến', 'Quận 5', 1245789893, 'VanTien893@gmail.com', 1, 'L10', 'Khá', 'Không'),
('35107     ', 'Nguyễn Thị Đào', 'Quận Tân Phú', 1698424466, 'ThiDao466@gmail.com', 2, 'L03', 'GIỏi', 'Không'),
('35108     ', 'Phan Ngọc Hân', 'Quận 11', 1264865548, 'NgocHan548@gmail.com', 2, 'L05', 'Khá', 'Không'),
('35109     ', 'Bùi Thuý Phượng', 'Quận 3', 1645789975, 'ThuyPhuong975@gmail.com', 1, 'L13', 'Trung Bình', 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gs_khu_vuc_day`
--

CREATE TABLE `gs_khu_vuc_day` (
  `ma_gs` varchar(20) NOT NULL,
  `ma_khu_vuc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gs_khu_vuc_day`
--

INSERT INTO `gs_khu_vuc_day` (`ma_gs`, `ma_khu_vuc`) VALUES
('GS01', 'KV01'),
('GS01', 'KV03'),
('GS01', 'KV05'),
('GS02', 'KV01'),
('GS02', 'KV03'),
('GS02', 'KV10'),
('GS03', 'KV05'),
('GS03', 'KV06'),
('GS03', 'KV11'),
('GS04', 'KV05'),
('GS04', 'KV06'),
('GS04', 'KV11'),
('GS05', 'KV16'),
('GS05', 'KV17'),
('GS06', 'KV16'),
('GS06', 'KV17'),
('GS06', 'KV19'),
('GS07', 'KV06'),
('GS07', 'KV10'),
('GS07', 'KV11'),
('GS08', 'KV17'),
('GS08', 'KV19'),
('GS09', 'KV05'),
('GS09', 'KV08'),
('GS09', 'KV22'),
('GS10', 'KV10'),
('GS10', 'KV11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gs_lop`
--

CREATE TABLE `gs_lop` (
  `ma_gs` varchar(20) NOT NULL,
  `ma_lop` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gs_lop`
--

INSERT INTO `gs_lop` (`ma_gs`, `ma_lop`) VALUES
('GS01', 'L01'),
('GS01', 'L02'),
('GS01', 'L03'),
('GS01', 'L04'),
('GS01', 'L05'),
('GS02', 'L06'),
('GS02', 'L07'),
('GS02', 'L08'),
('GS02', 'L09'),
('GS03', 'L10'),
('GS03', 'L11'),
('GS03', 'L12'),
('GS03', 'L13'),
('GS04', 'L13'),
('GS04', 'L14'),
('GS04', 'L15'),
('GS05', 'L05'),
('GS05', 'L06'),
('GS05', 'L07'),
('GS05', 'L08'),
('GS05', 'L09'),
('GS06', 'L10'),
('GS06', 'L11'),
('GS06', 'L12'),
('GS06', 'L13'),
('GS07', 'L01'),
('GS07', 'L02'),
('GS07', 'L03'),
('GS07', 'L04'),
('GS07', 'L05'),
('GS08', 'L13'),
('GS08', 'L14'),
('GS08', 'L15'),
('GS09', 'L06'),
('GS09', 'L07'),
('GS09', 'L08'),
('GS09', 'L09'),
('GS10', 'L11'),
('GS10', 'L12'),
('GS10', 'L13'),
('GS10', 'L14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id_hinh` int(20) NOT NULL,
  `ten_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`id_hinh`, `ten_img`) VALUES
(1, 'images/HinhGS/1.jpg'),
(2, 'images/HinhGS/2.jpg'),
(3, 'images/HinhGS/3.jpg'),
(4, 'images/HinhGS/4.jpg'),
(5, 'images/HinhGS/5.jpg'),
(6, 'images/HinhGS/6.jpg'),
(7, 'images/HinhGS/7.jpg'),
(8, 'images/HinhGS/8.jpg'),
(9, 'images/HinhGS/9.jpg'),
(10, 'images/HinhGS/10.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khu_vuc_day`
--

CREATE TABLE `khu_vuc_day` (
  `ma_khu_vuc` varchar(20) NOT NULL,
  `ten_quan_huyen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khu_vuc_day`
--

INSERT INTO `khu_vuc_day` (`ma_khu_vuc`, `ten_quan_huyen`) VALUES
('KV01', 'Quận 1'),
('KV02', 'Quận 2'),
('KV03', 'Quận 3'),
('KV04', 'Quận 4'),
('KV05', 'Quận 5'),
('KV06', 'Quận 6'),
('KV07', 'Quận 7'),
('KV08', 'Quận 8'),
('KV09', 'Quận 9'),
('KV10', 'Quận 10'),
('KV11', 'Quận 11'),
('KV12', 'Quận 12'),
('KV13', 'Thủ Đức'),
('KV14', 'Gò Vấp'),
('KV15', 'Bình Thạnh'),
('KV16', 'Tân Bình'),
('KV17', 'Tân Phú'),
('KV18', 'Phú Nhuận'),
('KV19', 'Bình Tân'),
('KV20', 'Củ Chi'),
('KV21', 'Hóc Môn'),
('KV22', 'Bình Chánh'),
('KV23', 'Nhà Bè'),
('KV24', 'Cần Giờ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop_day`
--

CREATE TABLE `lop_day` (
  `ma_lop` varchar(20) NOT NULL,
  `ten_lop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lop_day`
--

INSERT INTO `lop_day` (`ma_lop`, `ten_lop`) VALUES
('L01', 'Lớp 1'),
('L02', 'Lớp 2'),
('L03', 'Lớp 3'),
('L04', 'Lớp 4'),
('L05', 'Lớp 5'),
('L06', 'Lớp 6'),
('L07', 'Lớp 7'),
('L08', 'Lớp 8'),
('L09', 'Lớp 9'),
('L10', 'Lớp 10'),
('L11', 'Lớp 11'),
('L12', 'Lớp 12'),
('L13', 'Lớp ôn thi đại học'),
('L14', 'Lớp Ngoại Ngữ'),
('L15', 'Lớp Năng Khiếu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `ma_mon_hoc` varchar(20) NOT NULL,
  `ten_mon_hoc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mon_hoc`
--

INSERT INTO `mon_hoc` (`ma_mon_hoc`, `ten_mon_hoc`) VALUES
('MH01', 'Toán'),
('MH02', 'Lý'),
('MH03', 'Hóa'),
('MH04', 'Ngữ Văn'),
('MH05', 'Anh Văn'),
('MH06', 'Sinh'),
('MH07', 'Sử'),
('MH08', 'Địa'),
('MH09', 'Tin Học '),
('MH10', 'Mỹ Thuật'),
('MH11', 'Tiếng Việt'),
('MH12', 'Tiếng Nhật'),
('MH13', 'Tiếng Hàn'),
('MH14', 'Tiếng Trung'),
('MH15', 'Báo Bài');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan_gs`
--

CREATE TABLE `tai_khoan_gs` (
  `ma_tai_khoan` varchar(20) NOT NULL,
  `ten_tai_khoan` varchar(100) NOT NULL,
  `mat_khau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan_gs`
--

INSERT INTO `tai_khoan_gs` (`ma_tai_khoan`, `ten_tai_khoan`, `mat_khau`) VALUES
('TK01', 'XuanMai', '123456'),
('TK02', 'KieuOanh', '123456'),
('TK03', 'MaiThanh', '123456'),
('TK04', 'ChiViet', '123456'),
('TK05', 'LanAnh', '123456'),
('TK06', 'HoaiVan', '123456'),
('TK07', 'NgocTien', '123456'),
('TK08', 'DucCuong', '123456'),
('TK09', 'MinhTai', '123456'),
('TK10', 'LeHuy', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoi_gian`
--

CREATE TABLE `thoi_gian` (
  `ma_thoi_gian` varchar(20) NOT NULL,
  `thoi_gian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thoi_gian`
--

INSERT INTO `thoi_gian` (`ma_thoi_gian`, `thoi_gian`) VALUES
('C2', 'Chiều-Thứ2'),
('C3', 'Chiều-Thứ3'),
('C4', 'Chiều-Thứ4'),
('C5', 'Chiều-Thứ5'),
('C6', 'Chiều-Thứ6'),
('C7', 'Chiều-Thứ7'),
('C8', 'Chiều-ChủNhật'),
('S2', 'Sáng-Thứ2'),
('S3', 'Sáng-Thứ3'),
('S4', 'Sáng-Thứ4'),
('S5', 'Sáng-Thứ5'),
('S6', 'Sáng-Thứ6'),
('S7', 'Sáng-Thứ7'),
('S8', 'Sáng-ChủNhật'),
('T2', 'Tối-Thứ2'),
('T3', 'Tối-Thứ3'),
('T4', 'Tối-Thứ4'),
('T5', 'Tối-Thứ5'),
('T6', 'Tối-Thứ6'),
('T7', 'Tối-Thứ7'),
('T8', 'Tối-ChủNhật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoi_gian_day`
--

CREATE TABLE `thoi_gian_day` (
  `ma_gia_su` varchar(20) NOT NULL,
  `ma_thoi_gian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thoi_gian_day`
--

INSERT INTO `thoi_gian_day` (`ma_gia_su`, `ma_thoi_gian`) VALUES
('GS01', 'C2'),
('GS09', 'C2'),
('GS09', 'C3'),
('GS01', 'C4'),
('GS01', 'C6'),
('GS02', 'C7'),
('GS10', 'C7'),
('GS02', 'C8'),
('GS10', 'C8'),
('GS03', 'S2'),
('GS08', 'S2'),
('GS04', 'S3'),
('GS03', 'S4'),
('GS08', 'S4'),
('GS04', 'S5'),
('GS03', 'S6'),
('GS08', 'S6'),
('GS04', 'S7'),
('GS04', 'S8'),
('GS10', 'S8'),
('GS05', 'T2'),
('GS07', 'T2'),
('GS05', 'T4'),
('GS07', 'T4'),
('GS05', 'T6'),
('GS07', 'T6'),
('GS06', 'T7'),
('GS10', 'T7'),
('GS06', 'T8'),
('GS10', 'T8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoi_gian_hoc`
--

CREATE TABLE `thoi_gian_hoc` (
  `ma_thoi_gian` varchar(20) NOT NULL,
  `ma_dang_ki` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thoi_gian_hoc`
--

INSERT INTO `thoi_gian_hoc` (`ma_thoi_gian`, `ma_dang_ki`) VALUES
('C3', '35101'),
('C3', '35108     '),
('C5', '35101'),
('C5', '35108     '),
('C7', '35101'),
('C8', '35105'),
('S7', '35102     '),
('S8', '35102     '),
('T2', '35103'),
('T2', '35106     '),
('T3', '35104     '),
('T3', '35109     '),
('T4', '35103'),
('T4', '35106     '),
('T5', '35104     '),
('T6', '35103'),
('T7', '35104     '),
('T7', '35105'),
('T8', '35107     '),
('T8', '35109     ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_gs`
--

CREATE TABLE `thong_tin_gs` (
  `ma_gs` varchar(20) NOT NULL,
  `ho_ten_gs` varchar(100) NOT NULL,
  `gioi_tinh` varchar(100) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `sdt` int(100) NOT NULL,
  `cmnd` varchar(100) NOT NULL,
  `anh_the` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `uu_diem` varchar(20) NOT NULL,
  `luong_toi_thieu` decimal(10,0) NOT NULL,
  `ma_tai_khoan` varchar(20) NOT NULL,
  `nguyen_quan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_gs`
--

INSERT INTO `thong_tin_gs` (`ma_gs`, `ho_ten_gs`, `gioi_tinh`, `ngay_sinh`, `sdt`, `cmnd`, `anh_the`, `email`, `dia_chi`, `uu_diem`, `luong_toi_thieu`, `ma_tai_khoan`, `nguyen_quan`) VALUES
('GS01', 'Nguyễn Xuân Mai', 'Nữ', '1995-05-04', 1229698888, '23651039', 1, 'Xuanmai888@gmail.com', 'Quận 1', 'Không', '1000000', 'TK01', 'Cần Thơ'),
('GS02', 'Trần Kiều Oanh', 'Nữ', '1997-09-25', 1266883159, '49751064', 2, 'Kieuoanh159@gmail.com', 'Quận 3', 'Không', '1500000', 'TK02', 'Cà Mau'),
('GS03', 'Trần Mai Thanh', 'Nam', '1990-12-10', 1689343167, '46789134', 3, 'Maithanh134@gmail.com', 'Quận 5', 'Không', '2000000', 'TK03', 'TP HCM'),
('GS04', 'Lưu Chí Việt', 'Nam', '1991-06-30', 1235667897, '45612789', 4, 'Chiviet789@gmail.com', 'Quận 6', 'Không', '1500000', 'TK04', 'TP HCM'),
('GS05', 'Phùng Lan Anh', 'Nữ', '1992-05-07', 1275348963, '75315924', 5, 'Lananh963', 'Quận Tân Bình', 'Không', '1000000', 'TK05', 'Bến Tre'),
('GS06', 'Lý Hoài Văn', 'Nữ', '1993-12-18', 1266883591, '45618975', 6, 'Hoaivan591', 'Quận Tân Phú', 'Không', '1000000', 'TK06', 'Gia Lai'),
('GS07', 'Trần Ngọc Tiến', 'Nam', '1998-01-15', 1678421943, '25634053', 7, 'Ngoctien943', 'Quận 11', 'Không', '2000000', 'TK07', 'Tây Ninh'),
('GS08', 'Lý Đức Cường', 'Nam', '1994-04-28', 1678423615, '45239715', 8, 'Duccuong615', 'Quận Bình Tân', 'Không', '2000000', 'TK08', 'TP HCM'),
('GS09', 'Nguyễn Minh Tài', 'Nam', '1995-07-17', 1678523649, '45632197', 9, 'Minntai649', 'Quận 8', 'Không', '1000000', 'TK09', 'Sóc Trăng'),
('GS10', 'Lê Huy', 'Nam', '1998-03-13', 1678246589, '25625365', 10, 'Lehuy589', 'Quận 10', 'Không', '1500000', 'TK10', 'TP.HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trinh_do`
--

CREATE TABLE `trinh_do` (
  `ma_hoc_vi` varchar(20) NOT NULL,
  `ten_hoc_vi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trinh_do`
--

INSERT INTO `trinh_do` (`ma_hoc_vi`, `ten_hoc_vi`) VALUES
('HV01', 'Giáo Viên'),
('HV02', 'Sinh Viên'),
('HV03', 'Cử Nhân'),
('HV04', 'Kỹ Sư'),
('HV05', 'Thạc Sỹ'),
('HV06', 'Tiến Sỹ'),
('HV07', 'Giảng Viên'),
('HV08', 'Bằng Cấp Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trinh_do_gia_su`
--

CREATE TABLE `trinh_do_gia_su` (
  `ma_gs` varchar(20) NOT NULL,
  `ma_hoc_vi` varchar(20) NOT NULL,
  `nganh_hoc` varchar(20) NOT NULL,
  `truong_dao_tao` varchar(100) NOT NULL,
  `nam_hoc` date NOT NULL,
  `nam_tot_nghiep` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trinh_do_gia_su`
--

INSERT INTO `trinh_do_gia_su` (`ma_gs`, `ma_hoc_vi`, `nganh_hoc`, `truong_dao_tao`, `nam_hoc`, `nam_tot_nghiep`) VALUES
('GS01', 'HV01', 'Sư phạm', 'Đại học Sư Phạm', '2010-09-15', '2014-09-15'),
('GS07', 'HV01', 'Sư Phạm', 'Đại học Sư Phạm', '2012-05-10', '2016-05-10'),
('GS02', 'HV02', 'Kinh doanh và quản l', 'Đại học Tài Chính Marketing', '2013-09-15', '2017-09-15'),
('GS08', 'HV02', 'Sư Phạm', 'Đại học Sư Phạm', '2016-05-10', '2020-05-10'),
('GS03', 'HV03', 'Công nghệ thông tin', 'Đại học Mở', '2015-09-03', '2019-09-03'),
('GS08', 'HV03', 'Xã hội học', 'Đại học Khoa học tự nhiên và xã hội', '2013-09-03', '2017-09-03'),
('GS05', 'HV05', 'Luật', 'Đại học Luật', '2013-09-03', '2017-09-03'),
('GS04', 'HV06', 'Công tác xã hội', 'Đại học Khoa học tự nhiên và xã hội', '2011-05-07', '2015-05-07'),
('GS06', 'HV07', 'Báo chí', 'Đại học nhân văn', '2012-05-10', '2016-05-10'),
('GS03', 'HV08', 'Âm nhạc học ', 'Học viện âm nhạc quốc tế', '2014-09-03', '2018-09-03'),
('GS09', 'HV08', 'Ngôn ngữ anh', 'Đại học Sư Phạm', '2014-09-14', '2018-09-14'),
('GS10', 'HV08', 'Ngôn ngữ trung', 'Đại học Sư Phạm', '2015-09-20', '2019-09-20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dang_ki_mon`
--
ALTER TABLE `dang_ki_mon`
  ADD PRIMARY KEY (`ma_dang_ki`,`ma_mon_hoc`),
  ADD KEY `ma_mon_hoc` (`ma_mon_hoc`);

--
-- Chỉ mục cho bảng `dang_ky_day`
--
ALTER TABLE `dang_ky_day`
  ADD PRIMARY KEY (`ma_mon_hoc`,`ma_gs`),
  ADD KEY `ma_gs` (`ma_gs`);

--
-- Chỉ mục cho bảng `dk_tim_gs`
--
ALTER TABLE `dk_tim_gs`
  ADD PRIMARY KEY (`ma_dang_ki`),
  ADD KEY `ma_lop` (`ma_lop`);

--
-- Chỉ mục cho bảng `gs_khu_vuc_day`
--
ALTER TABLE `gs_khu_vuc_day`
  ADD PRIMARY KEY (`ma_gs`,`ma_khu_vuc`),
  ADD KEY `ma_khu_vuc` (`ma_khu_vuc`);

--
-- Chỉ mục cho bảng `gs_lop`
--
ALTER TABLE `gs_lop`
  ADD PRIMARY KEY (`ma_gs`,`ma_lop`),
  ADD KEY `ma_lop` (`ma_lop`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_hinh`);

--
-- Chỉ mục cho bảng `khu_vuc_day`
--
ALTER TABLE `khu_vuc_day`
  ADD PRIMARY KEY (`ma_khu_vuc`);

--
-- Chỉ mục cho bảng `lop_day`
--
ALTER TABLE `lop_day`
  ADD PRIMARY KEY (`ma_lop`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`ma_mon_hoc`);

--
-- Chỉ mục cho bảng `tai_khoan_gs`
--
ALTER TABLE `tai_khoan_gs`
  ADD PRIMARY KEY (`ma_tai_khoan`);

--
-- Chỉ mục cho bảng `thoi_gian`
--
ALTER TABLE `thoi_gian`
  ADD PRIMARY KEY (`ma_thoi_gian`);

--
-- Chỉ mục cho bảng `thoi_gian_day`
--
ALTER TABLE `thoi_gian_day`
  ADD PRIMARY KEY (`ma_thoi_gian`,`ma_gia_su`) USING BTREE,
  ADD KEY `ma_gia_su` (`ma_gia_su`);

--
-- Chỉ mục cho bảng `thoi_gian_hoc`
--
ALTER TABLE `thoi_gian_hoc`
  ADD PRIMARY KEY (`ma_thoi_gian`,`ma_dang_ki`),
  ADD KEY `ma_dang_ki` (`ma_dang_ki`);

--
-- Chỉ mục cho bảng `thong_tin_gs`
--
ALTER TABLE `thong_tin_gs`
  ADD PRIMARY KEY (`ma_gs`),
  ADD KEY `ma_tai_khoan` (`ma_tai_khoan`),
  ADD KEY `anh_the` (`anh_the`);

--
-- Chỉ mục cho bảng `trinh_do`
--
ALTER TABLE `trinh_do`
  ADD PRIMARY KEY (`ma_hoc_vi`);

--
-- Chỉ mục cho bảng `trinh_do_gia_su`
--
ALTER TABLE `trinh_do_gia_su`
  ADD PRIMARY KEY (`ma_hoc_vi`,`ma_gs`,`nganh_hoc`) USING BTREE,
  ADD KEY `ma_gs` (`ma_gs`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id_hinh` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dang_ki_mon`
--
ALTER TABLE `dang_ki_mon`
  ADD CONSTRAINT `dang_ki_mon_ibfk_1` FOREIGN KEY (`ma_dang_ki`) REFERENCES `dk_tim_gs` (`ma_dang_ki`),
  ADD CONSTRAINT `dang_ki_mon_ibfk_2` FOREIGN KEY (`ma_mon_hoc`) REFERENCES `mon_hoc` (`ma_mon_hoc`);

--
-- Các ràng buộc cho bảng `dang_ky_day`
--
ALTER TABLE `dang_ky_day`
  ADD CONSTRAINT `dang_ky_day_ibfk_1` FOREIGN KEY (`ma_gs`) REFERENCES `thong_tin_gs` (`ma_gs`),
  ADD CONSTRAINT `dang_ky_day_ibfk_2` FOREIGN KEY (`ma_mon_hoc`) REFERENCES `mon_hoc` (`ma_mon_hoc`);

--
-- Các ràng buộc cho bảng `dk_tim_gs`
--
ALTER TABLE `dk_tim_gs`
  ADD CONSTRAINT `dk_tim_gs_ibfk_1` FOREIGN KEY (`ma_lop`) REFERENCES `lop_day` (`ma_lop`);

--
-- Các ràng buộc cho bảng `gs_khu_vuc_day`
--
ALTER TABLE `gs_khu_vuc_day`
  ADD CONSTRAINT `gs_khu_vuc_day_ibfk_1` FOREIGN KEY (`ma_gs`) REFERENCES `thong_tin_gs` (`ma_gs`),
  ADD CONSTRAINT `gs_khu_vuc_day_ibfk_2` FOREIGN KEY (`ma_khu_vuc`) REFERENCES `khu_vuc_day` (`ma_khu_vuc`);

--
-- Các ràng buộc cho bảng `gs_lop`
--
ALTER TABLE `gs_lop`
  ADD CONSTRAINT `gs_lop_ibfk_1` FOREIGN KEY (`ma_gs`) REFERENCES `thong_tin_gs` (`ma_gs`),
  ADD CONSTRAINT `gs_lop_ibfk_2` FOREIGN KEY (`ma_lop`) REFERENCES `lop_day` (`ma_lop`);

--
-- Các ràng buộc cho bảng `thoi_gian_day`
--
ALTER TABLE `thoi_gian_day`
  ADD CONSTRAINT `thoi_gian_day_ibfk_1` FOREIGN KEY (`ma_gia_su`) REFERENCES `thong_tin_gs` (`ma_gs`),
  ADD CONSTRAINT `thoi_gian_day_ibfk_2` FOREIGN KEY (`ma_thoi_gian`) REFERENCES `thoi_gian` (`ma_thoi_gian`);

--
-- Các ràng buộc cho bảng `thoi_gian_hoc`
--
ALTER TABLE `thoi_gian_hoc`
  ADD CONSTRAINT `thoi_gian_hoc_ibfk_1` FOREIGN KEY (`ma_dang_ki`) REFERENCES `dk_tim_gs` (`ma_dang_ki`),
  ADD CONSTRAINT `thoi_gian_hoc_ibfk_2` FOREIGN KEY (`ma_thoi_gian`) REFERENCES `thoi_gian` (`ma_thoi_gian`);

--
-- Các ràng buộc cho bảng `thong_tin_gs`
--
ALTER TABLE `thong_tin_gs`
  ADD CONSTRAINT `thong_tin_gs_ibfk_1` FOREIGN KEY (`ma_tai_khoan`) REFERENCES `tai_khoan_gs` (`ma_tai_khoan`),
  ADD CONSTRAINT `thong_tin_gs_ibfk_2` FOREIGN KEY (`anh_the`) REFERENCES `image` (`id_hinh`);

--
-- Các ràng buộc cho bảng `trinh_do_gia_su`
--
ALTER TABLE `trinh_do_gia_su`
  ADD CONSTRAINT `trinh_do_gia_su_ibfk_1` FOREIGN KEY (`ma_hoc_vi`) REFERENCES `trinh_do` (`ma_hoc_vi`),
  ADD CONSTRAINT `trinh_do_gia_su_ibfk_2` FOREIGN KEY (`ma_gs`) REFERENCES `thong_tin_gs` (`ma_gs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
