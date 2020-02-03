create table users
(
userid		int not null,
fname		varchar(255)	not null,
lname		varchar(255)	not null,
birthdate	date			,
dis_code		varchar(255)	,
primary key (userid)
);



create table delivery
(
staffnum		int not null,
staff_fname		varchar(255)	not null,
staff_lname		varchar(255)	not null,

primary key (staffnum)
);

create table meal
(
mealid		int not null,
mealname		varchar(255)	not null,
mealprice	money	not null,

primary key (mealid)
);


create table search
(
userid		int not null,
mealid		int not null,

primary key (userid,mealid),
foreign key(userid) references users(userid),
foreign key(mealid) references meal(mealid),
);

create table place
(
placeid		int not null,
placename		varchar(255)	not null,
typep	varchar(255)	not null,

primary key (placeid)
);

create table have
(
placeid		int not null,
mealid		int not null,

primary key (placeid,mealid),
foreign key(placeid) references place(placeid),
foreign key(mealid) references meal(mealid),
);


create table orders
(
staffnum		int not null,
placeid		int not null,
userid		int not null,
mealid		int not null,
del_pay			money	not null,
place_pay		money	not null,
phone1			char(10)	not null,
address1		nvarchar(50)	not null,
city1			varchar(50)		not null,
phone2			char(10)	not null,
address2		nvarchar(50)	not null,
city2			varchar(50)		not null,
primary key (staffnum ,placeid,userid),
foreign key(staffnum) references delivery(staffnum),
foreign key(placeid) references place(placeid),
foreign key(userid) references users(userid),
);

