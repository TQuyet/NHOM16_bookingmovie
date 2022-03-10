
CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`) VALUES
(12, 'BNN01', 1, 4, 1, 1, 1, 70000, '2021-04-15'),
(13, 'BNN02', 1, 4, 1, 2, 2, 140000, '2021-04-16');


--
-- Dumping data for table `tbl_bookings`

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 4, 'quyet', 'password', 1),
(3, 2, 'quyet1', 'password', 1);


CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(500) NOT NULL,
  `cast` varchar(1000) NOT NULL,
  `desc` varchar(3000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`) VALUES
(1, 1, 'Bẫy Ngọt Ngào', 'Bảo Anh, Minh Hằng, Diệu Nhi, Thuận Nguyễn, Quốc Trường', 'Sau một thời gian dài không gặp, cuộc sống của mỗi thành viên trong hội ế đều có nhiều thay đổi. Camy là người duy nhất “thoát ế” với cuộc sống đáng mơ ước bên người chồng tài hoa Đăng Minh. Quỳnh Lam đã là một nhà thiết kế nổi tiếng, Linh Đan là một luật sư thành đạt, còn Ken trở thành ông chủ phòng gym. Cả nhóm quyết định hội ngộ nhân dịp kỷ niệm 3 năm ngày cưới của Camy. Từ đây, những góc khuất trong cuộc sống riêng của từng người dần được hé lộ.','2022-02-11','https://files.betacorp.vn/files/media%2fimages%2f2021%2f10%2f27%2funtitled-3-135143-271021-25.jpg'),
(2, 1, 'The Batman', 'Konstantin Beloshapka, Vera Panfilova, Ekaterina Shumakova', 'Trong năm thứ hai chiến đấu với tội phạm, Batman phát hiện ra tham nhũng ở thành phố Gotham, nơi kết nối với gia đình của chính anh ta trong khi đối mặt với một kẻ giết người hàng loạt được gọi là Riddler. Phim có các suất chiếu đặc biệt từ ngày 3/3 tại các rạp chiếu phim Beta Cinemas trên toàn quốc. Đặt vé ngay!', '2022-03-04','https://files.betacorp.vn/files/media%2fimages%2f2022%2f01%2f21%2fimages-145438-210122-29.jpg'),
(3, 1, 'Bồ Cũ', 'Konstantin Beloshapka, Vera Panfilova, Ekaterina Shumakova', 'Khi còn ở tuổi thiếu niên, Sasha (Konstantin Beloshapka) từng yêu say đắm một cô gái rất xinh đẹp. Hàng loạt những tấm ảnh tình tứ được Sasha đăng lên mạng như một sự khoe khoang với bạn bè. Nhiều năm sau, Sasha nay đã trở thành một người đàn ông và sắp sửa kết hôn với người bạn gái hiện tại là Katya (Vera Kincheva). Khi Sasha đang chuẩn bị đám cưới, thì tấm ảnh giường chiếu của anh cùng người yêu cũ ngày xưa bỗng dưng được “đào mộ”. Sasha không thể ngờ rằng, quá khứ mang tên “người yêu cũ” lại là điều đáng sợ nhất trên thế giới.', '2022-02-25', 'https://files.betacorp.vn/files/media%2fimages%2f2022%2f02%2f22%2fbo-cu-112311-220222-77.jpg'),
(4, 1, 'Người Lắng Nghe: Lời Thì Thầm', 'Quang Sự, Oanh Kiều, Phạm Quỳnh Anh, Quốc Cường, Lý Hồng Ân,...', 'Một nữ nhà văn, một chuyên gia tâm lý, một bác sĩ tâm thần và một nữ doanh nhân cùng nhau bị cuốn vào những ám ảnh không hồi kết của người phụ nữ với gương mặt mờ ảo. Trong cuộc truy tìm tung tích của người phụ nữ ma quái kia, cũng là lúc những bí mật sâu thẳm trong mỗi người được bóc trần trước ánh sáng. Họ là ai?! Những câu chuyện của họ là gì?! Ai sẽ là người ngồi xuống và lắng nghe những lời thì thầm chứa đầy bí ẩn của họ.', '2021-01-28', 'https://files.betacorp.vn/files/media%2fimages%2f2022%2f01%2f26%2fpayoff-poster-viet-094134-260122-41.jpg'),
(5, 1, 'Chuyến Phiêu Lưu Trời Ơi Đất Hỡi', 'John F. Brungot, Hermann Sabado', 'Cuộc sống bình yên của Tootson và Ludiwood đột nhiên đảo lộn vì họ bị đuổi ra khỏi đường hầm mà mình đang sinh sống. Đứng trước mênh mông trời núi, hai cậu bạn thân quyết tâm lên đường tìm người ông đáng kính - Thuyền Trưởng Tootson để giành lại căn nhà thân yêu. Chuyến phiêu lưu trời ơi đất hỡi băng qua những đại dương mênh mông, núi non bạt ngàn rồi lên tận mây xanh với những con quái thú kỳ quặc nhất từ đó bắt đầu!', '2022-03-04', 'https://files.betacorp.vn/files/media%2fimages%2f2022%2f03%2f04%2fthumb-114438-040322-89.jpg');

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'quyet1', '123@gmail.com', '1247778540', 22, 'gender'),
(4, 'Quyet', 'bruno@gmail.com', '7451112450', 30, 'gender');

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 1, 'Man hinh 1', 100, 70000),
(2, 1, 'Man hinh 2', 150, 80000),
(3, 2, 'Man hinh 3', 200, 75000),
(4, 2, 'Man hinh 4', 100, 45000);


-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(1, 1, 1, 1, '2021-04-16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00');


-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(1, 'BEta', '175 Tay son', 'Dai hoc thuy loi', 'DM', 691523),
(2, 'CGv', '136 Ho tung Mau', 'Tòa ABC', 'UD', 691523);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_news`
--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
