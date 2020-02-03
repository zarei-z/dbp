create table userlog(
userid	int	not null,
taction	varchar(50)	not null,
primary key(userid),
foreign key (userid) references users(userid)
);