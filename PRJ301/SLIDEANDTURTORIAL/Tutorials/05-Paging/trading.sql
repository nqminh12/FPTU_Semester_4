USE [Trading2021]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/26/2021 5:35:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[describe] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/26/2021 5:35:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [nchar](10) NOT NULL,
	[name] [nvarchar](max) NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[releaseDate] [date] NULL,
	[describe] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[cid] [int] NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Categories] ([id], [name], [describe]) VALUES (1, N'iPhone', N'Đẹp rực rỡ rạng ngời')
INSERT [dbo].[Categories] ([id], [name], [describe]) VALUES (2, N'Samsung', N'thời thượng')
INSERT [dbo].[Categories] ([id], [name], [describe]) VALUES (3, N'Oppo', N'dành cho sinh viên sành điệu')
INSERT [dbo].[Categories] ([id], [name], [describe]) VALUES (4, N'Vsmart', N'cho 1 Việt Nam đẹp đẽ')
INSERT [dbo].[Categories] ([id], [name], [describe]) VALUES (5, N'SS7', N'Mong Manh dễ vỡ')
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ip1       ', N'iphone 12 series', 15, 19000.0000, CAST(0x12430B00 AS Date), N'Chiếc iPhone siêu nhỏ gọn nhưng mang trên mình sức mạnh không đối thủ. iPhone 12 mini là sự lựa chọn hoàn hảo cho những ai đang cần một chiếc điện thoại có thể làm mọi thứ nhưng lại nằm gọn trong lòng bàn tay và độ tiện dụng đáng kinh ngạc.', N'images/ip1.jpg', 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ip2       ', N'iphone 11 series', 30, 16000.0000, CAST(0xA5410B00 AS Date), N'Chiếc iPhone siêu nhỏ gọn nhưng mang trên mình sức mạnh không đối thủ. iPhone 12 mini là sự lựa chọn hoàn hảo cho những ai đang cần một chiếc điện thoại có thể làm mọi thứ nhưng lại nằm gọn trong lòng bàn tay và độ tiện dụng đáng kinh ngạc.', N'images/ip2.jpg', 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ip3       ', N'iphone X series', 22, 13000.0000, CAST(0x37400B00 AS Date), N'Chiếc iPhone siêu nhỏ gọn nhưng mang trên mình sức mạnh không đối thủ. iPhone 12 mini là sự lựa chọn hoàn hảo cho những ai đang cần một chiếc điện thoại có thể làm mọi thứ nhưng lại nằm gọn trong lòng bàn tay và độ tiện dụng đáng kinh ngạc.', N'images/ip3.jpg', 1)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'opp1      ', N'oppo find x series', 60, 13000.0000, CAST(0x93400B00 AS Date), N'OPPO Reno4 - Chiếc điện thoại với cấu hình mạnh mẽ và công nghệ sạc siêu nhanh sẽ giúp bạn có được hiệu suất cao để trải nghiệm những điều thú vị trong cuộc sống, nhất là trên bộ tứ camera đẳng cấp cùng thiết kế từ nhà OPPO mà ai cũng phải ngước nhìn.

', N'images/opp1.jpg', 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'opp2      ', N'oppo find x series', 60, 13000.0000, CAST(0x93400B00 AS Date), N'OPPO Reno4 - Chiếc điện thoại với cấu hình mạnh mẽ và công nghệ sạc siêu nhanh sẽ giúp bạn có được hiệu suất cao để trải nghiệm những điều thú vị trong cuộc sống, nhất là trên bộ tứ camera đẳng cấp cùng thiết kế từ nhà OPPO mà ai cũng phải ngước nhìn.

', N'images/opp2.jpg', 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'opp3      ', N'oppo find x series', 60, 13000.0000, CAST(0x93400B00 AS Date), N'OPPO Reno4 - Chiếc điện thoại với cấu hình mạnh mẽ và công nghệ sạc siêu nhanh sẽ giúp bạn có được hiệu suất cao để trải nghiệm những điều thú vị trong cuộc sống, nhất là trên bộ tứ camera đẳng cấp cùng thiết kế từ nhà OPPO mà ai cũng phải ngước nhìn.

', N'images/opp3.jpg', 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'opp4      ', N'oppo find x series', 60, 13000.0000, CAST(0x93400B00 AS Date), N'OPPO Reno4 - Chiếc điện thoại với cấu hình mạnh mẽ và công nghệ sạc siêu nhanh sẽ giúp bạn có được hiệu suất cao để trải nghiệm những điều thú vị trong cuộc sống, nhất là trên bộ tứ camera đẳng cấp cùng thiết kế từ nhà OPPO mà ai cũng phải ngước nhìn.

', N'images/opp4.jpg', 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'opp5      ', N'oppo find x series', 60, 13000.0000, CAST(0x93400B00 AS Date), N'OPPO Reno4 - Chiếc điện thoại với cấu hình mạnh mẽ và công nghệ sạc siêu nhanh sẽ giúp bạn có được hiệu suất cao để trải nghiệm những điều thú vị trong cuộc sống, nhất là trên bộ tứ camera đẳng cấp cùng thiết kế từ nhà OPPO mà ai cũng phải ngước nhìn.

