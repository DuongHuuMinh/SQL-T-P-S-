CREATE DATABASE ONTAPBUOI5
GO
USE ONTAPBUOI5
GO
CREATE TABLE CHUYENBAY
(
MACB CHAR(5) PRIMARY KEY not null,
GaDi varchar (50),
GaDen varchar (50),
DoDai int,
GioDi time,
GioDen time,
ChiPhi int
);
CREATE TABLE MAYBAY
(
MaMB int PRIMARY KEY not null,
Hieu varchar(50)NOT NULL,
TamBay int
);
CREATE TABLE NHANVIEN
(
MaNV char(9)PRIMARY KEY not null,
Ten varchar(50) NOT NULL,
Luong int
);
CREATE TABLE CHUNGNHAN
(
MaNV char(9),
MaMB int,
CONSTRAINT RB_NV_MB PRIMARY KEY(MaNV,MaMB),
CONSTRAINT RB_NV FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV),
CONSTRAINT RB_MB FOREIGN KEY (MaMB) REFERENCES MAYBAY(MaMB),
);
insert into CHUYENBAY values ('VN431',N'SGN',N'CAH',3693,'05:55','06:55',236);
insert into CHUYENBAY values ('VN320',N'SGN',N'DAD',2798,'06:00','07:10',221);
insert into CHUYENBAY values ('VN464',N'SGN',N'DLI',2002,'07:20','08:05',225);
insert into CHUYENBAY values ('VN216',N'SGN',N'DIN',4170,'10:30','14:20',262);
insert into CHUYENBAY values ('VN280',N'SGN',N'HPH',11979,'06:00','08:00',1279);
insert into CHUYENBAY values ('VN254',N'SGN',N'HUI',8765,'18:40','20:00',781);
insert into CHUYENBAY values ('VN338',N'SGN',N'BMV',4081,'15:25','16:25',375);

insert into CHUYENBAY values ('VN440',N'SGN',N'BMV',4081,'18:30','19:30',426);
insert into CHUYENBAY values ('VN651',N'DAD',N'SGN',2798,'19:30','08:00',221);
insert into CHUYENBAY values ('VN276',N'DAD',N'CXR',1283,'09:00','12:00',203);
insert into CHUYENBAY values ('VN374',N'HAN',N'VII',510,'11:40','13:25',120);
insert into CHUYENBAY values ('VN375',N'VII',N'CXR',752,'14:15','16:00',181);
insert into CHUYENBAY values ('VN269',N'HAN',N'CXR',1262,'14:10','15:50',202);
insert into CHUYENBAY values ('VN315',N'HAN',N'DAD',134,'11:45','13:00',112);
insert into CHUYENBAY values ('VN317',N'HAN',N'UIH',827,'15:00','16:15',190);
insert into CHUYENBAY values ('VN741',N'HAN',N'PXU',395,'06:30','08:30',120);
insert into CHUYENBAY values ('VN474',N'PXU',N'PQC',1586,'08:40','11:20',102);
insert into CHUYENBAY values ('VN476',N'UIH',N'PQC',485,'09:15','11:50',117);



insert into MAYBAY values ('747', N'Boeing 747 - 400', 13488);
insert into MAYBAY values ('737', N'Boeing 737 - 800', 5413);
insert into MAYBAY values ('340', N'Airbus A340 - 300', 11392);
insert into MAYBAY values ('757', N'Boeing 757 - 300', 6416);
insert into MAYBAY values ('777', N'Boeing 777 - 300', 10306);
insert into MAYBAY values ('767', N'Boeing 767 - 400ER', 10360);
insert into MAYBAY values ('320', N'Airbus A320', 4168);
insert into MAYBAY values ('319', N'Airbus A319', 2888);
insert into MAYBAY values ('727', N'Boeing 727', 2406);
insert into MAYBAY values ('154', N'Tupolev 154', 6565);



insert into NHANVIEN values ('242518965',N'TRAN VAN SON', 120433);
insert into NHANVIEN values ('141582651',N'DOAN THI MAI', 178345);
insert into NHANVIEN values ('011564812',N'TON VAN QUY', 153972);
insert into NHANVIEN values ('567354612',N'QUAN CAM LY', 256481);
insert into NHANVIEN values ('552455318',N'LA QUE', 101745);
insert into NHANVIEN values ('550156548',N'NGUYEN THI CAM',212156);
insert into NHANVIEN values ('390487451',N'LE VAN LUAT',212156);
insert into NHANVIEN values ('274878974',N'MAI QUOC MINH',99890);
insert into NHANVIEN values ('254099823',N'NGUYEN THI QUYNH',24451);
insert into NHANVIEN values ('356187925',N'NGUYEN VINH BAO',44740);
insert into NHANVIEN values ('355548984',N'TRAN THI HOAI AN',212156);
insert into NHANVIEN values ('310454876',N'TA VAN DO',212156);
insert into NHANVIEN values ('489456522',N'NGUYEN THI QUY LINH',127984);
insert into NHANVIEN values ('489221823',N'BUI QUOC CHINH',23980);
insert into NHANVIEN values ('548977562',N'LE VAN QUY',84476);
insert into NHANVIEN values ('310458877',N'TRAN VAN HAO',33546);
insert into NHANVIEN values ('142519864',N'NGUYEN THI XUAN DAO',227489);
insert into NHANVIEN values ('269734834',N'TRUONG TUAN AMH',289950);
insert into NHANVIEN values ('287321212',N'DUONG VAN MINH',48090);
insert into NHANVIEN values ('552455348',N'BUI THI DUNG',92013);
insert into NHANVIEN values ('248965255',N'TRAN THI BA',13723);
insert into NHANVIEN values ('159542516',N'LE VAN KY',48250);
insert into NHANVIEN values ('348121549',N'NGUYEN VAN THANH',32899);
insert into NHANVIEN values ('574489457',N'BUI VAN LAP',20);


