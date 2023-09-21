Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);
/*1. Mã sinh viên, Họ sinh 
viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã 
sinh viên tăng dần 
*/
select MaSV, HoSV, TenSV, HocBong
from DMSV
order by MaSV ASC;
/*
 2．Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên, 
Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ
*/
select MaSV,CONCAT(HoSV, '', TenSV) as HoTenSV, Phai, NgaySinh
from DMSV
order by FIELD(Phai, 'Nam', 'Nữ');
/*
3.Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông 
tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần
*/
select concat(HoSV, '', TenSV), NgaySinh, HocBong
from DMSV
order by NgaySinh ASC, HocBong DESC;
/*
4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã 
môn, Tên môn, Số tiết
*/
select MaMH, TenMH, SoTiet
from DMMH
where TenMH like 'T%';
/*
5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm 
các thông tin: Họ tên sinh viên, Ngày sinh, Phái
*/
select concat(HoSV, '', TenSV) as HoTenSV, NgaySinh, Phai
from DMSV
WHERE RIGHT(TenSV, 1) = 'I';
/*
6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm 
các thông tin: Mã khoa, Tên khoa
*/
select MaKhoa, TenKHoa
from DMKhoa
where char_length(TenKhoa) >1 and substring(TenKhoa,2,1)='N';
/*
7. Liệt kê những sinh viên mà họ có chứa chữ Thị
*/
select*from DMSV where HoSV like '%THI%';
/*
8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các 
thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
được sắp xếp theo thứ tự Mã khoa giảm dần
*/
select MaSV, concat(HoSV, ' ',TenSV ) as HoTenSV, MaKhoa, HocBong
from DMSV
where HocBong > 100000
order by MaKhoa DESC;
/*
9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm 
các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng
*/
select *
from dmsv;
select sv.HoSV, sv.MaKhoa, sv.NoiSinh, sv.HocBong
from dmsv sv
where sv.HocBong >= 150000
  and sv.NoiSinh = 'Hà Nội';
/*
10. Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông 
tin: Mã sinh viên, Mã khoa, Phái.
*/
select *
from dmkhoa;

select sv.MaSV, khoa.MaKhoa, sv.Phai
from dmkhoa khoa
         join dmsv sv on khoa.MaKhoa = sv.MaKhoa
where khoa.TenKhoa = 'Anh Văn'
   or khoa.TenKhoa = 'Vật lý';
