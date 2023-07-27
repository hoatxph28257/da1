create database Coffe
go
use Coffe
go

USE [master]
GO
/****** Object:  Database [Coffe]    Script Date: 19/12/2021 11:27:02 AM ******/
CREATE DATABASE [Coffe]
 CONTAINMENT = NONE
GO
ALTER DATABASE [Coffe] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coffe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coffe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Coffe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Coffe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Coffe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Coffe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Coffe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Coffe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Coffe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Coffe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Coffe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Coffe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Coffe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Coffe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Coffe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Coffe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Coffe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Coffe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Coffe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Coffe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Coffe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Coffe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Coffe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Coffe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Coffe] SET  MULTI_USER 
GO
ALTER DATABASE [Coffe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Coffe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Coffe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Coffe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Coffe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Coffe] SET QUERY_STORE = OFF
GO
USE [Coffe]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[MaBan] [int] NOT NULL,
	[TenBan] [nvarchar](20) NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CALAMVIEC]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALAMVIEC](
	[MaCa] [nvarchar](10) NOT NULL,
	[TenCa] [nvarchar](20) NOT NULL,
	[GioBatDau] [time](7) NOT NULL,
	[GioKetThuc] [time](7) NOT NULL,
	[Luong] [float] NOT NULL,
 CONSTRAINT [PK__CALAMVIE__27258E7B18AAE6FF] PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](10) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TenDN] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[Huy] [bit] NULL,
	[Ban] [int] NULL,
	[DangBan] [bit] NULL,
 CONSTRAINT [PK__HOADON__2725A6E0CBF315FF] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCT]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCT](
	[MaHD] [nvarchar](10) NOT NULL,
	[MaHDCT] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[DonGia] [float] NOT NULL,
 CONSTRAINT [PK__HOADONCT__1419C12999C26FD1] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoai] [nvarchar](10) NOT NULL,
	[TenLoai] [nvarchar](30) NOT NULL,
	[MoTa] [nvarchar](100) NULL,
 CONSTRAINT [PK__LOAISANP__730A5759FD99C38E] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONGCHITIET]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONGCHITIET](
	[MaLuongCT] [nvarchar](10) NOT NULL,
	[NgayLamViec] [date] NOT NULL,
	[MaCa] [nvarchar](10) NULL,
	[MaNV] [nvarchar](15) NULL,
 CONSTRAINT [PK_LUONGCHITIET] PRIMARY KEY CLUSTERED 
(
	[MaLuongCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaND] [nvarchar](15) NOT NULL,
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[PhanQuyen] [nvarchar](40) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](15) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[ChucVu] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 19/12/2021 11:27:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](40) NOT NULL,
	[MaLoai] [nvarchar](10) NOT NULL,
	[GiaBan] [float] NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MoTa] [nvarchar](100) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK__SANPHAM__2725081CF234A472] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE NHAPHANG(
	MaHangNhap nvarchar(15) primary key NOT NULL,
	TenHangNhap nvarchar(50) NOT NULL,
	Loai nvarchar(20) not null, 
	soLieu nvarchar(50) not null,
	soLuong nvarchar(50) not null,
	NgayNhap date not null,
	GiaNhap float not null
)
GO

INSERT NHAPHANG (MaHangNhap, TenHangNhap, Loai, soLieu, soLuong, NgayNhap, GiaNhap) VALUES (N'CF010', N'CAFE RANG XAY', N'L001', N'Kg', N'10', CAST(N'2023-3-30' AS Date), 20000000)
INSERT NHAPHANG (MaHangNhap, TenHangNhap, Loai, soLieu, soLuong, NgayNhap, GiaNhap) VALUES (N'CF020', N'DỪA XIÊM', N'L002', N'Kg', N'20', CAST(N'2023-3-30' AS Date), 1500000)
GO
Select * from NHAPHANG

