use asm;

create table customer (
    id bigint(20) not null,
    password varchar(20) not null,
    name varchar(10) not null ,
    sex char(6) not null ,
    id_number varchar(20) not null ,
    company varchar(20) not null ,
    room_id varchar(20) ,
    start_time date,
    end_time date,
    pay_status varchar(10)
    
);

create table department(
    room_id varchar(20) not null ,
    price varchar(20) not null ,
    status varchar(10) not null ,
    person bigint(10) not null ,
    customer_id bigint(10)
    
);

create table admin(
    account varchar(20) not null ,
    password varchar(20) not null ,
    remarks varchar(50)
    
);

create table word(
    lw_id bigint primary key auto_increment,
    writer_id varchar(20) not null ,
    writer_content varchar(50) not null 
);

create table reply(
    lr_id bigint primary key auto_increment,
    reply_id varchar(20) not null ,
    reply_content varchar(50) not null 
);


drop table customer;
drop table department;
drop table admin;
drop table word;
drop table reply;

select * from customer;
select * from department;
select * from admin;
select * from word;
select * from reply;

insert into customer values(5210,'745210','邓等等','male','431021197402105210','才华有限公司','d307','2020-12-25','2020-12-27','已付款');

insert into department values('d307', '199.99元','已租',2,5210);

insert into department values('d101', '199.99元','已租',2,null);
insert into department values('d102', '199.99元','已租',2,null);
insert into department values('d103', '199.99元','已租',2,null);
insert into department values('d104', '199.99元','已租',2,null);
insert into department values('d105', '199.99元','已租',2,null);

insert into admin values ('admin', 'admin', '管理员');

insert into word values (3,'6666', '空调为什么会那么贵的租住费用呢？');
insert into reply values (3, 'admin', '没办法，我也需要养家糊口的');


