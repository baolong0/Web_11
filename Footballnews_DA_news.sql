Create Database FootballNews_4
Go

Use FootballNews_4
Go

Create Table TINTUC
(
	ID_TinTuc char(15) not null primary key,
	TieuDe nvarchar(max) default N'No title',
	Avatar varchar(2000) default 'No picture',
	TomTat nvarchar(max),
	LuotTuongTac int,
	LuotXem int,
	TrangThaiHienThi nvarchar(20) default N'Hiển thị'
)
go

Create Table HINHANH
(
	ID_HinhAnh int identity(1,1) not null primary key,
	Source_HinhAnh varchar(2000),
)
Go

Create Table NOIDUNG
(
	ID_NoiDung int identity(1,1) not null primary key,
	Text_NoiDung nvarchar(max)
)
Go

Create Table HASHTAG
(
	ID_Hashtag int identity(1,1) not null primary key,
	Hashtag nvarchar(100)
)
Go

Create Table sub_TINTUC
(
	ID_sub_TT int identity(1,1) primary key,
	ID_Tintuc char(15) foreign key references TINTUC(ID_TinTuc),
	ID_HinhAnh int foreign key references HINHANH(ID_HinhAnh),
	ID_NoiDung int foreign key references NOIDUNG(ID_NoiDung) ,
	ID_Hashtag int foreign key references HASHTAG(ID_Hashtag)
)
Go

Create Table DOIBONG
(
	ID_DoiBong char(15) not null primary key,
	TenDoi nvarchar(100) not null,
	Source_Logo varchar(2000),
	Source_Banner varchar(2000)
)
Go

-- Thêm dữ liệu vào bảng DOIBONG
	-- Giải Vô địch quốc gia LS 2020
