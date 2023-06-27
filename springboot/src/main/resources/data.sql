USE [LTNC]
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [address], [full_name], [email], [password], [username]) VALUES (1, N'Kim Liên, Nam Đàn', N'Nguyễn Hữu Nhân', N'nhan9ckl@gmail.com', N'$2a$10$EHIVo.PxEm5edeDMRgc6Z.UME6hUpkngOjeLwrSEGLh7K0yow8hUm', N'nhan')
GO
INSERT [dbo].[users] ([id], [address], [full_name], [email], [password], [username]) VALUES (2, N'Hà Nội', N'Đỗ Thị Diệp', N'nhan9ckl2@gmail.com', N'$2a$10$7gH0/bcvxA15vDrEFd/mv.m9l0yEoKwATpjOaE3X4tJ4PoMGlm/FC', N'diep')
GO
INSERT [dbo].[users] ([id], [address], [full_name], [email], [password], [username]) VALUES (3, N'TP HCM', N'Bùi Thị Thoa', N'nhan9ckl23@gmail.com', N'$2a$10$DfdhQM51qRu/JVU.t3Srpev5jnFKCcae5FybGgmFuObGfkJZC4Wwe', N'thoa')
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[blogs] ON 
GO
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (1, N'khuyenmaingay28.110', N'Khuyến mãi ngày 28. 10 giảm giá tất cả các món 28%', N'1', N'1', N'Khuyến mãi ngày 28.10', 1, N'1', 1, 1)
GO
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (2, N'khuyenmai7h9h', N'khuyenmaikhungdacbiet', N'2', N'2', N'Khuyến mãi 2 khung giờ  mới', 2, N'2', 2, 1)
GO
INSERT [dbo].[blogs] ([id], [alias], [content], [created_date], [image], [name], [status], [updated_date], [view_count], [created_by]) VALUES (3, N'khuyenmaikhungdacbiet', N'<div class="blog_item padding-bottom order-page">
                        <h2>Đầu bếp Nhật nấu món Ý là một sự kết hợp hoàn hảo </h2>
                        <ul class="comments">
                            <li><a href="#.">Nov 10, 2021</a></li>
                            <li><a href="#."><i class="icon-chat-2"></i>5</a></li>
                        </ul>
                        <div class="image_container">
                            <img src="images/blog1.jpg" class="img-responsive" alt="blog post">
                        </div>
                        <p>
                            Nguyên liệu chính của món ăn này là phần thịt đùi săn chắc, được rửa sạch và treo khô tự nhiên. Sau đó, thịt được tẩm ướp gia vị rồi treo lên xông khói. Món ăn này không chỉ có mùi khói củi, mà còn thoang thoảng hương vị hạt dẻ rừng, là thức ăn chính
                            của loài heo đen quý giá. </p>
                        <p>Đùi heo muối iberico đặc sắc là một trong những món ăn Italy được nấu theo phong cách Nhật của vị đầu bếp nổi tiếng. </p>
                        <p>
                            Khác với đùi heo serrano được làm từ thịt heo trắng, jamon iberico đặc biệt hơn khi được chế biến từ giống heo đen quý giá. Heo đen được chăn thả tự nhiên tại bán đảo Iberico. Thức ăn của loài heo này chủ yếu là ngũ cốc và hạt dẻ. Khi heo đen đạt đủ trọng
                            lượng 160 kg thì sẽ được lựa chọn để chế biến.
                        </p>
                        <h3 class="half_space">Đầu bếp Nhật nấu món Ý là một sự kết hợp hoàn hảo </h3>
                        <p>
                            Dưới sự giám sát của bếp trưởng người Nhật, mọi công đoạn từ nhập nguyên liệu, sơ chế và chế biến món ăn đều được diễn ra nghiêm ngặt, đảm bảo nguyên liệu luôn tươi ngon nhất và được chế biến hợp vệ sinh.
                        </p>
                        <ul class="digits">
                            <li>Ngoài món đùi heo muối iberico, bạn cũng có thể thưởng thức những món ăn Italy chế biến theo phong cách Nhật mới lạ khác như risotto parmigiano.</li>
                            <li>Fried calzone – một loại bánh thuộc “họ” pizza cũng là một món ăn hấp dẫn tại Basta Hiro.</li>
                            <li>
                                Nếu yêu thích mì Ý, thực khách sẽ khó lòng bỏ qua món freshwater cherabin spaghetti chuẩn vị Italy của đầu bếp Nhật.
                            </li>
                            <li>Nhà hàng có nhiều lựa chọn đồ uống cho bạn nhâm nhi khi thưởng thức các món ăn, hoặc dùng để tráng miệng.</li>
                        </ul>
                        <blockquote class="bg_grey">
                            Anh Olivier Garrivie, bếp phó KS. Sofitel Metropole Hà Nội nói rằng món ăn này từng là món quà truyền thống cho lũ trẻ trong nhà vào ngày cuối tuần, hay đôi khi là món ăn nhẹ vào giờ nghỉ khi bọn trẻ đi học.
                        </blockquote>
                        <p>
                            Sự sáng tạo của Đùi heo muối iberico quả thực rất quyến rũ. Hấp dẫn và ngon miệng. Có lẽ bởi nghệ thuật sáng tạo là sự kết nối đặc biệt giữa hương vị của Đùi heo iberico truyền thống với dư vị của mứt, rượu rhum, mật ong, hoa quả tươi…
                        </p>
                        <div class="clearfix">
                            <ul class="comments pull-left">
                                <li><a href="#."><i class="icon-tag2"></i>Ẩm thực, Sức khỏe, Món Ý</a></li>
                            </ul>
                            <ul class="social_icon pull-right">
                                <li><a href="#." class="black"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#." class="black"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#." class="black"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                        <h3>3 bình luận</h3>
                        <div class="media blog-reply">
                            <div class="pull-left">
                                <a href="#.">
                                    <img alt="Bianca Reid" src="images/blog-commenter1.jpg">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4>Hằng Triệu</h4>
                                <span>September 30, 2021 at 3:21 pm</span>
                                <p class="no-margin">
                                    Đồ ăn: rất ngon, đặc biệt ấn tượng với sashimi và roll special, các món khác mình đều rất vừa miệng, đồ ăn ship cũng nhanh không đợi quá lâu.
                                </p>
                                <a class="reply" href="#.">Phản hồi</a>
                            </div>
                        </div>
                        <div class="media blog-reply col-md-offset-2">
                            <div class="pull-left">
                                <a href="#.">
                                    <img alt="Bianca Reid" src="images/blog-commenter1.jpg">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4>Quang Phạm</h4>
                                <span>September 30, 2021 at 3:21 pm</span>
                                <p class="no-margin">
                                    Mình đã đặt ở quán nhiều lần và 10 lần như 10 vậy, đồ ăn tươi ngon không chê vào đâu được. </p>
                                <a class="reply" href="#.">Phản hồi</a>
                            </div>
                        </div>
                        <div class="media blog-reply">
                            <div class="pull-left">
                                <a href="#.">
                                    <img alt="Bianca Reid" src="images/blog-commenter1.jpg">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4>Lê Long</h4>
                                <span>September 30, 2021 at 3:21 pm</span>
                                <p class="no-margin">
                                    Làm ngon, giá cả phải chăng, đặt đồ ở đây nhiều lần rồi cảm thấy phục vụ rất tốt, tận tình. Cũng có lần ship nhầm món cho mình, khi mình nhắn tin hỏi thì thì nhân viên trả lời rất lịch sự. </p>
                                <a class="reply" href="#.">Phản hồi</a>
                            </div>
                        </div>

                        <h3>Để lại bình luận của bạn</h3>
                        <form class="callus">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea placeholder="Bình luận    "></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn-submit button3">Gửi</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>', N'3', N'3', N'Khuyến mãi khung giờ đặc biệt', 3, N'3', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[carts] ON 
GO
INSERT [dbo].[carts] ([id], [user_id]) VALUES (2, 1)
GO
INSERT [dbo].[carts] ([id], [user_id]) VALUES (3, 2)
GO
INSERT [dbo].[carts] ([id], [user_id]) VALUES (4, 3)
GO
SET IDENTITY_INSERT [dbo].[carts] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 
GO
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (1, N'buatrua', N'Bữa trưa', 1)
GO
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (2, N'trangmieng', N'Tráng miệng', 1)
GO
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (3, N'douong', N'Đồ uống', 1)
GO
INSERT [dbo].[categories] ([id], [alias], [name], [status]) VALUES (4, N'buasang', N'Bữa sáng', 1)
GO
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (1, N'Giadoxaosaot', N'1', CAST(1.00 AS Numeric(19, 2)), N'Món ngon', N'Giadoxaosaot_1.jpg', N'Giá đỗ xào sả ớt', 78000, 60000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 1)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (2, N'Heotochamkhoaiso', N'1', CAST(1.00 AS Numeric(19, 2)), N'Món ngon ', N'Heotochamkhoaiso_1.jpg', N'Heo tộc hầm khoai sọ', 150000, 90000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 1)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (3, N'Gadongtaohamsam', N'1', CAST(1.00 AS Numeric(19, 2)), N'Món ngon', N'Gadongtaohamsam_1.jpg', N'Gà đông tảo hầm sâm', 270000, 162000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 1)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (4, N'Catam', N'1', CAST(1.00 AS Numeric(19, 2)), N'Món ăn tốt cho sức khỏe', N'Catam_1.jpg', N'Cá tầm', 450000, 270000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 1)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (5, N'Babanauchuoi', N'1', CAST(1.00 AS Numeric(19, 2)), N'Món đặc sản', N'Babanauchuoi_1.jpg', N'Ba ba nấu chuối', 32000, 19200, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 1)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (6, N'Cocacola', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ uống có gas', N'Cocacola_1.jpg', N'Giải khát Coca', 15000, 9000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 3)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (7, N'Nuoccam', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ uống tự nhiên', N'Nuoccam_1.jpg', N'Nước cam', 30000, 18000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 3)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (8, N'Nuocloc', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ uống', N'Nuocloc_1.jpg', N'Nước lọc', 10000, 6000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 3)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (9, N'Nuocchanhleo', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ uống tự nhiên', N'Nuocchanhleo_1.jpg', N'Nước chanh leo', 25000, 15000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 3)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (10, N'Pepsi', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ uống có ga', N'Pepsi_1.jpg', N'Pepsi', 15000, 9000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 3)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (11, N'Duahau', N'1', CAST(1.00 AS Numeric(19, 2)), N'Tráng miệng', N'Duahau_1.jpg', N'Dưa hấu', 30000, 18000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 2)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (12, N'Oi', N'1', CAST(1.00 AS Numeric(19, 2)), N'Tráng miệng ', N'Oi_1.jpg', N'Ổi ', 28000, 16800, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 2)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (13, N'Nhomy', N'1', CAST(1.00 AS Numeric(19, 2)), N'Tráng miệng ', N'Nhomy_1.jpg', N'Nho Mỹ', 60000, 36000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 2)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (14, N'Buoidien', N'1', CAST(1.00 AS Numeric(19, 2)), N'Tráng miệng ', N'Buoidien_1.jpg', N'Bưởi Diễn', 40000, 24000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 2)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (15, N'Cam', N'1', CAST(1.00 AS Numeric(19, 2)), N'Tráng miệng ', N'Cam_1.jpg', N'Cam ', 35000, 21000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 2)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (16, N'Phobo', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ ăn sáng', N'Phobo_1.jpg', N'Phở bò', 50000, 30000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 4)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (17, N'Bunca', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ ăn sáng ', N'Bunca_1.jpg', N'Bún cá', 50000, 30000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 4)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (18, N'Banhmikepthit', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ ăn sáng ', N'Banhmikepthit_1.jpg', N'Bánh mì kẹp thịt', 25000, 15000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 4)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (19, N'Bunbohue', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ ăn sáng ', N'Bunbohue_1.jpg', N'Bún bò huế', 45000, 27000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 4)
GO
INSERT [dbo].[food] ([id], [alias], [created_by], [created_date], [description], [image], [name], [origin_price], [promotion_price], [status], [updated_by], [updated_date], [view_count], [category_id]) VALUES (20, N'Bundau', N'1', CAST(1.00 AS Numeric(19, 2)), N'Đồ ăn sáng', N'Bundau_1.jpg', N'Bún đậu', 40000, 24000, 1, N'1', CAST(1.00 AS Numeric(19, 2)), 1, 4)
GO
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [status], [total_price], [user_id]) VALUES (1, N'1', N'1', N'1', N'1', N'1', 1, 1, 1)
GO
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [status], [total_price], [user_id]) VALUES (2, N'1', N'236, Hoàng Quốc Việt', N'Cố gắng ship nhanh', N'Bùi Thị Thoa', N'Thẻ', 1, 4234324, 3)
GO
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [status], [total_price], [user_id]) VALUES (3, N'1', N'Thái Bình', N'.', N'Đỗ Thị Diệp', N'Tiền mặt', 1, 43243324, 2)
GO
INSERT [dbo].[orders] ([id], [created_time], [customer_address], [customer_message], [customer_name], [payment_method], [status], [total_price], [user_id]) VALUES (1655166987948, N'1', N'Kim Liên, Nam Đàn, Nghệ An', N'OK', N'Nguyễn Hữu Nhân', N'Tiền mặt', 1, 3, 1)
GO
INSERT [dbo].[order_food] ([food_id], [order_id], [quantity]) VALUES (1, 1655166987948, 3)
GO
SET IDENTITY_INSERT [dbo].[comments] ON 
GO
INSERT [dbo].[comments] ([id], [author], [content], [time_create], [food_id]) VALUES (1, N'Nguyễn Hữu Nhân', N'Làm ngon, giá cả phải chăng, đặt đồ ở đây nhiều lần rồi cảm thấy phục vụ rất tốt, tận tình. Cũng có lần ship nhầm món cho mình, khi mình nhắn tin hỏi thì thì nhân viên trả lời rất lịch sự.', N'1', 1)
GO
INSERT [dbo].[comments] ([id], [author], [content], [time_create], [food_id]) VALUES (4, N'Bùi Thị Thoa', N'Hàng giao nhanh, đóng gói cẩn thận chắc chắn, chưa thử nhưng cảm thấy khá ổn áp', N'1', 1)
GO
INSERT [dbo].[comments] ([id], [author], [content], [time_create], [food_id]) VALUES (5, N'Đỗ Thị Diệp', N'Hàng giao nhanh, đóng gói cẩn thận chắc chắn, chưa thử nhưng cảm thấy khá ổn áp', N'1', 1)
GO
INSERT [dbo].[comments] ([id], [author], [content], [time_create], [food_id]) VALUES (6, N'Bùi Thị Thoa', N'Hàng giao nhanh, đóng gói cẩn thận chắc chắn, chưa thử nhưng cảm thấy khá ổn áp', N'1', 1)
GO
INSERT [dbo].[comments] ([id], [author], [content], [time_create], [food_id]) VALUES (7, N'Nguyễn Hữu Nhân', N'Hàng giao nhanh, đóng gói cẩn thận chắc chắn, chưa thử nhưng cảm thấy khá ổn áp', N'1', 1)
GO
SET IDENTITY_INSERT [dbo].[comments] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'ROLE_USER')
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'ROLE_MODERATION')
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (3, N'ROLE_ADMIN')
GO
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (1, 1)
GO
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (2, 1)
GO
INSERT [dbo].[user_roles] ([user_id], [role_id]) VALUES (3, 1)
GO
