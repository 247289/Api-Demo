CREATE DATABASE ApiDemo
go

USE ApiDemo
GO

CREATE TABLE Lop(
	malop INT IDENTITY PRIMARY KEY,
	tenlop NVARCHAR(50)
);
go
CREATE TABLE SinhVien(
	masv INT IDENTITY PRIMARY KEY,
	tensv NVARCHAR(100),
	quequan NVARCHAR(100),
	malop INT REFERENCES dbo.Lop(malop)

);

GO
CREATE TABLE MonHoc(
	mamon INT IDENTITY PRIMARY KEY,
	tenmon NVARCHAR(100)

);

GO

CREATE TABLE NamHoc(
	manamhoc INT IDENTITY PRIMARY KEY,
	namhoc VARCHAR(50)
	);
go
CREATE TABLE Diem(
	
	masv int REFERENCES dbo.SinhVien(masv),
	mamon INT REFERENCES dbo.MonHoc(mamon),
	manamhoc INT REFERENCES dbo.NamHoc(manamhoc),
	diem FLOAT

	PRIMARY KEY(masv,mamon,manamhoc)
);


go
INSERT dbo.Lop VALUES  ( N'MMT14' )
INSERT dbo.Lop VALUES  ( N'CNTT14' )
INSERT dbo.Lop VALUES  ( N'CNPM14' )

GO
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Lương1',  N'Tây Hồ',  1  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Hòa1',  N'Tây Hồ',  1  )
INSERT dbo.SinhVien VALUES  ( N'Trần Đức Lương1',  N'Tây Hồ',  1  )
INSERT dbo.SinhVien VALUES  ( N'Phạm Đức Phú1',  N'Tây Hồ',  1 )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Thị Hoa1',  N'Tây Hồ',  1  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Chí1',  N'Tây Hồ',  1  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Văn Công1',  N'Tây Hồ',  1  )
INSERT dbo.SinhVien VALUES  ( N'Hoàng Đức Duy1',  N'Tây Hồ',  1  )

INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Lương2',  N'Tây Hồ',  2  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Hòa2',  N'Tây Hồ',  2  )
INSERT dbo.SinhVien VALUES  ( N'Trần Đức Lương2',  N'Tây Hồ',  2  )
INSERT dbo.SinhVien VALUES  ( N'Phạm Đức Phú2',  N'Tây Hồ',  2 )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Thị Hoa2',  N'Tây Hồ',  2  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Chí2',  N'Tây Hồ',  2  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Văn Công2',  N'Tây Hồ',  2  )
INSERT dbo.SinhVien VALUES  ( N'Hoàng Đức Duy2',  N'Tây Hồ',  2  )


INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Lương3',  N'Tây Hồ',  3  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Hòa3',  N'Tây Hồ',  3  )
INSERT dbo.SinhVien VALUES  ( N'Trần Đức Lương3',  N'Tây Hồ',  3  )
INSERT dbo.SinhVien VALUES  ( N'Phạm Đức Phú3',  N'Tây Hồ',  3 )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Thị Hoa3',  N'Tây Hồ',  3  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Đức Chí3',  N'Tây Hồ',  3  )
INSERT dbo.SinhVien VALUES  ( N'Nguyễn Văn Công3',  N'Tây Hồ',  3  )
INSERT dbo.SinhVien VALUES  ( N'Hoàng Đức Duy3',  N'Tây Hồ',  3  )



GO

INSERT dbo.MonHoc VALUES  ( N'Toán'  )

INSERT dbo.MonHoc VALUES  ( N'Văn'   )
-- create nam hoc 2 nam hoc 
go
INSERT dbo.NamHoc VALUES  ( '2015-2016'   )
INSERT dbo.NamHoc VALUES  ( '2016-2017'    )
GO

-- thêm điểm
-- mã sv

-- set hết cho môn 1 năm học 1
INSERT dbo.Diem VALUES  ( 1,  1,  1,  2.3  )
INSERT dbo.Diem VALUES  ( 2,  1,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 3,  1,  1,  4.3  )
INSERT dbo.Diem VALUES  ( 4,  1,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 5,  1,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 6,  1,  1,  7.3  )
INSERT dbo.Diem VALUES  ( 7,  1,  1,  8.3  )
INSERT dbo.Diem VALUES  ( 8,  1,  1,  9.3  )
INSERT dbo.Diem VALUES  ( 9,  1,  1,  1.3  )
INSERT dbo.Diem VALUES  ( 10,  1,  1,  2.3  )
INSERT dbo.Diem VALUES  ( 11,  1,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 12,  1,  1,  4.3  )
INSERT dbo.Diem VALUES  ( 13,  1,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 14,  1,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 15,  1,  1,  8.3  )
INSERT dbo.Diem VALUES  ( 16,  1,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 17,  1,  1,  8.3  )
INSERT dbo.Diem VALUES  ( 18,  1,  1,  2.3  )
INSERT dbo.Diem VALUES  ( 19,  1,  1,  8.3  )
INSERT dbo.Diem VALUES  ( 20,  1,  1,  8.3  )
INSERT dbo.Diem VALUES  ( 21,  1,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 22,  1,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 23,  1,  1,  2.3  )
INSERT dbo.Diem VALUES  ( 24,  1,  1,  5.3  )

