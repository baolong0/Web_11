USE [FootballNews]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANTHANG]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANTHANG](
	[ID_BanThang] [char](15) NOT NULL,
	[ID_CauThu] [char](15) NOT NULL,
	[ID_TranDau] [char](15) NOT NULL,
	[ThoiDiem] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_BanThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAUTHU]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUTHU](
	[ID_CauThu] [char](15) NOT NULL,
	[TenCauThu] [nvarchar](50) NULL,
	[Source_HACT] [varchar](2000) NULL,
	[ID_DoiBong] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CauThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[ID_HoaDon] [char](15) NOT NULL,
	[ID_Ve] [char](15) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [CTHD_pk] PRIMARY KEY CLUSTERED 
(
	[ID_HoaDon] ASC,
	[ID_Ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOIBONG]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOIBONG](
	[ID_DoiBong] [char](15) NOT NULL,
	[TenDoi] [nvarchar](100) NOT NULL,
	[Source_Logo] [varchar](2000) NULL,
	[Source_Banner] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DoiBong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HASHTAG]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HASHTAG](
	[ID_Hashtag] [int] IDENTITY(1,1) NOT NULL,
	[Hashtag] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Hashtag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHANH]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHANH](
	[ID_HinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[Source_HinhAnh] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHANH_QC]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHANH_QC](
	[ID_HA_QC] [int] IDENTITY(1,1) NOT NULL,
	[Source_HinhAnh_QC] [varchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[ID_HoaDon] [char](15) NOT NULL,
	[ID_KhachHang] [char](15) NOT NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[ID_KhachHang] [char](15) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [char](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHTICH]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHTICH](
	[ID_LoaiThanhTich] [char](15) NOT NULL,
	[TenLoaiThanhTich] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_LoaiThanhTich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITIN]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITIN](
	[ID_LoaiTin] [char](15) NOT NULL,
	[TenLoaiTin] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_LoaiTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIVE]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIVE](
	[ID_LoaiVe] [char](15) NOT NULL,
	[TenLoaiVe] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaVe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_LoaiVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_TAITRO]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_TAITRO](
	[ID_Sub_TT] [int] IDENTITY(1,1) NOT NULL,
	[ID_DoiBong] [char](15) NOT NULL,
	[ID_TaiTro] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sub_TT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_TIN_VIDEO]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_TIN_VIDEO](
	[ID_sub_TIN_VIDEO] [int] IDENTITY(1,1) NOT NULL,
	[ID_TIN_VIDEO] [char](15) NULL,
	[ID_VIDEO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_sub_TIN_VIDEO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_TINTUC]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_TINTUC](
	[ID_sub_TT] [int] IDENTITY(1,1) NOT NULL,
	[ID_Tintuc] [char](15) NULL,
	[ID_HinhAnh] [int] NULL,
	[ID_Hashtag] [int] NULL,
	[ID_LoaiTin] [char](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_sub_TT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAITRO]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAITRO](
	[ID_TaiTro] [char](15) NOT NULL,
	[Source_Logo] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_USER]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_USER](
	[ID_User] [char](15) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SDT] [char](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHTICH]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTICH](
	[ID_ThanhTich] [char](15) NOT NULL,
	[TenThanhTich] [nvarchar](100) NULL,
	[ID_LoaiThanhTich] [char](15) NOT NULL,
	[ID_DoiBong] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ThanhTich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thong_Tin_Xep_Hang]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thong_Tin_Xep_Hang](
	[ID_Thu_Tu] [int] IDENTITY(1,1) NOT NULL,
	[ID_DoiBong] [char](15) NULL,
	[SoTran] [int] NULL,
	[Thang] [int] NULL,
	[Hoa] [int] NULL,
	[Thua] [int] NULL,
	[HieuSo] [char](10) NULL,
	[Diem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Thu_Tu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINCOBAN]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINCOBAN](
	[ID_ThongTin] [char](15) NOT NULL,
	[DiaChi] [nvarchar](1000) NULL,
	[Hotline] [char](15) NULL,
	[Email] [varchar](50) NULL,
	[Website] [varchar](500) NULL,
	[SanVanDong] [nvarchar](20) NULL,
	[SucChua] [int] NULL,
	[ChuTichCLB] [nvarchar](50) NULL,
	[GĐDH] [nvarchar](50) NULL,
	[HLVTruong] [nvarchar](50) NULL,
	[GĐKT] [nvarchar](50) NULL,
	[NhaTaiTro] [nvarchar](50) NULL,
	[ID_DoiBong] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ThongTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKET](
	[ID_Ve] [char](15) NOT NULL,
	[ID_LoaiVe] [char](15) NOT NULL,
	[DoiNha] [char](15) NOT NULL,
	[DoiKhach] [char](15) NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ve] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIN_VIDEO]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIN_VIDEO](
	[ID_TIN_VIDEO] [char](15) NOT NULL,
	[TieuDe_VIDEO] [nvarchar](max) NULL,
	[Avatar_VIDEO] [varchar](2000) NULL,
	[TomTat_VIDEO] [nvarchar](max) NULL,
	[LuotTuongTac_VIDEO] [int] NULL,
	[LuotXem_VIDEO] [int] NULL,
	[TrangThaiHienThi_VIDEO] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIN_VIDEO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[ID_TinTuc] [char](15) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[Avatar] [varchar](2000) NULL,
	[TomTat] [nvarchar](max) NULL,
	[LuotTuongTac] [int] NULL,
	[LuotXem] [int] NULL,
	[TrangThaiHienThi] [nvarchar](20) NULL,
	[Text_NoiDung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANDAU]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANDAU](
	[ID_TranDau] [char](15) NOT NULL,
	[DoiNha] [char](15) NOT NULL,
	[DoiKhach] [char](15) NOT NULL,
	[ThoiGianThiDau] [date] NULL,
	[GioThiDau] [time](7) NULL,
	[SanThiDau] [nvarchar](20) NULL,
	[TiSo] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TranDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
	[Birthday] [datetime2](7) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEO]    Script Date: 10/16/2020 10:49:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEO](
	[ID_VIDEO] [int] IDENTITY(1,1) NOT NULL,
	[Source_VIDEO] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_VIDEO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201016012940_AddUser', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201016032428_xxxx', N'3.1.9')