insert into CHUNGNHAN values (567354612,747);
insert into CHUNGNHAN values (567354612,737);
insert into CHUNGNHAN values (567354612,757);
insert into CHUNGNHAN values (567354612,777);
insert into CHUNGNHAN values (567354612,767);
insert into CHUNGNHAN values (567354612,727);
insert into CHUNGNHAN values (567354612,340);
insert into CHUNGNHAN values (552455318,737);
insert into CHUNGNHAN values (552455318,319);
insert into CHUNGNHAN values (552455318,747);
insert into CHUNGNHAN values (552455318,767);
insert into CHUNGNHAN values (390487451,340);
insert into CHUNGNHAN values (390487451,320);
insert into CHUNGNHAN values (390487451,319);
insert into CHUNGNHAN values (274878974,757);
insert into CHUNGNHAN values (274878974,767);
insert into CHUNGNHAN values (355578984,154);
insert into CHUNGNHAN values (310454876,154);
insert into CHUNGNHAN values (142519864,747);
insert into CHUNGNHAN values (142519864,757);
insert into CHUNGNHAN values (142519864,777);
insert into CHUNGNHAN values (142519864,767);
insert into CHUNGNHAN values (142519864,737);
insert into CHUNGNHAN values (142519864,340);
insert into CHUNGNHAN values (142519864,320);
insert into CHUNGNHAN values (269734834,747);
insert into CHUNGNHAN values (269734834,737);
insert into CHUNGNHAN values (269734834,340);
insert into CHUNGNHAN values (269734834,757);
insert into CHUNGNHAN values (269734834,777);
insert into CHUNGNHAN values (269734834,767);
insert into CHUNGNHAN values (269734834,320);
insert into CHUNGNHAN values (269734834,319);
insert into CHUNGNHAN values (269734834,727);
insert into CHUNGNHAN values (269734834,154);
insert into CHUNGNHAN values (242518965,737);
insert into CHUNGNHAN values (242518965,757);
insert into CHUNGNHAN values (141582651,737);
insert into CHUNGNHAN values (141582651,757);
insert into CHUNGNHAN values (141582651,767);
insert into CHUNGNHAN values (011564812,737);
insert into CHUNGNHAN values (011564812,757);
insert into CHUNGNHAN values (574489457,154);

--1 CAC CHUYEN DI DA LAT(DAD)
SELECT MaCB
FROM CHUYENBAY
WHERE GaDen LIKE 'DAD'

--2 MAYBAY TAM BAY LON 10000KM
SELECT MaMB,hieu
from MAYBAY
WHERE TamBay > 10000

--3 NHAN VIEN CO LUONG NHO HON 10000
SELECT DISTINCT MaNV, Ten
FROM NHANVIEN
WHERE Luong > 10000

--4 CHUYEN BAY SAIGON DEN BUON ME THUOC
SELECT MaCB
FROM CHUYENBAY
WHERE GaDi LIKE 'SGN' AND GaDen LIKE 'BMV'

--5 BAO NHIEN CHUYEN BAY XUAT PHAT TU SAI GON
SELECT COUNT(*) AS SO_CHUYEN_BAY_TU_SG
FROM CHUYENBAY
WHERE GaDi LIKE 'SGN'

--6 SO LOAI MAY BAY BOEING
SELECT COUNT(*) AS SO_MAYBAY_BOEING
FROM MAYBAY
WHERE Hieu LIKE 'BOEING%'

--7 TONG LUONG TRA NHAN VIEN
SELECT SUM(Luong) AS TONGLUONG
FROM NHANVIEN

--8 MA CAC PHI CONG BOEING
SELECT MaNV
FROM NHANVIEN, MAYBAY
WHERE Hieu LIKE 'BOEING%'

--9 NV LAY MAY BAY MA SO 747
SELECT MaNV
FROM NHANVIEN, MAYBAY
WHERE MaMB LIKE '747'

--10 MA CAC PHI CONG BOEING VUA Airbus
SELECT DISTINCT T.MaNV
FROM CHUNGNHAN AS T, MAYBAY AS M, NHANVIEN AS L
WHERE L.MaNV=T.MaNV AND T.MaMB=M.MaMB AND (Hieu LIKE 'BOEING%' OR Hieu LIKE 'Airbus%')

--11 CHUYEN BAY THUC HIEN VN 280
SELECT DISTINCT M.MaMB
FROM MAYBAY AS M, CHUYENBAY AS C
WHERE M.TamBay > C.DoDai AND C.MACB = 'VN280'

--12 CHUYEN BAY THUC HIEN BOI Airbus A320
SELECT DISTINCT C.MACB
FROM MAYBAY AS M, CHUYENBAY AS C
WHERE M.TamBay > C.DoDai AND M.Hieu = 'Airbus A320'

--13 TEN PHI LAY BOEING
SELECT DISTINCT T.MaNV, L.Ten
FROM CHUNGNHAN AS T, MAYBAY AS M, NHANVIEN AS L
WHERE L.MaNV=T.MaNV AND T.MaMB=M.MaMB AND (Hieu LIKE 'BOEING%')

--14 TONG CHI PHI TU CAC GA
SELECT GaDi, SUM(ChiPhi) AS TONGCHIPHI
FROM CHUYENBAY
GROUP BY GaDi