/*
11. Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày 
05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học 
bổng
*/
select MaSv, NgaySinh, NoiSinh, HocBong
from DMSV
where NgaySinh between '1991-01-01' AND '1992-06-05';
/*
12. Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các 
thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa
*/
select MaSV, NgaySinh,Phai,MaKhoa
from DMSV
where HocBong between  80000 and 150000;
/*
13. Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông 
tin: Mã môn học, Tên môn học, Số tiết
*/
select mh.MaMH, mh.TenMH, mh.SoTiet
from dmmh mh
where mh.SoTiet between 30 and 45;
/*
14. Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các 
thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái
*/
select dmsv.masv, concat(hosv," ",tensv) as "Họ tên sinh viên", dmk.tenkhoa, dmsv.phai
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where dmsv.phai = "Nam" and dmk.tenkhoa in ("Anh văn","tin học") ;
/*
    15.Liệt kê những sinh viên nữ, tên có chứa chữ N
*/
select *
from dmsv sv
where sv.Phai = 'Nữ'
  and sv.TenSV like '%N%';
  /*
16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các 
thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
*/
select sv.HoSV, sv.TenSV, sv.NoiSinh, sv.NgaySinh
from dmsv sv
where sv.NoiSinh = 'Hà Nội'
  and month(sv.NgaySinh) = 2;
  /*
    17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm:
    Họ tên sinh viên, Tuổi,Học bổng.
*/
select sv.HoSV, year(now()) - year(sv.NgaySinh) as 'Tuổi', sv.HocBong
from dmsv sv
where year(now()) - year(sv.NgaySinh) > 20;
/*
    18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm:
    Họ tên sinh viên, Tuổi, Tên khoa.

*/
select  concat(hosv," ",tensv) as "Họ tên sinh viên", (year(now())- year(ngaysinh)) as "Tuổi", dmk.tenkhoa
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where (year(now())- year(ngaysinh)) between 20 and 25 ;
/*
    19.Danh sách sinh viên sinh vào mùa xuân (Mùa xuân bắt đầu từ tháng 3 – và kết thúc tháng 5) năm 1990, gồm các thông tin:
    Họ tên sinh viên,Phái, Ngày sinh.
*/
select sv.HoSV, sv.Phai, sv.NgaySinh
from dmsv sv
where year(sv.NgaySinh) = 1990
  and month(sv.NgaySinh) between 3 and 5;
  /*
20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, 
Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học 
bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển 
thị là “Mức trung bình”
*/
select masv, phai, makhoa, 
case 
when hocbong > 500000 then "Học bổng cao"
else "Mức trung bình"
end as "Mức học bổng"
from dmsv;
/*
21.Cho biết tổng số sinh viên của toàn trường
*/
select count(*) as 'Tổng số sv của toàn trường'
from dmsv;
/*
22.Cho biết tổng sinh viên và tổng sinh viên nữ
*/
select count(masv) as "tổng số sinh viên"
from dmsv 
where phai = "nữ";
/*
23.Cho biết tổng số sinh viên của từng khoa
*/
select dmk.tenkhoa, count(masv) as "tổng số sinh viên"
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
group by dmk.makhoa ;
/*
24.Cho biết số lượng sinh viên học từng môn
*/
select dmmh.tenmh ,count(dmsv.masv) as "số lượng sinh viên"
from dmmh join ketqua kq on dmmh.mamh = kq.mamh
		  join dmsv on kq.masv = dmsv.masv
group by dmmh.tenmh ;
/*
25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có 
trong bảng kq)
*/
select count(mamh) as "số lượng môn học"
from ketqua;
/*
26.Cho biết tổng số học bổng của mỗi khoa
*/
select makhoa, count(hocbong)
from dmsv
group by makhoa ;
/*
27.Cho biết học bổng cao nhất của mỗi khoa
*/
select makhoa, max(hocbong)
from dmsv
group by makhoa ;
/*
28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa
*/
select makhoa, sum(phai="nam") as "số sinh viên nam", sum(phai="nữ") as "số sinh viên nữ"
from dmsv
group by makhoa ;
/*
29.Cho biết số lượng sinh viên theo từng độ tuổi
*/
select year(now()) - year(ngaysinh) as "độ tuổi", count(masv) as "số sinh viên"
from dmsv
group by year(now()) - year(ngaysinh) ;
/*
30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường
*/
select year(ngaysinh), count(masv)
from dmsv
group by year(ngaysinh)
having count(masv) = 2 ;
/*
    31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
*/
select sv.NoiSinh, count(*) as 'Số lượng sinh viên đang theo học tại trường'
from dmsv sv
group by sv.NoiSinh
having count(*) > 2;
/*
    32.Cho biết những môn nào có trên 3 sinh viên dự thi.

*/
select mh.TenMH as 'Tên môn học có trên 3 sinh viên dự thi'
from ketqua kq
         join dmmh mh on kq.MaMH = mh.MaMH
group by mh.TenMH
having count(kq.MaSV) > 3;
/*
    33.Cho biết những sinh viên thi lại trên 2 lần.
*/
select sv.TenSV as 'Tên sinh viên', count(kq.LanThi) as 'Số lần thi lại'
from ketqua kq
         join dmsv sv on kq.MaSV = sv.MaSV