GO
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT001     ', N'Phạm Văn Tiến', N'https://vpf.vn/wp-content/uploads/2018/12/Phan-V%C4%83n-Ti%E1%BA%BFn-_1-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT002     ', N'Hồ Tấn Tài', N'https://vpf.vn/wp-content/uploads/2018/12/H%E1%BB%93-T%E1%BA%A5n-T%C3%A0i-_-4-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT003     ', N'Trần Hữu Đông Triều', N'https://vpf.vn/wp-content/uploads/2018/12/Tr%E1%BA%A7n-H%E1%BB%AFu-%C4%90%C3%B4ng-Tri%E1%BB%81u_5-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT004     ', N'Hedipo Gustavo', N'https://vpf.vn/wp-content/uploads/2020/01/Hedip-Gustavo_10-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT005     ', N'Tống Anh Tỷ', N'https://vpf.vn/wp-content/uploads/2018/12/T%E1%BB%91ng-Anh-T%E1%BB%B7-17-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT006     ', N'Ngô Hồng Phước', N'https://vpf.vn/wp-content/uploads/2019/03/Ng%C3%B4-H%E1%BB%93ng-Ph%C6%B0%E1%BB%9Bc_19-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT007     ', N'Nguyễn Tiến Linh', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-Ti%E1%BA%BFn-Linh_22-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT008     ', N'Rabo Ali', N'https://vpf.vn/wp-content/uploads/2019/07/Rabo-Ali_88-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT009     ', N'Tô Văn Vũ', N'https://vpf.vn/wp-content/uploads/2018/12/T%C3%B4-V%C4%83n-V%C5%A9-_-28-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT010     ', N'Trần Phi Hà', N'https://vpf.vn/wp-content/uploads/2020/01/Tr%E1%BA%A7n-Phi-H%C3%A0_26-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT011     ', N'Hồ Sỹ Giáp', N'https://vpf.vn/wp-content/uploads/2018/12/H%E1%BB%93-S%E1%BB%B9-Gi%C3%A1p-_27_xanh-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D01CT012     ', N'Đào Tấn Lộc', N'https://vpf.vn/wp-content/uploads/2018/12/%C4%90%C3%A0o-T%E1%BA%A5n-L%E1%BB%99c-_21-150x150.jpg', N'G6DOI001       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT001     ', N'Trần Liêm Điều', N'https://vpf.vn/wp-content/uploads/2019/02/Tran-Liem-Dieu_1-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT002     ', N'Phạm Minh Nghĩa', N'https://vpf.vn/wp-content/uploads/2018/12/Pham-Minh-Nghia_3-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT003     ', N'Trần Hữu Hoàng', N'https://vpf.vn/wp-content/uploads/2020/01/Tran-Huu-Hoang_4-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT004     ', N'Lâm Anh Quang', N'https://vpf.vn/wp-content/uploads/2018/12/Lam-Anh-Quang-5-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT005     ', N'Lê Sỹ Minh', N'https://vpf.vn/wp-content/uploads/2018/12/Le-Sy-Minh_08-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT006     ', N'Trần Mạnh Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/Tran-Manh-Hung_10-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT007     ', N'Phạm Hồng Sơn', N'https://vpf.vn/wp-content/uploads/2018/12/Pham-Hong-Son_14-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT008     ', N'Hoàng Xuân Tân', N'https://vpf.vn/wp-content/uploads/2020/01/Hoang-Xuan-Tan_17-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT009     ', N'Đoàn Thanh Trường', N'https://vpf.vn/wp-content/uploads/2019/02/Doan-Thanh-Truong_18-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT010     ', N'Ngô Đức Huy', N'https://vpf.vn/wp-content/uploads/2020/01/Ngo-Duc-Huy_22-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT011     ', N'Phan Văn Hiếu', N'https://vpf.vn/wp-content/uploads/2020/02/Phan-Van-Hieu_23-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D02CT012     ', N'Đinh Quang Phán', N'https://vpf.vn/wp-content/uploads/2018/12/Dinh-Quang-Phan_25-150x150.jpg', N'G6DOI002       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT001     ', N'Bùi Tấn Trường', N'https://vpf.vn/wp-content/uploads/2018/12/TRUONG-150x150.png', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT002     ', N'Nguyễn Văn Dũng', N'https://vpf.vn/wp-content/uploads/2018/12/4-NGUYEN-VAN-DUNG-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT003     ', N'Đoàn Văn Hậu', N'https://vpf.vn/wp-content/uploads/2018/12/Doan-Van-Hau-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT004     ', N'Đậu Văn Toàn', N'https://vpf.vn/wp-content/uploads/2018/12/6-DAU-VAN-TOAN-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT005     ', N'Mạch Ngọc Hà', N'https://vpf.vn/wp-content/uploads/2018/12/7-MACH-NGOC-HA-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT006     ', N'Moses Oloya', N'https://vpf.vn/wp-content/uploads/2018/12/8-OLOYA-MOSES-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT007     ', N'Nguyễn Văn Quyết', N'https://vpf.vn/wp-content/uploads/2018/12/10-NGUYEN-VAN-QUYET-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT008     ', N'Phạm Thành Lương', N'https://vpf.vn/wp-content/uploads/2018/12/11-PHAM-THANH-LUONG-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT009     ', N'Trần Văn Kiên', N'https://vpf.vn/wp-content/uploads/2018/12/13-TRAN-VAN-KIEN-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT010     ', N'Phạm Đức Huy', N'https://vpf.vn/wp-content/uploads/2018/12/15-PHAM-DUC-HUY-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT011     ', N'Nguyễn Thành Chung', N'https://vpf.vn/wp-content/uploads/2018/12/16-NGUYEN-THANH-CHUNG-150x150.jpg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D03CT012     ', N'Đặng Văn Tới', N'https://vpf.vn/wp-content/uploads/2018/12/17-DANG-VAN-TOI-150x150.jpeg', N'G6DOI003       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT001     ', N'Nguyễn Văn Phong', N'https://vpf.vn/wp-content/uploads/2019/03/Nguy%E1%BB%85n-V%C4%83n-Phong-01-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT002     ', N'Lê Trung Hiếu', N'https://vpf.vn/wp-content/uploads/2018/12/L%C3%AA-Trung-Hi%E1%BA%BFu-02-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT003     ', N'Phạm Mạnh Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/Ph%E1%BA%A1m-M%E1%BA%A1nh-H%C3%B9ng-03-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT004     ', N'Nguyễn Đình Tài', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-%C4%90%C3%ACnh-T%C3%A0i-05-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT005     ', N'Nguyễn Hữu Phúc', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-H%E1%BB%AFu-Ph%C3%BAc-06-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT006     ', N'Mpande Joseph Mbolimbo', N'https://vpf.vn/wp-content/uploads/2019/02/Mpande-Joseph-Mbolimbo-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT007     ', N'Lê Thế Cường', N'https://vpf.vn/wp-content/uploads/2018/12/L%C3%AA-Th%E1%BA%BF-C%C6%B0%E1%BB%9Dng-09-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT008     ', N'Diego Olivera Silva', N'https://vpf.vn/wp-content/uploads/2020/01/Diego-Olivera-Silva-10-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT009     ', N'Andre Diego Fagan', N'https://vpf.vn/wp-content/uploads/2018/12/fagan-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT010     ', N'Nguyễn Hữu Tuấn', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-H%E1%BB%AFu-Tu%E1%BA%A5n-12-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT011     ', N'Doãn Ngọc Tân', N'https://vpf.vn/wp-content/uploads/2018/12/Do%C3%A3n-Ng%E1%BB%8Dc-T%C3%A2n-15-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D04CT012     ', N'Mạc Hồng Quân', N'https://vpf.vn/wp-content/uploads/2018/12/Mac-Hong-Quan-1-150x150.jpg', N'G6DOI004       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT001     ', N'Trần Bửu Ngọc', N'https://vpf.vn/wp-content/uploads/2018/12/no-68-Tran-Buu-Ngoc-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT002     ', N'Nguyễn Cảnh Anh', N'https://vpf.vn/wp-content/uploads/2019/03/2-NGUY%E1%BB%84N-C%E1%BA%A2NH-ANH-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT003     ', N'Nguyễn Hữu Anh Tài', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-H%E1%BB%AFu-Anh-T%C3%A0i_75-SN-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT004     ', N'Memovic Damir', N'https://vpf.vn/wp-content/uploads/2019/02/Memovic-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT005     ', N'Âu Dương Quân', N'https://vpf.vn/wp-content/uploads/2019/04/5-%C3%82U-D%C6%AF%C6%A0NG-QU%C3%82N-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT006     ', N'Lương Xuân Trường', N'https://vpf.vn/wp-content/uploads/2018/12/Luong-Xuan-Truong_1425870687-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT007     ', N'Nguyễn Phong Hồng Duy', N'https://vpf.vn/wp-content/uploads/2018/12/7-NGUY%E1%BB%84N-PHONG-H%E1%BB%92NG-DUY-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT008     ', N'Trần Minh Vương', N'https://vpf.vn/wp-content/uploads/2018/12/8-TR%E1%BA%A6N-MINH-V%C6%AF%C6%A0NG-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT009     ', N'Nguyễn Văn Toàn', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-V%C4%83n-To%C3%A0n_9-SN-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT010     ', N'Nguyễn Tuấn Anh', N'https://vpf.vn/wp-content/uploads/2018/12/11-NGUY%E1%BB%84N-TU%E1%BA%A4N-ANH-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT011     ', N'Oahimijie Kelly', N'https://vpf.vn/wp-content/uploads/2020/01/12-OAHIMUIE-KELLY-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D05CT012     ', N'Vũ Văn Thanh', N'https://vpf.vn/wp-content/uploads/2018/12/V%C5%A9-V%C4%83n-Thanh_17-SN-150x150.jpg', N'G6DOI005       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT001     ', N'Nguyễn Hoài Anh', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-Ho%C3%A0i-Anh-s%E1%BB%91-1-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT002     ', N'Hoàng Ngọc Hào', N'https://vpf.vn/wp-content/uploads/2018/12/Ho%C3%A0ng-Ng%E1%BB%8Dc-H%C3%A0o-s%E1%BB%91-2-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT003     ', N'Vũ Hữu Quý', N'https://vpf.vn/wp-content/uploads/2018/12/V%C5%A9-H%E1%BB%AFu-Qu%C3%BD-s%E1%BB%91-3-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT004     ', N'Trần Đức Nam', N'https://vpf.vn/wp-content/uploads/2018/12/Tr%E1%BA%A7n-%C4%90%E1%BB%A9c-Nam-s%E1%BB%91-5-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT005     ', N'Lý Công Hoàng Anh', N'https://vpf.vn/wp-content/uploads/2018/12/L%C3%BD-C%C3%B4ng-Ho%C3%A0ng-Anh-s%E1%BB%91-6-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT006     ', N'Lê Mạnh Dũng', N'https://vpf.vn/wp-content/uploads/2018/12/L%C3%AA-M%E1%BA%A1nh-D%C5%A9ng-s%E1%BB%91-7-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT007     ', N'Bruno Henrique', N'https://vpf.vn/wp-content/uploads/2020/01/Bruno-Henrique-De-Sousa-s%E1%BB%91-9-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT008     ', N'Phạm Tuấn Hải', N'https://vpf.vn/wp-content/uploads/2018/12/Ph%E1%BA%A1m-Tu%E1%BA%A5n-H%E1%BA%A3i-s%E1%BB%91-10-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT009     ', N'Nguyễn Văn Hiệp', N'https://vpf.vn/wp-content/uploads/2019/05/Nguy%E1%BB%85n-V%C4%83n-Hi%E1%BB%87p-s%E1%BB%91-11-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT010     ', N'Nguyễn Văn Toản', N'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-V%C4%83n-To%E1%BA%A3n-s%E1%BB%91-15-150x150.png', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT011     ', N'Phạm Văn Long', N'https://vpf.vn/wp-content/uploads/2018/12/Ph%E1%BA%A1m-V%C4%83n-Long-s%E1%BB%91-16-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D06CT012     ', N'Đào Văn Nam', N'https://vpf.vn/wp-content/uploads/2018/12/%C4%90%C3%A0o-V%C4%83n-Nam-s%E1%BB%91-17-150x150.jpg', N'G6DOI006       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT001     ', N'Nguyễn Ngọc Bin', N'https://vpf.vn/wp-content/uploads/2020/01/1-Nguyen-Ngoc-Bin-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT002     ', N'Đinh Viết Tú', N'https://vpf.vn/wp-content/uploads/2018/12/2-Dinh-Viet-Tu-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT003     ', N'Huỳnh Tấn Sinh', N'https://vpf.vn/wp-content/uploads/2018/12/3-Huynh-Tan-Sinh-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT004     ', N'Trần Văn Tâm', N'https://vpf.vn/wp-content/uploads/2018/12/4-Tran-Van-Tam-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT005     ', N'Đặng Hữu Phước', N'https://vpf.vn/wp-content/uploads/2018/12/6-dang-huu-Phuoc-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT006     ', N'Đinh Thanh Trung', N'https://vpf.vn/wp-content/uploads/2018/12/7-Dinh-Thanh-Trung-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT007     ', N'Jose Paulo Pinto', N'https://vpf.vn/wp-content/uploads/2020/01/8-Ze-Paulo-Oliveira-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT008     ', N'Hà Minh Tuấn', N'https://vpf.vn/wp-content/uploads/2018/12/9-Ha-Minh-Tuan-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT009     ', N'Phan Đình Thắng', N'https://vpf.vn/wp-content/uploads/2018/12/10-Phan-Dinh-Thang-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT010     ', N'Trịnh Duy Long', N'https://vpf.vn/wp-content/uploads/2018/12/12-Trinh-Duy-Long-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT011     ', N'Nguyễn Hoàng Quốc Chí', N'https://vpf.vn/wp-content/uploads/2018/12/13-Nguyen-Hoang-Quoc-Chi-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D07CT012     ', N'Nguyễn Huy Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/14-Nguyen-Huy-Hung-150x150.jpg', N'G6DOI007       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT001     ', N'Ngô Anh Vũ', N'https://vpf.vn/wp-content/uploads/2018/12/3.NgoAnhVu-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT002     ', N'Nguyễn Nam Anh', N'https://vpf.vn/wp-content/uploads/2018/12/5.NguyenNamAnh-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT003     ', N'Trần Văn Bửu', N'https://vpf.vn/wp-content/uploads/2019/02/6.TranVanBuu-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT004     ', N'Nguyễn Ngọc Duy', N'https://vpf.vn/wp-content/uploads/2018/12/7.NguyenNgocDuy-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT005     ', N'Nguyễn Vũ Tín', N'https://vpf.vn/wp-content/uploads/2018/12/8.NguyenVuTin-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT006     ', N'Trịnh Đức Lợi', N'https://vpf.vn/wp-content/uploads/2018/12/15.TrinhDucLoi-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT007     ', N'Bùi Trần Vũ', N'https://vpf.vn/wp-content/uploads/2018/12/16.BuiTranVu-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT008     ', N'Nguyễn Minh Trung', N'https://vpf.vn/wp-content/uploads/2018/12/17.NguyenMinhTrung-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT009     ', N'Lê Quốc Phương', N'https://vpf.vn/wp-content/uploads/2018/12/19.LeQuocPhuong-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT010     ', N'Nguyễn Thanh Thụ', N'https://vpf.vn/wp-content/uploads/2018/12/20.NguyenThanhThu-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT011     ', N'Nguyễn Quốc Long', N'https://vpf.vn/wp-content/uploads/2018/12/22.NguyenQuocLong-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D08CT012     ', N'Cao Văn Triền', N'https://vpf.vn/wp-content/uploads/2018/12/23.CaoVanTrien-150x150.jpg', N'G6DOI008       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT001     ', N'Phan Văn Biểu', N'https://vpf.vn/wp-content/uploads/2018/12/Phan-Van-Bieu-_1-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT002     ', N'Âu Văn Hoàn', N'https://vpf.vn/wp-content/uploads/2018/12/Au-Van-Hoan_2-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT003     ', N'TNguyễn Phi Hoàng', N'https://vpf.vn/wp-content/uploads/2020/01/Nguyen-Phi-Hoang_4-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT004     ', N'Mạc Đức Việt Anh', N'https://vpf.vn/wp-content/uploads/2018/12/Mac-Duc-Viet-Anh_5-150x150.jpg', N'G6DOI009       ')
GO
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT005     ', N'Đặng Anh Tuấn', N'https://vpf.vn/wp-content/uploads/2018/12/Dang-Anh-Tuan_6-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT006     ', N'Nguyễn Thanh Hải', N'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Thanh-Hai_7-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT007     ', N'Hà Đức Chinh', N'https://vpf.vn/wp-content/uploads/2018/12/Ha-%C4%90%E1%BB%A9c-Chinh_8-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT008     ', N'Phạm Trọng Hóa', N'https://vpf.vn/wp-content/uploads/2018/12/Pham-Trong-Hoa-_10-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT009     ', N'Phan Văn Long', N'https://vpf.vn/wp-content/uploads/2018/12/Phan-Van-Long_11-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT010     ', N'Hoàng Minh Tâm', N'https://vpf.vn/wp-content/uploads/2018/12/Hoang-Minh-Tam_12-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT011     ', N'Nguyễn Thanh Bình', N'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Thanh-Binh_13-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D09CT012     ', N'Võ Lý', N'https://vpf.vn/wp-content/uploads/2018/12/V%C3%B5-L%C3%BD_14-150x150.jpg', N'G6DOI009       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT001     ', N'Hồ Văn Tú', N'https://vpf.vn/wp-content/uploads/2018/12/1-Ho-Van-Tu-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT002     ', N'Võ Ngọc Đức', N'https://vpf.vn/wp-content/uploads/2018/12/2-Vo-Ngoc-Duc-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT003     ', N'Phạm Thế Nhật', N'https://vpf.vn/wp-content/uploads/2018/12/3-Pham-The-Nhat-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT004     ', N'Bùi Đình Châu', N'https://vpf.vn/wp-content/uploads/2019/03/4-Bui-Dinh-Chau-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT005     ', N'Hoàng Văn Khánh', N'https://vpf.vn/wp-content/uploads/2018/12/5-Hoang-Van-Khanh-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT006     ', N'Hồ Sỹ Sâm', N'https://vpf.vn/wp-content/uploads/2018/12/6-Ho-Sy-Sam-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT007     ', N'Phạm Xuân Mạnh', N'https://vpf.vn/wp-content/uploads/2018/12/7-Pham-Xuan-Mamh-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT008     ', N'Hồ Phúc Tịnh', N'https://vpf.vn/wp-content/uploads/2018/12/8-Ho-Phuc-Tinh-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT009     ', N'Hồ Tuấn Tài', N'https://vpf.vn/wp-content/uploads/2018/12/10-Ho-Tuan-Tai-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT010     ', N'Nguyễn Phú Nguyên', N'https://vpf.vn/wp-content/uploads/2018/12/11-Nguyen-Phu-Nguyen-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT011     ', N'Đặng Văn Lắm', N'https://vpf.vn/wp-content/uploads/2020/02/12-Dang-Van-Lam-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D10CT012     ', N'Nguyễn Văn Việt', N'https://vpf.vn/wp-content/uploads/2020/01/14-Nguyen-Van-Viet-150x150.jpg', N'G6DOI010       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT001     ', N'Phan Đình Vũ Hải', N'https://vpf.vn/wp-content/uploads/2018/12/Phan-Dinh-Vu-Hai-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT002     ', N'Dương Văn Khoa', N'https://vpf.vn/wp-content/uploads/2018/12/Duong-Van-Khoa-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT003     ', N'Dương Thanh Hào', N'https://vpf.vn/wp-content/uploads/2018/12/Duong-Thanh-Hao-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT004     ', N'Lê Tuấn Tú', N'https://vpf.vn/wp-content/uploads/2019/03/Le-Tuan-Tu-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT005     ', N'Nguyễn Xuân Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Xuan-Hung-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT006     ', N'Hồ Hùng Cường', N'https://vpf.vn/wp-content/uploads/2018/12/Ho-Hung-Cuong-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT007     ', N'Trịnh Hoa Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/Trinh-Hoa-Hung-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT008     ', N'Nguyễn Hải Huy', N'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Hai-Huy-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT009     ', N'Đào Nhật Minh', N'https://vpf.vn/wp-content/uploads/2018/12/Dao-Nhat-Minh-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT010     ', N'Phạm Trung Hiếu', N'https://vpf.vn/wp-content/uploads/2018/12/Pham-Trung-Hieu-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT011     ', N'Đoàn Văn Quý', N'https://vpf.vn/wp-content/uploads/2019/02/Doan-Van-Quy-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D11CT012     ', N'Lastro Neven', N'https://vpf.vn/wp-content/uploads/2019/02/Lastro-Neven-150x150.jpg', N'G6DOI011       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT001     ', N'Lương Bá Sơn', N'https://vpf.vn/wp-content/uploads/2018/12/1.-L%C6%B0%C6%A1ng-B%C3%A1-S%C6%A1n-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT002     ', N'Hoàng Đình Tùng', N'https://vpf.vn/wp-content/uploads/2018/12/2.-Ho%C3%A0ng-%C4%90%C3%ACnh-T%C3%B9ng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT003     ', N'Vũ Xuân Cường', N'https://vpf.vn/wp-content/uploads/2018/12/3.-V%C5%A9-Xu%C3%A2n-C%C6%B0%E1%BB%9Dng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT004     ', N'Trịnh Đình Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/2.-Ho%C3%A0ng-%C4%90%C3%ACnh-T%C3%B9ng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT005     ', N'Nguyễn Minh Tùng', N'https://vpf.vn/wp-content/uploads/2018/12/5.-Nguy%E1%BB%85n-Minh-T%C3%B9ng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT006     ', N'Josip Balic', N'https://vpf.vn/wp-content/uploads/2020/01/6.-Josip-Balic-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT007     ', N'Nguyễn Hữu Dũng', N'https://vpf.vn/wp-content/uploads/2018/12/7.-Nguy%E1%BB%85n-H%E1%BB%AFu-D%C5%A9ng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT008     ', N'Lê Văn Thắng', N'https://vpf.vn/wp-content/uploads/2018/12/8.-L%C3%AA-V%C4%83n-Th%E1%BA%AFng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT009     ', N'Lê Xuân Hùng', N'https://vpf.vn/wp-content/uploads/2018/12/9.-L%C3%AA-Xu%C3%A2n-H%C3%B9ng-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT010     ', N'Lê Phạm Thành Long', N'https://vpf.vn/wp-content/uploads/2018/12/11.-L%C3%AA-Ph%E1%BA%A1m-Th%C3%A0nh-Long-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT011     ', N'Trịnh Văn Lợi', N'https://vpf.vn/wp-content/uploads/2018/12/15.-Tr%E1%BB%8Bnh-V%C4%83n-L%E1%BB%A3i-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D12CT012     ', N'Hoàng Anh Tuấn', N'https://vpf.vn/wp-content/uploads/2018/12/16.-Ho%C3%A0ng-Anh-Tu%E1%BA%A5n-150x150.jpg', N'G6DOI012       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT001     ', N'Nguyễn Thanh Thắng', N'https://vpf.vn/wp-content/uploads/2018/12/1-NGUY%E1%BB%84N-THANH-TH%E1%BA%AENG-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT002     ', N'Ngô Tùng Quốc', N'https://vpf.vn/wp-content/uploads/2018/12/2-NG%C3%94-T%C3%99NG-QU%E1%BB%90C-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT003     ', N'Nguyễn Tăng Tiến', N'https://vpf.vn/wp-content/uploads/2018/12/4-NGUY%E1%BB%84N-T%C4%82NG-TI%E1%BA%BEN-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT004     ', N'Ngô Viết Phú', N'https://vpf.vn/wp-content/uploads/2018/12/5-NG%C3%94-VI%E1%BA%BET-PH%C3%9A-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT005     ', N'Sầm Ngọc Đức', N'https://vpf.vn/wp-content/uploads/2018/12/7-S%E1%BA%A6M-NG%E1%BB%8CC-%C4%90%E1%BB%A8C-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT006     ', N'Trần Thanh Bình', N'https://vpf.vn/wp-content/uploads/2018/12/8-TR%E1%BA%A6N-THANH-B%C3%8CNH-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT007     ', N'Ngô Hoàng Thịnh', N'https://vpf.vn/wp-content/uploads/2018/12/9-NG%C3%94-HO%C3%80NG-TH%E1%BB%8ANH-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT008     ', N'Trần Phi Sơn', N'https://vpf.vn/wp-content/uploads/2018/12/10-TR%E1%BA%A6N-PHI-S%C6%A0N-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT009     ', N'Nguyễn Xuân Nam', N'https://vpf.vn/wp-content/uploads/2019/04/11-NGUY%E1%BB%84N-XU%C3%82N-NAM-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT01      ', N'Nguyễn Hữu Tuấn', N'https://vpf.vn/wp-content/uploads/2020/01/15-NGUY%E1%BB%84N-H%E1%BB%AEU-TU%E1%BA%A4N-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT010     ', N'Lê Đức Lương', N'https://vpf.vn/wp-content/uploads/2018/12/12-L%C3%8A-%C4%90%E1%BB%A8C-L%C6%AF%C6%A0NG-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D13CT011     ', N'Đỗ Văn Thuận', N'https://vpf.vn/wp-content/uploads/2018/12/14-%C4%90%E1%BB%96-V%C4%82N-THU%E1%BA%ACN-150x150.jpg', N'G6DOI013       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT001     ', N'Ngô Xuân Sơn', N'https://vpf.vn/wp-content/uploads/2018/12/1-.NGO-XUAN-SON-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT002     ', N'Quế Ngọc Hải', N'https://vpf.vn/wp-content/uploads/2018/12/3-QUE-NGOC-HAI-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT003     ', N'Bùi Tiến Dũng', N'https://vpf.vn/wp-content/uploads/2018/12/4-BUI-TIEN-DUNG-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT004     ', N'Trương Văn Thiết', N'https://vpf.vn/wp-content/uploads/2018/12/5-TRUONG-VAN-THIET-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT005     ', N'Vũ Minh Tuấn', N'https://vpf.vn/wp-content/uploads/2018/12/6-VU-MINH-TUAN-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT006     ', N'Nguyễn Trọng Hoàng', N'https://vpf.vn/wp-content/uploads/2018/12/8-NGUYEN-TRONG-HOANG-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT007     ', N'Trần Ngọc Sơn', N'https://vpf.vn/wp-content/uploads/2018/12/9-.TRAN-NGOC-SON--150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT008     ', N'Đặng Văn Trâm', N'https://vpf.vn/wp-content/uploads/2018/12/10-DANG-VAN-TRAM-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT009     ', N'Nguyễn Việt Phong', N'https://vpf.vn/wp-content/uploads/2018/12/11-NGUYEN-VIET-PHONG-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT010     ', N'Hồ Khắc Ngọc', N'https://vpf.vn/wp-content/uploads/2018/12/12-HO-KHAC-NGOC-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT011     ', N'Bùi Quang Khải', N'https://vpf.vn/wp-content/uploads/2018/12/14-.-BUI-QUANG-KHAI-150x150.jpg', N'G6DOI014       ')
INSERT [dbo].[CAUTHU] ([ID_CauThu], [TenCauThu], [Source_HACT], [ID_DoiBong]) VALUES (N'G6D14CT012     ', N'Nguyễn Đức Hoàng Minh', N'https://vpf.vn/wp-content/uploads/2018/12/17-NGUYEN-DUC-HOANG-MINH-150x150.jpg', N'G6DOI014       ')
GO
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI001       ', N'Becamax Bình Dương', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-becamex-binh-duong.png', N'https://www.keonhanh.com/wp-content/uploads/2018/11/cau-lac-bo-bong-da-becamex-binh-duong.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI002       ', N'Dược Nam Hà Nam Định', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-nam-dinh-fc.png', N'https://static.bongda24h.vn/medias/amp/2020/8/4/cau-lac-bo-bong-da-nam-dinh.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI003       ', N'Hà Nội', N'https://vpf.vn/wp-content/uploads/2018/10/Logo-CLB-Hanoi-5stars.png', N'https://static.bongda24h.vn/medias/standard/2019/2/13/51733944_2676785098999095_8505491922893144064_n.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI004       ', N'Hải Phòng', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-hai-phong-fc.png', N'https://cdn.24h.com.vn/upload/1-2020/images/2020-03-05/CLB-Hai-Phong-va-bong-da--1--1583401064-256-width660height440.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI005       ', N'Hoàng Anh Gia Lai', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-hoang-anh-gia-lai-fc.png', N'https://thethaovn.net/wp-content/uploads/2020/07/clb-hagl-so-huu-thanh-tich-vo-doi-o-san-nha-mua-giai-nam-nay.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI006       ', N'Hồng Lĩnh Hà Tĩnh', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-hong-linh-ha-tinh-fc.png', N'https://photo-1-baomoi.zadn.vn/w1000_r1/2020_07_12_293_35662155/fe8f529ee1dd088351cc.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI007       ', N'Quảng Nam', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-quang-nam-fc.png', N'https://www.keonhanh.com/wp-content/uploads/2019/01/cac-cau-thu-clb-quang-nam-1.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI008       ', N'Sài Gòn', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-sai-gon-fc.png', N'https://sohanews.sohacdn.com/thumb_w/660/2017/clb-sai-gon-anh-hoang-trieu-2-1483416588683-0-0-409-660-crop-1483416604219.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI009       ', N'SHB Đà Nẵng', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-shb-da-nang.png', N'https://danviet.mediacdn.vn/upload/1-2020/images/2020-02-07/SHB-da-Nang-Ngoai-binh-troi-au-va-ao-dau-cuc-chat-cho-mua-giai-moi-maxresdefault-1581068992-width1280height720.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI010       ', N'Sông Lam Nghệ An', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-song-lam-nghe-an.png', N'http://www.slnafc.com/Uploads/images/Tin%20tuc%202017/Slide-22400%20(700%20x%20310).jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI011       ', N'Than Quảng Ninh', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-than-quang-ninh.png', N'https://lh3.googleusercontent.com/proxy/pKFuqDecWuqg0Sdtl0Yyg20BsSqv9OvjQH4rzJy1yl4xVqItui9AnAferJZ_3yO6iADfZ7lI3iR024dM0rXNLubElVljpH89Bc-yh0QmwcmQ6u-9P8EHYAS4=s0-d')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI012       ', N'Thanh Hóa', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-flc-thanh-hoa.png', N'https://media.bongda.com.vn/files/vien.le/2016/12/29/anh1-0703.jpg')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI013       ', N'TP Hồ Chí Minh', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-ho-chi-minh-fc.png', N'https://media.thethao247.vn/upload/anhquan/2020/02/29/IMG_3884.JPG')
INSERT [dbo].[DOIBONG] ([ID_DoiBong], [TenDoi], [Source_Logo], [Source_Banner]) VALUES (N'G6DOI014       ', N'Viettel', N'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-viettel.png', N'https://photo-1-baomoi.zadn.vn/w1000_r1/2018_12_28_16_29169636/31fd54e31ca2f5fcacb3.jpg')
GO
SET IDENTITY_INSERT [dbo].[HASHTAG] ON 

