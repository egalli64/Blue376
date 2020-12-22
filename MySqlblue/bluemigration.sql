-- Script 

use blue;

drop table if exists visits;
drop table if exists doctor_user;
drop table if exists doctors;
drop table if exists users;


create table users (
	user_id integer primary key auto_increment,
    name varchar(25),
    surname varchar(25),
    email varchar(40) unique,
	phonenumber varchar(20),
    birthday date not null,
    password varchar(20),
    account varchar (7)
    
);
insert into users (user_id, name, surname, email, phonenumber, birthday, password, account) values ('901','Alba','Parietti','albaparietti@','3481111111',str_to_date('07-JUL-85','%d-%b-%y'), "xxx", 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Riccardo','Scamarcio','riccardoscamarcio@','3259994444',str_to_date('28-FEB-92','%d-%b-%y'), "ddd", 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Serena','Orchideo','serenaorchideo@','3371455252',str_to_date('09-OCT-29','%d-%b-%y'), 'aaa', 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Elio','Germano','eliogermano@','3417536951',str_to_date('17-MAY-49','%d-%b-%y'),'zzz', 'patient' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Alberto','Stasi','albertostasi@','3924578888',str_to_date('21-JUN-57','%d-%b-%y'),'aaa', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Federica','Pellegrini','federicapellegrini@','3407536958',str_to_date('31-DEC-65','%d-%b-%y'),'xyz', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Giuseppe','Conte','giuseppeconte@','3142524475',str_to_date('05-APR-61','%d-%b-%y'),'pof', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Laura','Pausina','laurapausina@','3945685252',str_to_date('01-MAR-58','%d-%b-%y'),'yyy', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Achille','Lauro','achillelauro@','3774122152',str_to_date('21-JAN-72','%d-%b-%y'),'lam', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Guido','Rossi','guidorossio@','3417676995',str_to_date('19-MAY-49','%d-%b-%y'),'ppp', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Piero','Fabbri','pierofabbri@','3349876954',str_to_date('17-FEB-49','%d-%b-%y'),'iii', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Martina','Isolata','martinaisolata@','3351967458',str_to_date('06-MAY-51','%d-%b-%y'),'uuu', 'doctor' );
insert into users (name, surname, email, phonenumber, birthday, password, account) values ('Marcello','Speranza','marcellosperanzai@','3487654331',str_to_date('17-APR-49','%d-%b-%y'),'mmm', 'doctor' );
commit;

create table doctors(
	doctor_id integer primary key auto_increment,
    specialization varchar(25),
    street varchar(25),
    user_id integer,
     constraint doctor_id foreign key(user_id) references users(user_id)

);
insert into doctors (doctor_id, specialization,street, user_id) values ('101','Urologa',"Via Togliatti 48", '905');
insert into doctors (specialization,street, user_id) values ('Andrologo', "Via Emilia 56", '906');
insert into doctors (specialization,street, user_id) values('Dentista', "Piazza Roma 7", '907');
insert into doctors (specialization,street, user_id) values ('Psicologa', "Via Novembre 4", '908');
insert into doctors (specialization,street, user_id) values ('Neourochirurgo', "Via Piero 88", '909');
insert into doctors (specialization,street, user_id) values ('Ginecologa', "Via Kennedy 63", '910');
insert into doctors (specialization,street, user_id) values ('Cardiologo',"Via Trieste 2", '911');
insert into doctors (specialization,street, user_id) values ('Dermatologa', "Piazza di Spagna 99", '912');
insert into doctors (specialization,street, user_id) values ('Oculista', "Via Trento 33", '913');

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
insert into doctor_user values (104, 903);

commit;

create table visits(
	visit_id integer primary key auto_increment,
	user_id integer,
	doctor_id integer,
    visit_date date not null, -- timestamp
    visit_hour varchar(20) not null,
    review char 
    constraint visits_review_ck check ( review in ('A', 'B', 'C', 'D', 'E')) default "A",
    
    
    constraint visits_docpat_fk foreign key(doctor_id, user_id) references doctor_user(doctor_id, user_id)
);

insert into visits (visit_id, user_id, doctor_id, visit_date, visit_hour, review) values ('10001','901','101',str_to_date('13-DEC-19','%d-%b-%y'),'16:00','B');
insert into visits (user_id, doctor_id, visit_date, visit_hour, review) values ('902','101',str_to_date('15-DEC-19','%d-%b-%y'),'11:00','A');
insert into visits (user_id, doctor_id, visit_date, visit_hour, review) values ('903','104',str_to_date('16-DEC-19','%d-%b-%y'),'17:00','E');

commit;

