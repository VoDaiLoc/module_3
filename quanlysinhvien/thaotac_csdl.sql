use quanlysinhvien;
create table customer(
cID int not null primary key auto_increment,
Name varchar(25) not null,
cAge tinyint
);

insert into customer(Name, cAge)
values('Minh QUan',10),
	('Ngoc Oanh',20),
    ('Hong Ha',50);

create table Orders (
oID int not null primary key auto_increment,
cID int not null,
oDate datetime,
oTotalPrice int,
foreign key (cID) references customer(cID)
);
insert into orders (cID,oDate,oTotalPrice)
value(1,'2006-03-21');
insert into orders (cID,oDate,oTotalPrice)
value(2,'2006-03-23',null);
insert into orders (cID,oDate,oTotalPrice)
value(1,'2006-03-16',null);
create table product(
pID int primary key not null auto_increment,
pName varchar(25),
pPrice int
);

insert into product(pName,pPrice)
values('May Giat', 3),
	('Tu Lanh', 5),
    ('Dieu Hoa',7),
    ('Quat',1),
    ('Bep Dien',2);
    
create table orderDetail (
oID int not null,
pID int not null,
odQTY int,
foreign key(oID) references orders(oID),
foreign key(pID) references product(pID)
);

insert into orderDetail(oID,pID,odQTY)
values(1,1,3),
	(1,3,7),
	(1,4,2),
    (2,1,1),
    (3,1,8),
    (2,5,4),
    (2,3,3);
select oID,oDate,oTotalPrice from orders;

select Name, pName
from customer c  join orders o on c.cID = o.cID
join orderDetail od on o.oID = od.oID
join product p on od.pID = p.pID
where pName is not null;
#------------------------------------
select Name, pName
from customer c  left join orders o on c.cID = o.cID
left join orderDetail od on o.oID = od.oID
left join product p on od.pID = p.pID
where pName is not null;

select Name, pName
from customer c left join orders o on c.cID = o.cID
left join orderDetail od on o.oID = od.oID
left join product p on od.pID = p.pID
where pName is null;

select o.oID, o.oDate,p.pPrice* od.odQTY as TotalPrice
from orders o left join orderDetail od on o.oID=od.oID
left join product p on od.pID = p.pID;