group by sv.TenSV
having count(kq.LanThi) > 2;
/*
    34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0

*/
select concat(sv.HoSV, ' ', sv.TenSV) as 'Họ tên sinh viên',
       sv.Phai                        as 'Giới tính',
       kq.LanThi                      as 'Lần thi',
       avg(kq.Diem)                   as 'Điểm thi TB lần 1'
from ketqua kq
         join dmsv sv on kq.MaSV = sv.MaSV
where sv.Phai = 'Nam'
  and kq.LanThi = 1
group by concat(sv.HoSV, ' ', sv.TenSV), sv.Phai, kq.LanThi
having avg(kq.Diem) > 7.0;
/*
    35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1
*/
select *
from ketqua;
select sv.MaSV, kq.LanThi, count(kq.Diem)
from ketqua kq
         join dmsv sv on kq.MaSV = sv.MaSV
where kq.LanThi = 1
  and kq.Diem < 5.0
group by sv.MaSV, kq.LanThi
having count(kq.Diem) > 2;
/*
36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
*/
select dmk.tenkhoa
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
group by dmk.tenkhoa
having count(dmsv.phai = "nam") > 2 ;
/*
37.Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000.
*/
select dmk.tenkhoa
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where dmsv.hocbong between 100000 and 300000
group by dmk.tenkhoa
having count(dmsv.masv) = 2 ;
/*
38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn 
trong lần thi 1
*/
select  sum(case when kq.diem >= 5 then 1 else 0 end) as "số lượng sinh viên đậu" ,
		sum(case when kq.diem < 5 then 1 else 0 end) as "số lượng sinh viên rớt" 
from dmsv join ketqua kq on kq.masv = dmsv.masv
		  join dmmh on dmmh.mamh = kq.mamh
where kq.lanthi = 1
group by kq.mamh ;
/*
39.Cho biết sinh viên nào có học bổng cao nhất
*/
select masv, max(hocbong)
from dmsv 
group by masv
having max(hocbong);
/*
40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.
*/
select kq.masv, kq.diem
from dmsv join ketqua kq on kq.masv = dmsv.masv
		  join dmmh on dmmh.mamh = kq.mamh
