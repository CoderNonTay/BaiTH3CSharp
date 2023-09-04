create database MUSIC

create table NGUOIDUNG
(
	TenDangNhap varchar(20)  PRIMARY KEY, 
	MatKhau varchar(20),
	TenNguoiDung varchar(100)
);

create table THELOAI
(
	MaTheLoai int PRIMARY KEY identity(1,1),
	TenTheLoai nvarchar(20)
);

create table BAIHAT
(
	MaBaiHat int PRIMARY KEY identity(100000,1),
	TenBaiHat nvarchar(150),
	MaTheLoai int FOREIGN KEY (MaTheLoai) REFERENCES THELOAI(MaTheLoai),
	TacGia nvarchar(100),
	CaSi nvarchar(100),
	LoiBaiHat nvarchar(max)
);

create table DANHGIA
(
	NguoiDanhGia varchar(20) FOREIGN KEY (NguoiDanhGia) REFERENCES NGUOIDUNG(TenDangNhap),
	MaBaiHat int FOREIGN KEY (MaBaiHat) REFERENCES BAIHAT(MaBaiHat),
	SoSao int,
	PRIMARY KEY(MaBaiHat, NguoiDanhGia)
);

create table BINHLUAN
(
	Id int PRIMARY KEY identity(1,1),
	NguoiDanhGia varchar(20) FOREIGN KEY (NguoiDanhGia) REFERENCES NGUOIDUNG(TenDangNhap),
	MaBaiHat int FOREIGN KEY (MaBaiHat) REFERENCES BAIHAT(MaBaiHat),
	BinhLuan nvarchar(max)
);

create table YEUTHICH
(
	MaBaiHat int FOREIGN KEY (MaBaiHat) REFERENCES BAIHAT(MaBaiHat),
	NguoiDung varchar(20) FOREIGN KEY (NguoiDung)  REFERENCES NGUOIDUNG(TenDangNhap),
	PRIMARY KEY(MaBaiHat, NguoiDung)
);

create table LICHSU
(
	MaBaiHat int FOREIGN KEY (MaBaiHat) REFERENCES BAIHAT(MaBaiHat),
	NguoiDung varchar(20) FOREIGN KEY (NguoiDung)  REFERENCES NGUOIDUNG(TenDangNhap),
	PRIMARY KEY(MaBaiHat, NguoiDung)
);

insert into NGUOIDUNG values ('phung3521', '123631998', 'Dang Phung')
insert into NGUOIDUNG values ('daxumanhvodoi', '123631998', 'Da Xua')
insert into NGUOIDUNG values ('1loccan5', '123631998', 'Thong Thao 7 da xu')

insert into DANHGIA values('daxumanhvodoi', 100000, 2)
insert into DANHGIA values('1loccan5', 100000, 4)

insert into BINHLUAN values('daxumanhvodoi', 100000, N'Dở vai~~')
insert into BINHLUAN values('1loccan5', 100000, N'cũng ra gì đấy')
insert into BINHLUAN values('1loccan5', 100000, N'nghe lần thứ n rồi :v')

insert into THELOAI values (N'Remix')
insert into THELOAI values (N'Pop')
insert into THELOAI values (N'Nhạc Trịnh')
insert into THELOAI values (N'Nhạc xưa')
insert into THELOAI values (N'Indie')
insert into THELOAI values (N'Rap')

