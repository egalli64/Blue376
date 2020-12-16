-- Script 

use blue;

drop table if exists visits;
drop table if exists doctor_user;
drop table if exists users;
drop table if exists doctors;


create table users (
	user_id integer primary key auto_increment,
    name varchar(25),
    surname varchar(25),
    email varchar(20) unique,
	phonenumber varchar(20),
    birthday date not null,
    password varchar(20),
    account varchar (7)
    
);
insert into users (user_id, name, surname, email, phonenumber, birthday, password, account) values ('901','Alba','Parietti','albaparietti@','3481111111',str_to_date('07-JUL-85','%d-%b-%y'), "xxx", 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Riccardo','Scamarcio','riccardoscamarcio@','3259994444',str_to_date('28-FEB-92','%d-%b-%y'), "ddd", 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Serena','Orchideo','serenaorchideo@','3371455252',str_to_date('09-OCT-29','%d-%b-%y'), 'aaa', 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Elio','Germano','eliogermano@','3417536951',str_to_date('17-MAY-49','%d-%b-%y'),'zzz', 'patient' );

commit;

create table doctors(
	doctor_id integer primary key auto_increment,
    specialization varchar(25),
    street varchar(25)

);
insert into doctors (doctor_id, specialization,street) values ('101','Urologa',"Via Togliatti 48");
insert into doctors (specialization,street) values ('Andrologo', "Via Emilia 56");
insert into doctors (specialization,street) values('Dentista', "Piazza Roma 7");
insert into doctors (specialization,street) values ('Psicologa', "Via Novembre 4");
insert into doctors (specialization,street) values ('Neourochirurgo', "Via Piero 88");
insert into doctors (specialization,street) values ('Ginecologa', "Via Kennedy 63");
insert into doctors (specialization,street) values ('Cardiologo',"Via Trieste 2");
insert into doctors (specialization,street) values ('Dermatologa', "Piazza di Spagna 99");
insert into doctors (specialization,street) values ('Oculista', "Via Trento 33");

commit;

create table doctor_user(
	doctor_id integer,
	user_id integer,
    
	constraint doctor_user_pk primary key(doctor_id, user_id),
    constraint doctor_user_fk foreign key(doctor_id) references doctors(doctor_id),
    constraint user_doctor_fk foreign key(user_id) references users(user_id)
);


insert into doctor_user values (101, 901);
insert into doctor_user values (101, 902);
insert into doctor_user values (102, 903);

commit;

create table visits(
	visit_id integer primary key auto_increment,
	user_id integer,
	doctor_id integer,
    visit_date date not null,
    visit_hour varchar(20) not null,
    review char 
    constraint visits_review_ck check ( review in ('A', 'B', 'C', 'D', 'E')) default "A",
    
    
    constraint visits_docpat_fk foreign key(doctor_id, user_id) references doctor_user(doctor_id, user_id)
);

insert into visits (visit_id, user_id, doctor_id, visit_date, visit_hour, review) values ('10001','901','101',str_to_date('13-DEC-19','%d-%b-%y'),'16:00','B');
insert into visits (user_id, doctor_id, visit_date, visit_hour, review) values ('902','101',str_to_date('15-DEC-19','%d-%b-%y'),'11:00','A');
insert into visits (user_id, doctor_id, visit_date, visit_hour, review) values ('903','102',str_to_date('16-DEC-19','%d-%b-%y'),'17:00','E');

commit;