where kq.lanthi = 1 and dmmh.tenmh = "cơ sở dữ liệu"
order by kq.diem desc
limit 1 ;
/*
41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
*/
select dmsv.masv, max(year(now())-year(ngaysinh)) as "tuổi lớn nhất"
from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
where dmk.tenkhoa = "anh văn" 
group by dmsv.masv
order by max(year(now())-year(ngaysinh)) desc
limit 1;
/*
42.Cho biết khoa nào có đông sinh viên nhất.
*/
select dmk.tenkhoa, COUNT(dmsv.masv) as "Số lượng sinh viên"
from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
group by dmk.makhoa, dmk.tenkhoa
having COUNT(dmsv.masv) = (
  select MAX(cnt)
  from (
    select COUNT(dmsv.masv) as cnt
    from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
    group by dmk.makhoa
  ) as max_counts
);
/*
43.Cho biết khoa nào có đông nữ nhất.
*/
select dmk.tenkhoa, COUNT(dmsv.phai = 'nữ') as "Số lượng nữ sinh viên"
from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
where dmsv.phai = 'nữ'
group by dmk.makhoa, dmk.tenkhoa
having COUNT(dmsv.phai = 'nữ') = (
  select MAX(cnt)
  from (
    select COUNT(dmsv.phai = 'nữ') as cnt
    from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
    where dmsv.phai = 'nữ'
    group by dmk.makhoa
  ) as max_counts
);
/*
    44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất
*/
select mh.TenMH, count(kq.Diem) as 'Số lượng sinh viên rớt nhiều nhất'
from ketqua kq
join dmmh mh on kq.MaMH = mh.MaMH
where kq.LanThi = 1
and kq.Diem < 5
group by mh.TenMH
having count(kq.Diem) >= all (select count(kq.diem)
from ketqua kq
where kq.lanthi = 1
and kq.diem < 5
group by kq.mamh);
/*
45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn
điểm thi văn của sinh viên học khoa anh văn.
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM DMSV AS sv
INNER JOIN DMKhoa AS k ON sv.MaKhoa = k.MaKhoa
WHERE k.TenKhoa <> 'Anh Văn' AND sv.MaSV NOT IN (
    SELECT kq1.MaSV
    FROM KetQua AS kq1
    INNER JOIN DMMH AS mh1 ON kq1.MaMH = mh1.MaMH
    WHERE mh1.TenMH = 'Văn' AND kq1.LanThi = 1
) AND sv.MaSV IN (
    SELECT kq2.MaSV
    FROM KetQua AS kq2
    INNER JOIN DMMH AS mh2 ON kq2.MaMH = mh2.MaMH
    WHERE mh2.TenMH = 'Phạm' AND kq2.LanThi = 1
);
/*
46.Cho biết sinh viên có nơi sinh cùng với Hải.
*/
SELECT MaSV, HoSV, TenSV, NoiSinh
FROM DMSV
WHERE NoiSinh = (SELECT NoiSinh FROM DMSV WHERE HoSV = 'Nguyễn Thị' AND TenSV = 'Hải');
/*
47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của
sinh viên thuộc khoa anh văn
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV, sv.HocBong
FROM DMSV AS sv
WHERE sv.HocBong > ALL (
    SELECT HocBong
    FROM DMSV
    WHERE MaKhoa = 'AV'
);
/*
48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên 
học khóa anh văn
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV, sv.HocBong
FROM DMSV AS sv
WHERE sv.HocBong > ANY (
    SELECT HocBong
    FROM DMSV
    WHERE MaKhoa = 'AV'
);
/*
49. cho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm 
thi lần 1 môn cơ sở dữ liệu của những sinh viên khác
*/
SELECT kq.MaSV, sv.HoSV, sv.TenSV, kq.Diem AS DiemLan2
FROM KetQua AS kq
INNER JOIN DMSV AS sv ON kq.MaSV = sv.MaSV
WHERE kq.MaMH = '01' AND kq.LanThi = 2
AND kq.Diem > ALL (
    SELECT kq1.Diem
    FROM KetQua AS kq1
    WHERE kq1.MaMH = '01' AND kq1.LanThi = 1
);
/*
50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn
*/
SELECT kq.MaMH, mh.TenMH, MAX(kq.Diem) AS DiemCaoNhat
FROM KetQua AS kq
INNER JOIN DMMH AS mh ON kq.MaMH = mh.MaMH
GROUP BY kq.MaMH, mh.TenMH;
/*
51.Cho biết những khoa không có sinh viên học.
*/
SELECT k.MaKhoa, k.TenKhoa
FROM DMKhoa AS k
LEFT JOIN DMSV AS sv ON k.MaKhoa = sv.MaKhoa
WHERE sv.MaKhoa IS NULL;
/*
52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM DMSV AS sv
WHERE sv.MaSV NOT IN (
    SELECT MaSV
    FROM KetQua
    WHERE MaMH = '01'
);
/*
53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM DMSV AS sv
WHERE sv.MaSV IN (
    SELECT kq.MaSV
    FROM KetQua AS kq
    WHERE kq.LanThi = 2
) AND sv.MaSV NOT IN (
    SELECT kq.MaSV
    FROM KetQua AS kq
    WHERE kq.LanThi = 1
);
/*
54.Cho biết môn nào không có sinh viên khoa anh văn học
*/
SELECT mh.MaMH, mh.TenMH
FROM DMMH AS mh
WHERE mh.MaMH NOT IN (
    SELECT kq.MaMH
    FROM KetQua AS kq
    INNER JOIN DMSV AS sv ON kq.MaSV = sv.MaSV
    WHERE sv.MaKhoa = 'AV'
);
/*
55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM DMSV AS sv
WHERE sv.MaKhoa = 'AV' AND sv.MaSV NOT IN (
    SELECT kq.MaSV
    FROM KetQua AS kq
    INNER JOIN DMMH AS mh ON kq.MaMH = mh.MaMH
    WHERE mh.TenMH = 'Văn Phạm'
);
/*
56.Cho biết những sinh viên không rớt môn nào.
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM DMSV AS sv
WHERE sv.MaSV NOT IN (
    SELECT kq.MaSV
    FROM KetQua AS kq
    WHERE kq.Diem < 5
);
/*
57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên 
chưa bao giờ rớt.
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV, sv.HocBong
FROM DMSV AS sv
WHERE sv.MaKhoa = 'AV' AND sv.HocBong > 0
AND sv.MaSV NOT IN (
    SELECT kq.MaSV
    FROM KetQua AS kq
    WHERE kq.Diem < 5
);
/*
58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa 
nào có ít sinh viên nhận học bổng nhất
*/
SELECT k.MaKhoa, k.TenKhoa, COUNT(*) AS SoSinhVienNhanHocBong
FROM DMKhoa AS k
INNER JOIN DMSV AS sv ON k.MaKhoa = sv.MaKhoa
WHERE sv.HocBong > 0
GROUP BY k.MaKhoa, k.TenKhoa
ORDER BY SoSinhVienNhanHocBong DESC
LIMIT 1;

