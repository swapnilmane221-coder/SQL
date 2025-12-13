create table vehicle(
		id serial primary key,
		Brand varchar(50) not null,
		Model varchar(50),
		AccelSec numeric(10,1),
		TopSpeed_KmH int,
		Range_Km int,
		Efficiency_WhKm int,
		FastCharge_KmH int,
		RapidCharge varchar(10),
		PowerTrain varchar(50),
		PlugType varchar(50),
		BodyStyle varchar(50),
		Segment varchar(2),
		Seats smallint,
		PriceEuro int
);
alter table vehicle 
alter column FastCharge_KmH type varchar(30);
truncate vehicle restart identity;
select * from vehicle;

copy vehicle (Brand,Model,AccelSec,TopSpeed_KmH,Range_Km,Efficiency_WhKm,FastCharge_KmH,RapidCharge,PowerTrain,PlugType,BodyStyle,Segment,Seats,PriceEuro
)
from 'C://Users//swapn//Downloads//ElectricCarData_Clean.csv' 
delimiter ','
csv header;

select * from vehicle;