INSERT [dbo].[HASHTAG] ([ID_Hashtag], [Hashtag]) VALUES (1, N'Vi?t Nam')
INSERT [dbo].[HASHTAG] ([ID_Hashtag], [Hashtag]) VALUES (2, N'Nu?c ngoài')
SET IDENTITY_INSERT [dbo].[HASHTAG] OFF
GO
SET IDENTITY_INSERT [dbo].[HINHANH] ON 

INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (1, N'https://znews-photo.zadn.vn/w1024/Uploaded/yrfjpyvslyr/2020_10_15/hagl_zing.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (2, N'https://znews-photo.zadn.vn/w1024/Uploaded/yrfjpyvslyr/2020_10_15/hagl_1_zing.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (3, N'https://znews-photo.zadn.vn/w660/Uploaded/ihvunvj/2020_10_15/futsalvietnam_1.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (4, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_15/6_zing_3_.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (5, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_15/2_zing.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (6, N'https://znews-photo.zadn.vn/w660/Uploaded/yrfjpyvslyr/2020_10_15/u23_thuong_chau_zing_4.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (7, N'https://znews-photo.zadn.vn/w660/Uploaded/ofh_huqfztmf/2020_10_14/bruno_fernandes_mu_0.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (8, N'https://znews-photo.zadn.vn/Uploaded/bzcwvobl/2020_10_15/Harry4.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (9, N'https://znews-photo.zadn.vn/Uploaded/bzcwvobl/2020_10_15/Harry.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (10, N'https://znews-photo.zadn.vn/Uploaded/bzcwvobl/2020_10_15/jacj2.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (11, N'https://znews-photo.zadn.vn/Uploaded/bzcwvobl/2020_10_15/jack3.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (12, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_15/1.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (13, N'https://znews-photo.zadn.vn/w660/Uploaded/ofh_huqfztmf/2020_01_22/Chiellini_Juventus_2018_800x504.jpeg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (14, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_15/1_1.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (15, N'https://znews-photo.zadn.vn/w1024/Uploaded/mdf_drokxr/2020_10_15/ronaldo_1.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (16, N'https://znews-photo.zadn.vn/w1024/Uploaded/mdf_drokxr/2020_10_15/ronaldo_2.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (17, N'https://znews-photo.zadn.vn/w1024/Uploaded/mdf_drokxr/2020_10_15/ronaldo_3.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (18, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_15/z111.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (19, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_15/2020_10_14T201054Z_484851570_UP1EGAE1K260N_RTRMADP_3_SOCCER_UEFANATIONS_ITA_NLD_REPORT.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (20, N'https://znews-photo.zadn.vn/w660/Uploaded/qxjrcqjwq/2020_10_14/0fcda056_8cc4_4468_bd91_009dd9f8a412.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (21, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_14/6_zing.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (22, N'https://znews-photo.zadn.vn/w660/Uploaded/natmzz/2020_10_14/4_zing_2_.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (23, N'https://znews-photo.zadn.vn/Uploaded/ofh_huqfztmf/2020_10_14/2020_10_13T200621Z_1184949575_UP1EGAD1JULPO_RTRMADP_3_SOCCER_UEFANATIONS_GER_SWI_REPORT.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (24, N'https://znews-photo.zadn.vn/Uploaded/ofh_huqfztmf/2020_10_14/low.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (25, N'https://znews-photo.zadn.vn/w660/Uploaded/neg_etpyole/2020_10_14/2020_10_14T015609Z_2142886859_RC21IJ9JKTZL_RTRMADP_3_SOCCER_WORLDCUP_PER_BRA_REPORT.JPG')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (26, N'https://znews-photo.zadn.vn/w660/Uploaded/jopluat/2020_07_30/Tuyen_Viet_Nam_zing.jpg')
INSERT [dbo].[HINHANH] ([ID_HinhAnh], [Source_HinhAnh]) VALUES (27, N'https://znews-photo.zadn.vn/w660/Uploaded/aopuoax/2020_10_14/cong_phuong_clb_sai_gon_zing.jpg')
SET IDENTITY_INSERT [dbo].[HINHANH] OFF
GO
SET IDENTITY_INSERT [dbo].[HINHANH_QC] ON 

INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (1, N'https://vnanet.vn/Data/Articles/2019/02/24/3733226/vna_potal_v_league_2019_cau_lac_bo_nam_dinh_danh_chien_thang_thuyet_phuc_tren_san_nha_stand.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (2, N'https://vff.org.vn/uploads/images/HNQG/Chiu-choi-nhu-Hoi-CDV-Than-Quang-Ninh.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (3, N'https://media.laodong.vn/Storage/NewsPortal/2020/7/17/820451/Phao-Sang-Hai-Phong--01.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (4, N'https://i.ytimg.com/vi/lQ0g8cwaE3k/maxresdefault.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (5, N'https://static.bongda24h.vn/medias/amp/2019/4/26/clip-hai-phong-vs-binh-duong-32-highlights-vleague-2019.png')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (6, N'https://vnanet.vn/Data/Articles/2019/02/24/3733226/vna_potal_v_league_2019_cau_lac_bo_nam_dinh_danh_chien_thang_thuyet_phuc_tren_san_nha_stand.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (7, N'https://vff.org.vn/uploads/images/HNQG/Chiu-choi-nhu-Hoi-CDV-Than-Quang-Ninh.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (8, N'https://media.laodong.vn/Storage/NewsPortal/2020/7/17/820451/Phao-Sang-Hai-Phong--01.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (9, N'https://i.ytimg.com/vi/lQ0g8cwaE3k/maxresdefault.jpg')
INSERT [dbo].[HINHANH_QC] ([ID_HA_QC], [Source_HinhAnh_QC]) VALUES (10, N'https://static.bongda24h.vn/medias/amp/2019/4/26/clip-hai-phong-vs-binh-duong-32-highlights-vleague-2019.png')
SET IDENTITY_INSERT [dbo].[HINHANH_QC] OFF
GO
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD01           ', N'KH01           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD02           ', N'KH02           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD03           ', N'KH03           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD04           ', N'KH04           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD05           ', N'KH05           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD06           ', N'KH06           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD07           ', N'KH07           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD08           ', N'KH08           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD09           ', N'KH09           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD10           ', N'KH10           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD11           ', N'KH11           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([ID_HoaDon], [ID_KhachHang], [ThoiGian]) VALUES (N'HD12           ', N'KH12           ', CAST(N'2020-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH01           ', N'Phạm Thanh Thảo', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH02           ', N'Đào Đức Nhật', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH03           ', N'Lê Phú Hưng', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH04           ', N'Phạm Thanh Thảo', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH05           ', N'Đào Đức Nhật', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH06           ', N'Lê Phú Hưng', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH07           ', N'Phạm Thanh Thảo', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH08           ', N'Đào Đức Nhật', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH09           ', N'Lê Phú Hưng', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH10           ', N'Phạm Thanh Thảo', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH11           ', N'Đào Đức Nhật', N'215/58 Quang Trung', N'0523365859     ')
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [HoTen], [DiaChi], [SDT]) VALUES (N'KH12           ', N'Lê Phú Hưng', N'215/58 Quang Trung', N'0523365859     ')
GO
INSERT [dbo].[LOAITHANHTICH] ([ID_LoaiThanhTich], [TenLoaiThanhTich]) VALUES (N'ARCH001        ', N'Thành tích của đội bóng')
INSERT [dbo].[LOAITHANHTICH] ([ID_LoaiThanhTich], [TenLoaiThanhTich]) VALUES (N'ARCH002        ', N'Thành tích của cầu thủ')
GO
INSERT [dbo].[LOAITIN] ([ID_LoaiTin], [TenLoaiTin]) VALUES (N'LOAITIN01      ', N'Tin tức trong tuần')
INSERT [dbo].[LOAITIN] ([ID_LoaiTin], [TenLoaiTin]) VALUES (N'LOAITIN02      ', N'Tin tức chuyển nhượng')
GO
INSERT [dbo].[LOAIVE] ([ID_LoaiVe], [TenLoaiVe], [SoLuong], [GiaVe]) VALUES (N'LOAIVE01       ', N'KHÁN ĐÀI A', 7500, 500000)
INSERT [dbo].[LOAIVE] ([ID_LoaiVe], [TenLoaiVe], [SoLuong], [GiaVe]) VALUES (N'LOAIVE02       ', N'KHÁN ĐÀI B', 7500, 500000)
INSERT [dbo].[LOAIVE] ([ID_LoaiVe], [TenLoaiVe], [SoLuong], [GiaVe]) VALUES (N'LOAIVE03       ', N'KHÁN ĐÀI C', 5000, 300000)
INSERT [dbo].[LOAIVE] ([ID_LoaiVe], [TenLoaiVe], [SoLuong], [GiaVe]) VALUES (N'LOAIVE04       ', N'KHÁN ĐÀI D', 5000, 300000)
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5eb9a489-dc75-4a22-8fde-4f6e41b88173', N'VipUser', N'VIPUSER', N'f5ff47a6-69a2-48e8-a3f4-8e9989b72fde')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'af431c9d-2bc8-4ca6-ac37-ab6d224c2c68', N'Admin', N'ADMIN', N'4bae8e64-3d97-4a96-a819-57750ed3f869')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd43ee311-e4ac-4317-b53b-e31aa19831bd', N'User', N'USER', N'12e98789-8fa9-4cc6-bf92-85f8d7f5b94a')
GO
SET IDENTITY_INSERT [dbo].[sub_TIN_VIDEO] ON 

INSERT [dbo].[sub_TIN_VIDEO] ([ID_sub_TIN_VIDEO], [ID_TIN_VIDEO], [ID_VIDEO]) VALUES (1, N'TINVIDEO01     ', 1)
INSERT [dbo].[sub_TIN_VIDEO] ([ID_sub_TIN_VIDEO], [ID_TIN_VIDEO], [ID_VIDEO]) VALUES (2, N'TINVIDEO02     ', 2)
INSERT [dbo].[sub_TIN_VIDEO] ([ID_sub_TIN_VIDEO], [ID_TIN_VIDEO], [ID_VIDEO]) VALUES (3, N'TINVIDEO03     ', 3)
INSERT [dbo].[sub_TIN_VIDEO] ([ID_sub_TIN_VIDEO], [ID_TIN_VIDEO], [ID_VIDEO]) VALUES (4, N'TINVIDEO04     ', 4)
SET IDENTITY_INSERT [dbo].[sub_TIN_VIDEO] OFF
GO
SET IDENTITY_INSERT [dbo].[sub_TINTUC] ON 

INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (1, N'TINTUC01       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (2, N'TINTUC01       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (3, N'TINTUC01       ', 1, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (4, N'TINTUC01       ', NULL, 1, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (5, N'TINTUC02       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (6, N'TINTUC02       ', 2, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (7, N'TINTUC02       ', NULL, 1, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (8, N'TINTUC03       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (9, N'TINTUC03       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (10, N'TINTUC03       ', 3, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (11, N'TINTUC03       ', NULL, 1, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (12, N'TINTUC04       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (13, N'TINTUC04       ', 4, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (14, N'TINTUC04       ', NULL, 2, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (15, N'TINTUC05       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (16, N'TINTUC05       ', 5, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (17, N'TINTUC05       ', NULL, 2, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (18, N'TINTUC06       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (19, N'TINTUC06       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (20, N'TINTUC06       ', 6, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (21, N'TINTUC06       ', NULL, 2, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (22, N'TINTUC07       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (23, N'TINTUC07       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (24, N'TINTUC07       ', 7, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (25, N'TINTUC07       ', NULL, 2, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (26, N'TINTUC08       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (27, N'TINTUC08       ', 8, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (28, N'TINTUC08       ', NULL, 2, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (29, N'TINTUC09       ', NULL, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (30, N'TINTUC09       ', 9, NULL, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (31, N'TINTUC09       ', NULL, 2, N'LOAITIN01      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (32, N'TINTUC10       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (33, N'TINTUC10       ', 10, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (34, N'TINTUC10       ', NULL, 2, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (35, N'TINTUC11       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (36, N'TINTUC11       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (37, N'TINTUC11       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (38, N'TINTUC11       ', 11, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (39, N'TINTUC11       ', NULL, 2, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (40, N'TINTUC12       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (41, N'TINTUC12       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (42, N'TINTUC12       ', 12, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (43, N'TINTUC12       ', NULL, 2, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (44, N'TINTUC13       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (45, N'TINTUC13       ', 13, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (46, N'TINTUC13       ', NULL, 2, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (47, N'TINTUC14       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (48, N'TINTUC14       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (49, N'TINTUC14       ', 14, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (50, N'TINTUC14       ', NULL, 1, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (51, N'TINTUC15       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (52, N'TINTUC15       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (53, N'TINTUC15       ', 15, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (54, N'TINTUC15       ', NULL, 2, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (55, N'TINTUC16       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (56, N'TINTUC16       ', 16, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (57, N'TINTUC16       ', NULL, 2, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (58, N'TINTUC17       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (59, N'TINTUC17       ', 17, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (60, N'TINTUC17       ', NULL, 1, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (61, N'TINTUC18       ', NULL, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (62, N'TINTUC18       ', 18, NULL, N'LOAITIN02      ')
INSERT [dbo].[sub_TINTUC] ([ID_sub_TT], [ID_Tintuc], [ID_HinhAnh], [ID_Hashtag], [ID_LoaiTin]) VALUES (63, N'TINTUC18       ', NULL, 1, N'LOAITIN02      ')
SET IDENTITY_INSERT [dbo].[sub_TINTUC] OFF
GO
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO001      ', N'https://brasol.vn/public/ckeditor/uploads/thiet-ke-logo-tin-tuc/logo-pepsi.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO002      ', N'https://iweb.tatthanh.com.vn/pic/3/blog/y-nghia-logo-cocacola.jpg')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO003      ', N'https://seeklogo.com/images/M/mirinda-logo-C787A1BEBA-seeklogo.com.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO004      ', N'https://vnpay.vn/wp-content/uploads/2020/03/thtruemartlogo.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO005      ', N'https://dulichvui.net/datafiles/setone/1525235731_logo-vj.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO006      ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQwyZCmBzaYcdiS494RfK0ci03sTIBxsX3Ykg&usqp=CAU')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO007      ', N'https://www.ngoisaoso.vn/uploads/news/2016/05/12/he-thong-nhan-dien-thuong-hieu-vinamilk-2.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO008      ', N'https://www.mekongcapital.com/uploads/investment/2019/05/08/5cd23b038b055.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO009      ', N'https://upload.wikimedia.org/wikipedia/en/e/ed/Bamboo-logo.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO010      ', N'https://vn-live-03.slatic.net/original/ec7a26932ab6cb71de5bc2873727ba2c.jpg')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO011      ', N'https://sgp1.digitaloceanspaces.com/quickcompany/trademark/a8a5c800a6a45ab1.jpg')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO012      ', N'https://cdn.printgo.vn/uploads/file-logo/1/512x512.97513bc718382ec904c4d87ff81eb36a.ai.1.png')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO013      ', N'https://rubee.com.vn/admin/webroot/upload/image//images/tin-tuc/logo-tiki-1.jpg')
INSERT [dbo].[TAITRO] ([ID_TaiTro], [Source_Logo]) VALUES (N'TAITRO014      ', N'https://tiepthigiadinh.vn/wp-content/uploads/2019/06/Lazada-master-logo.png')
GO
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US01           ', N'Hoàng Nam', N'hoangnam123', N'Nam25693', N'nguyenhoangnam123@gmail.com', N'0523365859     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US012          ', N'Minh Đức', N'minhduc123', N'duc25693', N'vuminhduc123@gmail.com', N'0979521259     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US02           ', N'Minh Thiên', N'minhthien123', N'thien25693', N'minhthien123@gmail.com', N'0979528720     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US03           ', N'Minh Đức', N'minhduc123', N'duc25693', N'vuminhduc123@gmail.com', N'0979521259     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US04           ', N'Hoàng Nam', N'hoangnam123', N'Nam25693', N'nguyenhoangnam123@gmail.com', N'0523365859     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US05           ', N'Minh Thiên', N'minhthien123', N'thien25693', N'minhthien123@gmail.com', N'0979528720     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US06           ', N'Minh Đức', N'minhduc123', N'duc25693', N'vuminhduc123@gmail.com', N'0979521259     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US07           ', N'Hoàng Nam', N'hoangnam123', N'Nam25693', N'nguyenhoangnam123@gmail.com', N'0523365859     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US08           ', N'Minh Thiên', N'minhthien123', N'thien25693', N'minhthien123@gmail.com', N'0979528720     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US09           ', N'Minh Đức', N'minhduc123', N'duc25693', N'vuminhduc123@gmail.com', N'0979521259     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US10           ', N'Hoàng Nam', N'hoangnam123', N'Nam25693', N'nguyenhoangnam123@gmail.com', N'0523365859     ')
INSERT [dbo].[tb_USER] ([ID_User], [HoTen], [TaiKhoan], [MatKhau], [Email], [SDT]) VALUES (N'US11           ', N'Minh Thiên', N'minhthien123', N'thien25693', N'minhthien123@gmail.com', N'0979528720     ')
GO
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D01ARCH001   ', N'Vô địch quốc gia 2019', N'ARCH001        ', N'G6DOI001       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D01ARCH002   ', N'Vô địch AFC Cup 2019', N'ARCH001        ', N'G6DOI001       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D01ARCH003   ', N'Hồ Tấn Tài cầu thủ xuất sắc nhất năm 2019', N'ARCH002        ', N'G6DOI001       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D01ARCH004   ', N'Phạm Văn Tiến thủ môn xuất sắc nhất năm 2019', N'ARCH002        ', N'G6DOI001       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D02ARCH001   ', N'Vô địch quốc gia 2018', N'ARCH001        ', N'G6DOI002       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D02ARCH002   ', N'Vô địch AFC Cup 2018', N'ARCH001        ', N'G6DOI002       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D02ARCH003   ', N'Trần Mạnh Hùng cầu thủ xuất sắc nhất năm 2018', N'ARCH002        ', N'G6DOI002       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D02ARCH004   ', N'Trần Liêm Điều thủ môn xuất sắc nhất năm 2018', N'ARCH002        ', N'G6DOI002       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D03ARCH001   ', N'Vô địch quốc gia 2017', N'ARCH001        ', N'G6DOI003       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D03ARCH003   ', N'Đoàn Văn Hậu cầu thủ xuất sắc nhất năm 2017', N'ARCH002        ', N'G6DOI003       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D03ARCH004   ', N'Bùi Tấn Trường thủ môn xuất sắc nhất năm 2017', N'ARCH002        ', N'G6DOI003       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D04ARCH001   ', N'Vô địch quốc gia 2016', N'ARCH001        ', N'G6DOI004       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D04ARCH002   ', N'Vô địch AFC Cup 2016', N'ARCH001        ', N'G6DOI004       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D04ARCH003   ', N'Phạm Mạnh Hùng cầu thủ xuất sắc nhất năm 2016', N'ARCH002        ', N'G6DOI004       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D04ARCH004   ', N'Nguyễn Văn Phong thủ môn xuất sắc nhất năm 2016', N'ARCH002        ', N'G6DOI004       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D05ARCH001   ', N'Vô địch quốc gia 2015', N'ARCH001        ', N'G6DOI005       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D05ARCH002   ', N'Vô địch AFC Cup 2015', N'ARCH001        ', N'G6DOI005       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D05ARCH003   ', N'Nguyễn Hữu Anh Tài cầu thủ xuất sắc nhất năm 2015', N'ARCH002        ', N'G6DOI005       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D05ARCH004   ', N'Trần Bửu Ngọc thủ môn xuất sắc nhất năm 2015', N'ARCH002        ', N'G6DOI005       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D06ARCH001   ', N'Vô địch quốc gia 2014', N'ARCH001        ', N'G6DOI006       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D06ARCH002   ', N'Vô địch AFC Cup 2014', N'ARCH001        ', N'G6DOI006       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D06ARCH003   ', N'Vũ Hữu Quý cầu thủ xuất sắc nhất năm 2014', N'ARCH002        ', N'G6DOI006       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D06ARCH004   ', N'Nguyễn Hoài Anh thủ môn xuất sắc nhất năm 2014', N'ARCH002        ', N'G6DOI006       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D07ARCH001   ', N'Vô địch quốc gia 2013', N'ARCH001        ', N'G6DOI007       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D07ARCH002   ', N'Vô địch AFC Cup 2013', N'ARCH001        ', N'G6DOI007       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D07ARCH003   ', N'Huỳnh Tấn Sinh cầu thủ xuất sắc nhất năm 2013', N'ARCH002        ', N'G6DOI007       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D07ARCH004   ', N'Nguyễn Ngọc Bin thủ môn xuất sắc nhất năm 2013', N'ARCH002        ', N'G6DOI007       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D08ARCH001   ', N'Vô địch quốc gia 2012', N'ARCH001        ', N'G6DOI008       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D08ARCH002   ', N'Vô địch AFC Cup 2012', N'ARCH001        ', N'G6DOI008       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D08ARCH003   ', N'Ngô Anh Vũ cầu thủ xuất sắc nhất năm 2012', N'ARCH002        ', N'G6DOI008       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D08ARCH004   ', N'Trần Văn Bửu thủ môn xuất sắc nhất năm 2012', N'ARCH002        ', N'G6DOI008       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D09ARCH001   ', N'Vô địch quốc gia 2011', N'ARCH001        ', N'G6DOI009       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D09ARCH002   ', N'Vô địch AFC Cup 2011', N'ARCH001        ', N'G6DOI009       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D09ARCH003   ', N'Âu Văn Hoàn cầu thủ xuất sắc nhất năm 2011', N'ARCH002        ', N'G6DOI009       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D09ARCH004   ', N'Phan Văn Biểu thủ môn xuất sắc nhất năm 2011', N'ARCH002        ', N'G6DOI009       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D10ARCH001   ', N'Vô địch quốc gia 2010', N'ARCH001        ', N'G6DOI010       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D10ARCH002   ', N'Vô địch AFC Cup 2010', N'ARCH001        ', N'G6DOI010       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D10ARCH003   ', N'Võ Ngọc Đức cầu thủ xuất sắc nhất năm 2010', N'ARCH002        ', N'G6DOI010       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D10ARCH004   ', N'Hồ Văn Tú thủ môn xuất sắc nhất năm 2010', N'ARCH002        ', N'G6DOI010       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D11ARCH001   ', N'Vô địch quốc gia 2009', N'ARCH001        ', N'G6DOI011       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D11ARCH002   ', N'Vô địch AFC Cup 2009', N'ARCH001        ', N'G6DOI011       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D11ARCH003   ', N'Lê Tuấn Tú cầu thủ xuất sắc nhất năm 2009', N'ARCH002        ', N'G6DOI011       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D11ARCH004   ', N'Phan Đình Vũ Hải thủ môn xuất sắc nhất năm 2009', N'ARCH002        ', N'G6DOI011       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D12ARCH001   ', N'Vô địch quốc gia 2008', N'ARCH001        ', N'G6DOI012       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D12ARCH002   ', N'Vô địch AFC Cup 2008', N'ARCH001        ', N'G6DOI012       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D12ARCH003   ', N'Hoàng Đình Tùng cầu thủ xuất sắc nhất năm 2008', N'ARCH002        ', N'G6DOI012       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D12ARCH004   ', N'Lương Bá Sơn thủ môn xuất sắc nhất năm 2008', N'ARCH002        ', N'G6DOI012       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D13ARCH001   ', N'Vô địch quốc gia 2007', N'ARCH001        ', N'G6DOI013       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D13ARCH002   ', N'Vô địch AFC Cup 2007', N'ARCH001        ', N'G6DOI013       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D13ARCH003   ', N'Sầm Ngọc Đức cầu thủ xuất sắc nhất năm 2007', N'ARCH002        ', N'G6DOI013       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D13ARCH004   ', N'Nguyễn Thanh Thắng thủ môn xuất sắc nhất năm 2007', N'ARCH002        ', N'G6DOI013       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D14ARCH001   ', N'Vô địch quốc gia 2006', N'ARCH001        ', N'G6DOI014       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D14ARCH002   ', N'Vô địch AFC Cup 2006', N'ARCH001        ', N'G6DOI014       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D14ARCH003   ', N'Quế Ngọc Hải cầu thủ xuất sắc nhất năm 2006', N'ARCH002        ', N'G6DOI014       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D14ARCH004   ', N'Ngô Xuân Sơn thủ môn xuất sắc nhất năm 2006', N'ARCH002        ', N'G6DOI014       ')
INSERT [dbo].[THANHTICH] ([ID_ThanhTich], [TenThanhTich], [ID_LoaiThanhTich], [ID_DoiBong]) VALUES (N'G6D3ARCH002    ', N'Vô địch AFC Cup 2017', N'ARCH001        ', N'G6DOI003       ')
GO
SET IDENTITY_INSERT [dbo].[Thong_Tin_Xep_Hang] ON 

INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (1, N'G6DOI001       ', 10, 9, 1, 0, N'10        ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (2, N'G6DOI002       ', 10, 8, 2, 0, N'10        ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (3, N'G6DOI003       ', 10, 8, 1, 1, N'9         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (4, N'G6DOI004       ', 10, 8, 1, 1, N'8         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (5, N'G6DOI005       ', 10, 7, 2, 1, N'8         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (6, N'G6DOI006       ', 10, 7, 1, 2, N'4         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (7, N'G6DOI007       ', 10, 6, 2, 2, N'3         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (8, N'G6DOI008       ', 10, 6, 1, 3, N'3         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (9, N'G6DOI009       ', 10, 4, 4, 2, N'0         ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (10, N'G6DOI010       ', 10, 3, 5, 2, N'-3        ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (11, N'G6DOI011       ', 10, 2, 2, 6, N'-8        ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (12, N'G6DOI012       ', 10, 2, 1, 7, N'-10       ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (13, N'G6DOI013       ', 10, 1, 1, 8, N'-12       ', 0)
INSERT [dbo].[Thong_Tin_Xep_Hang] ([ID_Thu_Tu], [ID_DoiBong], [SoTran], [Thang], [Hoa], [Thua], [HieuSo], [Diem]) VALUES (14, N'G6DOI014       ', 10, 0, 3, 7, N'-10       ', 0)
SET IDENTITY_INSERT [dbo].[Thong_Tin_Xep_Hang] OFF
GO
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D01INFO      ', N'156 Nguyễn Văn Lương, Phường 6, TP Thủ Dầu Một', N'0909010574     ', N'becamexbinhduong@gmail.com', N'http://www.bongdabinhduong.com/', N'SVĐ Bình Dương', 13035, N'Nguyễn Trung Kiên', N'Trần Minh Chiến', N'Nguyễn Bảo Long', N'Lê Minh Đức', N'Pepsi', N'G6DOI001       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D02INFO      ', N'247 Nguyễn Tri Phương, Phường 7, TP Nam Định', N'0909010564     ', N'namdinhfc@gmail.com', N'https://www.facebook.com/CLBBongDaDuocNamHaNamDinh/', N'SVĐ Thiên Trường', 15035, N'Nguyễn Võ Tùng Dương', N'Nguyễn Phương Nam', N'Nguyễn Trần Trung Quân', N'Lê Hoàng Nam', N'CocaCola', N'G6DOI002       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D03INFO      ', N'139 Phố Hàng Đào, Phường 5, TP Hà Nội', N'0909010554     ', N'hanoifc@gmail.com', N'http://hanoifc.com.vn/', N'SVĐ Hàng Đẫy', 14035, N'Hà Thanh Bình', N'Võ Thành Vương', N'Lê Lâm Trường', N'Nguyễn Doãn Hào', N'Mirinda', N'G6DOI003       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D04INFO      ', N'47 Trần Duy Dương, Phường 4, TP Hải Phòng', N'0909010544     ', N'haiphongfc@gmail.com', N'https://hpfc.vn/clb-bong-da-hai-phong/', N'SVĐ Lạch Tray', 11035, N'Trần Trung Chính', N'Trần Quang Huy', N'Cao Đức Long', N'Lê Ngọc Trung Hiếu', N'TH True Milk', N'G6DOI004       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D05INFO      ', N'18 Lê Hồng Phong, Phường 3, TP DakLak', N'0909010534     ', N'haglfc@gmail.com', N'http://haglfc.com.vn/', N'SVĐ Pleiku', 16035, N'Nguyễn Hữu Duật', N'Nguyễn Phúc Luân', N'Nguyễn Hoàng Bảo', N'Vũ Minh Đức', N'VietjetAir', N'G6DOI005       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D06INFO      ', N'75 Trần Phú, Phường 2, TP Hà Tĩnh', N'0909010524     ', N'hatinhfc@gmail.com', N'https://vi-vn.facebook.com/HongLinhHaTinhOfficial/', N'SVĐ Hà Tĩnh', 9035, N'Lê Ngọc Thành Trung', N'Trần Thành Đạt', N'Nguyễn Tiến Đạt', N'Lê Huỳnh Phương', N'Vietnamairlines', N'G6DOI006       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D07INFO      ', N'564 Bình Giã, Phường 1, TP Quảng Nam', N'0909010514     ', N'quangnamfc@gmail.com', N'https://www.facebook.com/QuangNamFootballClub.official/', N'SVĐ Bình Dương', 17035, N'Nguyễn Lê Nguyên', N'Trần Minh Quang', N'Nguyễn Quang Bảo', N'Lê Hùng Cường', N'Vinamilk', N'G6DOI007       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D08INFO      ', N'59 Đào Duy Từ, Phường 12, TP Hồ Chí Minh', N'0909010504     ', N'sgfc@gmail.com', N'https://www.facebook.com/clbbongdasaigon/', N'SVĐ Thống Nhất', 18035, N'Nguyễn Thành Lương', N'Trần Quang Hiếu', N'Nguyễn Gia Long', N'Lê Hoàng Đức', N'Pharmacity', N'G6DOI008       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D09INFO      ', N'49 Lý Thái Tổ, Phường 13, TP Đà Nẵng', N'0909010674     ', N'dnfc@gmail.com', N'https://shbdanangfc.com/vi/about/', N'SVĐ Hòa Xuân', 19035, N'Trịnh Quang Trung', N'Trầm Minh Khoa', N'Văn Minh Khoa', N'Lê Thiện Hiếu', N'Bambooairways', N'G6DOI009       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D10INFO      ', N'15 Hòa Hảo, Phường 11, TP Nghệ An', N'0909010774     ', N'slnafc@gmail.com', N'http://slnafc.com/', N'SVĐ Vinh', 7035, N'Nguyễn Thanh Hải', N'Tôn Đức Quyền', N'Đậu Cao Khang Anh', N'Hồ Công Thiên Đạt', N'Clear Men 3 in 1', N'G6DOI010       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D11INFO      ', N'521 Lê Duẩn, Phường 8, TP Quảng Ninh', N'0909010874     ', N'quangninhfc@gmail.com', N'http://quangninhfc.vn/', N'SVĐ Cẩm Phả', 6035, N'Nguyễn Minh Vượng', N'Huỳnh Trọng Tuấn', N'Hồ Thanh Hưng', N'Nguyễn Văn Tuấn', N'Sting', N'G6DOI011       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D12INFO      ', N'741 Trần Hưng Đạo, Phường 9, TP Thanh Hóa', N'0909010274     ', N'thanhhoafc@gmail.com', N'https://www.facebook.com/ThanhHoaFCFanclub/', N'SVĐ Thanh Hóa', 21035, N'Nguyễn Thành Long', N'Trần Quang Cuốn', N'Nguyễn Công Thành', N'Lê Minh Hoàng', N'Daikin', N'G6DOI012       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D13INFO      ', N'562 Bạch Đằng, Phường 10,TP Hồ Chí Minh', N'0909010174     ', N'hcmfc@gmail.com', N'http://hcmcf.club/', N'SVĐ Thống Nhất', 23035, N'Nguyễn Thanh Minh', N'Nguyễn Xuân Hùng', N'Nguyễn Tuấn Anh', N'Lê Huy Hoàng', N'Tiki', N'G6DOI013       ')
INSERT [dbo].[THONGTINCOBAN] ([ID_ThongTin], [DiaChi], [Hotline], [Email], [Website], [SanVanDong], [SucChua], [ChuTichCLB], [GĐDH], [HLVTruong], [GĐKT], [NhaTaiTro], [ID_DoiBong]) VALUES (N'G6D14INFO      ', N'42 Ba Cu, Phường 1, TP Vũng Tàu', N'0909010474     ', N'viettelfc@gmail.com', N'https://blogsoccer.net/cau-lac-bo-bong-da-viettel/', N'SVĐ Hàng Đẫy', 3035, N'Đỗ Đức Hào', N'Lê Hồng Võ', N'Trịnh Lê Duy', N'Nguyễn Thế An', N'Lazada', N'G6DOI014       ')
GO
INSERT [dbo].[TIN_VIDEO] ([ID_TIN_VIDEO], [TieuDe_VIDEO], [Avatar_VIDEO], [TomTat_VIDEO], [LuotTuongTac_VIDEO], [LuotXem_VIDEO], [TrangThaiHienThi_VIDEO]) VALUES (N'TINVIDEO01     ', N'Video highlight trận Croatia - Pháp: Phủ đầu ấn tượng, vượt khó nhờ Mbappe', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/medium/1602711276-903-thumbnail-width640height480.jpg', N'(Bảng A3 UEFA Nations League) "Song sát" tỏa sáng giúp đội khách thoát hiểm.', 20, 30, N'Hiển thị')
INSERT [dbo].[TIN_VIDEO] ([ID_TIN_VIDEO], [TieuDe_VIDEO], [Avatar_VIDEO], [TomTat_VIDEO], [LuotTuongTac_VIDEO], [LuotXem_VIDEO], [TrangThaiHienThi_VIDEO]) VALUES (N'TINVIDEO02     ', N'Video highlight trận Italia - Hà Lan: Sao MU lập công, ngôi đầu đổi chủ', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/medium/screenshot_4-640-1602705532-890-width640height480.jpg', N'Cuộc thư hùng giữa hai ông lớn Italia và Hà Lan đã diễn ra cực kỳ hấp dẫn, quyết liệt.', 20, 30, N'Hiển thị')
INSERT [dbo].[TIN_VIDEO] ([ID_TIN_VIDEO], [TieuDe_VIDEO], [Avatar_VIDEO], [TomTat_VIDEO], [LuotTuongTac_VIDEO], [LuotXem_VIDEO], [TrangThaiHienThi_VIDEO]) VALUES (N'TINVIDEO03     ', N'Video highlight trận Bồ Đào Nha - Thụy Điển: Đại tiệc ấn tượng tặng Ronaldo', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/medium/1602708766-946-thumbnail-width640height480.jpg', N'(Bảng A3 UEFA Nations League) Bồ Đào Nha có trận đấu thăng hoa dù vắng Ronaldo.', 20, 30, N'Hiển thị')
INSERT [dbo].[TIN_VIDEO] ([ID_TIN_VIDEO], [TieuDe_VIDEO], [Avatar_VIDEO], [TomTat_VIDEO], [LuotTuongTac_VIDEO], [LuotXem_VIDEO], [TrangThaiHienThi_VIDEO]) VALUES (N'TINVIDEO04     ', N'Video highlight trận Anh - Đan Mạch: Maguire thẻ đỏ, thất bại đắng cay', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-10-15/medium/screenshot_1-640-1602705578-110-width640height480.jpg', N'ĐT Anh bất ngờ gặp khó khăn trong cuộc tiếp đón Đan Mạch trên sân nhà.', 20, 30, N'Hiển thị')
GO
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'Test01         ', N'No title', N'Test01', N'Test01', 0, 0, N'Hiển thị', N'<p class="" style="margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.44; font-family: NotoSans-Regular; vertical-align: baseline; color: rgb(34, 34, 34); letter-spacing: -0.2px; background-color: rgba(255, 255, 255, 0.95);"><b style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; letter-spacing: -0.2px;">200 triệu đồng/bài</b></p><p class="" style="margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.44; font-family: NotoSans-Regular; vertical-align: baseline; color: rgb(34, 34, 34); letter-spacing: -0.2px; background-color: rgba(255, 255, 255, 0.95);">Cách đây ba năm, Trường ĐH Kinh tế TP.HCM đưa ra chính sách khen thưởng cho giảng viên có&nbsp;<a href="https://tuoitre.vn/bai-bao-cong-bo-quoc-te.html" title="bài báo công bố quốc tế" target="_blank" style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: initial; color: rgb(237, 27, 47); letter-spacing: -0.2px;">bài báo công bố quốc tế</a>. Mức thưởng cao nhất 200 triệu đồng/bài. Số lượng bài báo công bố quốc tế của trường cũng tăng dần đều trong những năm gần đây. Trong đó, năm 2016 có 44 bài, 2017 là 57 bài, 2018 là 60 bài và năm 2019 có 82 bài.</p><p class="" style="margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.44; font-family: NotoSans-Regular; vertical-align: baseline; color: rgb(34, 34, 34); letter-spacing: -0.2px; background-color: rgba(255, 255, 255, 0.95);">GS.TS Nguyễn Trọng Hoài - phó hiệu trưởng Trường ĐH Kinh tế TP.HCM - cho biết chính sách khuyến khích cũng phần nào giúp gia tăng&nbsp;<a href="https://tuoitre.vn/bai-bao-quoc-te.html" title="bài báo quốc tế" target="_blank" style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: initial; color: rgb(237, 27, 47); letter-spacing: -0.2px;">bài báo quốc tế</a>&nbsp;của trường bên cạnh các quy định về nghiên cứu khoa học bắt buộc đối với giảng viên, số tiến sĩ tăng, thành lập các nhóm nghiên cứu mạnh. Kinh phí thưởng tối đa mỗi năm khoảng 2 tỉ đồng.</p><p class="" style="margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.44; font-family: NotoSans-Regular; vertical-align: baseline; color: rgb(34, 34, 34); letter-spacing: -0.2px; background-color: rgba(255, 255, 255, 0.95);">Trong khi đó, số bài báo công bố quốc tế của Trường ĐH Mở TP.HCM tăng từ 16 bài năm 2017 lên 62 bài năm 2018. PGS.TS Nguyễn Minh Hà, hiệu trưởng nhà trường, cho biết trường bắt đầu chính sách thưởng công bố quốc tế từ năm 2017 và có điều chỉnh mức thưởng theo hướng tăng lên. Mức thưởng dao động từ 40-100 triệu đồng/bài&nbsp;<span style="margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;">tùy loại tạp chí.</span></p><p class="" style="margin-right: 0px; margin-bottom: 24px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.44; font-family: NotoSans-Regular; vertical-align: baseline; color: rgb(34, 34, 34); letter-spacing: -0.2px; background-color: rgba(255, 255, 255, 0.95);">Theo ông Hà, số bài báo quốc tế tăng lên có tác động rất lớn từ chính sách khuyến khích của trường.</p><p><div class="VCSortableInPreviewMode noCaption active" type="Photo" style="margin: 1.3em auto 0px; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; line-height: 1.45; font-family: Roboto; vertical-align: baseline; text-align: center; display: table; position: relative; z-index: 2; color: rgb(34, 34, 34); letter-spacing: -0.2px; background-color: rgba(255, 255, 255, 0.95);"></div></p><p class="" style="margin: 0px 0px 24px; padding: 0px; border: 0px; font: 400 16px / 1.44 NotoSans-Regular; vertical-align: baseline; color: rgb(34, 34, 34); letter-spacing: -0.2px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.95); text-decoration-style: initial; text-decoration-color: initial;">"Nếu không tự chủ, trường sẽ khó có thể đưa ra chính sách khuyến khích với mức thưởng như vậy do tài chính và các quy định liên quan. Việc thưởng tuy chưa nhiều nhưng đã tạo động lực cho giảng viên, nghiên cứu sinh chú ý hơn đến việc công bố. Giảng viên cũng chú ý kết nối với các giáo sư ở các trường nước ngoài".</p>')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC01       ', N'Văn Toàn đòi penalty cho HAGL sau pha ngã của đồng đội', N'https://znews-photo.zadn.vn/w480/Uploaded/yrfjpyvslyr/2020_10_15/vantoan_1.jpg', N'Sau tình hu?ng ph?i h?p c?a HAGL, h?u v? D?ng Quang Nho ngã trong vòng c?m. Tuy nhiên, tr?ng tài không cho r?ng dó là pha ph?m l?i t? phía c?u th? CLB Hà N?i.', 10, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC02       ', N'Hoãn vòng chung kết futsal châu Á sang năm 2021', N'https://znews-photo.zadn.vn/w480/Uploaded/ihvunvj/2020_10_15/avafutsal.jpg', N'Chi?u 15/10, Liên doàn Bóng dá châu Á thông báo liên quan d?n k? ho?ch t? ch?c vòng chung k?t futsal châu Á 2020.', 10, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC03       ', N'HAGL thua đậm CLB Hà Nội tại sân Pleiku', N'https://znews-photo.zadn.vn/w480/Uploaded/natmzz/2020_10_15/124.JPG', N'CLB Hà N?i v?i b?n linh c?a nhà vô d?ch dã dánh b?i ch? nhà HAGL 4-0 ? vòng 2, giai do?n 2 V.League 2020 t?i 15/10.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC04       ', N'Trung Quốc rút đăng cai vòng chung kết U23 châu Á 2022', N'https://znews-photo.zadn.vn/w480/Uploaded/yrfjpyvslyr/2020_10_15/u23.jpg', N'Liên doàn Bóng dá châu Á (AFC) thông báo Trung Qu?c s? không là ch? nhà c?a vòng chung k?t U23 châu Á 2022', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC05       ', N'Bruno Fernandes: "Đừng lấy tên tôi để tạo rắc rối tại MU"', N'https://znews-photo.zadn.vn/w480/Uploaded/ofh_huqfztmf/2020_10_15/brun_1.jpg', N'Ti?n v? ngu?i B? Ðào Nha ph?n bác nh?ng tin d?n v? vi?c anh có mâu thu?n v?i HLV Ole Solskjaer t?i MU.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC06       ', N'THỦ QUÂN MAN UNITED TRƯỢT DÀI VÌ TÂM LÝ BẤT ỔN', N'https://znews-photo.zadn.vn/w480/Uploaded/bzcwvobl/2020_10_15/Harry_1_1.jpg', N'Có nh?ng th?i di?m mà m?i quy?t d?nh d?u tr? thành sai l?m. Tru?ng h?p c?a Harry Maguire gi?ng nhu v?y.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC07       ', N'HLV SOUTHGATE KÌM HÃM TUYỂN ANH KHI HẮT HỦI GREALISH', N'https://znews-photo.zadn.vn/w480/Uploaded/bzcwvobl/2020_10_15/Jacj_1.jpg', N'Ti?n v? Jack Grealish có tuong lai ?m d?m ? d?i tuy?n qu?c gia khi anh du?ng nhu không ph?i guong m?t yêu thích c?a hu?n luy?n viên Gareth Southgate.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC08       ', N'Bruno Fernandes mất niềm tin vào HLV Solskjaer', N'https://znews-photo.zadn.vn/w480/Uploaded/natmzz/2020_10_15/z1.JPG', N'Ti?n v? sinh nam 1994 không nh?n th?y tuong lai tuoi sáng c?a MU n?u hu?n luy?n viên Solskjaer ti?p t?c t?i v?.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC09       ', N'Juventus được xử thắng 3-0 vì đối thủ không xuất hiện', N'https://znews-photo.zadn.vn/w480/Uploaded/ofh_huqfztmf/2020_07_04/ronaldo.jpg', N'Ban t? ch?c Serie A dua ra phán quy?t cu?i cùng sau v? Napoli không th? t?i Turin d?u v?i Juventus hôm 4/10.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC10       ', N'Lukaku có hiệu suất ghi bàn cao hơn Ronaldo, Messi', N'https://znews-photo.zadn.vn/w480/Uploaded/natmzz/2020_10_15/a.JPG', N'Ngôi sao sinh nam 1993 l?p cú dúp giúp tuy?n B? dánh b?i ch? nhà Iceland 2-1 ? vòng b?ng UEFA Nations League r?ng sáng 15/10 (gi? Hà N?i).', 30, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC11       ', N'Bồ Đào Nha thắng 3-0 trong ngày vắng Ronaldo', N'https://znews-photo.zadn.vn/w480/Uploaded/mdf_drokxr/2020_10_15/jota_thumb.jpg', N'Không có s? ph?c v? c?a ti?n d?o khoác áo Juventus, th?y trò HLV Fernando Santos v?n thi d?u áp d?o tru?c Th?y Ði?n d? giành chi?n th?ng 3-0 r?ng sáng 15/10 (gi? Hà N?i).', 30, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC12       ', N'Van de Beek lập công giúp Hà Lan hòa Italy', N'https://znews-photo.zadn.vn/w480/Uploaded/natmzz/2020_10_15/van.JPG', N'Ti?n v? thu?c biên ch? Man Utd t?a sáng d? giúp Hà Lan có tr?n hòa 1-1 trên sân khách ? vòng b?ng UEFA Nations League r?ng sáng 15/10 (gi? Hà N?i).', 30, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC13       ', N'Neymar vượt Ronaldo, hướng tới phá kỷ lục ghi bàn của Pele', N'https://znews-photo.zadn.vn/w480/Uploaded/qxjrcqjwq/2020_10_14/neymar_comemora_seu_gol_pela_selecao_brasileira_na_partida_contra_o_peru_pelas_eliminatorias_da_copa_de_2022_1602635777520_v2_1920x1280.jpg', N'Sáng 14/10 (gi? Hà N?i), Neymar vu?t thành tích ghi bàn c?a Ronaldo de Lima b?ng cú hat-trick vào lu?i Peru giúp tuy?n Brazil th?ng 4-2.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC14       ', N'CLB TP.HCM trượt dài trong cuộc đua vô địch V.League', N'https://znews-photo.zadn.vn/w480/Uploaded/natmzz/2020_10_14/vvz.JPG', N'Th?y trò HLV Chung Hae-seong du?c choi trên sân nhà nhung nh?n th?t b?i 0-1 tru?c Viettel ? tr?n d?u thu?c vòng 2, giai do?n 2 V.League t?i 14/10.', 10, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC15       ', N'Sự quẫn trí của Loew kéo lùi tuyển Đức', N'https://znews-photo.zadn.vn/w480/Uploaded/ofh_huqfztmf/2020_10_14/2020_10_13T202148Z_383669185_UP1EGAD1KKCQ9_RTRMADP_3_SOCCER_UEFANATIONS_GER_SWI_REPORT.JPG', N'Sau 14 nam d?n d?t tuy?n Ð?c, hu?n luy?n viên Joachim Loew dang khi?n "Die Mannschaft" t?t lùi v?i s? qu?n trí c?a mình trên gh? ch? d?o.', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC16       ', N'Trọng tài bị chỉ trích sau trận Peru thua ngược Brazil', N'https://znews-photo.zadn.vn/w480/Uploaded/neg_etpyole/2020_10_14/TT.JPG', N'Truy?n thông Peru dùng nh?ng t? ng? n?ng n? khi nói v? tr?ng tài Julio Bascunan sau khi d?i nhà thua 2-4 tru?c Brazil sáng 14/10 (gi? Hà N?i).', 20, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC17       ', N'Tuyển Việt Nam và U22 có 4 tuần tập trung sau V.League', N'https://znews-photo.zadn.vn/w480/Uploaded/jopluat/2020_04_15/Xuan_Truong_Tuyen_Viet_Nam.jpg', N'Tuy?n qu?c gia và U22 Vi?t Nam s? t?p trung kho?ng 4 tu?n sau khi V.League khép l?i vào gi?a tháng 11.', 30, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
INSERT [dbo].[TINTUC] ([ID_TinTuc], [TieuDe], [Avatar], [TomTat], [LuotTuongTac], [LuotXem], [TrangThaiHienThi], [Text_NoiDung]) VALUES (N'TINTUC18       ', N'Công Phượng giành 2 giải thưởng cá nhân ở V.League', N'https://znews-photo.zadn.vn/w480/Uploaded/aopuoax/2020_09_26/cong_phuong_the_vang_nam_dinh.JPG', N'Chân sút c?a CLB TP.HCM du?c b?u là c?u th? hay nh?t tháng 7 và 9 cùng v?i ph?n thu?ng cho ch? nhân 2 bàn th?ng d?p nh?t giai do?n này.', 30, 50, N'Hiển Thị', N'Chiều 15/10, HAGL tiếp đón đội Hà Nội trên sân Pleiku. Phút 52 của trận đấu, Dụng Quang Nho ngã trong vùng cấm của đội khách sau pha tranh chấp với Văn Quyết. Trọng tài chính nhận định đây là pha ăn vạ và "tặng" hậu vệ này tấm thẻ vàng.
Văn Toàn, người tung ra đường chuyền để Quang Nho băng xuống, cố gắng phân bua với trọng tài. Anh muốn HAGL được hưởng quả phạt đền ở thời điểm đội nhà bị dẫn 0-1.
Tuy nhiên, trọng tài chính vẫn tỏ ra kiên định. Tiền đạo quê Hải Dương tỏ ra thất vọng.
Nhiều cầu thủ HAGL lao vào để gây sức ép với trọng tài chính, trong đó có ngoại binh Kelly. Nguyễn Anh Đức, người giàu kinh nghiệm, đứng ra can ngăn đồng đội bởi phản đối quyết định của trọng tài không phải là điều có lợi cho HAGL.')
GO
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ01           ', N'G6DOI001       ', N'G6DOI008       ', CAST(N'2020-07-10' AS Date), CAST(N'09:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ02           ', N'G6DOI003       ', N'G6DOI005       ', CAST(N'2020-07-10' AS Date), CAST(N'11:00:00' AS Time), N'Khánh Hòa', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ03           ', N'G6DOI006       ', N'G6DOI002       ', CAST(N'2020-07-10' AS Date), CAST(N'13:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ04           ', N'G6DOI011       ', N'G6DOI004       ', CAST(N'2020-07-10' AS Date), CAST(N'15:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ05           ', N'G6DOI012       ', N'G6DOI010       ', CAST(N'2020-07-10' AS Date), CAST(N'19:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ06           ', N'G6DOI007       ', N'G6DOI009       ', CAST(N'2020-07-10' AS Date), CAST(N'22:00:00' AS Time), N'Hà Nội', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ07           ', N'G6DOI002       ', N'G6DOI014       ', CAST(N'2020-08-10' AS Date), CAST(N'09:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ08           ', N'G6DOI005       ', N'G6DOI006       ', CAST(N'2020-08-10' AS Date), CAST(N'11:00:00' AS Time), N'Khánh Hòa', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ09           ', N'G6DOI008       ', N'G6DOI007       ', CAST(N'2020-08-10' AS Date), CAST(N'13:00:00' AS Time), N'Hà Nội', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ10           ', N'G6DOI011       ', N'G6DOI009       ', CAST(N'2020-08-10' AS Date), CAST(N'15:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ11           ', N'G6DOI010       ', N'G6DOI003       ', CAST(N'2020-08-10' AS Date), CAST(N'19:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ12           ', N'G6DOI002       ', N'G6DOI006       ', CAST(N'2020-08-10' AS Date), CAST(N'22:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ13           ', N'G6DOI003       ', N'G6DOI005       ', CAST(N'2020-09-10' AS Date), CAST(N'09:00:00' AS Time), N'Hải Phòng', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ14           ', N'G6DOI013       ', N'G6DOI009       ', CAST(N'2020-09-10' AS Date), CAST(N'11:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ15           ', N'G6DOI012       ', N'G6DOI008       ', CAST(N'2020-09-10' AS Date), CAST(N'13:00:00' AS Time), N'Hải Phòng', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ16           ', N'G6DOI002       ', N'G6DOI006       ', CAST(N'2020-09-10' AS Date), CAST(N'15:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ17           ', N'G6DOI005       ', N'G6DOI004       ', CAST(N'2020-09-10' AS Date), CAST(N'19:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ18           ', N'G6DOI004       ', N'G6DOI009       ', CAST(N'2020-09-10' AS Date), CAST(N'22:00:00' AS Time), N'Khánh Hòa', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ19           ', N'G6DOI002       ', N'G6DOI003       ', CAST(N'2020-10-10' AS Date), CAST(N'09:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ20           ', N'G6DOI008       ', N'G6DOI011       ', CAST(N'2020-10-10' AS Date), CAST(N'11:00:00' AS Time), N'Khánh Hòa', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ21           ', N'G6DOI005       ', N'G6DOI004       ', CAST(N'2020-10-10' AS Date), CAST(N'13:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ22           ', N'G6DOI001       ', N'G6DOI005       ', CAST(N'2020-10-10' AS Date), CAST(N'15:00:00' AS Time), N'Hà Nội', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ23           ', N'G6DOI005       ', N'G6DOI006       ', CAST(N'2020-10-10' AS Date), CAST(N'19:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ24           ', N'G6DOI008       ', N'G6DOI003       ', CAST(N'2020-10-10' AS Date), CAST(N'22:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ25           ', N'G6DOI001       ', N'G6DOI002       ', CAST(N'2020-11-10' AS Date), CAST(N'09:00:00' AS Time), N'Hải Phòng', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ26           ', N'G6DOI009       ', N'G6DOI010       ', CAST(N'2020-11-10' AS Date), CAST(N'11:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ27           ', N'G6DOI005       ', N'G6DOI006       ', CAST(N'2020-11-10' AS Date), CAST(N'13:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ28           ', N'G6DOI007       ', N'G6DOI014       ', CAST(N'2020-11-10' AS Date), CAST(N'15:00:00' AS Time), N'Thống Nhất', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ29           ', N'G6DOI008       ', N'G6DOI013       ', CAST(N'2020-11-10' AS Date), CAST(N'19:00:00' AS Time), N'Hà Nội', N'1-1')
INSERT [dbo].[TRANDAU] ([ID_TranDau], [DoiNha], [DoiKhach], [ThoiGianThiDau], [GioThiDau], [SanThiDau], [TiSo]) VALUES (N'TÐ30           ', N'G6DOI002       ', N'G6DOI010       ', CAST(N'2020-11-10' AS Date), CAST(N'22:00:00' AS Time), N'Thống Nhất', N'1-1')
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'6e08c386-5006-4709-827d-f5a5dba326de', N'5eb9a489-dc75-4a22-8fde-4f6e41b88173')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'6e08c386-5006-4709-827d-f5a5dba326de', N'af431c9d-2bc8-4ca6-ac37-ab6d224c2c68')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'6e08c386-5006-4709-827d-f5a5dba326de', N'd43ee311-e4ac-4317-b53b-e31aa19831bd')
GO
INSERT [dbo].[Users] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [Address], [Birthday]) VALUES (N'6e08c386-5006-4709-827d-f5a5dba326de', N'adminbl', N'ADMINBL', N'favev52213@septicvernon.com', N'FAVEV52213@SEPTICVERNON.COM', 1, N'AQAAAAEAACcQAAAAEEUKI/64oTYlizF8SNEo24fHtsfEwdNzMghW+BKrfs1RuzJhmcrZFG3cxgJOCbYW6w==', N'2HKK63TAB7CP47VV7IZ3KXW23DOYVP24', N'35bcfdef-8bef-4eb2-9c1f-377c5ebc7c54', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[VIDEO] ON 

INSERT [dbo].[VIDEO] ([ID_VIDEO], [Source_VIDEO]) VALUES (1, N'https://www.youtube.com/embed/iXasT5h6rUM')
INSERT [dbo].[VIDEO] ([ID_VIDEO], [Source_VIDEO]) VALUES (2, N'https://www.youtube.com/embed/d4_6BsBQXbM')
INSERT [dbo].[VIDEO] ([ID_VIDEO], [Source_VIDEO]) VALUES (3, N'https://www.youtube.com/embed/IEpybM9gId0')
INSERT [dbo].[VIDEO] ([ID_VIDEO], [Source_VIDEO]) VALUES (4, N'https://www.youtube.com/embed/3MitTAGbZYo')
SET IDENTITY_INSERT [dbo].[VIDEO] OFF
GO
ALTER TABLE [dbo].[TIN_VIDEO] ADD  DEFAULT (N'No title') FOR [TieuDe_VIDEO]
GO
ALTER TABLE [dbo].[TIN_VIDEO] ADD  DEFAULT ('No picture') FOR [Avatar_VIDEO]
GO
ALTER TABLE [dbo].[TIN_VIDEO] ADD  DEFAULT (N'Hiển thị') FOR [TrangThaiHienThi_VIDEO]
GO
ALTER TABLE [dbo].[TINTUC] ADD  DEFAULT (N'No title') FOR [TieuDe]
GO
ALTER TABLE [dbo].[TINTUC] ADD  DEFAULT ('No picture') FOR [Avatar]
GO
ALTER TABLE [dbo].[TINTUC] ADD  DEFAULT (N'Hiển thị') FOR [TrangThaiHienThi]
GO
ALTER TABLE [dbo].[BANTHANG]  WITH CHECK ADD FOREIGN KEY([ID_CauThu])
REFERENCES [dbo].[CAUTHU] ([ID_CauThu])
GO
ALTER TABLE [dbo].[BANTHANG]  WITH CHECK ADD FOREIGN KEY([ID_TranDau])
REFERENCES [dbo].[TRANDAU] ([ID_TranDau])
GO
ALTER TABLE [dbo].[CAUTHU]  WITH CHECK ADD FOREIGN KEY([ID_DoiBong])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD FOREIGN KEY([ID_HoaDon])
REFERENCES [dbo].[HOADON] ([ID_HoaDon])
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD FOREIGN KEY([ID_Ve])
REFERENCES [dbo].[TICKET] ([ID_Ve])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([ID_KhachHang])
REFERENCES [dbo].[KHACHHANG] ([ID_KhachHang])
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[sub_TAITRO]  WITH CHECK ADD FOREIGN KEY([ID_DoiBong])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[sub_TAITRO]  WITH CHECK ADD FOREIGN KEY([ID_TaiTro])
REFERENCES [dbo].[TAITRO] ([ID_TaiTro])
GO
ALTER TABLE [dbo].[sub_TIN_VIDEO]  WITH CHECK ADD FOREIGN KEY([ID_TIN_VIDEO])
REFERENCES [dbo].[TIN_VIDEO] ([ID_TIN_VIDEO])
GO
ALTER TABLE [dbo].[sub_TIN_VIDEO]  WITH CHECK ADD FOREIGN KEY([ID_VIDEO])
REFERENCES [dbo].[VIDEO] ([ID_VIDEO])
GO
ALTER TABLE [dbo].[sub_TINTUC]  WITH CHECK ADD FOREIGN KEY([ID_Hashtag])
REFERENCES [dbo].[HASHTAG] ([ID_Hashtag])
GO
ALTER TABLE [dbo].[sub_TINTUC]  WITH CHECK ADD FOREIGN KEY([ID_HinhAnh])
REFERENCES [dbo].[HINHANH] ([ID_HinhAnh])
GO
ALTER TABLE [dbo].[sub_TINTUC]  WITH CHECK ADD FOREIGN KEY([ID_LoaiTin])
REFERENCES [dbo].[LOAITIN] ([ID_LoaiTin])
GO
ALTER TABLE [dbo].[sub_TINTUC]  WITH CHECK ADD FOREIGN KEY([ID_Tintuc])
REFERENCES [dbo].[TINTUC] ([ID_TinTuc])
GO
ALTER TABLE [dbo].[THANHTICH]  WITH CHECK ADD FOREIGN KEY([ID_DoiBong])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[THANHTICH]  WITH CHECK ADD FOREIGN KEY([ID_LoaiThanhTich])
REFERENCES [dbo].[LOAITHANHTICH] ([ID_LoaiThanhTich])
GO
ALTER TABLE [dbo].[Thong_Tin_Xep_Hang]  WITH CHECK ADD FOREIGN KEY([ID_DoiBong])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[THONGTINCOBAN]  WITH CHECK ADD FOREIGN KEY([ID_DoiBong])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD FOREIGN KEY([DoiKhach])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD FOREIGN KEY([DoiNha])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD FOREIGN KEY([ID_LoaiVe])
REFERENCES [dbo].[LOAIVE] ([ID_LoaiVe])
GO
ALTER TABLE [dbo].[TRANDAU]  WITH CHECK ADD FOREIGN KEY([DoiKhach])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[TRANDAU]  WITH CHECK ADD FOREIGN KEY([DoiNha])
REFERENCES [dbo].[DOIBONG] ([ID_DoiBong])
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
