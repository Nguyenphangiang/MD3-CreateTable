create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
    MaHS varchar(20) PRIMARY KEY ,
    TenHS varchar(50),
    NgaySinh DATETIME,
    Lop varchar(20),
    GT varchar(20)
);
create table MonHoc(
    MaMH varchar(20) PRIMARY KEY ,
    TenMH varchar(50)
);
create table BangDiem(
    MaHS varchar(20),
    MaMH varchar(20),
    DiemThi INT,
    NgayKT DATETIME,
    PRIMARY KEY (MaHS,MaMH),
    FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);
create table GiaoVien(
    MaGV varchar(20) PRIMARY KEY ,
    TenGV varchar(20),
    SDT varchar(10)
);
alter table MonHoc add MaGV varchar(20);
alter table MonHoc add CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)