SELECT k.MaKhoa, k.TenKhoa, COUNT(*) AS SoSinhVienNhanHocBong
FROM DMKhoa AS k
INNER JOIN DMSV AS sv ON k.MaKhoa = sv.MaKhoa
WHERE sv.HocBong > 0
GROUP BY k.MaKhoa, k.TenKhoa
ORDER BY SoSinhVienNhanHocBong ASC
LIMIT 1;
/*
59.Cho biết 3 sinh viên có học nhiều môn nhất
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV, COUNT(kq.MaMH) AS SoMonHoc
FROM DMSV AS sv
INNER JOIN KetQua AS kq ON sv.MaSV = kq.MaSV
GROUP BY sv.MaSV, sv.HoSV, sv.TenSV
ORDER BY SoMonHoc DESC
LIMIT 3;
/*
60.Cho biết những môn được tất cả các sinh viên theo học.
*/
SELECT mh.MaMH, mh.TenMH
FROM DMMH AS mh
WHERE NOT EXISTS (
    SELECT sv.MaSV
    FROM DMSV AS sv
    WHERE sv.MaSV NOT IN (
        SELECT kq.MaSV
        FROM KetQua AS kq
        WHERE kq.MaMH = mh.MaMH
    )
);
/*
61.Cho biết những sinh viên học những môn giống sinh viên có mã số A02 học.
*/
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM DMSV AS sv
WHERE sv.MaSV <> 'A02' AND sv.MaSV NOT IN (
    SELECT sv1.MaSV
    FROM DMSV AS sv1
    INNER JOIN KetQua AS kq1 ON sv1.MaSV = kq1.MaSV
    WHERE kq1.MaMH NOT IN (
        SELECT kq2.MaMH
        FROM KetQua AS kq2
        WHERE kq2.MaSV = 'A02'
    )
);
-- 62. Lấy ra được sinh viên không phải A02 có tổng số môn học = tổng số môn học của A02
select kq2.masv
from ketqua kq2
where kq2.masv not like 'A02'
	-- 3. Kiểm tra sinh viên học các môn trùng với các môn của sinh viên A02
    and kq2.mamh =
	-- 4. Lấy các môn học của A02 và so sánh các môn học của sinh viên tìm được
		(select distinct kq3.mamh from ketqua kq3 where kq3.masv='A02' and kq3.mamh=kq2.mamh)
group by kq2.masv
having count(distinct kq2.mamh) =
	(-- 1. Lấy ra được tổng số môn học của sinh viên A02
	select count(distinct kq1.mamh) from ketqua kq1 where kq1.masv = 'A02');
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B04','Pham Linh','Anh','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B04','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B04','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B04','05',1,9);