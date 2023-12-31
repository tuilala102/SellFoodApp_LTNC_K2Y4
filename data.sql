USE [master]
GO
/****** Object:  Database [LTNC]    Script Date: 6/27/2023 12:33:17 PM ******/
CREATE DATABASE [LTNC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LTNC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LTNC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LTNC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LTNC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LTNC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LTNC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LTNC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LTNC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LTNC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LTNC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LTNC] SET ARITHABORT OFF 
GO
ALTER DATABASE [LTNC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LTNC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LTNC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LTNC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LTNC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LTNC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LTNC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LTNC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LTNC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LTNC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LTNC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LTNC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LTNC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LTNC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LTNC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LTNC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LTNC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LTNC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LTNC] SET  MULTI_USER 
GO
ALTER DATABASE [LTNC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LTNC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LTNC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LTNC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LTNC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LTNC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LTNC] SET QUERY_STORE = OFF
GO
USE [LTNC]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[alias] [varchar](255) NULL,
	[content] [nvarchar](max) NOT NULL,
	[created_date] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](250) NOT NULL,
	[status] [int] NOT NULL,
	[updated_date] [varchar](255) NULL,
	[view_count] [int] NOT NULL,
	[created_by] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_food]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_food](
	[cart_id] [bigint] NOT NULL,
	[food_id] [bigint] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC,
	[food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[alias] [varchar](255) NULL,
	[name] [nvarchar](250) NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[author] [nvarchar](250) NULL,
	[content] [nvarchar](250) NULL,
	[time_create] [varchar](255) NULL,
	[food_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[food]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[food](
	[id] [bigint] NOT NULL,
	[alias] [varchar](255) NULL,
	[created_by] [varchar](255) NULL,
	[created_date] [numeric](19, 2) NULL,
	[description] [nvarchar](250) NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](250) NOT NULL,
	[origin_price] [int] NOT NULL,
	[promotion_price] [int] NOT NULL,
	[status] [int] NOT NULL,
	[updated_by] [varchar](255) NULL,
	[updated_date] [numeric](19, 2) NULL,
	[view_count] [int] NOT NULL,
	[category_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_food]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_food](
	[food_id] [bigint] NOT NULL,
	[order_id] [bigint] NOT NULL,
	[quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[food_id] ASC,
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] NOT NULL,
	[created_time] [nvarchar](250) NULL,
	[customer_address] [nvarchar](250) NOT NULL,
	[customer_message] [nvarchar](250) NULL,
	[customer_name] [nvarchar](250) NOT NULL,
	[payment_method] [nvarchar](250) NULL,
	[total_price] [int] NOT NULL,
	[status] [int] NOT NULL,
	[user_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotions]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[alias] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](250) NOT NULL,
	[percent_off] [float] NOT NULL,
	[blog_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roles](
	[user_id] [bigint] NOT NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/27/2023 12:33:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](250) NULL,
	[full_name] [nvarchar](250) NULL,
	[created_day] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blogs] ON 

INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (1, N'blog-1', N'<div class="thread-content-container" style="font-size:30px">
<h1 itemprop="headline" class="thread-title">Phở Bát Đàn Hà Nội có ngon như lời đồn? Giá bán hiện tại bao nhiêu?</h1>
<div class="flex">
<div>
<div class="thread-author" itemtype="https://schema.org/Person" itemprop="author" itemscope="">
<img src="https://cdn.yeutre.vn/medias/avatars/l/8/8738.jpg" width="50" height="50" alt="Cát Lâm">
<p class="author-info">Được viết bởi <a href="https://yeutre.vn/thanh-vien/cat-lam/" title="Cát Lâm" itemprop="sameAs"><span itemprop="name" rel="nofollow">Cát Lâm</span></a></p>
<p class="modified">Cập nhật lần cuối: 01/04/2022 <a href="#references"><i class="fa fa-address-book"></i> Tài liệu tham khảo</a> </p>
</div>
<p class="sapo" itemprop="description">Phở Bát Đàn là một trong những thương hiệu phở lâu đời và nổi tiếng nhất ở Việt Nam. Thương hiệu này từng lên sóng nhiều chương trình truyền hình, trong đó có kênh EBS của Hàn Quốc và nhận được nhiều lời khen từ thực khách trong và ngoài nước. Trong bài viết sau, List.com.vn sẽ review chi tiết hơn về thương hiệu phở này, kèm theo đó là hướng dẫn đăng ký nhượng quyền kinh doanh. Mời bạn đọc cùng theo dõi!</p></div>
<div class="toc-container">
<ul class="toc"><li><a href="#1-pho-bat-dan-o-dau-co-tu-bao-gio"><span>1.</span> Phở Bát Đàn ở đâu? Có từ bao giờ?</a><ul><li><a href="#1-1-dia-chi-quan-pho-bat-dan-goc"><span>1.1.</span> Địa chỉ quán phở Bát Đàn gốc</a></li><li><a href="#1-2-thuong-hieu-pho-nay-co-bao-nhieu-chi-nhanh"><span>1.2.</span> Thương hiệu phở này có bao nhiêu chi nhánh?</a></li><li><a href="#1-3-nhung-dieu-dac-biet-cua-pho-bat-dan"><span>1.3.</span> Những điều đặc biệt của phở Bát Đàn</a></li></ul></li><li><a href="#2-pho-bat-dan-co-ngon-khong-thuc-don-gom-nhung-loai-nao-lien-he-nhuong-quyen-thuong-hieu-ra-sao"><span>2.</span> Phở Bát Đàn có ngon không? Thực đơn gồm những loại nào? Liên hệ nhượng quyền thương hiệu ra sao?</a><ul><li><a href="#2-1-pho-gia-truyen-bat-dan-co-nhung-loai-nao-muc-gia-bao-nhieu"><span>2.1.</span> Phở gia truyền Bát Đàn có những loại nào? Mức giá bao nhiêu?</a></li><li><a href="#2-2-review-chi-tiet-ve-khong-gian-va-dich-vu-tai-quan-pho-goc"><span>2.2.</span> Review chi tiết về không gian và dịch vụ tại quán phở gốc</a><ul><li><a href="#2-2-1-ve-khong-gian"><span>2.2.1.</span> Về không gian</a></li><li><a href="#2-2-2-ve-dich-vu"><span>2.2.2.</span> Về dịch vụ</a></li></ul></li><li><a href="#2-3-pho-bat-dan-co-ngon-nhu-loi-don-khong"><span>2.3.</span> Phở Bát Đàn có ngon như lời đồn không?</a></li><li><a href="#2-4-kinh-nghiem-di-an-pho-bat-dan"><span>2.4.</span> Kinh nghiệm đi ăn phở Bát Đàn</a></li><li><a href="#2-5-huong-dan-nhuong-quyen-kinh-doanh-thuong-hieu-pho-nay"><span>2.5.</span> Hướng dẫn nhượng quyền kinh doanh thương hiệu phở này</a></li></ul></li><li><a href="#3-thuc-khach-danh-gia-gi-ve-pho-gia-truyen-bat-dan-ha-noi"><span>3.</span> Thực khách đánh giá gì về phở gia truyền Bát Đàn Hà Nội</a></li></ul>
</div>
</div>
<div class="yt-ads" style="max-width:690px;"><a href="https://yeutre.vn/lazada/hotsale.php" target="_blank" rel="nofollow"><img data-layzr="https://yeutre.vn/lazada/300-x-250.jpg" src="https://yeutre.vn/lazada/300-x-250.jpg" width="300" height="250" alt="banner ads"></a></div>
<div class="mainContent" itemprop="articleBody"><h2 id="1-pho-bat-dan-o-dau-co-tu-bao-gio">1. Phở Bát Đàn ở đâu? Có từ bao giờ?</h2> <p>Với người Hà Nội, không ai nhớ chính xác phở Bát Đàn có từ năm nào. Họ chỉ biết rằng, từ khoảng gần 100 năm nay, trên con phố Bát Đàn có một quán phở gia truyền với hương vị riêng biệt. Và từ đó đến nay thương hiệu phở này gắn liền với cuộc sống của họ.</p> <h3 id="1-1-dia-chi-quan-pho-bat-dan-goc">1.1. Địa chỉ quán phở Bát Đàn gốc</h3> <p>Phở gia truyền Bát Đàn mở từ những năm 60 của thế kỷ XX. Thời mới mở, quán bán theo cơ chế bao cấp, muốn ăn phải có tem phiếu và xếp hàng mua như nhiều loại nhu yếu phẩm khác.</p><p>Nói từ “gốc” là bởi hiện tại thương hiệu này không còn là một quán duy nhất tại Hà Nội. Sau khi chính thức nhượng quyền kinh doanh, hiện nay thương hiệu phở này đã có hàng loạt quán tại Đà Lạt, Nha Trang… Tuy vậy, với nhiều người, đặc biệt là người Hà Nội, quán gốc vẫn là nơi có tô phở ngon nhất.</p><p>Địa chỉ chính xác của thương hiệu này là tại 49 Bát Đàn – Cửa Đông – Hoàn Kiếm – Hà Nội. Quán phở gốc không có tên riêng mà lấy luôn địa điểm con phố để làm tên quán. Nếu bạn đọc không quen đường đến đây có thể hỏi con phố nối từ Hàng Bồ đến Phùng Hưng sẽ dễ tìm đường hơn nhé. Lưu ý do con phố này khá bé nên nếu đi ô tô bạn đọc phải gửi xe ở phía phố Phùng Hưng.</p><figure><img src="https://cdn.yeutre.vn/medias/list.com.vn/29802/pho-bat-dan-dia-chi.jpg" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/pho-bat-dan-dia-chi.jpg" width="660" height="440" alt="địa chỉ phở bát đàn" layout="responsive"><figcaption>Quán phở này lấy tên phố Bát Đàn làm tên quán đã gần 100 năm nay. Ảnh: Internet</figcaption></figure> <h3 id="1-2-thuong-hieu-pho-nay-co-bao-nhieu-chi-nhanh">1.2. Thương hiệu phở này có bao nhiêu chi nhánh?</h3> <p>Như đã đề cập, phở gia truyền Bát Đàn hiện tại đã chính thức chuyển giao công nghệ và nhượng quyền thương hiệu. Theo thông tin từ&nbsp;Công Ty TNHH Thế Giới Đại Thành Công – chủ sở hữu mới thì thương hiệu phở này hiện có gần 200 chi nhánh trên toàn quốc. Dưới đây là một số địa chỉ nổi bật:</p><div class="yt-ads">
<script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" type="text/javascript"></script>
<ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-4690929849698182" data-ad-slot="9324452331"></ins>
<script type="text/javascript">
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>

</div><ul><li>Chi nhánh Đà Lạt: số 4 Đường Hoàng Văn Thụ, Phường 4, Thành phố Đà Lạt, Lâm Đồng.</li><li>Chi nhánh Nha Trang: Lô Số 2, Đường Phong Châu, Thành phố Nha Trang, Khánh Hoà.</li><li>Chi nhánh TP. HCM: 146 Đường Lê Sao, Phú Thạnh, Tân Phú, Thành phố Hồ Chí Minh.</li><li>Chi nhánh TP. HCM: 776B – 776C Nguyễn Kiệm, Phường 4, Quận Phú Nhuận.</li></ul><p><strong>Lưu ý về các cơ sở Bát Đàn Hà Nội</strong> : Hiện nay có nhiều quán phở được mở ra cũng lấy tên là phở gia truyền Bát Đàn, tuy hiện quán hiện tại có duy nhất một địa chỉ như trên bạn nhé!</p><figure><img src="https://cdn.yeutre.vn/medias/list.com.vn/29802/pho-bat-dan-da-lat.jpg" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/pho-bat-dan-da-lat.jpg" width="660" height="440" alt="phở đà lạt" layout="responsive"><figcaption>Một chi nhánh thương hiệu phở này tại Đà Lạt. Ảnh: Internet</figcaption></figure> <h3 id="1-3-nhung-dieu-dac-biet-cua-pho-bat-dan">1.3. Những điều đặc biệt của phở Bát Đàn</h3> <ul><li>Quán phở này có tuổi đời gần 100 năm và gắn liền với nhiều thế hệ người dân ở Hà Nội.</li><li>Quán rất đông khách, mặc dù mở bán từ khoảng 6 giờ sáng nhưng đến khoảng 9 giờ thì… hết phở.</li><li>Thực khách muốn thưởng thức một tô phở tại đây đều phải xếp hàng chờ đến lượt và trả tiền trước.</li><li>Đặc biệt, quán không có người phục vụ nên mỗi khách hàng tới đây sẽ phải tự “phục vụ” chính mình.</li><li>Về hương vị, quán không sử dụng mì chính để tạo độ ngọt, mà thay vào đó là vị ngọt thanh của xương bò hòa quyện cùng với nước mắm và các gia vị gia truyền từ 100 năm nay. Ngoài ra, bánh phở của quán cũng tự làm theo công thức riêng.</li><li>Quán luôn được nhiều kênh truyền hình tìm đến phỏng vấn, quảng bá. Trong đó có nhiều kênh của Anh, Hàn Quốc, Nhật Bản…</li></ul><figure><img src="https://cdn.yeutre.vn/medias/list.com.vn/29802/xep-hang-an-pho.jpg" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/xep-hang-an-pho.jpg" width="660" height="440" alt="xếp hàng ăn phở" layout="responsive"><figcaption>Hình ảnh thực khách xếp hàng để chờ ăn một bát phở gia truyền ở Bát Đàn. Ảnh: Internet</figcaption></figure> <h2 id="2-pho-bat-dan-co-ngon-khong-thuc-don-gom-nhung-loai-nao-lien-he-nhuong-quyen-thuong-hieu-ra-sao">2. Phở Bát Đàn có ngon không? Thực đơn gồm những loại nào? Liên hệ nhượng quyền thương hiệu ra sao?</h2> <p>Nói đến <a href="https://yeutre.vn/bai-viet/5-quan-an-ngon-ha-noi-ma-ban-nhat-dinh-phai-thu-khi-den-thu-do.29385/">quán ăn ngon Hà Nội</a> nhất định phải thử có lẽ không thể bỏ qua quán phở mà đặc biệt là phở Bát Đàn. Nhiều thực khách trong và ngoài nước nhận định, phở Bát Đàn thuộc top quán phở ngon nhất tại Hà Nội. Tuy nhiên, điều này dường như chỉ đúng ở địa chỉ quán phở gốc, còn một số chi nhánh khác của thương hiệu Bát Đàn sau khi nhượng quyền thì không được như mong đợi. Bài viết sau sẽ review chi tiết hơn đến bạn đọc những thông tin này.</p> <h3 id="2-1-pho-gia-truyen-bat-dan-co-nhung-loai-nao-muc-gia-bao-nhieu">2.1. Phở gia truyền Bát Đàn có những loại nào? Mức giá bao nhiêu?</h3> <p>Hiện tại, cả quán gốc tại Hà Nội và các chi nhánh thương hiệu phở gia truyền Bát Đàn có những loại sau:</p><ul><li>Phở đặc biệt</li><li>Phở bắp gầu</li><li>Phở nạm gầu</li><li>Phở chín</li><li>Phở tái chín</li><li>Phở tái</li><li>Các món ăn kèm phở: quẩy, trứng chần…</li></ul><p>Về giá bán, mỗi tô phở ở quán gốc có giá 50.000 đồng. Các phần ăn kèm 10.000 đồng.</p><figure><img src="" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/menu-pho-bat-dan.jpg" width="660" height="440" alt="menu phở bát đàn" layout="responsive"><figcaption>Một phần phở ở quán này có phần quẩy ăn kèm. Ảnh: Internet</figcaption></figure> <h3 id="2-2-review-chi-tiet-ve-khong-gian-va-dich-vu-tai-quan-pho-goc">2.2. Review chi tiết về không gian và dịch vụ tại quán phở gốc</h3> <p>Nếu như những chi nhánh nhượng quyền có không gian rộng rãi, nhân viên phục vụ đông đảo, thì quán phở Bát Đàn gốc có không gian hẹp, và không có nhân viên phục vụ. Thế nhưng với người Hà Nội chính điều đó khiến họ… hài lòng.</p> <h4 id="2-2-1-ve-khong-gian">2.2.1. Về không gian</h4> <ul><li>Quán có không gian trên phố Bát Đàn khá chật, hẹp.</li><li>Quán là một kiểu nhà cổ, bên trong vẫn còn tường vàng, cửa gỗ theo truyền thống Hà Nội xưa. Chính điều này quán gợi sự cổ kính, hoài cổ với người dân Hà Nội.</li><li>Vì quán nhỏ nên chủ nhà tận dụng vỉa hè để bán khi khách đến đông. Theo một số thực khách thì chính “văn hóa vỉa hè” mộc mạc này khiến họ thích thú và gắn bó với quán phở.</li><li>Quán luôn được quét dọn sạch sẽ, từ quầy phở cho đến bàn ghế đều được sắp xếp gọn gàng, ngăn nắp.</li></ul><p><strong>Đánh giá chung</strong> : Nhìn chung, quán nhỏ nhưng mang đến cảm giác ấm cúng, thân thuộc. Đặc biệt, vào mùa đông, người dân Hà Nội rất thích cảnh “chen chúc” để ăn phở nóng. Riêng với khách từ nơi khác đến, lúc đầu hơi ngại chuyện xếp hàng, nhưng dần dà sẽ thấy quen.</p><figure><img src="" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/khong-gian-pho-bat-dan.jpg" width="660" height="440" alt="không gian" layout="responsive"><figcaption>Không gian quán phở này khá chật hẹp, nhưng điều này không khiến khách hàng phàn nàn. Ảnh: Internet</figcaption></figure> <h4 id="2-2-2-ve-dich-vu">2.2.2. Về dịch vụ</h4> <ul><li>Quán phở 49 gia truyền Bát Đàn Hà Nội theo phong cách phở tự phục vụ, tức thực khách sẽ phải tự làm hầu hết mọi thứ để ăn phở chứ không được nhân viên “cơm bưng nước rót”.</li><li>Phong cách phục vụ của quán rất đơn giản, quy trình bao gồm xếp hàng, gọi món, trả tiền, đợi phở rồi thưởng thức.</li><li>Tuy đông, phải xếp hàng có khi cả tiếng nhưng thực khách ở đây đều không cau có. Thậm chí, có người còn cho rằng chính “văn hóa đợi” này làm nên thương hiệu Bát Đàn.</li><li>Điểm cộng là dù đông nhưng quán làm phở cũng khá nhanh, thông thường đợi không đến 10 phút (cả thời gian xếp hàng) là có một tô phở nóng.</li><li>Vì quán đông nên rất ồn, đến ăn đúng nghĩa là đến ăn chứ không trò chuyện được.</li></ul><p><strong>Đánh giá chung</strong> : Quán hình thành nét văn hóa ăn phở của người Hà Nội. Đến đây phải chờ, phải xếp hàng cho đói một chút, thèm một chút rồi gọi phở, ăn nhâm nhi mới thấm vị ngon của tô phở. Nhìn chung, chính việc tự phục vụ tạo nên nét khác biệt và độc đáo của quán phở này.</p><figure><img src="" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/pho-bat-dan-ha-noi.jpg" width="660" height="440" alt="phở hà nội" layout="responsive"><figcaption>Để thưởng thức tô phở ngon tại 49 Bát Đàn thực khách phải xếp hàng đợi đến lượt. Ảnh: Internet</figcaption></figure> <h3 id="2-3-pho-bat-dan-co-ngon-nhu-loi-don-khong">2.3. Phở Bát Đàn có ngon như lời đồn không?</h3> <p>Chắc chắn câu trả lời là ngon! Vì có ngon thương hiệu này mới tồn tại và phát triển gần 100 năm nay và được nhiều kênh truyền hình tìm đến. Nhưng ngon ở phở gia truyền Bát Đàn nên hiểu như thế nào?</p><ul><li>Ngon từ nước dùng: Dù phở thương hiệu nào thì nước dùng gần như quyết định độ ngon của tô phở. Ở phở gia truyền Bát Đàn, nước dùng có vị ngọt thanh tự nhiên. Cụ thể, quán không dùng bột ngọt hoặc các chất tạo ngọt nhân tạo để nấu nước dùng mà hầm xương, nước mắm và gia vị gia truyền.</li><li>Ngon từ thịt bò: Một tô phở ở quán Bát Đàn luôn đầy ắp thịt bò, phủ kín tô. Đặc biệt, thịt bò ở đây rất tươi, ngọt, ăn miếng nào thấm miếng đó. Điều này có được do chủ quán là người có kinh nghiệm dày dặn trong chọn thịt bò nấu phở.</li><li>Ngon từ bánh phở: Là một quán phở có từ lâu đời nên bánh phở được làm theo kiểu truyền thống khá đặc trưng. Bánh phở còn thơm mùi gạo rất mềm, khá dai mà không bở. Bánh phở là một trong những yếu tố chính khiến món phở tại đây trở nên đặc biệt đến vậy.</li><li>Các yếu tố khác như quẩy, chanh ớt, rau sống, hành cũng góp phần tạo nên độ ngon của quán này.</li></ul><p><strong>Đánh giá chung</strong> : Phở quán 49 Bát Đàn Hà Nội rất ngon. Các yếu tố của một bát phở được kết hợp hài hòa với nhau từ thịt, nước dùng, bánh phở, quẩy, rau.</p><figure><img src="" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/pho-bat-dan-ngon-khong.jpg" width="660" height="440" alt="phở bát đàn ngon không" layout="responsive"><figcaption>Phở gia truyền Bát Đàn được đánh giá là món phở ngon nhất nhì Hà Nội. Ảnh: Internet</figcaption></figure> <h3 id="2-4-kinh-nghiem-di-an-pho-bat-dan">2.4. Kinh nghiệm đi ăn phở Bát Đàn</h3> <p>Vì quán phở rất đông khách, lại hết phở từ rất sớm, nên muốn ăn tại quán phở gốc số 49 Bát Đàn, bạn đọc nhớ lưu lại một số kinh nghiệm sau nha.</p><ul><li>Hãy đến quán sớm nhất có thể. Thông thường, vào mùa đông quán sẽ mở từ 7 giờ, mùa hè mở từ 6 giờ, và bạn đọc nên đến sơm trước đó 15 phút để không phải xếp hàng.</li><li>Một kinh nghiệm của nhiều vị khách quen của quán chia sẻ rằng, khi tới đây bạn đọc nên đi ít nhất 2 người. Trong đó 1 người đứng chờ xếp hàng còn người kia thì… giữ chỗ.</li><li>Nên mang tiền lẻ để thanh toán nhanh hơn vì quán cần thanh toán trước.</li><li>Nếu đi lúc quán đông, nên ngồi ngoài vỉa hè sẽ mát và thoáng hơn. Lúc này trong nhà khá chật và dễ bị ám mùi phở.</li><li>Quán không giới thiệu quá nhiều về menu các loại phở, quẩy, đồ ăn kèm… mà thường bạn sẽ phải tự gọi và thanh toán. Vì vậy ai chưa ăn quen ở đây thì cứ mạnh dạn gọi đồ nhé.</li></ul><p><strong>Món ngon gợi ý tại quán</strong> : Món nào tại quán gốc này cũng đáng để thử. Nhưng ngon nhất có lẽ là phở tái Bát Đàn. Vì tô phở này thể hiện rõ&nbsp;chất ngon ngọt, chất lượng trong nguyên liệu.</p><figure><img src="" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/kinh-nghiem-an-pho.jpg" width="660" height="440" alt="kinh nghiệm ăn phở" layout="responsive"><figcaption>Nên đến số 49 Bát Đàn sớm để có thể gọi phở nhanh hơn. Ảnh: Internet</figcaption></figure> <h3 id="2-5-huong-dan-nhuong-quyen-kinh-doanh-thuong-hieu-pho-nay">2.5. Hướng dẫn nhượng quyền kinh doanh thương hiệu phở này</h3> <p>Như đã đề cập, hiện tại thương hiệu phở gia truyền Bát Đàn chính thức nhượng quyền kinh doanh. Nếu bạn đọc muốn mở quán phở theo thương hiệu này thì hãy tham khảo các bước sau nhé.</p><ul><li>Đăng ký tư vấn: Nếu bạn đọc có mong muốn kinh doanh phở thì liên hệ qua điện thoại&nbsp; 0946 481 486 – 0935 911 986. Hoặc liên hệ qua Email: [email&nbsp;protected]</li><li>Ký hợp đồng: Công ty sở hữu thương hiệu sẽ ký hợp đồng và hỗ trợ bạn mở một quán phở.</li><li>Chọn mặt bằng: Công ty hỗ trợ tìm kiếm mặt bằng phù hợp nhất và tốt nhất mở quán.</li><li>Thiết kế, thi công: Công ty hỗ trợ thiết kế và thi công quán.</li><li>Đào tạo dạy nghề, tuyển dụng nhân sự: Với dịch vụ nhượng quyền thương hiệu phở này, công ty sẽ có đội ngũ đầu bếp với tay nghề cao, về trước 2 tuần để giúp bạn đọc đào tạo và tuyển dụng nhân sự cho quán.</li><li>Nấu thử: Quán của bạn đọc sẽ nấu thử và chỉ khi 95% khách hài lòng thì mới mở quán.</li><li>Chạy thử 2 tuần: Quán phở của sẽ được chạy demo 2 tuần trước khi đi vào hoạt động.</li><li>Khai trương: Công ty hỗ trợ khai trương và truyền thông.</li></ul><figure><img src="" data-layzr="https://cdn.yeutre.vn/medias/list.com.vn/29802/chi-nhanh-pho-bat-dan.jpg" width="660" height="440" alt="chi nhánh phở bát đàn" layout="responsive"><figcaption>Một chi nhánh thương hiệu phở này nhượng quyền tại TP.HCM. Ảnh: Internet</figcaption></figure> <h2 id="3-thuc-khach-danh-gia-gi-ve-pho-gia-truyen-bat-dan-ha-noi">3. Thực khách đánh giá gì về phở gia truyền Bát Đàn Hà Nội</h2> <p>Nói về phở Bát Đàn, thực khách có nhiều nhận định khác nhau. Có người khen phở quán này ngon, có người chê nước dùng hơi nhạt. Và đây là điều bình thường, bởi cảm nhận ẩm thực mỗi người luôn khác biệt. Dưới đây là review của một số thực khác về quán phở gốc này.</p><ul><li><strong>Quang Minh Đại</strong> : “Một trong những hàng phở nổi tiếng nhất cũng như đông khách nhất Hà Nội. Mình đến vào dịp đại lễ nhưng vẫn kín chỗ. Cũng may là mọi người ai cũng ăn nhanh cho người khác vào nên mình không phải đợi lâu. Ở đây giá cao vì ở khu phố cổ nhưng may là gửi xe không mất phí. Về hương vị thì mình thích nước dùng ở đây, có vị ngọt thanh nhẹ, không gắt như những nơi khác mình từng ăn. Tiếc là mình không ở lại lâu được để tận hưởng hương vị”.</li><li><strong>Thảo Trinh</strong> : “Mình là muốn ăn cho biết! Vì đọc tin tức về quán này nhiều quá tò mò! Phần muốn được thưởng thức phở Hà Nội, phần muốn trải nghiệm về ẩm thực ở nơi khác. Cuối cùng cũng được thưởng thức! Mình thấy tô phở không quá to nhưng khá đầy đặn, thịt nhiều. Mình gọi nạm gầu thì là phần nạm mỡ và không có gầu dòn. Vị nước dùng thanh, thịt bò mềm. Tổng thể 1 tô phở vậy đối với mình là ngon”.</li></ul><p>Cuối cùng, có thể nhận định rằng phở Bát Đàn là thương hiệu phở ngon nhất nhì Hà Nội. Dù hiện tại có nhiều chi nhánh, nhưng quán gốc ở số 49 phố Bát Đàn, Hà Nội vẫn là địa chỉ nấu đúng chuẩn nhất. Vì thế, nếu muốn thưởng thức hương vị gốc của thương hiệu phở này bạn đọc hãy ghé đến địa chỉ ở trên nha.</p><p class="text-right"><strong>Đức Lộc</strong></p></div>
<div id="helpful">
<p class="loved"></p>
<p class="trusted"></p>
<div class="helpful-action"><label>Bạn cảm thấy bài viết này thế nào?</label>
<a href="#" rel="nofollow" class="helpful"><i class="fa fa-smile-o"></i> Hữu Ích</a>
<a href="#" rel="nofollow" class="trust"><i class="fa fa-check-circle-o"></i> Đáng tin cậy</a>

</div>
</div>
<script type="text/javascript">threadID=29802;</script>
<div class="comments" id="comments">
<header>
<label>0 bình luận</label>
<ul class="comment-pagination"></ul>
<form method="post" class="comment-form" id="comment-form"><img src="https://cdn.yeutre.vn/medias/avatar_s.jpg" width="40" height="40" alt="avatar">
<div class="form"><textarea name="message" class="comment-message" placeholder="Viết bình luận nào bạn ơi"></textarea><input type="hidden" name="objectID" value="29802"><input type="hidden" name="parent" value="0"><input type="hidden" name="replyTo" value="0"><button type="submit" disabled="">Đăng</button></div></form>
</header>
<div id="comment-list"></div>
</div>
<div class="stickies">
<h3 class="section-title"><span>CHỦ ĐỀ NỔI BẬT</span></h3>
<div class="grid-threads">
<div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/3-cach-che-bien-uc-ga-sieu-hap-dan-cho-bua-an-them-da-vi.25624/" title="3 cách chế biến ức gà siêu hấp dẫn cho bữa ăn thêm đa vị"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/202/202269-cach-che-bien-uc-ga-500x340.jpg" alt="3 cách chế biến ức gà siêu hấp dẫn cho bữa ăn thêm đa vị" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/3-cach-che-bien-uc-ga-sieu-hap-dan-cho-bua-an-them-da-vi.25624/" title="3 cách chế biến ức gà siêu hấp dẫn cho bữa ăn thêm đa vị">3 cách chế biến ức gà siêu hấp dẫn cho bữa ăn thêm đa vị</a></h3>
</div><div class="thread-grid-item">
<label class="expert-"></label>
<a href="https://yeutre.vn/bai-viet/12-cach-lam-banh-chuoi-nuong-ngon-vua-nhin-da-muon-an.26198/" title="12 cách làm bánh chuối nướng ngon vừa nhìn đã muốn ăn"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/207/207829-cach-lam-banh-chuoi-nuong-nhieu-vi-500x340.jpg" alt="12 cách làm bánh chuối nướng ngon vừa nhìn đã muốn ăn" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/12-cach-lam-banh-chuoi-nuong-ngon-vua-nhin-da-muon-an.26198/" title="12 cách làm bánh chuối nướng ngon vừa nhìn đã muốn ăn">12 cách làm bánh chuối nướng ngon vừa nhìn đã muốn ăn</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/cach-lam-goi-tom-don-gian-ngon-kho-cuong.26413/" title="Cách làm gỏi tôm đơn giản ngon khó cưỡng"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/210/210636-cac-mon-goi-tom-500x340.jpg" alt="Cách làm gỏi tôm đơn giản ngon khó cưỡng" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/cach-lam-goi-tom-don-gian-ngon-kho-cuong.26413/" title="Cách làm gỏi tôm đơn giản ngon khó cưỡng">Cách làm gỏi tôm đơn giản ngon khó cưỡng</a></h3>
</div><div class="thread-grid-item">
<label class="expert-"></label>
<a href="https://yeutre.vn/bai-viet/12-mon-ca-tim-xao-bat-mat-nhin-la-khoai-an-la-nghien.26224/" title="12 món cà tím xào bắt mắt nhìn là khoái, ăn là nghiện"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/208/208171-mon-ngon-ca-tim-xao-500x340.jpg" alt="12 món cà tím xào bắt mắt nhìn là khoái, ăn là nghiện" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/12-mon-ca-tim-xao-bat-mat-nhin-la-khoai-an-la-nghien.26224/" title="12 món cà tím xào bắt mắt nhìn là khoái, ăn là nghiện">12 món cà tím xào bắt mắt nhìn là khoái, ăn là nghiện</a></h3>
</div> </div>
</div>
<div class="yt-ads"><script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js" type="text/javascript"></script>
<ins class="adsbygoogle" style="display:block" data-ad-format="autorelaxed" data-ad-client="ca-pub-4690929849698182" data-ad-slot="5400044414"></ins>
<script type="text/javascript">
     (adsbygoogle = window.adsbygoogle || []).push({});
</script></div>
<div class="related-thread-grid thread-grid clearfix">
<h3 class="section-title"><span>CHỦ ĐỀ LIÊN QUAN</span></h3>
<div class="grid-threads">
<div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/20-mau-toc-xoan-ngan-dep-tre-trung-giup-ban-gai-them-noi-bat-va-cuon-hut.14402/" title="Tổng hợp 20 mẫu tóc xoăn ngắn đẹp trẻ trung giúp bạn gái thêm nổi bật và cuốn hút"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/52/52772-toc-xoan-ngan-19-500x340.jpg" alt="Tổng hợp 20 mẫu tóc xoăn ngắn đẹp trẻ trung giúp bạn gái thêm nổi bật và cuốn hút" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/20-mau-toc-xoan-ngan-dep-tre-trung-giup-ban-gai-them-noi-bat-va-cuon-hut.14402/" title="Tổng hợp 20 mẫu tóc xoăn ngắn đẹp trẻ trung giúp bạn gái thêm nổi bật và cuốn hút">Tổng hợp 20 mẫu tóc xoăn ngắn đẹp trẻ trung giúp bạn gái thêm nổi bật và cuốn hút</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/danh-sach-cac-quan-an-ngon-nuc-tieng-o-sai-gon.6771/" title="Danh sách các quán ăn ngon nức tiếng ở Sài Gòn"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/15/15712-c1-500x340.jpg" alt="Danh sách các quán ăn ngon nức tiếng ở Sài Gòn" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/danh-sach-cac-quan-an-ngon-nuc-tieng-o-sai-gon.6771/" title="Danh sách các quán ăn ngon nức tiếng ở Sài Gòn">Danh sách các quán ăn ngon nức tiếng ở Sài Gòn</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/tong-hop-12-cach-kho-thit-heo-ngon-thom-mem.8942/" title="Tổng hợp 12 cách kho thịt heo ngon, thơm mềm"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/22/22609-thit-kho-tau-500x340.jpg" alt="Tổng hợp 12 cách kho thịt heo ngon, thơm mềm" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/tong-hop-12-cach-kho-thit-heo-ngon-thom-mem.8942/" title="Tổng hợp 12 cách kho thịt heo ngon, thơm mềm">Tổng hợp 12 cách kho thịt heo ngon, thơm mềm</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/12-loai-cay-canh-hut-tien-sinh-loc-ung-voi-12-con-giap.13334/" title="12 loại cây cảnh hút tiền, sinh lộc ứng với 12 con giáp"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/48/48171-1-kim-tien-500x340.jpg" alt="12 loại cây cảnh hút tiền, sinh lộc ứng với 12 con giáp" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/12-loai-cay-canh-hut-tien-sinh-loc-ung-voi-12-con-giap.13334/" title="12 loại cây cảnh hút tiền, sinh lộc ứng với 12 con giáp">12 loại cây cảnh hút tiền, sinh lộc ứng với 12 con giáp</a></h3>
</div> </div>
</div>
 <h3 class="section-title"><span>CHỦ ĐỀ MỚI</span></h3>
<div class="grid-threads">
<div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/nau-an-tre-em.19622/" title="Nấu ăn trẻ em nhàn hơn khi mẹ áp dụng cách hay của người Nhật "><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230215-nau-an-tre-em-500x340.jpg" alt="Nấu ăn trẻ em nhàn hơn khi mẹ áp dụng cách hay của người Nhật " width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/nau-an-tre-em.19622/" title="Nấu ăn trẻ em nhàn hơn khi mẹ áp dụng cách hay của người Nhật ">Nấu ăn trẻ em nhàn hơn khi mẹ áp dụng cách hay của người Nhật </a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/cach-lam-lo-hoa-bang-giay.38602/" title="4 cách làm lọ hoa bằng giấy siêu đẹp chỉ với vài bước đơn giản"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230206-cach-lam-lo-hoa-bang-giay-500x340.jpg" alt="4 cách làm lọ hoa bằng giấy siêu đẹp chỉ với vài bước đơn giản" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/cach-lam-lo-hoa-bang-giay.38602/" title="4 cách làm lọ hoa bằng giấy siêu đẹp chỉ với vài bước đơn giản">4 cách làm lọ hoa bằng giấy siêu đẹp chỉ với vài bước đơn giản</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/bo-sung-dinh-duong-truoc-khi-mang-thai.38601/" title="Vì sao cần bổ sung dinh dưỡng trước khi mang thai? "><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230159-bo-sung-dinh-duong-truoc-khi-mang-thai-500x340.jpg" alt="Vì sao cần bổ sung dinh dưỡng trước khi mang thai? " width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/bo-sung-dinh-duong-truoc-khi-mang-thai.38601/" title="Vì sao cần bổ sung dinh dưỡng trước khi mang thai? ">Vì sao cần bổ sung dinh dưỡng trước khi mang thai? </a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/cach-gieo-hat-cai.38598/" title="Cách gieo hạt cải đơn giản tại nhà nảy mầm nhanh, đều, đẹp"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230196-cach-gieo-hat-cai-don-gian-500x340.jpg" alt="Cách gieo hạt cải đơn giản tại nhà nảy mầm nhanh, đều, đẹp" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/cach-gieo-hat-cai.38598/" title="Cách gieo hạt cải đơn giản tại nhà nảy mầm nhanh, đều, đẹp">Cách gieo hạt cải đơn giản tại nhà nảy mầm nhanh, đều, đẹp</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/bi-om-nghen-phai-lam-sao.38597/" title="Bị ốm nghén phải làm sao và 5 mẹo dân gian chữa nghén hiệu quả tại nhà"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230170-bi-om-nghen-phai-lam-sao-500x340.jpg" alt="Bị ốm nghén phải làm sao và 5 mẹo dân gian chữa nghén hiệu quả tại nhà" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/bi-om-nghen-phai-lam-sao.38597/" title="Bị ốm nghén phải làm sao và 5 mẹo dân gian chữa nghén hiệu quả tại nhà">Bị ốm nghén phải làm sao và 5 mẹo dân gian chữa nghén hiệu quả tại nhà</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/thuc-don-low-carb.38596/" title="Thực đơn low carb giảm cân an toàn dành cho các bạn nữ"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230178-thuc-don-low-card-giam-can-500x340.jpg" alt="Thực đơn low carb giảm cân an toàn dành cho các bạn nữ" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/thuc-don-low-carb.38596/" title="Thực đơn low carb giảm cân an toàn dành cho các bạn nữ">Thực đơn low carb giảm cân an toàn dành cho các bạn nữ</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/che-do-an-sinh-con-trai.38595/" title="Chế độ ăn sinh con trai hiệu quả cao bạn không nên bỏ qua"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230214-che-do-an-sinh-con-trai-500x340.jpg" alt="Chế độ ăn sinh con trai hiệu quả cao bạn không nên bỏ qua" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/che-do-an-sinh-con-trai.38595/" title="Chế độ ăn sinh con trai hiệu quả cao bạn không nên bỏ qua">Chế độ ăn sinh con trai hiệu quả cao bạn không nên bỏ qua</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/bao-lau-thi-het-om-nghen.38593/" title="Bao lâu thì hết ốm nghén và giải đáp để mẹ bầu yên tâm hơn"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230213-bao-lau-thi-het-om-nghen-500x340.jpg" alt="Bao lâu thì hết ốm nghén và giải đáp để mẹ bầu yên tâm hơn" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/bao-lau-thi-het-om-nghen.38593/" title="Bao lâu thì hết ốm nghén và giải đáp để mẹ bầu yên tâm hơn">Bao lâu thì hết ốm nghén và giải đáp để mẹ bầu yên tâm hơn</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/sinh-khong-dung-ngay-du-sinh.38594/" title="Sinh không đúng ngày dự sinh có sao không?"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230212-sinh-khong-dung-ngay-du-sinh-500x340.jpg" alt="Sinh không đúng ngày dự sinh có sao không?" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/sinh-khong-dung-ngay-du-sinh.38594/" title="Sinh không đúng ngày dự sinh có sao không?">Sinh không đúng ngày dự sinh có sao không?</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/hanh-kinh-la-gi.38591/" title="Hành kinh là gì và những kiến thức về kinh nguyệt mà bạn cần biết"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230137-hanh-kinh-la-gi-500x340.jpg" alt="Hành kinh là gì và những kiến thức về kinh nguyệt mà bạn cần biết" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/hanh-kinh-la-gi.38591/" title="Hành kinh là gì và những kiến thức về kinh nguyệt mà bạn cần biết">Hành kinh là gì và những kiến thức về kinh nguyệt mà bạn cần biết</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/om-nghen-den-khi-nao.38589/" title="Giải đáp thắc mắc mẹ bầu ốm nghén đến khi nào?"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230118-giai-dap-thac-mac-me-bau-om-nghen-den-khi-nao-500x340.jpg" alt="Giải đáp thắc mắc mẹ bầu ốm nghén đến khi nào?" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/om-nghen-den-khi-nao.38589/" title="Giải đáp thắc mắc mẹ bầu ốm nghén đến khi nào?">Giải đáp thắc mắc mẹ bầu ốm nghén đến khi nào?</a></h3>
</div><div class="thread-grid-item">
<label class="expert-0"></label>
<a href="https://yeutre.vn/bai-viet/om-nghen-con-thong-minh.38587/" title="Thực hư mẹ bầu ốm nghén con thông minh?"><img src="" data-layzr="https://cdn.yeutre.vn/medias/uploads/230/230110-thuc-hu-ve-viec-me-bau-om-nghen-con-thong-minh-500x340.jpg" alt="Thực hư mẹ bầu ốm nghén con thông minh?" width="500" height="340"></a>
<h3 class="thread-title"><a href="https://yeutre.vn/bai-viet/om-nghen-con-thong-minh.38587/" title="Thực hư mẹ bầu ốm nghén con thông minh?">Thực hư mẹ bầu ốm nghén con thông minh?</a></h3>
</div> </div>
</div>', N'2023-06-20', N'image1.jpg', N'Phở Bát Đàn', 1, N'2023-06-20', 100, 1)
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (2, N'blog-2', N'Ch?t lu?ng và d?ch v?', N'2023-06-20', N'image2.jpg', N'Blog 2', 1, N'2023-06-20', 150, 1)
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (3, N'blog-3', N'V?t tu và nguyên li?u', N'2023-06-20', N'image3.jpg', N'Blog 3', 1, N'2023-06-20', 200, 2)
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (4, N'blog-4', N'Ho?t d?ng hàng ngày', N'2023-06-20', N'image4.jpg', N'Blog 4', 1, N'2023-06-20', 120, 2)
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (5, N'blog-5', N'Ti?p th? và qu?ng bá', N'2023-06-20', N'image5.jpg', N'Blog 5', 1, N'2023-06-20', 180, 1)
SET IDENTITY_INSERT [dbo].[blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[carts] ON 

INSERT [dbo].[carts] ([id], [user_id]) VALUES (1, 1)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (2, 2)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (5, 3)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (6, 4)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (7, 5)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (8, 6)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (9, 7)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (10, 8)
INSERT [dbo].[carts] ([id], [user_id]) VALUES (11, 9)
SET IDENTITY_INSERT [dbo].[carts] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (1, N'buasang', N'Bữa sáng', 1)
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (3, N'douong', N'Đồ uống', 1)
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (4, N'buatoi', N'Bữa tối', 1)
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (7, N'trangmieng', N'Tráng miệng', 1)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (1, N'Babanauchuoi', NULL, NULL, N'Ngon', N'Babanauchuoi_1.jpg', N'Ba ba nấu chuối', 100000, 90000, 1, NULL, NULL, 100, 1)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (2, N'Buoidien', NULL, NULL, N'Ngọt', N'Buoidien_1.jpg', N'Bưởi diễn', 40000, 35000, 1, NULL, NULL, 50, 7)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (3, N'Banhmikepthit', N'Hai', NULL, N'Man', N'Banhmikepthit_1.jpg', N'Bánh mì kẹp thịt', 80000, 75000, 1, N'La', NULL, 400, 1)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (4, N'Bunbohue', N'La', NULL, N'Ngot', N'Bunbohue_1.jpg', N'Bún bò Huế', 120000, 100000, 1, N'Hai', NULL, 700, 4)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (5, N'Bunca', N'Hai', NULL, N'Béo ngậy', N'Bunca_1.jpg', N'Bún cá', 90000, 80000, 1, N'La', NULL, 600, 1)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (6, N'Bundau', N'Hai', NULL, N'Chua', N'Bundau_1.jpg', N'Bún đậu', 100000, 90000, 1, N'La', NULL, 500, 4)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (7, N'Cam', NULL, NULL, N'sành', N'Cam_1.jpg', N'Cam', 30000, 29000, 1, NULL, NULL, 200, 7)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (8, N'Duahau', NULL, NULL, N'mát', N'Duahau_1.jpg', N'Dưa hấu', 45000, 40000, 1, NULL, NULL, 100, 7)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (9, N'Catam', NULL, NULL, N'Bổ', N'Catam_1.jpg', N'Cá tầm', 200000, 190000, 0, NULL, NULL, 0, 1)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (10, N'Cocacola', NULL, NULL, NULL, N'Cocacola_1.jpg', N'Cocacola', 15000, 14000, 1, NULL, NULL, 0, 3)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (11, N'Nuoccam', NULL, NULL, NULL, N'Nuoccam_1.jpg', N'Nước cam', 12000, 12000, 1, NULL, NULL, 15, 3)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (12, N'Gadongtaohamsam', NULL, NULL, NULL, N'Gadongtaohamsam_1.jpg', N'Gà đông tảo hầm sâm', 200000, 190000, 1, NULL, NULL, 500, 4)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (13, N'Giadoxaosaot', NULL, NULL, NULL, N'Giadoxaosaot_1.jpg', N'Giá đỗ xào sả ớt', 50000, 45000, 1, NULL, NULL, 200, 4)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (14, N'Nhomy', NULL, NULL, NULL, N'Nhomy_1.jpg', N'Nho mỹ', 70000, 60000, 1, NULL, NULL, 100, 7)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (15, N'Oi', NULL, NULL, NULL, N'Oi_1.jpg', N'Ổi', 30000, 28000, 1, NULL, NULL, 50, 7)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (16, N'Nuocchanhleo', NULL, NULL, NULL, N'Nuocchanhleo_1.jpg', N'Nước chanh leo', 20000, 18000, 1, NULL, NULL, 100, 3)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (17, N'Nuocloc', NULL, NULL, NULL, N'Nuocloc_1.jpg', N'Nước lọc', 15000, 14000, 1, NULL, NULL, 50, 3)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (18, N'Pepsi', NULL, NULL, NULL, N'Pepsi_1.jpg', N'Pepsi', 20000, 15000, 1, NULL, NULL, 60, 3)
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (19, N'Phobo', NULL, NULL, NULL, N'Phobo_1.jpg', N'Phở bò', 50000, 45000, 1, NULL, NULL, 100, 1)
GO
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (1, 1687610105784, 1)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (2, 1687708858656, 4)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (3, 1687713446091, 2)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (3, 1687804496534, 2)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (4, 1687610105784, 2)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (4, 1687610407693, 1)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (4, 1687711048382, 1)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (5, 1687756711310, 5)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (6, 1687713446091, 4)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (7, 1687709007543, 5)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (8, 1687531963072, 3)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (9, 1687610407693, 7)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (9, 1687746169943, 7)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (10, 1687609882623, 2)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (11, 1687711048382, 8)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (12, 1687754650588, 4)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (13, 1687754650588, 1)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (14, 1687756711310, 2)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (15, 1687757268904, 3)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (16, 1687795750540, 1)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (17, 1687804496534, 5)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (18, 1687804505021, 2)
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (19, 1687804876862, 3)
GO
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687531963072, N'24-4-2023', N'HVKTQS', N'OK', N'la', N'Tiền mặt', 500000, 2, 3)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687609882623, N'24-1-2023', N'Hà Nội', N'OK', N'la', N'Tiền mặt', 300000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687610105784, N'24-6-2023', N'Lý Nhân - Hà Nam', N'OK', N'lA', N'Tiền mặt', 440000, 2, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687610407693, N'24-6-2023', N'445 Hoàng Quốc Việt', N'OK', N'1234', N'Tiền mặt', 1064000, 1, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687708858656, N'25-04-2023', N'Chung cư Nam Cường', N'OK', N'la', N'Tiền mặt', 123, 3, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687709007543, N'25-06-2023', N'Hà Nam', N'OK', N'la', N'Tiền mặt', 162000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687711048382, N'05-06-2023', N'Kim Bảng - Hà Nam', N'OK', N'la', N'Tiền mặt', 1230000, 1, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687713446091, N'10-06-2023', N'Hà Nội', N'OK', N'hai', N'Tiền mặt', 520000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687746169943, N'26-06-2023', N'số 06- Tây Hồ', N'OK', N'', N'Tiền mặt', 952000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687754650588, N'26-05-2023', N'236 Hoang Quoc Viet', N'OK', N'la', N'Tiền mặt', 1230000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687756711310, N'26-06-2023', N'236 Hoang Quoc Viet', N'OK', N'la', N'Tiền mặt', 1230000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687757268904, N'26-06-2023', N'236 Hoang Quoc Viet', N'OK', N'Truong Thi La', N'Tiền mặt', 498000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687795750540, N'26-06-2023', N'236 Hoang Quoc Viet', N'OK', N'la', N'Tiền mặt', 1230000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687804496534, N'27-05-2023', N'HVKTQS', N'OK', N'la', N'Tiền mặt', 1230000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687804505021, N'27-06-2023', N'Ha Nội', N'OK', N'la', N'Tiền mặt', 1230000, 0, 9)
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [total_price], [status], [user_id]) VALUES (1687804876862, N'27-06-2023', N'HN', N'OK', N'la', N'Tiền mặt', 1230000, 0, 9)
GO
SET IDENTITY_INSERT [dbo].[promotions] ON 