INSERT [dbo].[BAN] ([MaBan], [TenBan], [TrangThai]) VALUES (1, N'Bàn 1', 0)
INSERT [dbo].[BAN] ([MaBan], [TenBan], [TrangThai]) VALUES (2, N'Bàn 2', 0)
INSERT [dbo].[BAN] ([MaBan], [TenBan], [TrangThai]) VALUES (3, N'Bàn 3', 0)
INSERT [dbo].[BAN] ([MaBan], [TenBan], [TrangThai]) VALUES (4, N'Bàn 4', 0)
INSERT [dbo].[BAN] ([MaBan], [TenBan], [TrangThai]) VALUES (5, N'Bàn 5', 0)
GO
Select * from BAN
INSERT [dbo].[CALAMVIEC] ([MaCa], [TenCa], [GioBatDau], [GioKetThuc], [Luong]) VALUES (N'1', N'ca 1', CAST(N'07:30:00' AS Time), CAST(N'08:45:00' AS Time), 60000)
INSERT [dbo].[CALAMVIEC] ([MaCa], [TenCa], [GioBatDau], [GioKetThuc], [Luong]) VALUES (N'2', N'ca 2', CAST(N'07:00:00' AS Time), CAST(N'18:30:00' AS Time), 25000)
GO
Select * from CALAMVIEC
INSERT [dbo].[HOADON] ([MaHD], [NgayTao], [TenDN], [TrangThai], [Huy], [Ban], [DangBan]) VALUES (N'HD001', CAST(N'2021-12-17' AS Date), N'admin', 0, 1, 1, 0)
INSERT [dbo].[HOADON] ([MaHD], [NgayTao], [TenDN], [TrangThai], [Huy], [Ban], [DangBan]) VALUES (N'HD005', CAST(N'2021-12-19' AS Date), N'duongone@', 1, 0, 3, 0)
GO
Select * from HOADON
delete HOADON where TrangThai = 0
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD001', N'HDCT001', N'SP001', 1, 0, 12000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD005', N'HDCT002', N'SP002', 1, 0, 12000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD003', N'HDCT004', N'SP002', 3, 2000, 22000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD003', N'HDCT005', N'SP003', 1, 0, 13000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD004', N'HDCT007', N'SP002', 1, 0, 8000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD005', N'HDCT008', N'SP002', 1, 0, 8000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD005', N'HDCT009', N'SP003', 2, 1000, 25000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD006', N'HDCT010', N'SP002', 2, 0, 16000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD006', N'HDCT011', N'SP006', 1, 0, 14000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD007', N'HDCT012', N'SP003', 5, 0, 65000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD008', N'HDCT013', N'SP004', 1, 2000, 10000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD008', N'HDCT014', N'SP003', 1, 1000, 12000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD008', N'HDCT015', N'SP001', 1, 0, 12000)
INSERT [dbo].[HOADONCT] ([MaHD], [MaHDCT], [MaSP], [SoLuong], [GiamGia], [DonGia]) VALUES (N'HD009', N'HDCT016', N'SP001', 1, 0, 12000)
GO
DELETE HOADONCT WHERE MaHD like 'HD012'
Select * from HOADONCT

INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L001', N'Cà phê ', N'')
INSERT [dbo].[LOAISANPHAM] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L002', N'Nước ngọt', N'')
GO
Select * from LOAISANPHAM

