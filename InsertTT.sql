
--Thêm cơ quan oranization ok--
INSERT INTO dbo.Organization (ID,Name,Address,Phone,Fax,Note,Email,StartDay,ExpiryDate,Status,SendEmail)VALUES('ORGANIZA', N'Công ty mới 1', N'Đường 30 tháng 4','03824352333','03824352332',N'Thông tin công ty','tanoscar2810@gmail.com',GETDATE(),3,1,0);
INSERT INTO dbo.Organization (ID,Name,Address,Phone,Fax,Note,Email,StartDay,ExpiryDate,Status,SendEmail)VALUES('ORGANIZB', N'Nhà trường mới 1', N'Đường 30 tháng 4','03824352333','03824352332',N'Thông tin nhà trường','tanoscar2810@gmail.com','4/13/2020',3,1,0);
--Thêm cơ quan oranization hết hạn--
INSERT INTO dbo.Organization (ID,Name,Address,Phone,Fax,Note,Email,StartDay,ExpiryDate,Status,SendEmail)VALUES('ORGANIZC', N'Công ty mới 2', N'Đường 30 tháng 4','03824352333','03824352332',N'Thông tin công ty','tanoscar2810@gmail.com','1/1/2020',3,1,0);
--Thêm cơ quan oranization còn hạn ngày bé hơn 30--
INSERT INTO dbo.Organization (ID,Name,Address,Phone,Fax,Note,Email,StartDay,ExpiryDate,Status,SendEmail)VALUES('ORGANIZD', N'Công ty mới 3', N'Đường 30 tháng 4','03824352333','03824352332',N'Thông tin công ty','tranminhtai365@gmail.com','3/13/2020',3,1,0);
--Thêm person congty1--
INSERT INTO dbo.Person(PersonID,RoleID,LastName,FirstName,Address,Phone ,Email,CompanyID) VALUES ('PERSONAA',2,N'Manager',N'mới 1',N'Đường 30 tháng 4','0382435233','tanoscar2810@gmail.com','ORGANIZA');	
--Thêm person nhatruong1--
INSERT INTO dbo.Person(PersonID,RoleID,LastName,FirstName,Address,Phone ,Email,CompanyID) VALUES ('PERSONAB',3,N'Trường',N'mới 1',N'Đường 30 tháng 4','0382435233','tanoscar2810@gmail.com','ORGANIZB');	
--Thêm person congty2 khóa--
INSERT INTO dbo.Person(PersonID,RoleID,LastName,FirstName,Address,Phone ,Email,CompanyID) VALUES ('PERSONAC',2,N'Manager',N'mới 2',N'Đường 30 tháng 4','0382435233','tanoscar2810@gmail.com','ORGANIZC');	
--Thêm person congty3 gửi email--
INSERT INTO dbo.Person(PersonID,RoleID,LastName,FirstName,Address,Phone ,Email,CompanyID) VALUES ('PERSONAD',2,N'Manager',N'mới 3',N'Đường 30 tháng 4','0382435233','tranminhtai365@gmail.com','ORGANIZD');	
--Thêm person leader congty2 khóa--
INSERT INTO dbo.Person(PersonID,RoleID,LastName,FirstName,Address,Phone ,Email,CompanyID) VALUES ('PERSONBC',4,N'Leader',N'mới 2',N'Đường 30 tháng 4','0382435233','tanoscar2810@gmail.com','ORGANIZC');
--Thêm user congty1 ok--
INSERT INTO dbo.Users(UserName,PersonID,PassWord,Status) VALUES ('congty1','PERSONAA','21232f297a57a5a743894a0e4a801fc3',1);	
--Thêm user congty2 khóa--
INSERT INTO dbo.Users(UserName,PersonID,PassWord,Status) VALUES ('congty2','PERSONAC','21232f297a57a5a743894a0e4a801fc3',1);	
--Thêm user leader congty2 khóa--
INSERT INTO dbo.Users(UserName,PersonID,PassWord,Status) VALUES ('leaderct2','PERSONBC','21232f297a57a5a743894a0e4a801fc3',1);	
--Thêm khóa học leader congty2 khóa--
INSERT INTO dbo.InternShip(InternshipID,CourseName,Note,PersonID,CompanyID,StartDay,ExpiryDate,Status) VALUES (21,N'Khóa học leader công ty 2',N'Khóa học','PERSONBC','ORGANIZC','3/10/2020',3,1);	
--Thêm khóa học congty1 khóa--
INSERT INTO dbo.InternShip(InternshipID,CourseName,Note,PersonID,CompanyID,StartDay,ExpiryDate,Status) VALUES (22,N'Khóa học leader công ty 1',N'Khóa học','PERSONAA','ORGANIZA','5/25/2020',3,1);	