-- set hết cho môn 2 năm học 1
INSERT dbo.Diem VALUES  ( 1,  2,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 2,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 3,  2,  1,  7.3  )
INSERT dbo.Diem VALUES  ( 4,  2,  1,  7.3  )
INSERT dbo.Diem VALUES  ( 5,  2,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 6,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 7,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 8,  2,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 9,  2,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 10, 2,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 11,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 12,  2,  1,  7.3  )
INSERT dbo.Diem VALUES  ( 13,  2,  1,  8.3  )
INSERT dbo.Diem VALUES  ( 14,  2,  1,  9.3  )
INSERT dbo.Diem VALUES  ( 15,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 16,  2,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 17,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 18,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 19,  2,  1,  6.3  )
INSERT dbo.Diem VALUES  ( 20,  2,  1,  3.3  )
INSERT dbo.Diem VALUES  ( 21,  2,  1,  5.3  )
INSERT dbo.Diem VALUES  ( 22,  2,  1,  1.3  )
INSERT dbo.Diem VALUES  ( 23,  2,  1,  2.3  )
INSERT dbo.Diem VALUES  ( 24,  2,  1,  1.3  )

-- set hết cho môn 1 năm học 2
INSERT dbo.Diem VALUES  ( 1,  1,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 2,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 3,  1,  2,  4.3  )
INSERT dbo.Diem VALUES  ( 4,  1,  2,  3.3  )
INSERT dbo.Diem VALUES  ( 5,  1,  2,  2.3  )
INSERT dbo.Diem VALUES  ( 6,  1,  2,  7.4  )
INSERT dbo.Diem VALUES  ( 7,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 8,  1,  2,  5.3  )
INSERT dbo.Diem VALUES  ( 9,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 10,  1, 2,  7.3  )
INSERT dbo.Diem VALUES  ( 11,  1,  2,  4.3  )
INSERT dbo.Diem VALUES  ( 12,  1,  2,  5.3  )
INSERT dbo.Diem VALUES  ( 13,  1,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 14,  1,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 15,  1,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 16,  1,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 17,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 18,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 19,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 20,  1,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 21,  1,  2,  2.6  )
INSERT dbo.Diem VALUES  ( 22,  1,  2,  2.6  )
INSERT dbo.Diem VALUES  ( 23,  1,  2,  1.6  )
INSERT dbo.Diem VALUES  ( 24,  1,  2,  2.3  )

-- set hết cho môn 2 năm học 2
INSERT dbo.Diem VALUES  ( 1,  2,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 2,  2,  2,  3.3  )
INSERT dbo.Diem VALUES  ( 3,  2,  2,  3.3  )
INSERT dbo.Diem VALUES  ( 4,  2,  2,  2.3  )
INSERT dbo.Diem VALUES  ( 5,  2,  2,  9.7  )
INSERT dbo.Diem VALUES  ( 6,  2,  2,  5.7  )
INSERT dbo.Diem VALUES  ( 7,  2,  2,  8.3  )
INSERT dbo.Diem VALUES  ( 8,  2,  2,  4.3  )
INSERT dbo.Diem VALUES  ( 9,  2,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 10,  2, 2,  5.3  )
INSERT dbo.Diem VALUES  ( 11,  2,  2,  4.3  )
INSERT dbo.Diem VALUES  ( 12,  2,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 13,  2,  2, 8.3  )
INSERT dbo.Diem VALUES  ( 14,  2,  2,  6.3  )
INSERT dbo.Diem VALUES  ( 15,  2,  2,  4.3  )
INSERT dbo.Diem VALUES  ( 16,  2,  2,  2.3  )
INSERT dbo.Diem VALUES  ( 17,  2,  2,  4.3  )
INSERT dbo.Diem VALUES  ( 18,  2,  2,  2.3  )
INSERT dbo.Diem VALUES  ( 19,  2,  2,  8.3  )
INSERT dbo.Diem VALUES  ( 20,  2,  2,  8.3  )
INSERT dbo.Diem VALUES  ( 21,  2,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 22,  2,  2,  7.3  )
INSERT dbo.Diem VALUES  ( 23,  2,  2,  2.3  )
INSERT dbo.Diem VALUES  ( 24,  2,  2,  9.3  )




-- có 2 môn, có 2 năm học , khác mã sinh viên
/*
SELECT * FROM dbo.SinhVien 
SELECT * FROM dbo.Diem 
SELECT * FROM dbo.MonHoc
SELECT * FROM dbo.NamHoc
SELECT * FROM dbo.Lop
SELECT * FROM dbo.Diem,dbo.SinhVien WHERE Diem.masv=dbo.SinhVien.masv AND Diem.masv=2
*/

--- test sql  quert
GO