INSERT [dbo].[LUONGCHITIET] ([MaLuongCT], [NgayLamViec], [MaCa], [MaNV]) VALUES (N'L001', CAST(N'2021-12-14' AS Date), N'1', N'NV02')
INSERT [dbo].[LUONGCHITIET] ([MaLuongCT], [NgayLamViec], [MaCa], [MaNV]) VALUES (N'L002', CAST(N'2021-12-14' AS Date), N'2', N'NV04')
INSERT [dbo].[LUONGCHITIET] ([MaLuongCT], [NgayLamViec], [MaCa], [MaNV]) VALUES (N'L003', CAST(N'2021-12-14' AS Date), N'1', N'NV01')
GO
Select * from LUONGCHITIET
INSERT [dbo].[NGUOIDUNG] ([MaND], [TenDN], [MatKhau], [PhanQuyen], [TrangThai]) VALUES (N'admin', N'admin', N'123', N'admin', 1)
INSERT [dbo].[NGUOIDUNG] ([MaND], [TenDN], [MatKhau], [PhanQuyen], [TrangThai]) VALUES (N'NV02', N'duongone@', N'123', N'Thu ngân', 1)
INSERT [dbo].[NGUOIDUNG] ([MaND], [TenDN], [MatKhau], [PhanQuyen], [TrangThai]) VALUES (N'NV05', N'haione@', N'123', N'Thu ngân', 1)
INSERT [dbo].[NGUOIDUNG] ([MaND], [TenDN], [MatKhau], [PhanQuyen], [TrangThai]) VALUES (N'NV04', N'hoaone@', N'123', N'Quản lý', 1)
INSERT [dbo].[NGUOIDUNG] ([MaND], [TenDN], [MatKhau], [PhanQuyen], [TrangThai]) VALUES (N'NV04', N'hungone@', N'123', N'Quản lý', 1)
GO
Select * from NGUOIDUNG
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Email], [NgayVaoLam]) VALUES (N'admin', N'Đỗ Hồng Dương', 1, CAST(N'2002-02-25' AS Date), N'0982822502', N'Bắc Giang', N'admin', N'duongdhph14771@fpt.edu.vn', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Email], [NgayVaoLam]) VALUES (N'NV01', N'Nguyễn Đức Hải', 1, CAST(N'2002-02-17' AS Date), N'0967978324', N'Ngọc Thiện', N'Phục vụ', N'haimaidan@gmail.com', CAST(N'2021-12-11' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Email], [NgayVaoLam]) VALUES (N'NV02', N'Nguyễn Thị Lung Linh', 1, CAST(N'2003-08-15' AS Date), N'0944464447', N'Phú Thọ', N'Quản lý ', N'duongone@gmail.com', CAST(N'2021-12-11' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Email], [NgayVaoLam]) VALUES (N'NV03', N'Nguyễn Hưng', 1, CAST(N'2003-12-16' AS Date), N'09999265782', N'Điện Biên', N'Phục vụ', N'hungone@Gmail.com', CAST(N'2021-12-14' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Email], [NgayVaoLam]) VALUES (N'NV04', N'Hòa', 1, CAST(N'2002-08-03' AS Date), N'0981479425', N'Sơn La', N'Thu ngân', N'hoa@gmail.com', CAST(N'2021-12-15' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [ChucVu], [Email], [NgayVaoLam]) VALUES (N'NV05', N'Nguyễn Hải Dan ', 1, CAST(N'2004-11-01' AS Date), N'0944604440', N'Hà Nội', N'Quản lý ', N'hai@gmail.com', CAST(N'2021-12-15' AS Date))
GO
Select * from NHANVIEN
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaLoai], [GiaBan], [NgayNhap], [MoTa], [HinhAnh], [TrangThai]) VALUES (N'SP001', N'Cà phê đen đá', N'L001', 12000, CAST(N'2023-3-30' AS Date), N'', N'sp2.jpg', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaLoai], [GiaBan], [NgayNhap], [MoTa], [HinhAnh], [TrangThai]) VALUES (N'SP002', N'Cà phê sữa đá', N'L001', 12000, CAST(N'2023-3-30' AS Date), N'', N'nauda.jpg', 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [MaLoai], [GiaBan], [NgayNhap], [MoTa], [HinhAnh], [TrangThai]) VALUES (N'SP003', N'Ice plus', N'L002', 10000, CAST(N'2023-3-30' AS Date), N'', N'ice.jpg', 1)
GO
Select * from SANPHAM
GO
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_BAN] FOREIGN KEY([Ban])
REFERENCES [dbo].[BAN] ([MaBan])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_BAN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NGUOIDUNG1] FOREIGN KEY([TenDN])
REFERENCES [dbo].[NGUOIDUNG] ([TenDN])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NGUOIDUNG1]
GO
ALTER TABLE [dbo].[HOADONCT]  WITH CHECK ADD  CONSTRAINT [FK_HOADONCT_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[HOADONCT] CHECK CONSTRAINT [FK_HOADONCT_HOADON]
GO
ALTER TABLE [dbo].[HOADONCT]  WITH CHECK ADD  CONSTRAINT [FK_HOADONCT_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[HOADONCT] CHECK CONSTRAINT [FK_HOADONCT_SANPHAM]
GO
ALTER TABLE [dbo].[LUONGCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_CaLam] FOREIGN KEY([MaCa])
REFERENCES [dbo].[CALAMVIEC] ([MaCa])
GO
ALTER TABLE [dbo].[LUONGCHITIET] CHECK CONSTRAINT [FK_CaLam]
GO
ALTER TABLE [dbo].[LUONGCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[LUONGCHITIET] CHECK CONSTRAINT [FK_NhanVien]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_NHANVIEN1] FOREIGN KEY([MaND])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[NHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_LOAISANPHAM] FOREIGN KEY([Loai])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoai])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_LOAISANPHAM1] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoai])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_NHANVIEN1]
GO
/****** Object:  StoredProcedure [dbo].[Sp_doanhThu]    Script Date: 19/12/2021 11:27:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_doanhThu] @Nam int
as 
begin 
		select MONTH(b.NgayTao)as 'Thang',count(a.MaSP) as N'SanPhamBan',
		sum(c.GiaBan) as N'TongGiaBan',
		sum(donGia) as N'TongTien'
		from hoadonCT a inner join HoaDon b on a.MaHD = b.MaHD
		inner join SanPham c on a.MaSP = c.MaSP
		where YEAR(b.NgayTao) = @Nam and b.TrangThai = 'True' 
		group by MONTH(b.NgayTao)		
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_HoaDonChiTiet]    Script Date: 19/12/2021 11:27:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_HoaDonChiTiet] @MaHD nvarchar(10)
as
begin
select a.MaSP,b.TenSP,a.SoLuong,b.GiaBan,a.GiamGia,a.DonGia
from HOADONCT a inner join SANPHAM b
on a.MaSP = b.MaSP
where a.MaHD = @MaHD
end
GO
DROP PROCEDURE IF EXISTS sp_HoaDonChiTiet;
/****** Object:  StoredProcedure [dbo].[Sp_Luong]    Script Date: 19/12/2021 11:27:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[Sp_Luong]
as
begin 
	select a.TenNV as 'TenNhanVien',count(b.MaCa) as 'TongCaLam', sum(c.Luong) as 'TongLuong'
	from NhanVien a inner join LuongChiTiet b
	on a.MaNV = b.MaNV
	inner join CaLamViec c on c.MaCa = b.MaCa
	where a.MaNV != 'admin'
	group by a.TenNV
end 
GO
/****** Object:  StoredProcedure [dbo].[Sp_SanPham]    Script Date: 19/12/2021 11:27:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_SanPham](@Loai nvarchar(50))
as 
begin	
		select TenSP as N'TenSP',
		sum(b.SoLuong) as N'SoLuongBan',a.NgayNhap as N'NgayNhap'
		from SanPham a inner join HOADONCT b  on a.MaSP = b.MaSP
		where a.MaLoai = @Loai
		group by TenSP,NgayNhap
end
GO
USE [master]
GO
ALTER DATABASE [Coffe] SET  READ_WRITE 


Select * from NHANVIEN
select * from dbo.NGUOIDUNG
Select * from SANPHAM 

Select * from HOADONCT where MAHD = 'HD010'
DELETE FROM HOADON WHERE MaHD = 'HD036'
DELETE FROM HOADONCT WHERE MaHD = 'HD034'
Select * from HOADON
Select * from HOADONCT
DELETE FROM NHANVIEN WHERE MaNV = 'NV03'

Update NHAPHANG set GiaNhap = 150000 where MaHangNhap = 'CF020'

DELETE FROM BAN WHERE MaBan = '1'
DROP PROCEDURE [Sp_doanhThu]

SELECT * FROM NHAPHANG

select * from doanhthu

select * from LUONGCHITIET

SELECT SUM(DonGia) as TongTien
FROM HOADONCT

EXEC Sp_doanhThu @Nam = N'2023';
EXEC Sp_Luong;