INSERT [dbo].[promotions] ([id], [alias], [image], [name], [percent_off], [blog_id]) VALUES (2, N'100000', N'20000', N'[KM10] Giảm giá 10% cho các đơn từ 100k', 10, 1)
INSERT [dbo].[promotions] ([id], [alias], [image], [name], [percent_off], [blog_id]) VALUES (3, N'200000', N'30000', N'[KM15] Giảm 15% đơn từ 200k', 15, 2)
INSERT [dbo].[promotions] ([id], [alias], [image], [name], [percent_off], [blog_id]) VALUES (4, N'300000', N'50000', N'[KM17] Giảm 17% đơn từ 300k', 17, 3)
INSERT [dbo].[promotions] ([id], [alias], [image], [name], [percent_off], [blog_id]) VALUES (5, N'800000', N'100000', N'[KM25] Giảm 25% đơn từ 800k', 25, 4)
INSERT [dbo].[promotions] ([id], [alias], [image], [name], [percent_off], [blog_id]) VALUES (6, N'1000000', N'200000', N'[KM1M] Giảm 30% đơn từ 1M', 30, 5)
SET IDENTITY_INSERT [dbo].[promotions] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'ROLE_USER')
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'ROLE_MODERATOR')
INSERT [dbo].[roles] ([id], [name]) VALUES (3, N'ROLE_ADMIN')
INSERT [dbo].[roles] ([id], [name]) VALUES (4, N'Admin')
INSERT [dbo].[roles] ([id], [name]) VALUES (5, N'User')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (3, 1)
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (3, 2)
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (3, 3)
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (10, 1)
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (10, 2)
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (10, 3)
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (1, N'Hà Nam', N'Truong Thi La', N'2023-06-23', N'la123@gmail.com', N'123456', N'lala')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (2, N'HN', N'La', N'2023-06-23', N'lala@gmail.com', N'123456', N'la2')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (3, N'America', N'john', N'2023-06-23', N'john.doe@example.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'john.doe@example.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (4, N'Thai Nguyen', N'Nguyen Khac Tuan Anh', N'2023-06-23', N'ta@gmail.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'ta@gmail.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (5, N'Thai Binh', N'Pham Quang Tung', N'2023-06-23', N'tung@gmail.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'tung@gmail.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (6, N'Bac Giang', N'Dong Quoc Toan', N'2023-06-23', N'toan@gmail.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'toan@gmail.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (7, N'Ha Noi', N'Nguyen Van Dai', N'2023-06-23', N'dai@gmail.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'dai@gmail.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (8, N'Hà Nam', N'Ðinh Xuân Hải', N'2023-06-23', N'hai@gmail.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'hai@gmail.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (9, N'Hà Nam', N'Truong Thi La', N'2023-06-23', N'la@gmail.com', N'$2a$10$19/y9EYBVE6Ydrvhip/VNe/HghXbfPKqN/5XCcNmNkGV7SZ8A4hVa', N'la@gmail.com')
INSERT [dbo].[users] ([id], [address], [full_name], [created_day], [email], [password], [username]) VALUES (10, NULL, NULL, NULL, N'xuanhai@gmail.com', N'$2a$10$pnGg3Gimqjo74tHGA4OEkeLsSUr2xD2KyD34MI1OQnwQ08ieOQ38e', N'xuanhai')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK6dotkott2kjsp8vw4d0m25fb7]    Script Date: 6/27/2023 12:33:17 PM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [UK6dotkott2kjsp8vw4d0m25fb7] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKr43af9ap4edm43mmtq01oddj6]    Script Date: 6/27/2023 12:33:17 PM ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [UKr43af9ap4edm43mmtq01oddj6] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[blogs]  WITH CHECK ADD  CONSTRAINT [FKjidd8cjtc34c0i5h0f88x062t] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[blogs] CHECK CONSTRAINT [FKjidd8cjtc34c0i5h0f88x062t]
GO
ALTER TABLE [dbo].[cart_food]  WITH CHECK ADD  CONSTRAINT [FK1pr64026nscftqwls43gddx06] FOREIGN KEY([food_id])
REFERENCES [dbo].[food] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart_food] CHECK CONSTRAINT [FK1pr64026nscftqwls43gddx06]
GO
ALTER TABLE [dbo].[cart_food]  WITH CHECK ADD  CONSTRAINT [FKcntpa4ovgjp6fu9itom2t2evr] FOREIGN KEY([cart_id])
REFERENCES [dbo].[carts] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cart_food] CHECK CONSTRAINT [FKcntpa4ovgjp6fu9itom2t2evr]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FKb5o626f86h46m4s7ms6ginnop] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FKb5o626f86h46m4s7ms6ginnop]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD  CONSTRAINT [FK5eb9reqw3fwfg1n5sd5jv9q18] FOREIGN KEY([food_id])
REFERENCES [dbo].[food] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [FK5eb9reqw3fwfg1n5sd5jv9q18]
GO
ALTER TABLE [dbo].[food]  WITH CHECK ADD  CONSTRAINT [FK8utdxgv5fcrhd2vv0aw5pdvq0] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[food] CHECK CONSTRAINT [FK8utdxgv5fcrhd2vv0aw5pdvq0]
GO
ALTER TABLE [dbo].[order_food]  WITH CHECK ADD  CONSTRAINT [FKey0a06m123d6wkkcwvtdijwvs] FOREIGN KEY([food_id])
REFERENCES [dbo].[food] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_food] CHECK CONSTRAINT [FKey0a06m123d6wkkcwvtdijwvs]
GO
ALTER TABLE [dbo].[order_food]  WITH CHECK ADD  CONSTRAINT [FKj91jra61vcy0vjm6nmmgso7xk] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_food] CHECK CONSTRAINT [FKj91jra61vcy0vjm6nmmgso7xk]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih]
GO
ALTER TABLE [dbo].[promotions]  WITH CHECK ADD  CONSTRAINT [FKbgf5dw94wa0lf42htdh984imy] FOREIGN KEY([blog_id])
REFERENCES [dbo].[blogs] ([id])
GO
ALTER TABLE [dbo].[promotions] CHECK CONSTRAINT [FKbgf5dw94wa0lf42htdh984imy]
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [FKh8ciramu9cc9q3qcqiv4ue8a6] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [FKh8ciramu9cc9q3qcqiv4ue8a6]
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD  CONSTRAINT [FKhfh9dx7w3ubf1co1vdev94g3f] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_roles] CHECK CONSTRAINT [FKhfh9dx7w3ubf1co1vdev94g3f]
GO
USE [master]
GO
ALTER DATABASE [LTNC] SET  READ_WRITE 
GO