', N'images/opp5.jpg', 3)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss1       ', N'Galaxy Z series', 12, 20000.0000, CAST(0x01420B00 AS Date), N'Samsung Galaxy Note 20 Ultra được chế tác từ những vật liệu cao cấp hàng đầu hiện nay, với sự tỉ mỉ và chất lượng gia công thượng thừa, tạo nên chiếc điện thoại đẹp hơn những gì bạn có thể tưởng tượng.', N'images/ss1.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss2       ', N'galaxy note series', 12, 18000.0000, CAST(0xA9410B00 AS Date), N'Samsung Galaxy Note 20 Ultra được chế tác từ những vật liệu cao cấp hàng đầu hiện nay, với sự tỉ mỉ và chất lượng gia công thượng thừa, tạo nên chiếc điện thoại đẹp hơn những gì bạn có thể tưởng tượng.', N'images/ss2.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss3       ', N'galaxy F series', 34, 16000.0000, CAST(0x3B400B00 AS Date), N'Samsung Galaxy Note 20 Ultra được chế tác từ những vật liệu cao cấp hàng đầu hiện nay, với sự tỉ mỉ và chất lượng gia công thượng thừa, tạo nên chiếc điện thoại đẹp hơn những gì bạn có thể tưởng tượng.', N'images/ss3.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss4       ', N'galaxy HHH', 19, 15000.0000, CAST(0xCE3E0B00 AS Date), N'Samsung Galaxy Note 20 Ultra được chế tác từ những vật liệu cao cấp hàng đầu hiện nay, với sự tỉ mỉ và chất lượng gia công thượng thừa, tạo nên chiếc điện thoại đẹp hơn những gì bạn có thể tưởng tượng.', N'images/ss4.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss5       ', N'galaxy KKK', 52, 14000.0000, CAST(0x4C3C0B00 AS Date), N'Samsung Galaxy Note 20 Ultra được chế tác từ những vật liệu cao cấp hàng đầu hiện nay, với sự tỉ mỉ và chất lượng gia công thượng thừa, tạo nên chiếc điện thoại đẹp hơn những gì bạn có thể tưởng tượng.', N'images/ss5.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss6       ', N'galaxy note series', 12, 18000.0000, CAST(0xA9410B00 AS Date), N'Samsung Galaxy Note 20 Ultra du?c ch? tác t? nh?ng v?t li?u cao c?p hàng d?u hi?n nay, v?i s? t? m? và ch?t lu?ng gia công thu?ng th?a, t?o nên chi?c di?n tho?i d?p hon nh?ng gì b?n có th? tu?ng tu?ng.', N'images/ss2.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'ss7       ', N'galaxy note series', 12, 18000.0000, CAST(0xA9410B00 AS Date), N'Samsung Galaxy Note 20 Ultra du?c ch? tác t? nh?ng v?t li?u cao c?p hàng d?u hi?n nay, v?i s? t? m? và ch?t lu?ng gia công thu?ng th?a, t?o nên chi?c di?n tho?i d?p hon nh?ng gì b?n có th? tu?ng tu?ng.', N'images/ss2.jpg', 2)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'vsm1      ', N'Vsmart Joy 4 3GB-64GB', 60, 13000.0000, CAST(0x93400B00 AS Date), N'smart Live 4 6GB-64GB sở hữu cấu hình cực đỉnh, đưa bạn đến trải nghiệm giải trí bất tận với dung lượng pin lớn, màn hình tuyệt đẹp và 4 camera sau AI đầy ấn tượng.

', N'images/vsm1.jpg', 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'vsm2      ', N'Vsmart Joy 4 3GB-64GB', 60, 13000.0000, CAST(0x93400B00 AS Date), N'smart Live 4 6GB-64GB sở hữu cấu hình cực đỉnh, đưa bạn đến trải nghiệm giải trí bất tận với dung lượng pin lớn, màn hình tuyệt đẹp và 4 camera sau AI đầy ấn tượng.

', N'images/vsm2.jpg', 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'vsm3      ', N'Vsmart Joy 4 3GB-64GB', 60, 13000.0000, CAST(0x93400B00 AS Date), N'smart Live 4 6GB-64GB sở hữu cấu hình cực đỉnh, đưa bạn đến trải nghiệm giải trí bất tận với dung lượng pin lớn, màn hình tuyệt đẹp và 4 camera sau AI đầy ấn tượng.

', N'images/vsm3.jpg', 4)
INSERT [dbo].[Products] ([id], [name], [quantity], [price], [releaseDate], [describe], [image], [cid]) VALUES (N'vsm4      ', N'Vsmart Joy 4 3GB-64GB', 60, 13000.0000, CAST(0x93400B00 AS Date), N'smart Live 4 6GB-64GB sở hữu cấu hình cực đỉnh, đưa bạn đến trải nghiệm giải trí bất tận với dung lượng pin lớn, màn hình tuyệt đẹp và 4 camera sau AI đầy ấn tượng.

', N'images/vsm4.jpg', 4)
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Phone_Category] FOREIGN KEY([cid])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Phone_Category]
GO