Insert into DOIBONG
Values ('G6DOI001', N'Becamax Bình Dương', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-becamex-binh-duong.png', 'https://www.keonhanh.com/wp-content/uploads/2018/11/cau-lac-bo-bong-da-becamex-binh-duong.jpg')
Insert into DOIBONG
Values ('G6DOI002', N'Dược Nam Hà Nam Định', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-nam-dinh-fc.png', 'https://static.bongda24h.vn/medias/amp/2020/8/4/cau-lac-bo-bong-da-nam-dinh.jpg')
Insert into DOIBONG
Values ('G6DOI003', N'Hà Nội', 'https://vpf.vn/wp-content/uploads/2018/10/Logo-CLB-Hanoi-5stars.png', 'https://static.bongda24h.vn/medias/standard/2019/2/13/51733944_2676785098999095_8505491922893144064_n.jpg')
Insert into DOIBONG
Values ('G6DOI004', N'Hải Phòng', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-hai-phong-fc.png', 'https://cdn.24h.com.vn/upload/1-2020/images/2020-03-05/CLB-Hai-Phong-va-bong-da--1--1583401064-256-width660height440.jpg')
Insert into DOIBONG
Values ('G6DOI005', N'Hoàng Anh Gia Lai', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-hoang-anh-gia-lai-fc.png', 'https://thethaovn.net/wp-content/uploads/2020/07/clb-hagl-so-huu-thanh-tich-vo-doi-o-san-nha-mua-giai-nam-nay.jpg')
Insert into DOIBONG
Values ('G6DOI006', N'Hồng Lĩnh Hà Tĩnh', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-hong-linh-ha-tinh-fc.png', 'https://photo-1-baomoi.zadn.vn/w1000_r1/2020_07_12_293_35662155/fe8f529ee1dd088351cc.jpg')
Insert into DOIBONG
Values ('G6DOI007', N'Quảng Nam', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-quang-nam-fc.png', 'https://www.keonhanh.com/wp-content/uploads/2019/01/cac-cau-thu-clb-quang-nam-1.jpg')
Insert into DOIBONG
Values ('G6DOI008', N'Sài Gòn', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-sai-gon-fc.png', 'https://sohanews.sohacdn.com/thumb_w/660/2017/clb-sai-gon-anh-hoang-trieu-2-1483416588683-0-0-409-660-crop-1483416604219.jpg')
Insert into DOIBONG
Values ('G6DOI009', N'SHB Đà Nẵng', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-shb-da-nang.png', 'https://danviet.mediacdn.vn/upload/1-2020/images/2020-02-07/SHB-da-Nang-Ngoai-binh-troi-au-va-ao-dau-cuc-chat-cho-mua-giai-moi-maxresdefault-1581068992-width1280height720.jpg')
Insert into DOIBONG
Values ('G6DOI010', N'Sông Lam Nghệ An', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-song-lam-nghe-an.png', 'http://www.slnafc.com/Uploads/images/Tin%20tuc%202017/Slide-22400%20(700%20x%20310).jpg')
Insert into DOIBONG
Values ('G6DOI011', N'Than Quảng Ninh', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-than-quang-ninh.png', 'https://lh3.googleusercontent.com/proxy/pKFuqDecWuqg0Sdtl0Yyg20BsSqv9OvjQH4rzJy1yl4xVqItui9AnAferJZ_3yO6iADfZ7lI3iR024dM0rXNLubElVljpH89Bc-yh0QmwcmQ6u-9P8EHYAS4=s0-d')
Insert into DOIBONG
Values ('G6DOI012', N'Thanh Hóa', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-flc-thanh-hoa.png', 'https://media.bongda.com.vn/files/vien.le/2016/12/29/anh1-0703.jpg')
Insert into DOIBONG
Values ('G6DOI013', N'TP Hồ Chí Minh', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-ho-chi-minh-fc.png', 'https://media.thethao247.vn/upload/anhquan/2020/02/29/IMG_3884.JPG')
Insert into DOIBONG
Values ('G6DOI014', N'Viettel', 'https://dothethao.net.vn/wp-content/uploads/2020/06/logo-viettel.png', 'https://photo-1-baomoi.zadn.vn/w1000_r1/2018_12_28_16_29169636/31fd54e31ca2f5fcacb3.jpg')

Create Table THONGTINCOBAN
(
	ID_ThongTin char(15) not null primary key,
	DiaChi nvarchar(1000),
	Hotline char(15),
	Email varchar(50),
	Website varchar(500),
	SanVanDong nvarchar(20),
	SucChua int,
	ChuTichCLB nvarchar(50),
	GĐDH nvarchar(50),
	HLVTruong nvarchar(50),
	GĐKT nvarchar(50),
	NhaTaiTro nvarchar(50),
	ID_DoiBong char(15) not null foreign key references DOIBONG(ID_DoiBong)
)
Go

-- Thêm dữ liệu vào bảng Thông tin cơ bản
	-- Becamex Bình Dương
Insert into THONGTINCOBAN
Values ('G6D01INFO', N'156 Nguyễn Văn Lương, Phường 6, TP Thủ Dầu Một', '0909010574', 'becamexbinhduong@gmail.com', 'http://www.bongdabinhduong.com/', N'SVĐ Bình Dương', 13035, N'Nguyễn Trung Kiên', N'Trần Minh Chiến', N'Nguyễn Bảo Long', N'Lê Minh Đức', N'Pepsi', 'G6DOI001') 
	-- Dược Nam Hà Nam Định
Insert into THONGTINCOBAN
Values ('G6D02INFO', N'247 Nguyễn Tri Phương, Phường 7, TP Nam Định', '0909010564', 'namdinhfc@gmail.com', 'https://www.facebook.com/CLBBongDaDuocNamHaNamDinh/', N'SVĐ Thiên Trường', 15035, N'Nguyễn Võ Tùng Dương', N'Nguyễn Phương Nam', N'Nguyễn Trần Trung Quân', N'Lê Hoàng Nam', N'CocaCola', 'G6DOI002')
	-- Hà Nội
Insert into THONGTINCOBAN
Values ('G6D03INFO', N'139 Phố Hàng Đào, Phường 5, TP Hà Nội', '0909010554', 'hanoifc@gmail.com', 'http://hanoifc.com.vn/', N'SVĐ Hàng Đẫy', 14035, N'Hà Thanh Bình', N'Võ Thành Vương', N'Lê Lâm Trường', N'Nguyễn Doãn Hào', N'Mirinda', 'G6DOI003')
	-- Hải Phòng
Insert into THONGTINCOBAN
Values ('G6D04INFO', N'47 Trần Duy Dương, Phường 4, TP Hải Phòng', '0909010544', 'haiphongfc@gmail.com', 'https://hpfc.vn/clb-bong-da-hai-phong/', N'SVĐ Lạch Tray', 11035, N'Trần Trung Chính', N'Trần Quang Huy', N'Cao Đức Long', N'Lê Ngọc Trung Hiếu', N'TH True Milk', 'G6DOI004')
	-- Hoàng Anh Gia Lai
Insert into THONGTINCOBAN
Values ('G6D05INFO', N'18 Lê Hồng Phong, Phường 3, TP DakLak', '0909010534', 'haglfc@gmail.com', 'http://haglfc.com.vn/', N'SVĐ Pleiku', 16035, N'Nguyễn Hữu Duật', N'Nguyễn Phúc Luân', N'Nguyễn Hoàng Bảo', N'Vũ Minh Đức', N'VietjetAir', 'G6DOI005')
	-- Hồng Lĩnh Hà Tĩnh
Insert into THONGTINCOBAN
Values ('G6D06INFO', N'75 Trần Phú, Phường 2, TP Hà Tĩnh', '0909010524', 'hatinhfc@gmail.com', 'https://vi-vn.facebook.com/HongLinhHaTinhOfficial/', N'SVĐ Hà Tĩnh', 9035, N'Lê Ngọc Thành Trung', N'Trần Thành Đạt', N'Nguyễn Tiến Đạt', N'Lê Huỳnh Phương', N'Vietnamairlines', 'G6DOI006')
	-- Quảng Nam
Insert into THONGTINCOBAN
Values ('G6D07INFO', N'564 Bình Giã, Phường 1, TP Quảng Nam', '0909010514', 'quangnamfc@gmail.com', 'https://www.facebook.com/QuangNamFootballClub.official/', N'SVĐ Bình Dương', 17035, N'Nguyễn Lê Nguyên', N'Trần Minh Quang', N'Nguyễn Quang Bảo', N'Lê Hùng Cường', N'Vinamilk', 'G6DOI007')
	-- Sài Gòn
Insert into THONGTINCOBAN
Values ('G6D08INFO', N'59 Đào Duy Từ, Phường 12, TP Hồ Chí Minh', '0909010504', 'sgfc@gmail.com', 'https://www.facebook.com/clbbongdasaigon/', N'SVĐ Thống Nhất', 18035, N'Nguyễn Thành Lương', N'Trần Quang Hiếu', N'Nguyễn Gia Long', N'Lê Hoàng Đức', N'Pharmacity', 'G6DOI008')
	-- SHB Đà Nẵng
Insert into THONGTINCOBAN
Values ('G6D09INFO', N'49 Lý Thái Tổ, Phường 13, TP Đà Nẵng', '0909010674', 'dnfc@gmail.com', 'https://shbdanangfc.com/vi/about/', N'SVĐ Hòa Xuân', 19035, N'Trịnh Quang Trung', N'Trầm Minh Khoa', N'Văn Minh Khoa', N'Lê Thiện Hiếu', N'Bambooairways', 'G6DOI009')
	-- Sông Lam Nghệ An
Insert into THONGTINCOBAN
Values ('G6D10INFO', N'15 Hòa Hảo, Phường 11, TP Nghệ An', '0909010774', 'slnafc@gmail.com', 'http://slnafc.com/', N'SVĐ Vinh', 7035, N'Nguyễn Thanh Hải', N'Tôn Đức Quyền', N'Đậu Cao Khang Anh', N'Hồ Công Thiên Đạt', N'Clear Men 3 in 1', 'G6DOI010')
	-- Than Quảng Ninh
Insert into THONGTINCOBAN
Values ('G6D11INFO', N'521 Lê Duẩn, Phường 8, TP Quảng Ninh', '0909010874', 'quangninhfc@gmail.com', 'http://quangninhfc.vn/', N'SVĐ Cẩm Phả', 6035, N'Nguyễn Minh Vượng', N'Huỳnh Trọng Tuấn', N'Hồ Thanh Hưng', N'Nguyễn Văn Tuấn', N'Sting', 'G6DOI011')
	-- Thanh Hóa
Insert into THONGTINCOBAN
Values ('G6D12INFO', N'741 Trần Hưng Đạo, Phường 9, TP Thanh Hóa', '0909010274', 'thanhhoafc@gmail.com', 'https://www.facebook.com/ThanhHoaFCFanclub/', N'SVĐ Thanh Hóa', 21035, N'Nguyễn Thành Long', N'Trần Quang Cuốn', N'Nguyễn Công Thành', N'Lê Minh Hoàng', N'Daikin', 'G6DOI012')
	-- TP Hồ Chí Minh
Insert into THONGTINCOBAN
Values ('G6D13INFO', N'562 Bạch Đằng, Phường 10,TP Hồ Chí Minh', '0909010174', 'hcmfc@gmail.com', 'http://hcmcf.club/', N'SVĐ Thống Nhất', 23035, N'Nguyễn Thanh Minh', N'Nguyễn Xuân Hùng', N'Nguyễn Tuấn Anh', N'Lê Huy Hoàng', N'Tiki', 'G6DOI013')
	-- Viettel
Insert into THONGTINCOBAN
Values ('G6D14INFO', N'42 Ba Cu, Phường 1, TP Vũng Tàu', '0909010474', 'viettelfc@gmail.com', 'https://blogsoccer.net/cau-lac-bo-bong-da-viettel/', N'SVĐ Hàng Đẫy', 3035, N'Đỗ Đức Hào', N'Lê Hồng Võ', N'Trịnh Lê Duy', N'Nguyễn Thế An', N'Lazada', 'G6DOI014')

Create Table LOAITHANHTICH
(
	ID_LoaiThanhTich char(15) not null primary key,
	TenLoaiThanhTich nvarchar(50)	-- Thành tích của đội bóng, Thành tích của cầu thủ
)
Go

-- Thêm dữ liệu vào bảng LOAITHANHTICH
Insert into LOAITHANHTICH
Values ('ARCH001', N'Thành tích của đội bóng')
Insert into LOAITHANHTICH
Values ('ARCH002', N'Thành tích của cầu thủ')

Create Table THANHTICH
(
	ID_ThanhTich char(15) not null primary key,
	TenThanhTich nvarchar(100),
	ID_LoaiThanhTich char(15) not null foreign key references LOAITHANHTICH(ID_LoaiThanhTich),
	ID_DoiBong char(15) not null foreign key references DOIBONG(ID_DoiBong)
)
Go

-- Thêm dữ liệu vào bảng THANHTICH
	-- Becamex Bình Dương
Insert into THANHTICH
Values ('G6D01ARCH001', N'Vô địch quốc gia 2019', 'ARCH001', 'G6DOI001')
Insert into THANHTICH
Values ('G6D01ARCH002', N'Vô địch AFC Cup 2019', 'ARCH001', 'G6DOI001')
Insert into THANHTICH
Values ('G6D01ARCH003', N'Hồ Tấn Tài cầu thủ xuất sắc nhất năm 2019', 'ARCH002', 'G6DOI001')
Insert into THANHTICH
Values ('G6D01ARCH004', N'Phạm Văn Tiến thủ môn xuất sắc nhất năm 2019', 'ARCH002', 'G6DOI001')
	-- Dược Nam Hà Nam Định
Insert into THANHTICH
Values ('G6D02ARCH001', N'Vô địch quốc gia 2018', 'ARCH001', 'G6DOI002')
Insert into THANHTICH
Values ('G6D02ARCH002', N'Vô địch AFC Cup 2018', 'ARCH001', 'G6DOI002')
Insert into THANHTICH
Values ('G6D02ARCH003', N'Trần Mạnh Hùng cầu thủ xuất sắc nhất năm 2018', 'ARCH002', 'G6DOI002')
Insert into THANHTICH
Values ('G6D02ARCH004', N'Trần Liêm Điều thủ môn xuất sắc nhất năm 2018', 'ARCH002', 'G6DOI002')
	-- Hà Nội
Insert into THANHTICH
Values ('G6D03ARCH001', N'Vô địch quốc gia 2017', 'ARCH001', 'G6DOI003')
Insert into THANHTICH
Values ('G6D3ARCH002', N'Vô địch AFC Cup 2017', 'ARCH001', 'G6DOI003')
Insert into THANHTICH
Values ('G6D03ARCH003', N'Đoàn Văn Hậu cầu thủ xuất sắc nhất năm 2017', 'ARCH002', 'G6DOI003')
Insert into THANHTICH
Values ('G6D03ARCH004', N'Bùi Tấn Trường thủ môn xuất sắc nhất năm 2017', 'ARCH002', 'G6DOI003')
	-- Hải Phòng
Insert into THANHTICH
Values ('G6D04ARCH001', N'Vô địch quốc gia 2016', 'ARCH001', 'G6DOI004')
Insert into THANHTICH
Values ('G6D04ARCH002', N'Vô địch AFC Cup 2016', 'ARCH001', 'G6DOI004')
Insert into THANHTICH
Values ('G6D04ARCH003', N'Phạm Mạnh Hùng cầu thủ xuất sắc nhất năm 2016', 'ARCH002', 'G6DOI004')
Insert into THANHTICH
Values ('G6D04ARCH004', N'Nguyễn Văn Phong thủ môn xuất sắc nhất năm 2016', 'ARCH002', 'G6DOI004')
	-- Hoàng Anh Gia Lai
Insert into THANHTICH
Values ('G6D05ARCH001', N'Vô địch quốc gia 2015', 'ARCH001', 'G6DOI005')
Insert into THANHTICH
Values ('G6D05ARCH002', N'Vô địch AFC Cup 2015', 'ARCH001', 'G6DOI005')
Insert into THANHTICH
Values ('G6D05ARCH003', N'Nguyễn Hữu Anh Tài cầu thủ xuất sắc nhất năm 2015', 'ARCH002', 'G6DOI005')
Insert into THANHTICH
Values ('G6D05ARCH004', N'Trần Bửu Ngọc thủ môn xuất sắc nhất năm 2015', 'ARCH002', 'G6DOI005')
	-- Hồng Lĩnh Hà Tĩnh
Insert into THANHTICH
Values ('G6D06ARCH001', N'Vô địch quốc gia 2014', 'ARCH001', 'G6DOI006')
Insert into THANHTICH
Values ('G6D06ARCH002', N'Vô địch AFC Cup 2014', 'ARCH001', 'G6DOI006')
Insert into THANHTICH
Values ('G6D06ARCH003', N'Vũ Hữu Quý cầu thủ xuất sắc nhất năm 2014', 'ARCH002', 'G6DOI006')
Insert into THANHTICH
Values ('G6D06ARCH004', N'Nguyễn Hoài Anh thủ môn xuất sắc nhất năm 2014', 'ARCH002', 'G6DOI006')
	-- Quảng Nam
Insert into THANHTICH
Values ('G6D07ARCH001', N'Vô địch quốc gia 2013', 'ARCH001', 'G6DOI007')
Insert into THANHTICH
Values ('G6D07ARCH002', N'Vô địch AFC Cup 2013', 'ARCH001', 'G6DOI007')
Insert into THANHTICH
Values ('G6D07ARCH003', N'Huỳnh Tấn Sinh cầu thủ xuất sắc nhất năm 2013', 'ARCH002', 'G6DOI007')
Insert into THANHTICH
Values ('G6D07ARCH004', N'Nguyễn Ngọc Bin thủ môn xuất sắc nhất năm 2013', 'ARCH002', 'G6DOI007')
	-- Sài Gòn
Insert into THANHTICH
Values ('G6D08ARCH001', N'Vô địch quốc gia 2012', 'ARCH001', 'G6DOI008')
Insert into THANHTICH
Values ('G6D08ARCH002', N'Vô địch AFC Cup 2012', 'ARCH001', 'G6DOI008')
Insert into THANHTICH
Values ('G6D08ARCH003', N'Ngô Anh Vũ cầu thủ xuất sắc nhất năm 2012', 'ARCH002', 'G6DOI008')
Insert into THANHTICH
Values ('G6D08ARCH004', N'Trần Văn Bửu thủ môn xuất sắc nhất năm 2012', 'ARCH002', 'G6DOI008')
	-- SHB Đà Nẵng
Insert into THANHTICH
Values ('G6D09ARCH001', N'Vô địch quốc gia 2011', 'ARCH001', 'G6DOI009')
Insert into THANHTICH
Values ('G6D09ARCH002', N'Vô địch AFC Cup 2011', 'ARCH001', 'G6DOI009')
Insert into THANHTICH
Values ('G6D09ARCH003', N'Âu Văn Hoàn cầu thủ xuất sắc nhất năm 2011', 'ARCH002', 'G6DOI009')
Insert into THANHTICH
Values ('G6D09ARCH004', N'Phan Văn Biểu thủ môn xuất sắc nhất năm 2011', 'ARCH002', 'G6DOI009')
	-- Sông Lam Nghệ An
Insert into THANHTICH
Values ('G6D10ARCH001', N'Vô địch quốc gia 2010', 'ARCH001', 'G6DOI010')
Insert into THANHTICH
Values ('G6D10ARCH002', N'Vô địch AFC Cup 2010', 'ARCH001', 'G6DOI010')
Insert into THANHTICH
Values ('G6D10ARCH003', N'Võ Ngọc Đức cầu thủ xuất sắc nhất năm 2010', 'ARCH002', 'G6DOI010')
Insert into THANHTICH
Values ('G6D10ARCH004', N'Hồ Văn Tú thủ môn xuất sắc nhất năm 2010', 'ARCH002', 'G6DOI010')
	-- Than Quảng Ninh
Insert into THANHTICH
Values ('G6D11ARCH001', N'Vô địch quốc gia 2009', 'ARCH001', 'G6DOI011')
Insert into THANHTICH
Values ('G6D11ARCH002', N'Vô địch AFC Cup 2009', 'ARCH001', 'G6DOI011')
Insert into THANHTICH
Values ('G6D11ARCH003', N'Lê Tuấn Tú cầu thủ xuất sắc nhất năm 2009', 'ARCH002', 'G6DOI011')
Insert into THANHTICH
Values ('G6D11ARCH004', N'Phan Đình Vũ Hải thủ môn xuất sắc nhất năm 2009', 'ARCH002', 'G6DOI011')
	-- Thanh Hóa
Insert into THANHTICH
Values ('G6D12ARCH001', N'Vô địch quốc gia 2008', 'ARCH001', 'G6DOI012')
Insert into THANHTICH
Values ('G6D12ARCH002', N'Vô địch AFC Cup 2008', 'ARCH001', 'G6DOI012')
Insert into THANHTICH
Values ('G6D12ARCH003', N'Hoàng Đình Tùng cầu thủ xuất sắc nhất năm 2008', 'ARCH002', 'G6DOI012')
Insert into THANHTICH
Values ('G6D12ARCH004', N'Lương Bá Sơn thủ môn xuất sắc nhất năm 2008', 'ARCH002', 'G6DOI012')
	-- TP Hồ Chí Minh
Insert into THANHTICH
Values ('G6D13ARCH001', N'Vô địch quốc gia 2007', 'ARCH001', 'G6DOI013')
Insert into THANHTICH
Values ('G6D13ARCH002', N'Vô địch AFC Cup 2007', 'ARCH001', 'G6DOI013')
Insert into THANHTICH
Values ('G6D13ARCH003', N'Sầm Ngọc Đức cầu thủ xuất sắc nhất năm 2007', 'ARCH002', 'G6DOI013')
Insert into THANHTICH
Values ('G6D13ARCH004', N'Nguyễn Thanh Thắng thủ môn xuất sắc nhất năm 2007', 'ARCH002', 'G6DOI013')
	-- Viettel
Insert into THANHTICH
Values ('G6D14ARCH001', N'Vô địch quốc gia 2006', 'ARCH001', 'G6DOI014')
Insert into THANHTICH
Values ('G6D14ARCH002', N'Vô địch AFC Cup 2006', 'ARCH001', 'G6DOI014')
Insert into THANHTICH
Values ('G6D14ARCH003', N'Quế Ngọc Hải cầu thủ xuất sắc nhất năm 2006', 'ARCH002', 'G6DOI014')
Insert into THANHTICH
Values ('G6D14ARCH004', N'Ngô Xuân Sơn thủ môn xuất sắc nhất năm 2006', 'ARCH002', 'G6DOI014')

Create Table TAITRO
(
	ID_TaiTro char(15) not null primary key,
	Source_Logo varchar(2000),
)
Go

-- Thêm dữ liệu vào bảng TAITRO
	-- Pepsi
Insert into TAITRO
Values ('TAITRO001', 'https://brasol.vn/public/ckeditor/uploads/thiet-ke-logo-tin-tuc/logo-pepsi.png')
	-- Coca Cola
Insert into TAITRO
Values ('TAITRO002', 'https://iweb.tatthanh.com.vn/pic/3/blog/y-nghia-logo-cocacola.jpg')
	-- Mirinda
Insert into TAITRO
Values ('TAITRO003', 'https://seeklogo.com/images/M/mirinda-logo-C787A1BEBA-seeklogo.com.png')
	-- TH TrueMilk
Insert into TAITRO
Values ('TAITRO004', 'https://vnpay.vn/wp-content/uploads/2020/03/thtruemartlogo.png')
	-- VietjetAir
Insert into TAITRO
Values ('TAITRO005', 'https://dulichvui.net/datafiles/setone/1525235731_logo-vj.png')
	-- VietnamAirlines
Insert into TAITRO
Values ('TAITRO006', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQwyZCmBzaYcdiS494RfK0ci03sTIBxsX3Ykg&usqp=CAU')
	-- Vinamilk
Insert into TAITRO
Values ('TAITRO007', 'https://www.ngoisaoso.vn/uploads/news/2016/05/12/he-thong-nhan-dien-thuong-hieu-vinamilk-2.png')
	-- Pharmacity
Insert into TAITRO
Values ('TAITRO008', 'https://www.mekongcapital.com/uploads/investment/2019/05/08/5cd23b038b055.png')
	-- Bamboo Airways
Insert into TAITRO
Values ('TAITRO009', 'https://upload.wikimedia.org/wikipedia/en/e/ed/Bamboo-logo.png')
	-- Clear men
Insert into TAITRO
Values ('TAITRO010', 'https://vn-live-03.slatic.net/original/ec7a26932ab6cb71de5bc2873727ba2c.jpg')
	-- Sting
Insert into TAITRO
Values ('TAITRO011', 'https://sgp1.digitaloceanspaces.com/quickcompany/trademark/a8a5c800a6a45ab1.jpg')
	-- Daikin
Insert into TAITRO
Values ('TAITRO012', 'https://cdn.printgo.vn/uploads/file-logo/1/512x512.97513bc718382ec904c4d87ff81eb36a.ai.1.png')
	-- Tiki
Insert into TAITRO
Values ('TAITRO013', 'https://rubee.com.vn/admin/webroot/upload/image//images/tin-tuc/logo-tiki-1.jpg')
	-- Lazada
Insert into TAITRO
Values ('TAITRO014', 'https://tiepthigiadinh.vn/wp-content/uploads/2019/06/Lazada-master-logo.png')

Create Table sub_TAITRO 
(
	ID_Sub_TT int identity(1,1)primary key ,
	ID_DoiBong char(15) not null foreign key references DOIBONG(ID_DoiBong),
	ID_TaiTro char(15) not null foreign key references TAITRO(ID_TaiTro)
	
)
Go

-- Thêm dữ liệu vào bảng sub_TAITRO
	-- Tài trợ đội Becamex Bình Dương
Insert into sub_TAITRO
Values ('G6D01TT001', 'G6DOI001', 'TAITRO001')
Insert into sub_TAITRO
Values ('G6D01TT002', 'G6DOI001', 'TAITRO002')
Insert into sub_TAITRO
Values ('G6D01TT003', 'G6DOI001', 'TAITRO003')
Insert into sub_TAITRO
Values ('G6D01TT004', 'G6DOI001', 'TAITRO004')
Insert into sub_TAITRO
Values ('G6D01TT005', 'G6DOI001', 'TAITRO005')
	-- Tài trợ đội Dược Nam Hà Nam Định
Insert into sub_TAITRO
Values ('G6D02TT001', 'G6DOI002', 'TAITRO006')
Insert into sub_TAITRO
Values ('G6D02TT002', 'G6DOI002', 'TAITRO007')
Insert into sub_TAITRO
Values ('G6D02TT003', 'G6DOI002', 'TAITRO008')
Insert into sub_TAITRO
Values ('G6D02TT004', 'G6DOI002', 'TAITRO009')
Insert into sub_TAITRO
Values ('G6D02TT005', 'G6DOI002', 'TAITRO010')
	-- Tài trợ đội Hà Nội
Insert into sub_TAITRO
Values ('G6D03TT001', 'G6DOI003', 'TAITRO011')
Insert into sub_TAITRO
Values ('G6D03TT002', 'G6DOI003', 'TAITRO012')
Insert into sub_TAITRO
Values ('G6D03TT003', 'G6DOI003', 'TAITRO013')
Insert into sub_TAITRO
Values ('G6D03TT004', 'G6DOI003', 'TAITRO014')
Insert into sub_TAITRO
Values ('G6D03TT005', 'G6DOI003', 'TAITRO001')
	-- Tài trợ đội Hải Phòng
Insert into sub_TAITRO
Values ('G6D04TT001', 'G6DOI004', 'TAITRO002')
Insert into sub_TAITRO
Values ('G6D04TT002', 'G6DOI004', 'TAITRO003')
Insert into sub_TAITRO
Values ('G6D04TT003', 'G6DOI004', 'TAITRO004')
Insert into sub_TAITRO
Values ('G6D04TT004', 'G6DOI004', 'TAITRO005')
Insert into sub_TAITRO
Values ('G6D04TT005', 'G6DOI004', 'TAITRO006')
	-- Tài trợ đội Hoàng Anh Gia Lai
Insert into sub_TAITRO
Values ('G6D05TT001', 'G6DOI005', 'TAITRO007')
Insert into sub_TAITRO
Values ('G6D05TT002', 'G6DOI005', 'TAITRO008')
Insert into sub_TAITRO
Values ('G6D05TT003', 'G6DOI005', 'TAITRO009')
Insert into sub_TAITRO
Values ('G6D05TT004', 'G6DOI005', 'TAITRO010')
Insert into sub_TAITRO
Values ('G6D05TT005', 'G6DOI005', 'TAITRO011')
	-- Tài trợ đội Hồng Lĩnh Hà Tĩnh
Insert into sub_TAITRO
Values ('G6D06TT001', 'G6DOI006', 'TAITRO012')
Insert into sub_TAITRO
Values ('G6D06TT002', 'G6DOI006', 'TAITRO013')
Insert into sub_TAITRO
Values ('G6D06TT003', 'G6DOI006', 'TAITRO014')
Insert into sub_TAITRO
Values ('G6D06TT004', 'G6DOI006', 'TAITRO001')
Insert into sub_TAITRO
Values ('G6D06TT005', 'G6DOI006', 'TAITRO002')
	-- Tài trợ đội Quảng Nam
Insert into sub_TAITRO
Values ('G6D07TT001', 'G6DOI007', 'TAITRO003')
Insert into sub_TAITRO
Values ('G6D07TT002', 'G6DOI007', 'TAITRO004')
Insert into sub_TAITRO
Values ('G6D07TT003', 'G6DOI007', 'TAITRO005')
Insert into sub_TAITRO
Values ('G6D07TT004', 'G6DOI007', 'TAITRO006')
Insert into sub_TAITRO
Values ('G6D07TT005', 'G6DOI007', 'TAITRO007')
	-- Tài trợ đội Sài Gòn
Insert into sub_TAITRO
Values ('G6D08TT001', 'G6DOI008', 'TAITRO008')
Insert into sub_TAITRO
Values ('G6D08TT002', 'G6DOI008', 'TAITRO009')
Insert into sub_TAITRO
Values ('G6D08TT003', 'G6DOI008', 'TAITRO010')
Insert into sub_TAITRO
Values ('G6D08TT004', 'G6DOI008', 'TAITRO011')
Insert into sub_TAITRO
Values ('G6D08TT005', 'G6DOI008', 'TAITRO012')
	-- Tài trợ đội SHB Đà Nẵng
Insert into sub_TAITRO
Values ('G6D09TT001', 'G6DOI009', 'TAITRO013')
Insert into sub_TAITRO
Values ('G6D09TT002', 'G6DOI009', 'TAITRO014')
Insert into sub_TAITRO
Values ('G6D09TT003', 'G6DOI009', 'TAITRO001')
Insert into sub_TAITRO
Values ('G6D09TT004', 'G6DOI009', 'TAITRO002')
Insert into sub_TAITRO
Values ('G6D09TT005', 'G6DOI009', 'TAITRO003')
	-- Tài trợ đội Sông Lam Nghệ An 
Insert into sub_TAITRO
Values ('G6D10TT001', 'G6DOI010', 'TAITRO004')
Insert into sub_TAITRO
Values ('G6D10TT002', 'G6DOI010', 'TAITRO005')
Insert into sub_TAITRO
Values ('G6D10TT003', 'G6DOI010', 'TAITRO006')
Insert into sub_TAITRO
Values ('G6D10TT004', 'G6DOI010', 'TAITRO007')
Insert into sub_TAITRO
Values ('G6D10TT005', 'G6DOI010', 'TAITRO008')
	-- Tài trợ đội Than Quảng Ninh
Insert into sub_TAITRO
Values ('G6D11TT001', 'G6DOI011', 'TAITRO009')
Insert into sub_TAITRO
Values ('G6D11TT002', 'G6DOI011', 'TAITRO010')
Insert into sub_TAITRO
Values ('G6D11TT003', 'G6DOI011', 'TAITRO011')
Insert into sub_TAITRO
Values ('G6D11TT004', 'G6DOI011', 'TAITRO012')
Insert into sub_TAITRO
Values ('G6D11TT005', 'G6DOI011', 'TAITRO013')
	-- Tài trợ đội Thanh Hóa
Insert into sub_TAITRO
Values ('G6D12TT001', 'G6DOI011', 'TAITRO014')
Insert into sub_TAITRO
Values ('G6D12TT002', 'G6DOI011', 'TAITRO001')
Insert into sub_TAITRO
Values ('G6D12TT003', 'G6DOI011', 'TAITRO002')
Insert into sub_TAITRO
Values ('G6D12TT004', 'G6DOI011', 'TAITRO003')
Insert into sub_TAITRO
Values ('G6D12TT005', 'G6DOI011', 'TAITRO004')
	-- Tài trợ đội TP Hồ Chí Minh
Insert into sub_TAITRO
Values ('G6D13TT001', 'G6DOI011', 'TAITRO005')
Insert into sub_TAITRO
Values ('G6D13TT002', 'G6DOI011', 'TAITRO006')
Insert into sub_TAITRO
Values ('G6D13TT003', 'G6DOI011', 'TAITRO007')
Insert into sub_TAITRO
Values ('G6D13TT004', 'G6DOI011', 'TAITRO008')
Insert into sub_TAITRO
Values ('G6D13TT005', 'G6DOI011', 'TAITRO009')
	-- Tài trợ đội Viettel
Insert into sub_TAITRO
Values ('G6D14TT001', 'G6DOI012', 'TAITRO010')
Insert into sub_TAITRO
Values ('G6D14TT002', 'G6DOI012', 'TAITRO011')
Insert into sub_TAITRO
Values ('G6D14TT003', 'G6DOI012', 'TAITRO012')
Insert into sub_TAITRO
Values ('G6D14TT004', 'G6DOI012', 'TAITRO013')
Insert into sub_TAITRO
Values ('G6D14TT005', 'G6DOI012', 'TAITRO014')

Create Table CAUTHU
(
	ID_CauThu char(15) not null primary key,
	TenCauThu nvarchar(50),
	Source_HACT varchar(2000),
	ID_DoiBong char(15) not null foreign key references DOIBONG(ID_DoiBong)
)
Go
--Alter Table CAUTHU
--ADD ID_DoiBong char(15) not null foreign key references DOIBONG(ID_DoiBong)

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Becamex Bình Dương
Insert into CAUTHU
Values ('G6D01CT001', N'Phạm Văn Tiến', 'https://vpf.vn/wp-content/uploads/2018/12/Phan-V%C4%83n-Ti%E1%BA%BFn-_1-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT002', N'Hồ Tấn Tài', 'https://vpf.vn/wp-content/uploads/2018/12/H%E1%BB%93-T%E1%BA%A5n-T%C3%A0i-_-4-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT003', N'Trần Hữu Đông Triều', 'https://vpf.vn/wp-content/uploads/2018/12/Tr%E1%BA%A7n-H%E1%BB%AFu-%C4%90%C3%B4ng-Tri%E1%BB%81u_5-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT004', N'Hedipo Gustavo', 'https://vpf.vn/wp-content/uploads/2020/01/Hedip-Gustavo_10-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT005', N'Tống Anh Tỷ', 'https://vpf.vn/wp-content/uploads/2018/12/T%E1%BB%91ng-Anh-T%E1%BB%B7-17-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT006', N'Ngô Hồng Phước', 'https://vpf.vn/wp-content/uploads/2019/03/Ng%C3%B4-H%E1%BB%93ng-Ph%C6%B0%E1%BB%9Bc_19-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT007', N'Nguyễn Tiến Linh', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-Ti%E1%BA%BFn-Linh_22-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT008', N'Rabo Ali', 'https://vpf.vn/wp-content/uploads/2019/07/Rabo-Ali_88-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT009', N'Tô Văn Vũ', 'https://vpf.vn/wp-content/uploads/2018/12/T%C3%B4-V%C4%83n-V%C5%A9-_-28-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT010', N'Trần Phi Hà', 'https://vpf.vn/wp-content/uploads/2020/01/Tr%E1%BA%A7n-Phi-H%C3%A0_26-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT011', N'Hồ Sỹ Giáp', 'https://vpf.vn/wp-content/uploads/2018/12/H%E1%BB%93-S%E1%BB%B9-Gi%C3%A1p-_27_xanh-150x150.jpg', 'G6DOI001')
Insert into CAUTHU
Values ('G6D01CT012', N'Đào Tấn Lộc', 'https://vpf.vn/wp-content/uploads/2018/12/%C4%90%C3%A0o-T%E1%BA%A5n-L%E1%BB%99c-_21-150x150.jpg', 'G6DOI001')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Dược Nam Hà Nam Định
Insert into CAUTHU
Values ('G6D02CT001', N'Trần Liêm Điều', 'https://vpf.vn/wp-content/uploads/2019/02/Tran-Liem-Dieu_1-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT002', N'Phạm Minh Nghĩa', 'https://vpf.vn/wp-content/uploads/2018/12/Pham-Minh-Nghia_3-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT003', N'Trần Hữu Hoàng', 'https://vpf.vn/wp-content/uploads/2020/01/Tran-Huu-Hoang_4-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT004', N'Lâm Anh Quang', 'https://vpf.vn/wp-content/uploads/2018/12/Lam-Anh-Quang-5-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT005', N'Lê Sỹ Minh', 'https://vpf.vn/wp-content/uploads/2018/12/Le-Sy-Minh_08-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT006', N'Trần Mạnh Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/Tran-Manh-Hung_10-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT007', N'Phạm Hồng Sơn', 'https://vpf.vn/wp-content/uploads/2018/12/Pham-Hong-Son_14-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT008', N'Hoàng Xuân Tân', 'https://vpf.vn/wp-content/uploads/2020/01/Hoang-Xuan-Tan_17-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT009', N'Đoàn Thanh Trường', 'https://vpf.vn/wp-content/uploads/2019/02/Doan-Thanh-Truong_18-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT010', N'Ngô Đức Huy', 'https://vpf.vn/wp-content/uploads/2020/01/Ngo-Duc-Huy_22-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT011', N'Phan Văn Hiếu', 'https://vpf.vn/wp-content/uploads/2020/02/Phan-Van-Hieu_23-150x150.jpg', 'G6DOI002')
Insert into CAUTHU
Values ('G6D02CT012', N'Đinh Quang Phán', 'https://vpf.vn/wp-content/uploads/2018/12/Dinh-Quang-Phan_25-150x150.jpg', 'G6DOI002')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Hà Nội
Insert into CAUTHU
Values ('G6D03CT001', N'Bùi Tấn Trường', 'https://vpf.vn/wp-content/uploads/2018/12/TRUONG-150x150.png', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT002', N'Nguyễn Văn Dũng', 'https://vpf.vn/wp-content/uploads/2018/12/4-NGUYEN-VAN-DUNG-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT003', N'Đoàn Văn Hậu', 'https://vpf.vn/wp-content/uploads/2018/12/Doan-Van-Hau-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT004', N'Đậu Văn Toàn', 'https://vpf.vn/wp-content/uploads/2018/12/6-DAU-VAN-TOAN-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT005', N'Mạch Ngọc Hà', 'https://vpf.vn/wp-content/uploads/2018/12/7-MACH-NGOC-HA-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT006', N'Moses Oloya', 'https://vpf.vn/wp-content/uploads/2018/12/8-OLOYA-MOSES-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT007', N'Nguyễn Văn Quyết', 'https://vpf.vn/wp-content/uploads/2018/12/10-NGUYEN-VAN-QUYET-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT008', N'Phạm Thành Lương', 'https://vpf.vn/wp-content/uploads/2018/12/11-PHAM-THANH-LUONG-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT009', N'Trần Văn Kiên', 'https://vpf.vn/wp-content/uploads/2018/12/13-TRAN-VAN-KIEN-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT010', N'Phạm Đức Huy', 'https://vpf.vn/wp-content/uploads/2018/12/15-PHAM-DUC-HUY-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT011', N'Nguyễn Thành Chung', 'https://vpf.vn/wp-content/uploads/2018/12/16-NGUYEN-THANH-CHUNG-150x150.jpg', 'G6DOI003')
Insert into CAUTHU
Values ('G6D03CT012', N'Đặng Văn Tới', 'https://vpf.vn/wp-content/uploads/2018/12/17-DANG-VAN-TOI-150x150.jpeg', 'G6DOI003')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Hải Phòng
Insert into CAUTHU
Values ('G6D04CT001', N'Nguyễn Văn Phong', 'https://vpf.vn/wp-content/uploads/2019/03/Nguy%E1%BB%85n-V%C4%83n-Phong-01-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT002', N'Lê Trung Hiếu', 'https://vpf.vn/wp-content/uploads/2018/12/L%C3%AA-Trung-Hi%E1%BA%BFu-02-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT003', N'Phạm Mạnh Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/Ph%E1%BA%A1m-M%E1%BA%A1nh-H%C3%B9ng-03-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT004', N'Nguyễn Đình Tài', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-%C4%90%C3%ACnh-T%C3%A0i-05-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT005', N'Nguyễn Hữu Phúc', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-H%E1%BB%AFu-Ph%C3%BAc-06-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT006', N'Mpande Joseph Mbolimbo', 'https://vpf.vn/wp-content/uploads/2019/02/Mpande-Joseph-Mbolimbo-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT007', N'Lê Thế Cường', 'https://vpf.vn/wp-content/uploads/2018/12/L%C3%AA-Th%E1%BA%BF-C%C6%B0%E1%BB%9Dng-09-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT008', N'Diego Olivera Silva', 'https://vpf.vn/wp-content/uploads/2020/01/Diego-Olivera-Silva-10-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT009', N'Andre Diego Fagan', 'https://vpf.vn/wp-content/uploads/2018/12/fagan-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT010', N'Nguyễn Hữu Tuấn', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-H%E1%BB%AFu-Tu%E1%BA%A5n-12-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT011', N'Doãn Ngọc Tân', 'https://vpf.vn/wp-content/uploads/2018/12/Do%C3%A3n-Ng%E1%BB%8Dc-T%C3%A2n-15-150x150.jpg', 'G6DOI004')
Insert into CAUTHU
Values ('G6D04CT012', N'Mạc Hồng Quân', 'https://vpf.vn/wp-content/uploads/2018/12/Mac-Hong-Quan-1-150x150.jpg', 'G6DOI004')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Hoàng Anh Gia Lai
Insert into CAUTHU
Values ('G6D05CT001', N'Trần Bửu Ngọc', 'https://vpf.vn/wp-content/uploads/2018/12/no-68-Tran-Buu-Ngoc-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT002', N'Nguyễn Cảnh Anh', 'https://vpf.vn/wp-content/uploads/2019/03/2-NGUY%E1%BB%84N-C%E1%BA%A2NH-ANH-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT003', N'Nguyễn Hữu Anh Tài', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-H%E1%BB%AFu-Anh-T%C3%A0i_75-SN-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT004', N'Memovic Damir', 'https://vpf.vn/wp-content/uploads/2019/02/Memovic-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT005', N'Âu Dương Quân', 'https://vpf.vn/wp-content/uploads/2019/04/5-%C3%82U-D%C6%AF%C6%A0NG-QU%C3%82N-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT006', N'Lương Xuân Trường', 'https://vpf.vn/wp-content/uploads/2018/12/Luong-Xuan-Truong_1425870687-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT007', N'Nguyễn Phong Hồng Duy', 'https://vpf.vn/wp-content/uploads/2018/12/7-NGUY%E1%BB%84N-PHONG-H%E1%BB%92NG-DUY-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT008', N'Trần Minh Vương', 'https://vpf.vn/wp-content/uploads/2018/12/8-TR%E1%BA%A6N-MINH-V%C6%AF%C6%A0NG-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT009', N'Nguyễn Văn Toàn', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-V%C4%83n-To%C3%A0n_9-SN-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT010', N'Nguyễn Tuấn Anh', 'https://vpf.vn/wp-content/uploads/2018/12/11-NGUY%E1%BB%84N-TU%E1%BA%A4N-ANH-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT011', N'Oahimijie Kelly', 'https://vpf.vn/wp-content/uploads/2020/01/12-OAHIMUIE-KELLY-150x150.jpg', 'G6DOI005')
Insert into CAUTHU
Values ('G6D05CT012', N'Vũ Văn Thanh', 'https://vpf.vn/wp-content/uploads/2018/12/V%C5%A9-V%C4%83n-Thanh_17-SN-150x150.jpg', 'G6DOI005')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Hồng Lĩnh Hà Tĩnh
Insert into CAUTHU
Values ('G6D06CT001', N'Nguyễn Hoài Anh', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-Ho%C3%A0i-Anh-s%E1%BB%91-1-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT002', N'Hoàng Ngọc Hào', 'https://vpf.vn/wp-content/uploads/2018/12/Ho%C3%A0ng-Ng%E1%BB%8Dc-H%C3%A0o-s%E1%BB%91-2-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT003', N'Vũ Hữu Quý', 'https://vpf.vn/wp-content/uploads/2018/12/V%C5%A9-H%E1%BB%AFu-Qu%C3%BD-s%E1%BB%91-3-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT004', N'Trần Đức Nam', 'https://vpf.vn/wp-content/uploads/2018/12/Tr%E1%BA%A7n-%C4%90%E1%BB%A9c-Nam-s%E1%BB%91-5-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT005', N'Lý Công Hoàng Anh', 'https://vpf.vn/wp-content/uploads/2018/12/L%C3%BD-C%C3%B4ng-Ho%C3%A0ng-Anh-s%E1%BB%91-6-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT006', N'Lê Mạnh Dũng', 'https://vpf.vn/wp-content/uploads/2018/12/L%C3%AA-M%E1%BA%A1nh-D%C5%A9ng-s%E1%BB%91-7-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT007', N'Bruno Henrique', 'https://vpf.vn/wp-content/uploads/2020/01/Bruno-Henrique-De-Sousa-s%E1%BB%91-9-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT008', N'Phạm Tuấn Hải', 'https://vpf.vn/wp-content/uploads/2018/12/Ph%E1%BA%A1m-Tu%E1%BA%A5n-H%E1%BA%A3i-s%E1%BB%91-10-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT009', N'Nguyễn Văn Hiệp', 'https://vpf.vn/wp-content/uploads/2019/05/Nguy%E1%BB%85n-V%C4%83n-Hi%E1%BB%87p-s%E1%BB%91-11-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT010', N'Nguyễn Văn Toản', 'https://vpf.vn/wp-content/uploads/2018/12/Nguy%E1%BB%85n-V%C4%83n-To%E1%BA%A3n-s%E1%BB%91-15-150x150.png', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT011', N'Phạm Văn Long', 'https://vpf.vn/wp-content/uploads/2018/12/Ph%E1%BA%A1m-V%C4%83n-Long-s%E1%BB%91-16-150x150.jpg', 'G6DOI006')
Insert into CAUTHU
Values ('G6D06CT012', N'Đào Văn Nam', 'https://vpf.vn/wp-content/uploads/2018/12/%C4%90%C3%A0o-V%C4%83n-Nam-s%E1%BB%91-17-150x150.jpg', 'G6DOI006')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Quảng Nam
Insert into CAUTHU
Values ('G6D07CT001', N'Nguyễn Ngọc Bin', 'https://vpf.vn/wp-content/uploads/2020/01/1-Nguyen-Ngoc-Bin-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT002', N'Đinh Viết Tú', 'https://vpf.vn/wp-content/uploads/2018/12/2-Dinh-Viet-Tu-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT003', N'Huỳnh Tấn Sinh', 'https://vpf.vn/wp-content/uploads/2018/12/3-Huynh-Tan-Sinh-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT004', N'Trần Văn Tâm', 'https://vpf.vn/wp-content/uploads/2018/12/4-Tran-Van-Tam-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT005', N'Đặng Hữu Phước', 'https://vpf.vn/wp-content/uploads/2018/12/6-dang-huu-Phuoc-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT006', N'Đinh Thanh Trung', 'https://vpf.vn/wp-content/uploads/2018/12/7-Dinh-Thanh-Trung-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT007', N'Jose Paulo Pinto', 'https://vpf.vn/wp-content/uploads/2020/01/8-Ze-Paulo-Oliveira-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT008', N'Hà Minh Tuấn', 'https://vpf.vn/wp-content/uploads/2018/12/9-Ha-Minh-Tuan-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT009', N'Phan Đình Thắng', 'https://vpf.vn/wp-content/uploads/2018/12/10-Phan-Dinh-Thang-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT010', N'Trịnh Duy Long', 'https://vpf.vn/wp-content/uploads/2018/12/12-Trinh-Duy-Long-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D01CT011', N'Nguyễn Hoàng Quốc Chí', 'https://vpf.vn/wp-content/uploads/2018/12/13-Nguyen-Hoang-Quoc-Chi-150x150.jpg', 'G6DOI007')
Insert into CAUTHU
Values ('G6D07CT012', N'Nguyễn Huy Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/14-Nguyen-Huy-Hung-150x150.jpg', 'G6DOI007')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Sài Gòn
Insert into CAUTHU
Values ('G6D08CT001', N'Ngô Anh Vũ', 'https://vpf.vn/wp-content/uploads/2018/12/3.NgoAnhVu-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT002', N'Nguyễn Nam Anh', 'https://vpf.vn/wp-content/uploads/2018/12/5.NguyenNamAnh-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT003', N'Trần Văn Bửu', 'https://vpf.vn/wp-content/uploads/2019/02/6.TranVanBuu-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT004', N'Nguyễn Ngọc Duy', 'https://vpf.vn/wp-content/uploads/2018/12/7.NguyenNgocDuy-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT005', N'Nguyễn Vũ Tín', 'https://vpf.vn/wp-content/uploads/2018/12/8.NguyenVuTin-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT006', N'Trịnh Đức Lợi', 'https://vpf.vn/wp-content/uploads/2018/12/15.TrinhDucLoi-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT007', N'Bùi Trần Vũ', 'https://vpf.vn/wp-content/uploads/2018/12/16.BuiTranVu-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT008', N'Nguyễn Minh Trung', 'https://vpf.vn/wp-content/uploads/2018/12/17.NguyenMinhTrung-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT009', N'Lê Quốc Phương', 'https://vpf.vn/wp-content/uploads/2018/12/19.LeQuocPhuong-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT010', N'Nguyễn Thanh Thụ', 'https://vpf.vn/wp-content/uploads/2018/12/20.NguyenThanhThu-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT011', N'Nguyễn Quốc Long', 'https://vpf.vn/wp-content/uploads/2018/12/22.NguyenQuocLong-150x150.jpg', 'G6DOI008')
Insert into CAUTHU
Values ('G6D08CT012', N'Cao Văn Triền', 'https://vpf.vn/wp-content/uploads/2018/12/23.CaoVanTrien-150x150.jpg', 'G6DOI008')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội SHB Đà Nẵng
Insert into CAUTHU
Values ('G6D09CT001', N'Phan Văn Biểu', 'https://vpf.vn/wp-content/uploads/2018/12/Phan-Van-Bieu-_1-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT002', N'Âu Văn Hoàn', 'https://vpf.vn/wp-content/uploads/2018/12/Au-Van-Hoan_2-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT003', N'TNguyễn Phi Hoàng', 'https://vpf.vn/wp-content/uploads/2020/01/Nguyen-Phi-Hoang_4-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT004', N'Mạc Đức Việt Anh', 'https://vpf.vn/wp-content/uploads/2018/12/Mac-Duc-Viet-Anh_5-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT005', N'Đặng Anh Tuấn', 'https://vpf.vn/wp-content/uploads/2018/12/Dang-Anh-Tuan_6-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT006', N'Nguyễn Thanh Hải', 'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Thanh-Hai_7-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT007', N'Hà Đức Chinh', 'https://vpf.vn/wp-content/uploads/2018/12/Ha-%C4%90%E1%BB%A9c-Chinh_8-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT008', N'Phạm Trọng Hóa', 'https://vpf.vn/wp-content/uploads/2018/12/Pham-Trong-Hoa-_10-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT009', N'Phan Văn Long', 'https://vpf.vn/wp-content/uploads/2018/12/Phan-Van-Long_11-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT010', N'Hoàng Minh Tâm', 'https://vpf.vn/wp-content/uploads/2018/12/Hoang-Minh-Tam_12-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT011', N'Nguyễn Thanh Bình', 'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Thanh-Binh_13-150x150.jpg', 'G6DOI009')
Insert into CAUTHU
Values ('G6D09CT012', N'Võ Lý', 'https://vpf.vn/wp-content/uploads/2018/12/V%C3%B5-L%C3%BD_14-150x150.jpg', 'G6DOI009')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Sông Lam Nghệ An
Insert into CAUTHU
Values ('G6D10CT001', N'Hồ Văn Tú', 'https://vpf.vn/wp-content/uploads/2018/12/1-Ho-Van-Tu-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT002', N'Võ Ngọc Đức', 'https://vpf.vn/wp-content/uploads/2018/12/2-Vo-Ngoc-Duc-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT003', N'Phạm Thế Nhật', 'https://vpf.vn/wp-content/uploads/2018/12/3-Pham-The-Nhat-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT004', N'Bùi Đình Châu', 'https://vpf.vn/wp-content/uploads/2019/03/4-Bui-Dinh-Chau-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT005', N'Hoàng Văn Khánh', 'https://vpf.vn/wp-content/uploads/2018/12/5-Hoang-Van-Khanh-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT006', N'Hồ Sỹ Sâm', 'https://vpf.vn/wp-content/uploads/2018/12/6-Ho-Sy-Sam-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT007', N'Phạm Xuân Mạnh', 'https://vpf.vn/wp-content/uploads/2018/12/7-Pham-Xuan-Mamh-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT008', N'Hồ Phúc Tịnh', 'https://vpf.vn/wp-content/uploads/2018/12/8-Ho-Phuc-Tinh-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT009', N'Hồ Tuấn Tài', 'https://vpf.vn/wp-content/uploads/2018/12/10-Ho-Tuan-Tai-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT010', N'Nguyễn Phú Nguyên', 'https://vpf.vn/wp-content/uploads/2018/12/11-Nguyen-Phu-Nguyen-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT011', N'Đặng Văn Lắm', 'https://vpf.vn/wp-content/uploads/2020/02/12-Dang-Van-Lam-150x150.jpg', 'G6DOI010')
Insert into CAUTHU
Values ('G6D10CT012', N'Nguyễn Văn Việt', 'https://vpf.vn/wp-content/uploads/2020/01/14-Nguyen-Van-Viet-150x150.jpg', 'G6DOI010')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Than Quảng Ninh
Insert into CAUTHU
Values ('G6D11CT001', N'Phan Đình Vũ Hải', 'https://vpf.vn/wp-content/uploads/2018/12/Phan-Dinh-Vu-Hai-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT002', N'Dương Văn Khoa', 'https://vpf.vn/wp-content/uploads/2018/12/Duong-Van-Khoa-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT003', N'Dương Thanh Hào', 'https://vpf.vn/wp-content/uploads/2018/12/Duong-Thanh-Hao-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT004', N'Lê Tuấn Tú', 'https://vpf.vn/wp-content/uploads/2019/03/Le-Tuan-Tu-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT005', N'Nguyễn Xuân Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Xuan-Hung-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT006', N'Hồ Hùng Cường', 'https://vpf.vn/wp-content/uploads/2018/12/Ho-Hung-Cuong-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT007', N'Trịnh Hoa Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/Trinh-Hoa-Hung-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT008', N'Nguyễn Hải Huy', 'https://vpf.vn/wp-content/uploads/2018/12/Nguyen-Hai-Huy-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT009', N'Đào Nhật Minh', 'https://vpf.vn/wp-content/uploads/2018/12/Dao-Nhat-Minh-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT010', N'Phạm Trung Hiếu', 'https://vpf.vn/wp-content/uploads/2018/12/Pham-Trung-Hieu-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT011', N'Đoàn Văn Quý', 'https://vpf.vn/wp-content/uploads/2019/02/Doan-Van-Quy-150x150.jpg', 'G6DOI011')
Insert into CAUTHU
Values ('G6D11CT012', N'Lastro Neven', 'https://vpf.vn/wp-content/uploads/2019/02/Lastro-Neven-150x150.jpg', 'G6DOI011')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Thanh Hóa
Insert into CAUTHU
Values ('G6D12CT001', N'Lương Bá Sơn', 'https://vpf.vn/wp-content/uploads/2018/12/1.-L%C6%B0%C6%A1ng-B%C3%A1-S%C6%A1n-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT002', N'Hoàng Đình Tùng', 'https://vpf.vn/wp-content/uploads/2018/12/2.-Ho%C3%A0ng-%C4%90%C3%ACnh-T%C3%B9ng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT003', N'Vũ Xuân Cường', 'https://vpf.vn/wp-content/uploads/2018/12/3.-V%C5%A9-Xu%C3%A2n-C%C6%B0%E1%BB%9Dng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT004', N'Trịnh Đình Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/2.-Ho%C3%A0ng-%C4%90%C3%ACnh-T%C3%B9ng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT005', N'Nguyễn Minh Tùng', 'https://vpf.vn/wp-content/uploads/2018/12/5.-Nguy%E1%BB%85n-Minh-T%C3%B9ng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT006', N'Josip Balic', 'https://vpf.vn/wp-content/uploads/2020/01/6.-Josip-Balic-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT007', N'Nguyễn Hữu Dũng', 'https://vpf.vn/wp-content/uploads/2018/12/7.-Nguy%E1%BB%85n-H%E1%BB%AFu-D%C5%A9ng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT008', N'Lê Văn Thắng', 'https://vpf.vn/wp-content/uploads/2018/12/8.-L%C3%AA-V%C4%83n-Th%E1%BA%AFng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT009', N'Lê Xuân Hùng', 'https://vpf.vn/wp-content/uploads/2018/12/9.-L%C3%AA-Xu%C3%A2n-H%C3%B9ng-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT010', N'Lê Phạm Thành Long', 'https://vpf.vn/wp-content/uploads/2018/12/11.-L%C3%AA-Ph%E1%BA%A1m-Th%C3%A0nh-Long-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT011', N'Trịnh Văn Lợi', 'https://vpf.vn/wp-content/uploads/2018/12/15.-Tr%E1%BB%8Bnh-V%C4%83n-L%E1%BB%A3i-150x150.jpg', 'G6DOI012')
Insert into CAUTHU
Values ('G6D12CT012', N'Hoàng Anh Tuấn', 'https://vpf.vn/wp-content/uploads/2018/12/16.-Ho%C3%A0ng-Anh-Tu%E1%BA%A5n-150x150.jpg', 'G6DOI012')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội TP Hồ Chí Minh
Insert into CAUTHU
Values ('G6D13CT001', N'Nguyễn Thanh Thắng', 'https://vpf.vn/wp-content/uploads/2018/12/1-NGUY%E1%BB%84N-THANH-TH%E1%BA%AENG-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT002', N'Ngô Tùng Quốc', 'https://vpf.vn/wp-content/uploads/2018/12/2-NG%C3%94-T%C3%99NG-QU%E1%BB%90C-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT003', N'Nguyễn Tăng Tiến', 'https://vpf.vn/wp-content/uploads/2018/12/4-NGUY%E1%BB%84N-T%C4%82NG-TI%E1%BA%BEN-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT004', N'Ngô Viết Phú', 'https://vpf.vn/wp-content/uploads/2018/12/5-NG%C3%94-VI%E1%BA%BET-PH%C3%9A-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT005', N'Sầm Ngọc Đức', 'https://vpf.vn/wp-content/uploads/2018/12/7-S%E1%BA%A6M-NG%E1%BB%8CC-%C4%90%E1%BB%A8C-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT006', N'Trần Thanh Bình', 'https://vpf.vn/wp-content/uploads/2018/12/8-TR%E1%BA%A6N-THANH-B%C3%8CNH-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT007', N'Ngô Hoàng Thịnh', 'https://vpf.vn/wp-content/uploads/2018/12/9-NG%C3%94-HO%C3%80NG-TH%E1%BB%8ANH-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT008', N'Trần Phi Sơn', 'https://vpf.vn/wp-content/uploads/2018/12/10-TR%E1%BA%A6N-PHI-S%C6%A0N-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT009', N'Nguyễn Xuân Nam', 'https://vpf.vn/wp-content/uploads/2019/04/11-NGUY%E1%BB%84N-XU%C3%82N-NAM-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT010', N'Lê Đức Lương', 'https://vpf.vn/wp-content/uploads/2018/12/12-L%C3%8A-%C4%90%E1%BB%A8C-L%C6%AF%C6%A0NG-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT011', N'Đỗ Văn Thuận', 'https://vpf.vn/wp-content/uploads/2018/12/14-%C4%90%E1%BB%96-V%C4%82N-THU%E1%BA%ACN-150x150.jpg', 'G6DOI013')
Insert into CAUTHU
Values ('G6D13CT01', N'Nguyễn Hữu Tuấn', 'https://vpf.vn/wp-content/uploads/2020/01/15-NGUY%E1%BB%84N-H%E1%BB%AEU-TU%E1%BA%A4N-150x150.jpg', 'G6DOI013')

-- Thêm dữ liệu vào bảng CAUTHU
	-- Cầu thủ đội Viettel
Insert into CAUTHU
Values ('G6D14CT001', N'Ngô Xuân Sơn', 'https://vpf.vn/wp-content/uploads/2018/12/1-.NGO-XUAN-SON-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT002', N'Quế Ngọc Hải', 'https://vpf.vn/wp-content/uploads/2018/12/3-QUE-NGOC-HAI-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT003', N'Bùi Tiến Dũng', 'https://vpf.vn/wp-content/uploads/2018/12/4-BUI-TIEN-DUNG-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT004', N'Trương Văn Thiết', 'https://vpf.vn/wp-content/uploads/2018/12/5-TRUONG-VAN-THIET-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT005', N'Vũ Minh Tuấn', 'https://vpf.vn/wp-content/uploads/2018/12/6-VU-MINH-TUAN-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT006', N'Nguyễn Trọng Hoàng', 'https://vpf.vn/wp-content/uploads/2018/12/8-NGUYEN-TRONG-HOANG-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT007', N'Trần Ngọc Sơn', 'https://vpf.vn/wp-content/uploads/2018/12/9-.TRAN-NGOC-SON--150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT008', N'Đặng Văn Trâm', 'https://vpf.vn/wp-content/uploads/2018/12/10-DANG-VAN-TRAM-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT009', N'Nguyễn Việt Phong', 'https://vpf.vn/wp-content/uploads/2018/12/11-NGUYEN-VIET-PHONG-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT010', N'Hồ Khắc Ngọc', 'https://vpf.vn/wp-content/uploads/2018/12/12-HO-KHAC-NGOC-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT011', N'Bùi Quang Khải', 'https://vpf.vn/wp-content/uploads/2018/12/14-.-BUI-QUANG-KHAI-150x150.jpg', 'G6DOI014')
Insert into CAUTHU
Values ('G6D14CT012', N'Nguyễn Đức Hoàng Minh', 'https://vpf.vn/wp-content/uploads/2018/12/17-NGUYEN-DUC-HOANG-MINH-150x150.jpg', 'G6DOI014')

--Create Table sub_CAUTHU
--(
--	ID_sub_CT int identity(1,1) primary key,
--	ID_DoiBong char(15) not null foreign key references DOIBONG(ID_DoiBong),
--	ID_CauThu char(15) not null foreign key references CAUTHU(ID_CauThu)
	
--)
--Go

--drop table sub_CAUTHU

Create Table TRANDAU
(
	ID_TranDau char(15) not null primary key,
	DoiNha char(15) not null foreign key references DOIBONG(ID_DoiBong),
	DoiKhach char(15) not null foreign key references DOIBONG(ID_DoiBong),
	ThoiGianThiDau datetime,
	SanThiDau nvarchar(20),
	TiSo varchar(15)
)
Go

Create Table BANTHANG
(
	ID_BanThang char(15) not null primary key,
	ID_CauThu char(15) not null foreign key references CAUTHU(ID_CauThu),
	ID_TranDau char(15) not null foreign key references TRANDAU(ID_TranDau),
	ThoiDiem datetime
)
Go

Create Table tb_USER
(
	ID_User char(15) not null primary key,
	HoTen nvarchar(50),
	TaiKhoan varchar(50),
	MatKhau varchar(50),
	Email varchar(50),
	SDT char(15)
)
Go

Create Table KHACHHANG
(
	ID_KhachHang char(15) not null primary key,
	HoTen nvarchar(50),
	DiaChi nvarchar(100),
	SDT char(15)
)
Go

Create Table HOADON
(
	ID_HoaDon char(15) not null primary key,
	ID_KhachHang char(15) not null foreign key references KHACHHANG(ID_KhachHang),
	ThoiGian datetime
)
go

Create Table LOAIVE
(
	ID_LoaiVe char(15) not null primary key,
	TenLoaiVe nvarchar(50),	-- Vé khán đài A, vé khán đài B, vé khán đài C, vé khán đài D
	SoLuong int		-- Tổng số lượng của loại vé đó là bao nhiêu
)
Go
Alter Table LOAIVE
ADD GiaVe int

Create Table TICKET
(
	ID_Ve char(15) not null primary key,
	ID_LoaiVe char(15) not null foreign key references LOAIVE(ID_LoaiVe),
	DoiNha char(15) not null foreign key references DOIBONG(ID_DoiBong),
	DoiKhach char(15) not null foreign key references DOIBONG(ID_DoiBong),
	ThoiGianBatDau datetime,
)
Go

Create Table CTHD
(
	ID_HoaDon char(15) not null foreign key references HOADON(ID_HoaDon),
	ID_Ve char(15) not null foreign key references TICKET(ID_Ve),
	SoLuong int		-- Số lượng vé đã bán
	Constraint CTHD_pk primary key(ID_HoaDon, ID_Ve)
)
Go

create table HINHANH_QC(
ID_HA_QC int identity(1,1) primary key,
Source_HinhAnh_QC varchar(2000)
)
go

create table VIDEO(
ID_VIDEO int identity(1,1) primary key,
Source_VIDEO varchar(2000)
)
go

create table TIN_VIDEO
(
	ID_TIN_VIDEO char(15) primary key,
	TieuDe_VIDEO nvarchar(max) default N'No title',
	Avatar_VIDEO varchar(2000) default 'No picture',
	TomTat_VIDEO nvarchar(max),
	LuotTuongTac_VIDEO int,
	LuotXem_VIDEO int,
	TrangThaiHienThi_VIDEO nvarchar(20) default N'Hiển thị'
)
go

create table sub_TIN_VIDEO
(
	ID_sub_TIN_VIDEO int identity(1,1) primary key,
	ID_TIN_VIDEO char(15) foreign key references TIN_VIDEO(ID_TIN_VIDEO),
	ID_VIDEO int foreign key references VIDEO(ID_VIDEO)
)
go

create table Thong_Tin_Xep_Hang
(
	ID_Thu_Tu int identity(1,1) primary key,
	ID_DoiBong char(15) foreign key references DOIBONG(ID_DoiBong),
	SoTran int,
	Thang int,
	Hoa int,
	Thua int,
	HieuSo char(10),
	Diem int
)
Go

Create Table GIAIDAU
(
	ID_GiaiDau char(15) not null primary key,	
	TenGiaiDau nvarchar(50) not null,
	Source_Logo_GiaiDau varchar(2000),
	Logo_Figcaption nvarchar(50),
	Source_Trailer varchar(2000),
	Trailer_Title nvarchar(max),
	Source_Fanpage varchar(2000)
)
Go

Create Table sub_GIAIDAU
(
	ID_Banner char(15) not null primary key,
	Source_Banner varchar(2000),
	ID_GiaiDau char(15) not null foreign key references GIAIDAU(ID_GiaiDau)
)
Go

 -- Thêm dữ liệu cho trang thông tin giải đấu

 -- Thêm dữ liệu bảng GIAIDAU
 Insert into GIAIDAU
 Values ('GIAI001', N'Premier League 2020/21', 'https://i.pinimg.com/originals/25/85/2c/25852c8b87d9fba0e870efa499f6f566.png', N'Premier League', 'https://www.youtube.com/embed/wu9A6KQzmmg', N'NEW Premier League 2020/21 Matchday Intro', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fpremierleague&tabs=timeline&width=400&height=600&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId')
 Insert into GIAIDAU
 Values ('GIAI002', N'La Liga 2020/21', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSqJCegai788pvLm3RMuenwWcVM4DmmupW13g&usqp=CAU', N'La Liga', 'https://www.youtube.com/embed/4QcwSoE3duE', N'La Liga 2020/21 Stadiums', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FLaLiga&tabs=timeline&width=400&height=600&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId')
 Insert into GIAIDAU
 Values ('GIAI003', N'Bundesliga 2020/21', 'https://upload.wikimedia.org/wikipedia/vi/f/f9/Bundesliga_logo_%282017%29.png', N'Bundesliga', 'https://www.youtube.com/embed/pnwGFt7sLtM', N'Trailer Bundesliga 2020/21 | On Sports', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FBundesligaOfficial&tabs=timeline&width=400&height=600&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId')
 Insert into GIAIDAU
 Values ('GIAI004', N'Ligue 1 Uber Eats 2020/21', 'https://tudienwiki.com/wp-content/uploads/2016/11/ligue-1.png', N'Ligue 1 Uber Eats', 'https://www.youtube.com/embed/4eASFVySuPQ', N'Ligue 1 2020/21 Stadiums', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FLigue1UberEats&tabs=timeline&width=400&height=600&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId')
 Insert into GIAIDAU
 Values ('GIAI005', N'Lega Serie A 2020/21', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTAR_tZxAF2wX1Zc1umwjRgXR0tJNOyPmOXJA&usqp=CAU', N'Lega Serie A', 'https://www.youtube.com/embed/TJStwCTXriM', N'2020 Serie A Intro TV Opening', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FSerieA&tabs=timeline&width=400&height=600&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId')
 Insert into GIAIDAU
 Values ('GIAI006', N'Vô địch quốc gia LS 2020', 'https://vpf.vn/wp-content/themes/VPF-child/assets/images/logo_channel/logo-vdqg-2020.png', N'V-League', 'https://www.youtube.com/embed/teKTJDwsfO0', N'Trailer | V.League 2020 | Sự trở lại của những người hùng sân cỏ | VPF Media', 'https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FV.League.VPF&tabs=timeline&width=400&height=600&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId')

 -- Thêm dữ liệu vào bảng sub_GIAIDAU
 Insert into sub_GIAIDAU
 Values ('G1BANNER001', 'https://i.ytimg.com/vi/ofMQY5D1_tY/maxresdefault.jpg', 'GIAI001')
 Insert into sub_GIAIDAU
 Values ('G1BANNER002', 'https://www.elleman.vn/wp-content/uploads/2018/04/16/v%C3%B4-%C4%91%E1%BB%8Bch-ngo%E1%BA%A1i-h%E1%BA%A1ng-anh-7.jpg', 'GIAI001')
 Insert into sub_GIAIDAU
 Values ('G1BANNER003', 'https://thethaiger.com/wp-content/uploads/2020/06/liverpool-vo-dich-ngoai-hang-anh-som-truoc-7-vong-dau.jpg', 'GIAI001')

 -- Thêm dữ liệu vào bảng TRANDAU - Giải Premier League
 Insert into TRANDAU
 Values ('G1TD001', 'G1DOI001', 'G1DOI002', '2020-10-10 19:00', N'Old Trafford', '3-2')
 Insert into TRANDAU
 Values ('G1TD002', 'G1DOI003', 'G1DOI004', '2020-10-10 19:00', N'Stamford Bridge', '3-2')
 Insert into TRANDAU
 Values ('G1TD003', 'G1DOI005', 'G1DOI006', '2020-10-10 19:00', N'White Hart Lane', '3-2')
 Insert into TRANDAU
 Values ('G1TD004', 'G1DOI001', 'G1DOI003', '2020-10-11 19:00', N'Old Trafford', '3-2')
 Insert into TRANDAU
 Values ('G1TD005', 'G1DOI002', 'G1DOI005', '2020-10-11 19:00', N'Anfield', '3-2')
 Insert into TRANDAU
 Values ('G1TD006', 'G1DOI003', 'G1DOI006', '2020-10-11 19:00', N'Stamford Bridge', '3-2')
 Insert into TRANDAU
 Values ('G1TD007', 'G1DOI006', 'G1DOI001', '2020-10-12 19:00', N'Etihad', '3-2')
 Insert into TRANDAU
 Values ('G1TD008', 'G1DOI004', 'G1DOI002', '2020-10-12 19:00', N'Emirates', '3-2')
 Insert into TRANDAU
 Values ('G1TD009', 'G1DOI005', 'G1DOI003', '2020-10-12 19:00', N'White Hart Lane', '3-2')

 -- Thêm dữ liệu vào bảng DOIBONG - Giải Premier League
 Insert into DOIBONG
 Values ('G1DOI001', N'Manchester United', 'https://cdnmedia.webthethao.vn/uploads/files/17-6/Logo/mu.png', 'https://danhgianhacai.com/uploads/blog-bong-da/hinh-nen-manchester-united-cho-dien-thoai/hinh-nen-manchester-united-cho-dien-thoai-dep-nhat.jpg')
 Insert into DOIBONG
 Values ('G1DOI002', N'Liverpool', 'https://cdnmedia.webthethao.vn/uploads/files/17-6/Logo/liverpool.jpg', 'https://www.keonhanh.com/wp-content/uploads/2018/12/hinh-liverpool-dep.jpg')
 Insert into DOIBONG
 Values ('G1DOI003', N'Chelsea', 'https://cdnmedia.webthethao.vn/uploads/files/17-6/Logo/chelsea.jpg', 'https://zicxaphotos.com/wp-content/uploads/2020/05/Tong-hop-hinh-anh-chelsea-dep-nhat-10.jpg')
 Insert into DOIBONG
 Values ('G1DOI004', N'Arsenal', 'https://cdnmedia.webthethao.vn/uploads/files/17-6/Logo/Arsenal.jpg', 'https://www.keonhanh.com/wp-content/uploads/2018/12/anh-che-arsenal.jpg')
 Insert into DOIBONG
 Values ('G1DOI005', N'Tottenham', 'https://cdnmedia.webthethao.vn/uploads/files/17-6/Logo/tottenham.jpg', 'https://dep.anh9.com/imgs/131213anh-nhung-thanh-vien-doi-bong-tottenham.jpg')
 Insert into DOIBONG
 Values ('G1DOI006', N'Manchester City', 'https://cdnmedia.webthethao.vn/uploads/files/17-6/Logo/man-city.jpg', 'https://www.keonhanh.com/wp-content/uploads/2018/12/hinh-nen-man-city-cho-dien-thoai.jpg')