insert into BAIHAT values (N'Từng là của nhau', 2, N'Ly Ly - Táo', N'Bảo Anh, Táo', N'Từng là của nhau sao giờ chẳng *** nhìn nhau
Từng là của nhau sao không chào hỏi nhau một câu
Lạnh lùng như thế ta vội bước đi thật mau
khi mình lỡ gặp lại nhau trên con phố lúc ban đầu

Ngày còn ở bên, ai mà đoán được ngày sau
Có ai yêu nhau lại không muốn đuợc dài lâu
Từ một người dưng ta gặp gỡ rồi lại yêu
Bên nhau đã được bao nhiêu, sao giờ xa lạ đến thế?

[Chorus]:
Từng là của nhau ta đã từng là của nhau
Dù sao đi nữa cũng đã thật lòng vì nhau
Mình gặp gỡ là do ý trời, ai chẳng muốn bên nhau suốt đời
Nhưng đâu biết có ngày ta sẽ xa rời để có hai cuộc sống mới

Niềm vui của anh cũng đã từng là của em
Nước mắt em rơi khiến tim anh lại rối bời
Giờ đành chúc nhau luôn mỉm cười
Hạnh phúc suốt đời bên người nào đó mà ta chọn đi cùng nhau đến cuối cùng.

[Rap Verse]:
Giấu đi hết nhung nhớ ta có khi xa rời
Thấy nhau giữa con phố nhưng nói không nên lời
Nếu ta đã khác nhau bầu trời
Chắc là chia xa để không khiến cho nhau rơi
Khỏi quỹ đạo của bình yên, không tạo ra tình yêu
Thì giữ cho mình riêng một khát khao khi thấy thiếu
Bàn tay nắm chặt giữa vội vàng phố đông
Tiếc là bây giờ không thể mở lòng
Em có thể nhớ, em có thể không
Từ sau lời từ biệt anh dùng cô đơn để sống
Từng là người dưng rồi trở thành của nhau
Lại thành người dưng nhưng có thêm một nỗi đau
Bầu trời vẫn như cũ hay vì buồn mà đổi màu
Kết thúc cũng là cách để mở đầu.

[Pre-chorus]

Đến cuối cùng, đến cuối cùng dù hai chúng ta chẳng thể đi với nhau
I’m sorry and thank you for all we had
I’m sorry and thank you for all we had
Cám ơn vì đã từng là của nhau.')

insert into BAIHAT values (N'Mưa hồng', 3, N'Trịnh Công Sơn', N'Bùi Lan Hương', N'Trời ươm nắng cho mây hồng
Mây qua mau em nghiêng sầu
Còn mưa xuống như hôm nào em đến thăm
Mây âm thầm mang gió lên
Người ngồi đó trong mưa nguồn

Ôi yêu thương nghe đã buồn
Ngoài kia lá như vẫn xanh
Ngoài sông vắng nước dâng lên, hồn muôn trùng
Này em đã khóc chiều mưa đỉnh cao
Còn gì nữa đâu sương mù đã lâu
Em đi về cầu mưa ướt áo

Đường phượng bay mù không lối vào
Hàng cây lá xanh gần với nhau
Người ngồi xuống mây ngang đầu
Mong em qua bao nhiêu chiều
Vòng tay đã xanh xao nhiều


Ôi tháng năm gót chân mòn trên phím ru
Người ngồi xuống xin mưa đầy
Trên hai tay cơn đau dài
Người nằm xuống nghe tiếng ru
Cuộc đời đó có bao lâu mà hững hờ
Này em đã khóc chiều mưa đỉnh cao

Còn gì nữa đâu sương mù đã lâu
Em đi về cầu mưa ướt áo
Đường phượng bay mù không lối vào
Hàng cây lá xanh gần với nhau
Người ngồi xuống mây ngang đầu

Mong em qua bao nhiêu chiều
Vòng tay đã xanh xao nhiều
Ôi tháng năm gót chân mòn trên phím ru
Người ngồi xuống xin mưa đầy


Trên hai tay cơn đau dài
Người nằm xuống nghe tiếng ru
Cuộc đời đó có bao lâu mà hững hờ')

insert into BAIHAT values (N'Nhìn những mùa thu đi', 3, N'Trịnh Công Sơn', N'Bùi Lan Hương', N'Nhìn những mùa thu đi
Em nghe sầu lên trong nắng
Và lá rụng ngoài song
Nghe tên mình vào quên lãng
Nghe tháng ngày chết trong thu vàng
Nhìn những lần thu đi
Tay trơn buồn ôm nuối tiếc
Nghe gió lạnh về đêm
Hai mươi sầu dâng mắt biếc
Thương cho người rồi lạnh lùng riêng
Gió heo may đã về
Chiều tím loang vỉa hè
Và gió hôn tóc thề
Rồi mùa thu bay đi
Trong nắng vàng chiều nay
Anh nghe buồn mình trên ấy
Chiều cuối trời nhiều mây
Đơn côi bàn tay quên lối
Đưa em về nắng vương nhè nhẹ
Đã mấy lần thu sang
Công viên chiều qua rất ngắn
Chuyện chúng mình ngày xưa
Anh ghi bằng nhiều thu vắng
Đến thu này thì mộng nhạt phai')

insert into BAIHAT values (N'Biển nhớ', 3, N'Trịnh Công Sơn', N'Mộc San', N'Ngày mai em đi
Biển nhớ tên em gọi về
Gọi hồn liễu rũ lê thê
Gọi bờ cát trắng đêm khuya
Ngày mai em đi
Đồi núi nghiêng nghiêng đợi chờ
Sỏi đá trông em từng giờ
Nghe buồn nhịp chân bơ vơ
Ngày mai em đi
Biển nhớ em quay về nguồn
Gọi trùng dương gió ngập hồn
Bàn tay chắn gió mưa sang
Ngày mai em đi
Thành phố mắt đêm đèn vàng
Hồn lẻ nghiêng vai gọi buồn
Nghe ngoài biển động buồn hơn
Hôm nao em về
Bàn tay buông lối ngỏ
Đàn lên cung phím chờ
Sầu lên đây hoang vu
Ngày mai em đi
Biển nhớ tên em gọi về
Triều sương ướt đẫm cơn mê
Trời cao níu bước sơn khê
Ngày mai em đi
Cồn đá rêu phong rủ buồn
Đèn phố nghe mưa tủi hờn
Nghe ngoài trời giăng mây luôn
Ngày mai em đi
Biển có bâng khuâng gọi thầm
Ngày mưa tháng nắng còn buồn
Bàn tay nghe ngóng tin sang
Ngày mai em đi
Thành phố mắt đêm đèn vàng
Nửa bóng xuân qua ngập ngừng
Nghe trời gió lộng mà thương
Ngày mai em đi
Biển nhớ em quay về nguồn
Gọi trùng dương gió ngập hồn
Bàn tay chắn gió mưa sang
Ngày mai em đi
Thành phố mắt đêm đèn vàng
Hồn lẻ nghiêng vai gọi buồn
Nghe ngoài biển động buồn hơn
Hôm nao em về
Bàn tay buông lối ngỏ
Đàn lên cung phím chờ
Sầu lên đây hoang vu
Ngày mai em đi
Biển có bâng khuâng gọi thầm
Ngày mưa tháng nắng còn buồn
Bàn tay nghe ngóng tin sang
Ngày mai em đi
Thành phố mắt đêm đèn vàng
Nửa bóng xuân qua ngập ngừng
Nghe trời gió lộng mà thương
Ngày mai em đi
Thành phố mắt đêm đèn vàng
Nửa bóng xuân qua ngập ngừng
Nghe trời gió lộng mà thương
Ngày mai em đi
Thành phố mắt đêm đèn vàng
Nửa bóng xuân qua ngập ngừng
Nghe trời gió lộng mà thương')

insert into BAIHAT values (N'Còn tuổi nào cho em', 3, N'Trịnh Công Sơn', N'Bùi Lan Hương', N'Tuổi nào như lá vàng úa chiều nay
Tuổi nào ngồi hát mây bay ngang trời
Tay măng trôi trên vùng tóc dài
Bao nhiêu cơn mơ vừa tuổi này
Tuổi nào ngơ ngác tìm tiếng gió heo may
Tuổi nào vừa thoáng buồn áo gầy vai
Tuổi nào ghi dấu chân chim qua trời
Xin cho tay em còn muốt dài
Xin cho cô đơn vào tuổi này
Tuổi nào lang thang thành phố tóc mây cài
Em xin tuổi nào
Còn tuổi nào cho nhau
Trời xanh trong mắt hoen sầu
Mây xuống vây quanh giọt sầu
Em xin tuổi nào
Còn tuổi trời hư vô
Bàn tay che dấu lệ nhoà
Ôi buồn
Tuổi nào ngồi khóc tình đã nghìn thu
Tuổi nào mơ kết mây trong sương mù
Xin chân em qua từng phiến ngà
Xin mây se thêm màu áo lụa
Tuổi nào thôi hết từng tháng năm mong chờ
Xin chân em qua từng phiến ngà
Xin mây se thêm màu áo lụa
Tuổi nào thôi hết từng tháng năm mong chờ
')

insert into BAIHAT values (N'Diễm xưa', 3, N'Trịnh Công Sơn', N'Hà Lê', N'Mưa vẫn mưa bay trên tầng tháp cổ
Dài tay em mấy thuở mắt xanh xao
Nghe lá thu mưa reo mòn gót nhỏ
Đường dài hun hút cho mắt thêm sâu
Mưa vẫn hay mưa trên hàng lá nhỏ
Buổi chiều ngồi ngóng những chuyến mưa qua
Trên bước chân em âm thầm lá đổ
Chợt hồn xanh buốt cho mình xót xa
Chiều nay còn mưa sao em không lại
Nhỡ mai trong cơn đau vùi
Làm sao có nhau, hằn lên nỗi đau
Bước chân em xin về mau
Chiều nay còn mưa...
Mưa vẫn hay mưa cho đời biển động
Làm sao em nhớ những vết chim di
Xin hãy cho mưa qua miền đất rộng
Để người phiêu lãng quên mình lãng du
Mưa vẫn hay mưa cho đời biển động
Làm sao em biết bia đá không đau
Xin hãy cho mưa qua miền đất rộng
Ngày sau sỏi đá cũng cần có nhau
Chiều nay còn mưa sao em không lại
Nhỡ mai trong cơn đau vùi
Làm sao có nhau, hằn lên nỗi đau
Bước chân em xin về mau
Chiều nay còn mưa...')

insert into BAIHAT values (N'Vì anh đâu có biết', 5, N'Madihu', N'Vũ, Madihu', N'Vì anh đâu có biết trái tim ngổn ngang
Vì anh đâu có biết đúng sai ngỡ ngàng
Vì anh luôn hối tiếc chiếc ôm dở dang
Chìm trong đôi mắt biếc anh không thể mang
Vì anh đâu có biết giấu đi thời gian
Vì anh đâu có biết nắng mai đang tàn
Vì anh luôn hối tiếc anh không thể mang
Mùi hương trên mái tóc giữ theo câu chuyện đánh rơi
Loay hoay lạc trong từng cơn mưa
Ngu ngơ bước theo nơi đôi bờ mi đón đưa
Bâng khuâng chìm trong làn mây thưa
Em ơi có rơi vào nhạt nhoà hay chưa?
Hay khi ngày em vô tình rơi
Chơi vơi cuốn theo con tim này đi khắp nơi
Ngân nga lời ca còn buông lơi
Mang theo đắm say ngày nào còn trên môi
Ooh-ooh-ooh
Bởi vì anh, bởi vì anh
Ooh-ooh-ooh
Bởi vì anh, bởi vì anh, ú u ù
Vì anh đâu có biết trái tim ngổn ngang
Vì anh đâu có biết đúng sai ngỡ ngàng
Vì anh luôn hối tiếc chiếc ôm dở dang
Chìm trong đôi mắt biếc anh không thể mang
Vì anh đâu có biết giấu đi thời gian
Vì anh đâu có biết nắng mai đang tàn
Vì anh luôn hối tiếc anh không thể mang
Mùi hương trên mái tóc giữ theo câu chuyện đánh rơi
Em là mây trôi trong gió
Anh là cây, nhiều đắn đo
Cành lá không còn xanh như giấc mơ của anh
Rơi xuống xuống đi tìm kiếm câu trả lời anh đánh rơi
Vươn dài đôi tay ôm theo mây anh không có
Khi ngày hôm nay còn lại gì ngoài lí do
Nhìn áng mây mỏng manh bay lướt qua thật nhanh
Anh ngỡ ra rằng chính câu trả lời anh đánh rơi là
Bởi vì anh, bởi vì anh, bởi vì anh
Là bởi vì anh, bởi vì anh, bởi vì anh, ú u ù
Vì anh đâu có biết trái tim ngổn ngang
Vì anh đâu có biết đúng sai ngỡ ngàng
Vì anh luôn hối tiếc chiếc ôm dở dang
Chìm trong đôi mắt biếc anh không thể mang
Vì anh đâu có biết giấu đi thời gian
Vì anh đâu có biết nắng mai đang tàn
Vì anh luôn hối tiếc anh không thể mang
Mùi hương trên mái tóc giữ theo câu chuyện đánh rơi
Vì anh đâu có biết...
Vì anh đâu có biết trái tim ngổn ngang
Vì anh đâu có biết đúng sai ngỡ ngàng
Vì anh luôn hối tiếc chiếc ôm dở dang
Chìm trong đôi mắt biếc anh không thể mang
Vì anh đâu có biết giấu đi thời gian
Vì anh đâu có biết nắng mai đang tàn
Vì anh luôn hối tiếc anh không thể mang
Mùi hương trên mái tóc giữ theo câu chuyện
Vì anh đâu có biết giấu đi thời gian
Vì anh đâu có biết
Bởi vì anh đâu có hay
Rằng chính anh chẳng có em')

insert into BAIHAT values (N'Mah boo (remix)', 1, N'Phạm Việt Thắng', N'Phạm Việt Thắng', N'Dạo quanh thành phố, 3h đêm ta và em
Con tim như đang khiêu vũ, đưa mình đến sát gần thêm
Babe you are mah boo, yêu đắm say như thằng ngu
Chỉ còn lại tiếng đồng hồ đang tik tok, tik tok nhẹ nhàng
Bầu trời đêm nay bé như đội mắt của nàng
Dont make me rolling in your eyes mah girl
Cầm chặt tay em lướt đi yeah
Tăng ga anh dắt em đi thật xa
Xa khỏi những ngày bộn bề
Đoạn đường hôm nay vắng tanh
Riêng mình thấy đày tràn trề
Một ngày vội vã không còn cô đơn
Có em thấy đời tuyệt vời, and we get in overnight
Yeah yeah yeah yeah yeah you knock me down
Không thích yêu em theo cách ồn ào
Từng hàng ngõ vắng bây giờ đã hết xôn xao
Ngồi nhìn trời đến khi hai trái tim chúng ta va vào
Và một lần chợt nhìn em vài giây
Anh đã biết anh vừa yêu rồi, đưa em đi qua năm tháng
Dẫu đôi chân có chân mòn lối
Babe you are mah boo, babe you are mah boo
Tình nào là tình chẳng phai mờ đâu
Như cơn mưa đang rơi trước nhà
Yêu em yêu đến khi bạc mái đầu
Đến khi con con tim thành đá
Babe you are mah boo, babe you are mah boo
Chỉ còn lại tiếng đồng hồ đang tik tok, tik tok nhẹ nhàng
Bầu trời đêm nay bé như đội mắt của nàng
Dont make me rolling in your eyes mah girl
Cầm chặt tay em lướt đi yeah
Tăng ga anh dắt em đi thật xa
Xa khỏi những ngày bộn bề
Đoạn đường hôm nay vắng tanh
Riêng mình thấy đày tràn trề
Một ngày vội vã không còn cô đơn
Có em thấy đời tuyệt vời, and we get in overnight
Yeah yeah yeah yeah yeah you knock me down
Không thích yêu em theo cách ồn ào
Từng hàng ngõ vắng bây giờ đã hết xôn xao
Ngồi nhìn trời đến khi hai trái tim chúng ta va vào
Và một lần chợt nhìn em vài giây
Anh đã biết anh vừa yêu rồi, đưa em đi qua năm tháng
Dẫu đôi chân có chân mòn lối
Babe you are mah boo, babe you are mah boo
Tình nào là tình chẳng phai mờ đâu
Như cơn mưa đang rơi trước nhà
Yêu em yêu đến khi bạc mái đầu
Đến khi con con tim thành đá
Babe you are mah boo, babe you are mah boo
')

insert into BAIHAT values (N'Anh yêu em cực (remix)', 1, N'Linh Thộn', N'Linh Thộn ft Minh Vũ', N'Hai ba con mực
Anh yêu em cực (yêu em cực)
Ba chai tăng lực (thế cơ á)
Yêu em căng cực (yêu em cực)
Không cho em bực (không cho bực)
Yêu em liên tục (yêu em liên tục)
Yêu em quanh năm (suốt tháng)
Yêu em vô cực
Anh yêu em anh yêu em cực (yêu cực)
Anh yêu em anh yêu em cực (yêu lắm)
Anh yêu em anh yêu em cực
Anh yêu em (nhất)
Anh yêu em anh yêu em cực (yêu cực)
Anh yêu em anh yêu em cực (yêu vãi)
Anh yêu em anh yêu em cực
Anh yêu em vô cực
Xăm ngay tên em lên ngực (kiến cắn)
Khi mama anh đang giục
Mau mau sang mùa cưới
Để anh đưa em lên bục (trao nhẫn)
Aint tryna keep it cool
Gu anh là geechi goo
Ai mà muốn kill this love thì anh du du du du du du
Bao nhiêu đêm không nàng
Anh loay hoay bên nỗi nhớ em
Khi con tim anh luôn thao thức
Làm sao để em bên anh lúc này
Baby uh oh
Anh mong ta khi tay nắm tay
Trao cho nhau môi hôn đắm say
Thì thầm bên tai em anh nói một lời
Hai ba con mực
Anh yêu em cực
Ba chai tăng lực
Yêu em căng cực
Không cho em bực
Yêu em liên tục
Yêu em quanh năm
Yêu em vô cực
Anh yêu em anh yêu em cực (yêu cực)
Anh yêu em anh yêu em cực (yêu lắm)
Anh yêu em anh yêu em cực
Anh yêu em
Anh yêu em anh yêu em cực
Anh yêu em anh yêu em cực
Anh yêu em anh yêu em cực
Anh yêu em vô cực
Anh yêu em lắm em ơi
Gần nhau như sushi bên cơm nắm em ơi (em ơi)
Anh yêu em lắm em ơi
Gặp em con tim anh như đang trống ra chơi (em à)
Mong sao nước mắt người đừng rơi (đừng rơi)
Không anh trông giống thằng dở hơi (dở hơi)
Anh chỉ muốn nói một lần thôi
Anh yêu em nhất cả trần đời
Bao nhiêu đêm không nàng
Anh loay hoay bên nỗi nhớ em (anh yêu em)
Khi con tim anh luôn thao thức
Làm sao để em bên anh lúc này
Baby uh oh
Anh mong ta khi tay nắm tay (anh yêu em)
Trao cho nhau môi hôn đắm say (anh yêu em)
Thì thầm bên tai em anh nói một lời
Hai ba con mực (hai ba con mực)
Anh yêu em cực (anh yêu em cực)
Ba chai tăng lực (ba chai tăng lực)
Yêu em căng cực')

insert into BAIHAT values (N'Say đắm trong lần đầu (remix)', 1, N'Winno', N'Winno', N'Đôi tay em mở, đôi môi em khẽ hửng hờ
Nhưng Em không nhớ

Thật sự là nhiều lúc dối lòng
Về phút íu lòng
Và Chẳng còn nhớ những thứ đã làm mình đau

Đêm cứ nối tiếp ngày
Mình sẽ xoá hết nuối tiếc này
Và say đắm ai đâu hay

Và rồi lại nhiều lúc đối mặt mình chỉ thấy hối hận
Lần này mình chả biết nói
chỉ ngồi nhìn nhau

Duyên nhưng ko có nợ vì mình điên vs nhung noi so
Tim vỡ tan lần đầu

Baby em nói anh nghe sao mắt em nhoè
Baby hãy kể cho anh nghe về chuyện buồn
Biết là khi màn đêm đang buông
Đó là khi giọt lệ em tuôn

Baby anh sẽ kể em nghe về những chuyện mà
Đã Làm cho tim anh đớn đau
Nói em nghe nhiều khi
Chỉ là say đắm trong lần đầu

Sẽ không còn một ai đến đón
Mình cùng Ngước mặt lên lên bầu trời và chào trời mai sáng sớm
Không cần chờ cho hai đứa lớn
Anh thì chẳng hề muốn
họ nhớ tới a vì
hai tám bốn

Bao nhiêu ân tình đâu rồi
Qua quá nhìu lần đau rồi
Say rồi cuồng quay rồi
Lại nơi ngày xưa mình hay ngồi
Năm nay em 20 em cũng như anh mà
=)))

Giấc mơ xảy ra thật bất ngờ
3 năm qua anh vẫn cố gắng để kiếm tên em
Phớt lờ con tim anh xác sơ
Không thể tin được hôm nay mình ngồi gần bên em

Gió bay nhưng mà em có hay
Nay thì mình đã lớn nên chẳng thể giống như xưa
Đó đây là mùi hương cỏ bay
Anh chẳng muốn mình xa nhau thêm một lần nào nựa

Bỡ ngỡ nên làm quen
Đã lỡ yêu rồi em
Phút chốc thì mình đã ở bên nhau
Rồi ta cùng nhau vượt qua bao nhiu cơn đau

Đã lỡ không cần em
Quá nhớ ko thể quên
tim em ngày nào chẳng có đường vào
A vẫn say đắm
trong lần đầu')

insert into BAIHAT values (N'ngủ sớm đi em', 6, N'DucMinh', N'DucMinh', N'7h tối Circle K anh nhé
Gạt chân trống đến sớm 5p
Eyy, anh khẽ
Turning on the JBL em vào trong lấy ice đào
Hôm nay công chúa của anh làm sao, kể nghe đi nào!
Em đã quên không làm bài tập hay là có những nỗi buồn to hơn?
Em kể về những giấc mơ xa, kiếm chồng có căn nhà to lớn.
Câu chuyện về người yêu hiện tại, giờ nó lạnh nhạt.
Em cứ đâm đầu vào yêu bad boy, khờ trách mệnh bạc.
Kể hết cho anh về những buồn đau nơi con tim em giấu.
Về cả những mẩu chuyện những luận điểm trong tâm tư em đang tranh đấu.
Em bước vào đời non nớt, cứ tưởng rằng cuộc sống sẽ màu hồng.
Nhưng mà không sao đâu bởi vì khi bên anh em sẽ thấy cầu vồng.
Anh không cho em nhiều tiền thật nhiều phiền như mấy thằng kia đâu.
Nhưng có trái tim nồng ấm vài dòng rap 2 chúng mình chia nhau.
Thật nhiều phiền như mấy thằng kia đâu
Nhưng có trái tim nồng ấm vài dòng rap 2 chúng mình chia nhau.
Yêu anh ta thế cơ mà từng đã hứa sẽ không rời xa
Thế sao nụ cười tươi xinh đẹp giờ trên môi của em đâu rồi
Kể hết cho anh về những buồn đau nơi con tim em giấu
Về cả những mẩu chuyện những luận điểm trong tâm tư em đang tranh đấu.
Em bước vào đời non nớt, cứ tưởng rằng cuộc sống sẽ màu hồng.
Nhưng mà không sao đâu bởi vì khi bên anh em sẽ thấy cầu vồng.
Anh không cho em nhiều tiền thật nhiều phiền như mấy thằng kia đâu.
Nhưng có trái tim nồng ấm vài dòng rap 2 chúng mình chia nhau.
Thật nhiều phiền như mấy thằng kia đâu.
Nhưng có trái tim nồng ấm vài dòng rap...
Đôi mắt em nhìn xa xăm tuyệt vọng lấp đầy.
Anh không thể chê em béo vì giờ thật sự em rất gầy.
Em làm tri kỷ với điếu thuốc lá, đôi khi là điếu k.
Em kẹt vào trong vòng xoáy luấn quấn không có lối ra.
Em kể rằng em yêu anh ta tạm gọi là tình yêu mù quáng.
Anh ta có những cuộc chơi tới 2h sáng.
Tất nhiên là không phải với em!
Với những cô nàng có hàng to bự!
Anh khuyên em nên bỏ anh ta và không cần do dự.
Em khẽ gật đầu rối gục hẳn xuống vai anh
Cùng lúc đấy điếu 3 số trên tay em cháy rồi nó phai nhanh.
Cùng lúc anh nhận ra rằng
Không phải cứ trao đi yêu là cái từ thương kia nhận được.
Tình yêu đôi khi giống trò may rủi nó không theo ý ta đặt cược.
Ngủ sớm đi em! Rồi ngày mai sẽ khác.
Những giọt sương của tôi hôm nay sẽ không vương trên khẽ mắt
Yêu anh ta thế cơ mà từng đã hứa sẽ không rời xa.
Thế sao nụ cười tươi xinh đẹp lại giờ trên môi của em đâu rồi
Kể hết cho anh về những buồn đau nơi con tim em giấu.
Về cả những mẩu chuyện những luận điểm trong tâm tư em đang tranh đấu.
Em bước vào đời non nớt, cứ tưởng rằng cuộc sống sẽ màu hồng.
Nhưng mà không sao đâu bởi vì khi bên anh em sẽ thấy cầu vồng.
Anh không cho em nhiều tiền thật nhiều phiền như mấy thằng kia đâu.
Nhưng có trái tim nồng ấm vài dòng rap...
Thật nhiều phiền như mấy thằng kia đâu.
Nhưng có trái tim nồng ấm và vài dòng rap...
Đến tận bây giờ thì anh mới dám nói ra lời yêu.
Nhưng mà việc trước tiên em phải làm là
Ngủ sớm đi em!')

insert into BAIHAT values (N'Love u so', 6, N'Wean', N'Tùng ft Wean', N'Love u so x3

Baby love u so

Love u more than i can say x2

Cause i love u so, love u so, love u so

Baby love u so

Love u more than i can say x2

Cause i

Thức dậy, mở mắt, chiếc TV còn mở tối qua cô ngỡ mình đã tắt (dream)

Giấc mơ kia êm đềm, tiếng mưa rơi bên thềm

Nhớ những lần hòa quyện, hình bóng hai ta hiện lên trên rèm

Cô giàu lòng trắc ẩn, đôi lúc thường giận bản thân

Cô thực sự không muốn cảm giác phải đứng lên trên cán cân

Giữa chuyện thích và cần, đánh mất mình vài lần

Luôn luôn bị chi phối bởi những âm thanh vang lên thật gần

Cô rất ghét loài người có thể phát điên vì thứ họ làm

Nhưng chưa bào giờ từ chối những người ăn xin trên phố lang thang

Hay suy nghĩ lan man và đôi khi lại nhất quán

Điều cô không thể thiếu là tách cafe cho mỗi buổi sáng, bắt đầu tâm hồn kia đầy sắc màu

Cô thật sự tin tưởng vào định nghĩa bắt cầu

Gieo nhân sẽ gặp quả báo, nhắc tôi phải luôn tỉnh táo

Giữa dòng đời luôn phỉnh láo

Đôi khi rất khó hiểu và đôi khi rất khó chiều

Nhưng một điều tôi tin cô gái như cô ngoài kia không có nhiều

Và nụ hôn ở trong thang máy

Trái Đất cứ thể quay

Ta vẫn sẽ ở đây, dù mọi thứ nết có đổi thay

Như là cuốn sách hayy chỉ dám đọc chậm vì không muốn thấy trang kết

Nếu một ngày mình dừng lại, baby xin em hãy cứ mang hết

Love u so x3

Baby love u so

Love u more than i can say x2

Cause i love u so, love u so, love u so

Baby love u so

Love u more than i can say x2

Cause i I love u so, mình đi cùng nhau về khi trời tối mờ

Love u so một câu được flow từ ban đầu tới giờ

Biết bao nhiêu lâu để nói hết

Let me do, me do it

Nghe con tim đang lên tiếng

Bao nhiêu lâu tâm tư đem viết

Vào giấy

Điều tôi thấy

I really wanna say it again

I LOVE U SO LOVE U SO x2

Baby i love u so (x2) Love u more than i can say

Love u so baby i love u so

Love u more than i can say x2

Một giất mơ cũ, vài lá thư và những cơn giông úa màu

Em ơi hãy ngủ để sớm mai như mọi thứ ta chưa bắt đầu

Và em lại hát khi mới tỉnh mơ, em lại khóc cho một bộ phim dở

Một mình chờ kiếm cớ cho tình nên thơ và tình cờ thấy anh đứng ngoài hiên cửa

Biến trái tim anh yêu không còn mùa vụ, mùi áo ta mặc trở thành mùi cũ

Món gà kho gừng trở thành đồ tủ, và tự nhủ mùa yêu đều là mùa thu

Con chim trên cành hát về tình yêu để dành mùa xa

Nhưng mà

Xa là chuyện xa, tình mình xa rồi lại qua

Và hai ta lại ngồi ca chuyện tình ta như hôm qua, thật mà..
')

insert into BAIHAT values (N'Không thích', 6, N'Low G', N'Low G', N'Và tao không thích rap về chuyện kiếm tiền
Vì tao không thích rap về chuyện hiển nhiên
Và tao không thích rap về chuyện công việc
Vì thằng nào chả phải lo công việc đầu tiên
Và tao không thích viết về chuyện cố gắng
Tao cũng không viết về anh em đi lên
Và tao không viết viết về chuyện đam mê từ con số không
Vì đối với tao câu chuyện đấy hơi sến
Vì nếu mày thật sự là người cố gắng
Mày sẽ thấy việc cố gắng nó khá mệt mỏi
Tao nghiện việc và ám ảnh cố gắng
Đến mức hết cả việc xong tao vẫn làm việc căng
Nên tao thích ra trà đá để thoát khỏi nó
Nghe thằng Chí sủa xong làm bi lào to
Câu chuyện nỗ lực của cliché tao không cần thứ đó
Bọn tao chỉ muốn rap dở hơi cho bớt đi phiền lo
Và tao không thích rap về chuyện kiếm tiền
Vì tao không thích rap về chuyện hiển nhiên
Và tao không thích rap về chuyện công việc
Vì thằng nào chả phải lo công việc đầu tiên
Và tao không thích viết về chuyện cố gắng
Tao cũng không viết về anh em đi lên
Và tao không thích viết về chuyện đam mê từ con số không
Vì đối với tao câu chuyện đấy hơi sến
Mẹ tao bảo với tao
Nhạc phải hướng đến chân mĩ thiện
Còn Orijinn nói rap phải truyền tải thông điệp
Tao tôn trọng họ
Đồng ý những thứ đó đều đúng
Nhưng cũng không có nghĩa là những thứ khác đều sai
Nếu vậy thì sao nghe bé Cường anh em cứ cười mãi
Còn NamCt để 9x hát Hút Pin dài dài
Chỉ là giải trí mọi người vui ai không hiểu thì tức
Mày gọi là rác nhưng tao gọi đấy năng lượng tích cực
Và tin tao
Ai cũng có một phần dở hơi trong mình
Ai cũng có một phần trẻ trâu vẫn còn ở trong đó
Và kể cả người có học thức hay là người thông minh
Cũng thỉnh thoảng muốn vứt não đi để nổi loạn vô lo
Nên tao thấy vui khi tao viết tao làm tao tự cười
Punchline không giống ai luôn serve lúc còn tươi
Tao đã chọn sống với anh em giống như một người hiền
Để tao được làm nhạc trên mic giống như một người điên
Nên tao không thích rap về chuyện kiếm tiền
Vì vốn chuyện đấy nó là việc hiển nhiên
Và tao không thích rap về chuyện công việc
Nghe nó quá nghiêm túc tao thì chỉ muốn chiến
Và tao không thích viết về chuyện cố gắng
Ai cũng rap cố gắng thì ai cũng như nhau
Và tao không thích viết đam mê từ số không
Vì tao đã trải qua chuyện đấy đấy là câu chuyện riêng của cuộc sống
Tao rời trường quay
Bỏ khăn và bỏ mũ
Tao bỏ con grillz trên răng
Bỏ đôi AF vào trong tủ
Tao tắt tạm wifi
Xỏ dép tông mặc quần đùi hoa
Đeo găng vào rửa bát sau khi tao ăn cơm với nhà
Và bố tao hiểu là kể cả tao nổi tiếng
Thì tao vẫn là tao
Vẫn đi cọ toilet và dọn nhà
Tao mua thêm máy lọc khí
Tivi mới robot hút bụi nhiều tiền
Nhưng vẫn không bù được thời gian
Công việc đẩy tao ra
Và thằng em tao buôn đồ một ngày bằng tao rap một tháng
Tao bắt nó phải bỏ sớm nó cần tương lai đoàng hoàng
Viết đến đây mới nhớ ra cần phải bảo Dương Fynn
Để anh góp tiền cao học cho em không muốn mình em kham
Và tao chỉ cần mua mỗi con BMW nếu tao giàu
Để tiền còn lại khao anh em ăn nem chua rán cùng nhau
Mày có thể ghét Low G khi nhạc tao quá mới
Nhưng đố mày ghét được Nguyễn Hoàng Long khi gặp tao ngoài đời
Khi ta ngồi xuống nói chuyện về công việc
Nhiều điều thú vị ngoài những điều hiển nhiên
Ta có thể nói về chuyện kiếm tiền
Tiền không phải tất cả nhưng cũng là chuyện phiếm
Và ta cũng có thể nói về chuyện cố gắng
Hồi mà đam mê là thế giới màu hồng
Nhưng tao chọn flex để được làm nghệ thuật
Vì tao vui với nó mày cũng hiểu đúng không')

insert into BAIHAT values (N'Đông kiếm em', 5, N'Vũ.', N'Vũ.', N'Tôi hát cho màu xanh mãi xanh
Cho một người lặng im biết yêu
Và tôi viết cho mùa yêu xốn xang
Cho một đời nhớ thương vẹn nguyên
Cô đơn đến thế
Mưa rơi lách tách kì cục đợi ai
Sâu trong ánh mắt
Tôi ngu ngơ mơ thời gian dừng trôi
Còn lại đây nhớ mong còn lại tôi với ai
Giờ này em chắc đang ngủ say
Hay là em còn đang khóc một mình
Như làn sương muộn màng
Lạc trong đêm con tim em lạc trong đêm
Lòng phiêu du nhớ em mùa thu đã đi qua
Đông kiếm em mùa đông kiếm em
Huh hah
Mùa đông kiếm em đông kiếm em
Tôi biết em sợ đông sẽ tan
Em lạ lùng gọi trong vô vọng
Và tôi nhớ ly cà phê sắp tan
Biết bao giờ là em sẽ về
Cô đơn đến thế
Mưa rơi lách tách kì cục đợi ai
Sâu trong ánh mắt
Tôi ngu ngơ mơ thời gian dừng trôi
Còn lại đây nhớ mong còn lại tôi với ai
Giờ này em chắc đang ngủ say
Hay là em còn đang khóc một mình
Như làn sương muộn màng
Lạc trong đêm con tim em lạc trong đêm
Lòng phiêu du nhớ em mùa thu đã đi qua
Đông kiếm em mùa đông kiếm em
Huh hah
Mùa đông kiếm em đông kiếm em
Còn lại tôi với ai
Còn lại bao nhớ mong
Giờ này em chắc đang ngủ say
')

insert into BAIHAT values (N'Tết tết tết', 4, N'Đỗ Phú Quí, Tiến Nguyễn', N'Đỗ Phú Quí', N'Xuân đã đến đây
Mai đào đang bừng lên bao nhựa sống dâng tràn
Xuân gieo ước mơ
Cho tình yêu đời ta bao lời hát bay xa

Khắp đất trời như giao hòa
Tiếng nô đùa, kìa trẻ thơ khoe áo mới
Tết năm nay, xin chúc người
Sẽ an lành, gặp thật nhiều điều may mắn vui tươi

Chorus :
Tết tết tết tết tết mọi nơi
Tết tết đến rộn vang ngàn muôn muôn tiếng cười
La la la Tết tết tết tết thật vui
Tết tết đến rộn vang ngàn muôn muôn tiếng ca')

insert into BAIHAT values (N'Xuân đã về', 4, N'Minh Kỳ', N'Đinh Hương', N'Xuân đã về, xuân đã về
Kìa bao ánh xuân về tràn lan mênh mông
Trên cánh đồng chim hót mừng
Đang thiết tha từng đàn cùng bay vui say
Xuân đã về, xuân đã về
Ngàn hoa hé môi cười tươi đón gió mới
Xuân đã về, xuân đã về
Ta hát vang lên câu ca mừng chào xuân

Ngoài trời bao la xinh tươi bao cô gái đẹp
Người trông xinh như hoa
Lập lòe tà áo xanh xanh chen bông tím vàng
Đẹp hơn tiên nga
Vài bầy em bé ríu rít, khúc khích tiếng cười
Rủ nhau vui ca
Từng đàn chim non xinh xinh tung bay khắp trời
Cùng ríu rít ca

Một bài ca đón chào mừng
Hòa theo tiếng pháo đì đùng
Mừng xuân nay đã về rồi
Và mùa đông vừa qua
Ngập trời bao tiếng chào mừng
Nàng xuân duyên dáng về rồi
Về gieo bao thắm tươi vui
Lòng ta thấy yêu đời

Xuân đã về, xuân đã về
Kìa bao ánh xuân về tràn lan mênh mông
Xuân đã về trên cánh đồng
Bao bác nông dân cày ruộng vui sang xuân
Xuân đã về, xuân đã về
Ngàn cô gái quê cười tươi đón gió mới
Xuân đã về, xuân đã về
Ta hát vang lên câu ca mừng chào xuân')

insert into BAIHAT values (N'Ngày xuân long phụng sum vầy', 4, N'Quang Huy', N'V.A', N'Mừng tết đến và lộc đến nhà nhà
Cánh mai vàng , cành đào hồng thắm tươi
Chúc cụ già được sống lâu, sống thọ
Cùng con cháu sang năm lại đón tết sang
Và kính chúc người người sẽ gặp lành
Tết sau được nhiều lộc hơn tết nay
Tết đến đoàn tụ cùng ở bên bếp hồng
Và nồi bánh chưng xanh chào xuân đang sang
Cánh én nơi nơi
Khắp phố người cùng đi hái lộc
Đẹp xinh đất trời
Màu áo trắng tung bay cùng muôn ngàn hoa
Trong tiếng trống xuân
Long phụng về đây sum vầy
Phát lộc tài ở khắp nơi, phố phường
Một năm mới an khang, bình an bên nhau ')

insert into BAIHAT values (N'Em dạo này', 5, N'Ngọt', N'Ngọt', N'Vẫn những câu hỏi nhỏ
Sau bao tháng chia ly
Anh vẫn thường thắc mắc
Khi anh không làm gì

Em dạo này có còn xem phim một mình
Em dạo này có đồ ăn và shopping
Ngày xuân em có xuống phố không người
Và tán dương cỏ cây lặng thinh

Em dạo này có đi xa cuối tuần
Em dạo này có gặp Vy và Xuân
Hàng đêm em có nghe hát xa xăm
Từ quán ăn phù du ngoài sân

Và tình yêu và tình yêu và tình yêu mới
Dạo này đã có khiến em cười
Và tiền tiêu và quần áo và đồ chơi mới
Xin nhớ thay nuông chiều làm ta lười hơn

(Và người yêu và người yêu và người yêu mới
Hay giờ này em đã có chồng rồi
Và tình yêu và buồn vui và kỳ lạ mới
Xin nhớ thay nuông chiều làm ta hồi xuân)

Anh dù không muốn tình cờ gặp lại nhau lần nữa
Nhưng em có đi trà đá Hồ Gươm?
Dạo này em có đi trà đá Hồ Gươm?')

insert into BAIHAT values (N'To the moon', 2, N'Hooligan', N'Hooligan', N'Wise man call me a crazy
Loving foolishly
Dream about you all the time
Everynight I fall asleep
Chasing and dreaming
Looking for your eyes Daisy!

I am the foolish Gatsby whos found drown in love
Cant you see my heart burning right through my hands?
Cos your smile lifts me above and beyond the blue sky
In the darkest moments here I still can see your eyes

Love you to the moon and back
I cant let you know this fact
Love you to the moon and back
Im so freaking missing you

Aim for the moon yet so far
I cant land among the stars
Love you to the moon and back
Im so freaking missing you

Ill never let my love get so close to you cos it hurts
Swear to God!
I wish I could

I am the foolish Gatsby whos found drown in love
Cant you see my heart burning right through my hands?
Cos your smile lifts me above and beyond the blue sky
In the darkest moments here I still can see your eyes

Love you to the moon and back
I cant let you know this fact
Love you to the moon and back
Im so freaking missing you

Aim for the moon yet so far
I cant land among the stars
Love you to the moon and back
Im so freaking missing you

Love you to the moon and back
I cant let you know this fact
Love you to the moon and back
Im so freaking missing you

Aim for the moon yet so far
I cant land among the stars
Love you to the moon and back
Im so freaking missing you')

insert into BAIHAT values (N'Phong', 2, N'VSTRA', N'VSTRA ft TGSN & Tyronee', N'Ooh yeah,
Ooh yeah, Ooh yeah
Ooh yeah,
Ooh yeah, Ooh yeah
Ooh yeah, Ooh yeah
(Okay Tyronee)
(TGSN)
Sex so good, makes me wanna come back all the time
You out of this town, I have tears down
Và em quen cô đơn mình em nhưng xa anh lại chẳng chịu được
Anh đừng đi, đừng để em một mình ở đây
Em mong anh quay lại ngay khi chân anh vừa kịp rời
Em muốn anh ở sau, và nói yêu không cần dùng lời
Cho em lấy lại hơi anh nhìn em ôm đầu vào lòng
We can do this all night
Em thích nhìn anh bước về nhà
Thế giới này là của mình mà
Mắt dán chặt vào chỗ trần nhà
Em đưa anh đi vào thế giới khác
Anh chưa biết được, anh chưa bao giờ thấy (yeah)
Em tạo ra cảnh cho anh nên nhận lấy (yeah)
Anh muốn em happy, đưa em vài tờ giấy (yeah)
Em làm xong việc, 1 phút 30 giây
Sex so good, makes me wanna come back all the time
You out of this town, I have tears down
Và em quen cô đơn mình em nhưng xa anh lại chẳng chịu được
Anh đừng đi, đừng để em một mình ở đây
Em mong anh quay lại ngay khi chân anh vừa kịp rời
Em muốn anh ở sau, và nói yêu không cần dùng lời
Cho em lấy lại hơi anh nhìn em ôm đầu vào lòng
We can do this all night
Em không quay đầu đi đâu, em chỉ muốn thấy
Hai ta yêu ở trong gương nồng say (yêu ở trong gương nồng say)
Em không tuân theo ai vậy đâu nhưng lúc ấy
Em chẳng thể nhớ ra những quy tắc em buộc mình
Sex so good, makes me wanna come back all the time
You out of this town, I have tears down
Và em quen cô đơn mình em nhưng xa anh lại chẳng chịu được
Anh đừng đi, đừng để em một mình ở đây
Em mong anh quay lại ngay khi chân anh vừa kịp rời
Em muốn anh ở sau, và nói yêu không cần dùng lời
Cho em lấy lại hơi anh nhìn em ôm đầu vào lòng
We can do this all night
Em đang lên cao, baby em đang lên cao
Hai mắt đã nhắm, em theo nhịp anh dẫn dắt
Dập dìu sóng vỗ ta xa bờ
Em đang lên cao, baby em đang lên cao
Và em muốn giữ anh trong tư thế này
Ở vị trí này, ở ngay lúc này, ở ngay tại đây
Thời gian đóng băng hai mắt em nhòe
Chưa ai làm việc này như cách anh làm
Fuck so good makes me wanna come back all the time (all the time)
You out of this town I have tears down
Và em quen cô đơn mình em nhưng xa anh lại chẳng chịu được
Anh đừng đi, đừng để em một mình ở đây (một mình ở đây)')

insert into BAIHAT values (N'Ngày còn em bên tôi', 4, N'Trầm Uyên Khanh', N'Cao Hoàng Nghi', N'Ngày còn em bên tôi đời là xuân với vạn câu cười...
Ngày còn em bên tôi trăm niềm vui nhớ thương hờn dỗi...
Ngày còn em bên tôi, ngày còn nghe yêu dấu lên môi...
Tiếng đẹp lời êm trên môi, có gì đẹp hơn em ơi !!!
Ngày còn em bên tôi là còn mơ với mộng trong đời...
Ngày còn em bên tôi trăng còn soi bước đôi về tối...
Ngày còn em bên tôi, ngày còn nghe câu hát lên khơi...
Gió lộng chiều ru chơi vơi, ước mộng tìm phút mê đời...
Ngày em...... đến bên tôi lần cuối mắt lệ nhòa tiếng phân ly,
khóc một lần cho mãi mãi... xa nhau từ đây thôi hết rồi mơ ước xưa...
Để rồi em xa tôi trời vào thu lá đổ ngập lòng...
Để rồi em xa tôi cho mùa đông tuyết dâng ngập lối...
Còn gì đây em ơi ! còn lại đây trong phút giây thôi...
Giữ đời lời cuối cho nhau kỷ niệm mình thuở ban đầu...')

insert into BAIHAT values (N'Vùng lá me bay', 4, N'Anh Việt Thanh', N'Dương Hồng Loan', N'Nhìn lá me bay, nhớ kỷ niệm hai chúng mình
Ngày đó quen nhau, vương chút tình trên tóc mây
Đôi mắt thơ ngây, hoa nắng ươm đầy
Đẹp tựa như lá me bay nên tình anh trót vay
Ngày đó yêu nhau, chúng ta thường qua lối này
Từng lá me bay vương gót hài, hoa bướm say
Tơ nắng đơm bông trên má em hồng
Đẹp tựa như lá me rơi, khung trời xanh ước mơ
Ta xa nhau lúc hè về rơi xác phượng buồn
Nẻo đường thành đô khói ngập trời, vùng luyến thương ơi
Một thu dâng cao, biết rằng người yêu đang mong
Xin hiểu giùm, lửa còn đốt cháy quê hương
Giờ đã xa nhau, những kỷ niệm xin vẫy chào
Vùng lá me bay, năm tháng dài thương nhớ ai
Anh cố quên đi, thương nhớ làm gì?
Tình mình như lá me rơi trên dòng xuôi biển khơi
Ngày đó yêu nhau, chúng ta thường qua lối này
Từng lá me bay vương gót hài, hoa bướm say
Tơ nắng đơm bông trên má em hồng
Đẹp tựa như lá me rơi, khung trời xanh ước mơ
Ta xa nhau lúc hè về rơi xác phượng buồn
Nẻo đường thành đô khói ngập trời, vùng luyến thương ơi
Một thu dâng cao, biết rằng người yêu đang mong
Xin hiểu giùm, lửa còn đốt cháy quê hương
Giờ đã xa nhau, những kỷ niệm xin vẫy chào
Vùng lá me bay, năm tháng dài thương nhớ ai
Anh cố quên đi, thương nhớ làm gì
Tình mình như lá me rơi trên dòng xuôi biển khơi
Tình mình như lá me rơi trên dòng xuôi biển khơi
')

insert into BAIHAT values (N'Có đâu ai ngờ', 2, N'REDT', N'Cầm', N'Có đâu ai ngờ, một ngày tình cờ như giấc mơ
Biết đâu bất ngờ một ngày nào đời như ý thơ
Ước mong anh về lại
Tựa nắng chiếu lên ngày mai ai ngờ ngang trái
Gió đưa anh về nơi sớm mai

Vers :
Có những lúc bên anh không buồn
lắm lúc hờn ghen
Chớm mới tinh mơ mà cứ như quen rồi
Thế giới có bao người
Thấy nhau đã là duyên lắm rồi
Trái đất xoay vòng 
Gặp ai cũng giống anh
 
Pre-chorus:
Và vì sao lại thế anh
Vì sao đánh mất nhau 
Vì sao sau nỗi đau cố hàn gắn như chẳng bền lâu
Đọng lại trong nhau 1 từ ‘ nhớ ‘
Để gặp lại mình bất ngờ
Ngắm thu qua chiều đông mà lòng chẳng mơ 

Chorus:
Có đâu ai ngờ, một ngày tình cờ như giấc mơ
Biết đâu bất ngờ một ngày nào đời như ý thơ
Ước mong anh về lại
Tựa nắng chiếu lên ngày mai ai ngờ ngang trái
Gió đưa anh về nơi sớm mai

Vers2:
Vẫn cứ mơ, từng ngày đêm
Chẳng dám cơ, sợ người quên
Những ý thơ
Giờ cũng chẳng có gì bất ngờ.
Just wanna be okey
Nắm chắc lấy tay em đi mah boy
Dù chẳng bên cạnh vẫn mong chờ
Một ngày mình thành thơ 

Pre-chorus:
Vì sao lại thế anh
Vì sao đánh mất nhau 
Vì sao sau nỗi đau cố hàn gắn như chẳng bền lâu
Đọng lại trong nhau một từ ‘ nhớ ‘
Để gặp lại mình bất ngờ
Ngắm thu qua chiều đông mà lòng chẳng mơ 

Chorus:
Và có đâu ai ngờ, một ngày tình cờ như giấc mơ
Biết đâu bất ngờ một ngày nào đời như ý thơ
Ước mong anh về lại
Tựa nắng chiếu lên ngày mai ai ngờ ngang trái
Gió đưa anh về nơi sớm mai

Coda :
Em đưa anh đôi bàn tay mà sao không níu lấy
Em đưa anh đôi bờ môi mắt nai nhưng rồi nào hay
Tận sau em chơi vơi
Tình yêu đâu có 2 lời
Từng phút bên anh mà sao chờ đợi mãi thôi

Chorus:
Có đâu ai ngờ, một ngày tình cờ như giấc mơ
Biết đâu bất ngờ một ngày nào đời như ý thơ
Ước mong anh về lại
Tựa nắng chiếu lên ngày mai ai ngờ ngang trái
Gió đưa anh về nơi sớm mai
')

insert into BAIHAT values (N'Ánh sao và bầu trời', 2, N'T.R.I', N'T.R.I x Cá', N'Chưa bao giờ tôi thấy, em cười nhiều như hôm nay
Chưa bao giờ tôi thấy, mắt em long lanh thế này
Em say mê nói về anh ta, về cuộc hẹn hò ngày hôm qua
Người mà luôn làm em ngạc nhiên với những món quà
Ngỡ như rằng mình sẽ vui, khi em nói có người mới
Thế nhưng trong lòng chơi vơi, con tim vỡ ra thành trăm mảnh rồi
Chỉ là một giây buông tay, giờ đành lỡ nhau, cả một đời
Em có thêm một ánh sao, tôi mất bầu trời
Muốn nói tôi vẫn còn yêu (em)
Muốn giữ lấy đôi bờ vai (em)
Muốn nói em ơi đừng đi, đừng đi về nơi có anh ta đang đứng chờ
Muốn nắm tay em một lần (nữa)
Cùng quay về lại con phố (xưa)
Nụ hôn đầu tiên mình trao dưới mưa em đã quên chưa?
Em, em đừng bao giờ khóc
Hãy hạnh phúc nhé xin đừng khóc sẽ có người luôn làm em mỉm cười
Còn điều gì đọng lại ở tim anh
Dù mọi chuyện giờ đã qua nhanh anh sẽ cố giữ cố giữ
Dù rất muốn nói ra
Anh rất nhớ em đêm ngày chẳng thể nào ngủ được
I really really miss you babe
Ngỡ như rằng mình sẽ vui, khi em nói có người mới
Thế nhưng trong lòng chơi vơi, con tim vỡ ra thành trăm mảnh rồi
Chỉ là một giây buông tay, giờ đành lỡ nhau, cả một đời
Em có thêm một ánh sao, tôi mất bầu trời
Muốn nói tôi vẫn còn yêu (em)
Muốn giữ lấy đôi bờ vai (em)
Muốn nói em ơi đừng đi, đừng đi về nơi có anh ta đang đứng chờ
Muốn nắm tay em một lần (nữa)
Cùng quay về lại con phố (xưa)
Nụ hôn đầu tiên mình trao dưới mưa em đã quên chưa?
Mong cho em luôn vui và cười như lúc này
Dù anh sẽ chẳng ở mãi bên em
Vì giờ đã có người thay thế anh
Xin người kia sẽ chẳng để lệ rơi mắt em
Sẽ luôn thật quan tâm em
')

insert into BAIHAT values (N'Em là', 2, N'Mono', N'Mono', N'Yeah
Oh oh
Muốn mãi ở bên em đôi ta chẳng xa rời yah
Những góc phố nơi đôi ta từng qua
Sẽ vẫn mãi nơi đây không rời xa
Liệu bình minh sớm mai ánh mặt trời lên có em kề bên cùng ấm êm
Cứ nghĩ sau này em và anh sẽ yên bình đến già
Kiếp sống vô thường em đã hoá tro tàn eh woh
Em nơi kia mỉm cười đầy thiết tha
Anh nơi đây ngồi đàn và hát ca
Ngay gần mà đâu có xa
Linh hồn mình thuộc về nhau
Đôi tay anh luôn giữ em chặt
Dù cho cơn giông đã cuốn em đi woh
Uh em là tia tia tia nắng trong anh
Uh em là tiên tiên tiên nữ trong anh
Dẫu nắng hay mưa ta vẫn mãi như xưa
Uh woh uh woh yeah
Baby em là bông hoa xinh tươi lung linh giữa trời bao la
Đôi môi êm dịu ngọt ngào như đoá hồng
Trao cho anh đi một nụ hôn thắm nồng yeah
Lá thư yêu thương ngập tràn
Nhờ gió mây mang qua cho nàng
Gửi đến nơi mênh mông muôn ngàn
Tình mình tình mình (tình mình đẹp như trong giấc mơ)
Em nơi kia mỉm cười đầy thiết tha
Anh nơi đây ngồi đàn và hát ca
Ngay gần mà đâu có xa
Linh hồn mình thuộc về nhau
Đôi tay anh luôn giữ em chặt
Dù cho cơn giông đã cuốn em đi uh woh
Uh em là tia tia tia nắng trong anh
Uh em là tiên tiên tiên nữ trong anh
Dẫu nắng hay mưa ta vẫn mãi như xưa
Uh woh uh woh
Uh em là tia tia tia nắng trong anh
Uh em là tiên tiên tiên nữ trong anh
Dẫu nắng hay mưa ta sẽ vẫn mãi như xưa
Uh woh uh woh oh yeah')

insert into BAIHAT values (N'Bên trên tầng lầu', 1, N'Tăng Duy Tân', N'Tăng Duy Tân', N'Em ơi đừng khóc bóng tối trước mắt sẽ bắt em đi
Em ơi đừng lo, em ơi đừng cho tương lai vụt tắt
Sâu trong màu mắt có chút tiếc nuối phút cuối chỉ vì
Em đâu hề sai, em đâu thể mãi để trái tim đau
Không còn tương lai, em cũng chẳng còn thương ai
Sau bao niềm đau em mong rằng con tim em dừng lại
Nỗi nhớ này lâu phai, nhốt em trong một lâu đài
Lâu đài của những cơn đau bất tận
Vì sao em phải khóc?
Có đáng để buồn đâu?
Tình yêu như cơn lốc
Thoáng phút chốc lướt qua thật mau
Vì sao em phải khóc?
Có đáng để buồn đâu?
Rượu kề môi em nốc
Thoáng phút chốc đã vơi u sầu
Vì sao em phải khóc
Vì sao em phải khóc
Buông bàn tay để chấm hết
Tất cả thứ làm em buồn
Bao gồm cả cuộc đời của em
Em à cho dù có khóc
Cũng sẽ đến ngày phải quên
Thiên đường vẫn chờ ngày em đến
Không còn tương lai, em cũng chẳng còn thương ai
Sau bao niềm đau em mong rằng con tim em dừng lại
Nỗi nhớ này lâu phai, nhốt em trong một lâu đài
Lâu đài của những cơn đau bất tận
Vì sao em phải khóc?
Có đáng để buồn đâu?
Tình yêu như cơn lốc
Thoáng phút chốc lướt qua thật mau
Vì sao em phải khóc?
Có đáng để buồn đâu?
Rượu kề môi em nốc
Thoáng phút chốc đã vơi u sầu
Vì sao em phải khóc
Vì sao em phải khóc')

insert into BAIHAT values (N'Chết trong em', 5, N'Thịnh Suy', N'Thịnh Suy', N'Ở trong góc tường có tôi
Ở nơi cuối đường có ai không
Đời trôi quá dài mất em
Thời như đứng lại ngó xem tôi đang lặng im một mình
Ôm lấy hết cô đơn như trong đời ta
Hah
Chết trong tôi một phần tim thao thức
Chết trên môi một mùi hương chưa dứt
Chết theo em bầu trời sấm chớp mây đen
Chết trong em một niềm tin chôn giấu
Chết trong tôi một phần tim nung nấu
Chết trong đêm và tình mãi chết trong đêm
Tình như khúc nhạc xót xa
Trong đêm tối lặng
Mắt ta đang nơi lặng im một mình
Ôm lấy hết cô đơn như trong đời ta
Hah
Chết trong tôi một phần tim thao thức
Chết trên môi một mùi hương chưa dứt
Chết theo em bầu trời sấm chớp mây đen
Chết trong em một niềm tin chôn giấu
Chết trong tôi một phần tim nung nấu
Chết trong đêm và tình mãi chết trong đêm
Hah hah hah hah
Hah hah hah hah')

insert into BAIHAT values (N'Vaicaunoicokhiennguoithaydoi', 2, N'Grey-D', N'Grey-D, TLinh', N'Thức thâu đêm để nghĩ suy về em nhiều
Thật ra có những điều
Làm cho anh không yên được giấc
Bấy lâu ta không nói nhau một câu nào
Chờ dòng tin nhắn chào
Trở lại cảm giác như lúc trước
Có phải vì anh
Vẫn thường vô ý
Chẳng suy nghĩ, vài lần khiến em u sầu
Có phải vì anh
Trót vài câu nói
Chạm vào nơi niềm đau mà người luôn chôn giấu
Vài câu nói có khiến người thay đổi?
Có khiến bờ môi ấm êm?
Nay chỉ còn trong nỗi nhớ
Vài câu nói kéo đến màu u tối
Cuốn hết bình yên lúc xưa bên cạnh nhau
Mãi đi xa để mình ta trong căn phòng
Cùng nước mắt trong lòng
Yeah
Chẳng còn giọt nước mắt nào cho em rơi
Cũng chẳng còn gì tha thiết để nói nên lời
Sẽ chỉ mang đến thêm u sầu
Làm dấu yêu phai màu
Chẳng biết ta phải đi về đâu
Giờ thì lời xin lỗi còn kịp thời?
Làm sao khi cảm xúc em nguội rồi?
Bao nhiêu lần như thế rồi
Không còn cơ hội nào cho anh nữa đâu
Tổn thương nhau bấy nhiêu đây thôi
Có phải vì anh (cũng tại vì anh)
Vẫn thường vô ý
Làm em rối trí
Ngày đêm tối nghĩ suy
Vậy mà người vô tâm nào biết gì đâu
Có phải vì anh (vì anh)
Trót vài câu nói
Chạm vào nơi niềm đau mà người luôn chôn giấu
Vài câu nói có khiến người thay đổi?
Có khiến bờ môi ấm êm?
Nay chỉ còn trong nỗi nhớ (còn trong nỗi nhớ)
Vài câu nói kéo đến màu u tối
Cuốn hết bình yên lúc xưa bên cạnh nhau
Mãi đi xa để mình ta trong căn phòng (trong căn phòng)
Vì dòng cảm xúc không thể trở về như lúc ta vừa bắt đầu
Và sẽ như thế nào nếu bỏ lại ngày tháng đã từng với nhau?
Một vài câu nói vô tình đẩy lùi mọi thứ về thì quá khứ
Baby I just wanna say Im sorry
Mình ta trong căn phòng')

insert into BAIHAT values (N'Chuyện đôi ta', 2, N'Emcee L', N'Emcee L', N'Những cơn sóng xô lâu đài vỡ trong bóng đêm
Nỗi đau cứ như đang vội ghé thăm trái tim
Chiều hoàng hôn kéo theo mây đen về
Phủ kín trong tâm tư bóng hình em hoh
Ánh trăng dần khuất sau khu rừng
Chạy theo sau lưng anh ký ức không thể quên
Vì sau cơn mưa đêm qua
Không ai nhắc về chuyện đôi ta
Em vội vàng khoá con tim em trong một giây
Giọt sương nhẹ rớt theo cơn gió thu vội bay
Tình yêu chạy đến chân trời xa phút chốc đã khiến em gục ngã oh oh
Tựa lưng vào gốc cây chênh vênh em có thấy
Mây trời như cũng đã thành đôi (đã thành đôi)
Thôi đành cất những ký ức bên nhau xem như quên đi mối tình đầu
Uh
Những cơn sóng xô lâu đài vỡ trong bóng đêm
Nỗi đau cứ như đang vội ghé thăm trái tim
Chiều hoàng hôn kéo theo mây đen về
Phủ kín trong tâm tư bóng hình em hoh
Ánh trăng dần khuất sau khu rừng
Chạy theo sau lưng anh ký ức không thể quên
Vì sau cơn mưa đêm qua
Không ai nhắc về chuyện đôi ta
Kết bộ phim em rời đi mang theo chút nắng tàn phai
Xoã làn tóc cúi mặt khóc đâu cần thiết biết chuyện mai
Đôi mắt đen nhoè dần cánh tay gạt vội nước mắt rơi
No no no
Soạn vài dòng tin nhắn rồi đốt đi khung hình
Dậm vào màu son mới em cất bước đi
Giữa phố đông người nhưng nỗi cô đơn vẫn cuộn chặt vào em
Nana
Những cơn sóng xô
Vỡ trong bóng đêm
Hoàng hôn kéo theo mây đen về
Phủ kín trong tâm tư bóng hình em
Ánh trăng dần khuất sau khu rừng
Chạy theo sau lưng anh ký ức không thể quên
Vì sau cơn mưa đêm qua
Không ai nhắc về chuyện đôi ta
Những cơn sóng xô lâu đài vỡ trong bóng đêm
Nỗi đau cứ như đang vội ghé thăm trái tim
Chiều hoàng hôn kéo theo mây đen về
Phủ kín trong tâm tư bóng hình em hoh
Ánh trăng dần khuất sau khu rừng
Chạy theo sau lưng anh ký ức không thể quên
Vì sau cơn mưa đêm qua
Không ai nhắc về chuyện đôi ta (chuyện đôi ta chuyện đôi ta huh)
')

insert into BAIHAT values (N'Dự báo thời tiết hôm nay mưa', 2, N'Grey-D', N'Grey-D', N'Tiếng mưa rơi bên ngoài ô kính anh nhìn ra
Tiếng mưa như đang nhìn thấu tâm tình ta
Nhành hoa hướng dương kia nhạt đi, một màu hoa khác không như mọi khi
Hoặc chỉ là do tiếng mưa rơi làm cảm giác ta như vậy thôi?
Tiếng mưa rơi bên ngoài ô kính trong chiều nay
Sắp tan ca rồi nhưng làm sao đón em về đây?
Vì anh biết em sẽ làm ngơ, bỏ mặc anh dưới mưa ôm mộng mơ
Rồi cùng người yêu mới lạnh lùng đi về phía xa mờ
Mặt trời chẳng còn cần thiết
Chỉ một người biết làm điều gì để mưa hết rơi
Và bài nhạc buồn này được viết bởi một gã si tình
Liệu rằng giờ này người mới
Đường về lạnh có thay cho em chiếc áo khi mưa ướt đôi vai?
Rồi nhẹ nhàng đặt một nụ hôn vào làn môi đã từng là của anh
Hết thứ hai ngày lại đến thứ ba
Gió cứ bay, dòng người vẫn cứ qua
Phố sẽ đông vì trời có nắng mai
Còn những lúc mưa ngoài đường chẳng có ai, woah
Những hạt mưa trên cây vẫn còn lay động
Ly rượu vang ở trên tay anh còn cay nồng
Mọi thứ vẫn cứ thế đêm ngày xoay vòng
Vì sao chỉ có mỗi em là thay lòng?
Ooh, mây màu đen ngoài ô cửa kính che từng ngôi nhà
Ooh, view này anh thường hay ngồi chill, em thì pha trà ấm
Căn phòng hai người yên bình lắm
Chúng ta thường ra ngồi đây và ngắm mưa
Nhưng giờ đâu còn nữa đâu
Mặt trời chẳng còn cần thiết
Chỉ một người biết làm điều gì để mưa hết rơi
Và bài nhạc buồn này được viết bởi một gã si tình
Liệu rằng giờ này người mới
Đường về lạnh có thay cho em chiếc áo khi mưa ướt đôi vai?
Rồi nhẹ nhàng đặt một nụ hôn vào làn môi đã từng
Anh đã từng nghĩ suốt cuộc đời này em chỉ trao mình anh mà thôi
Liệu rằng giờ này người mới
Đường về lạnh có thay cho em chiếc áo khi mưa ướt đôi vai?
Rồi nhẹ nhàng đặt một nụ hôn
Vào làn môi đã từng là của riêng mình anh thôi')

insert into BAIHAT values (N'Waiting for you', 2, N'Mono', N'Mono', N'Chiều đang dần buông hạt mưa rơi xuống không gian lắng yên
Suy tư vấn vương ngồi mộng mơ
Đơn phương nhớ đến một nàng thơ
Gió đông ùa về mang những ê chề (woh)
Ngỡ là trái tim khô cằn héo úa sẽ thôi buồn đau
Nhưng thật cay đắng khi biết là (ú oà)
Mình chỉ là một người đến sau (hey)
Biết em đã có người ở gần bên
Nhưng anh sẽ vẫn đứng ngay đây và chờ em
Mưa giông bão tố chẳng quan tâm đến ngày đêm
Kẻ si tình này chọn ở phía sau thầm nhớ mong em bae bae
Vì say mê ánh mắt yêu luôn cả bờ môi
Muốn nói với cả thế giới chỉ thương em mà thôi
Đắm đuối uh cháy lên ngọn lửa tình yêu
Bùng lên mạnh mẽ và thiêu đốt baby that’s what I feel
My girl I’m waiting for you
Một bông hồng xinh tươi thắm huh trông em kiêu sa
Đôi chân thướt tha mặn mà (uh)
Hương thơm miên man dịu dàng (uh)
Dáng duyên nụ cười say đắm yêu người
Ngỡ là trái tim khô cằn héo úa sẽ thôi buồn đau
Nhưng thật cay đắng khi biết là (ú oà)
Mình chỉ là một người đến sau (hey)
Biết em đã có người ở gần bên
Nhưng anh sẽ vẫn đứng ngay đây và chờ em
Mưa giông bão tố chẳng quan tâm đến ngày đêm
Kẻ si tình này chọn ở phía sau thầm nhớ mong em bae bae
Vì say mê ánh mắt yêu luôn cả bờ môi
Muốn nói với cả thế giới chỉ thương em mà thôi
Đắm đuối uh cháy lên ngọn lửa tình yêu
Bùng lên mạnh mẽ và thiêu đốt baby that’s what I feel
My girl I’m waiting for you
I’m waiting for you (oh oh)
I’m waiting for you (oh oh)
Chờ em về đây với anh
Mình cùng đan bàn tay
Ấm áp bao đêm ngày
Yeah
Chờ em chờ em ừ thì chờ em
Chờ em chờ em chờ đến bao giờ
Biển khô cạn trời không còn đầy sao
Thì anh vẫn nơi đây và chờ em
Biết em đã có người ở gần bên
Nhưng anh sẽ vẫn đứng ngay đây và chờ em
Mưa giông bão tố chẳng quan tâm đến ngày đêm
Kẻ si tình này chọn ở phía sau thầm nhớ mong em bae bae
Vì say mê ánh mắt yêu luôn cả bờ môi
Muốn nói với cả thế giới chỉ thương em mà thôi
Đắm đuối uh cháy lên ngọn lửa tình yêu
Bùng lên mạnh mẽ và thiêu đốt baby that’s what I feel
My girl I’m waiting for you')

Go
CREATE FUNCTION [dbo].[fuConvertToUnsign1] ( @strInput NVARCHAR(4000) ) 
RETURNS NVARCHAR(4000) 
AS 
BEGIN 
IF @strInput IS NULL 
RETURN @strInput 
IF @strInput = '' 
RETURN @strInput 
DECLARE @RT NVARCHAR(4000) 
DECLARE @SIGN_CHARS NCHAR(136) 
DECLARE @UNSIGN_CHARS NCHAR (136) 
SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệế ìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵý ĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍ ÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' +NCHAR(272)+ NCHAR(208) 
SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeee iiiiiooooooooooooooouuuuuuuuuuyyyyy AADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIII OOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD' 
DECLARE @COUNTER int 
DECLARE @COUNTER1 int 
SET @COUNTER = 1 
WHILE (@COUNTER <=LEN(@strInput)) 
BEGIN 
SET @COUNTER1 = 1 
WHILE (@COUNTER1 <=LEN(@SIGN_CHARS)+1) 
BEGIN 
IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@strInput,@COUNTER ,1) ) 
BEGIN 
IF @COUNTER=1 
SET @strInput = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)-1) 
ELSE 
SET @strInput = SUBSTRING(@strInput, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)- @COUNTER) 
BREAK 
END 
SET @COUNTER1 = @COUNTER1 +1 
END 
SET @COUNTER = @COUNTER +1 
END 
SET @strInput = replace(@strInput,' ','-') 
RETURN @strInput 
END
