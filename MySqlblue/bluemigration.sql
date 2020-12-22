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
insert into users (user_id, name, surname, email, phonenumber, birthday, password, account) values 
('901','Alba','Parietti','albaparietti@','3481111111',str_to_date('07-JUL-85','%d-%b-%y'), "xxx", 'patient');
insert into users (name, surname, email, phonenumber, birthday, password, account) values 
	('Riccardo','Scamarcio','riccardoscamarcio@','3259994444',str_to_date('28-FEB-92','%d-%b-%y'), "ddd", 'patient'),
	('Serena','Orchideo','serenaorchideo@','3371455252',str_to_date('09-OCT-29','%d-%b-%y'), 'aaa', 'patient'),
	('Elio','Germano','eliogermano@','3417536951',str_to_date('17-MAY-49','%d-%b-%y'),'zzz', 'patient' ),
	('Alberto','Stasi','albertostasi@','3924578888',str_to_date('21-JUN-57','%d-%b-%y'),'aaa', 'doctor' ),
	('Federica','Pellegrini','federicapellegrini@','3407536958',str_to_date('31-DEC-65','%d-%b-%y'),'xyz', 'doctor' ),
	('Giuseppe','Conte','giuseppeconte@','3142524475',str_to_date('05-APR-61','%d-%b-%y'),'pof', 'doctor' ),
	('Laura','Pausina','laurapausina@','3945685252',str_to_date('01-MAR-58','%d-%b-%y'),'yyy', 'doctor' ),
	('Achille','Lauro','achillelauro@','3774122152',str_to_date('21-JAN-72','%d-%b-%y'),'lam', 'doctor' ),
	('Guido','Rossi','guidorossio@','3417676995',str_to_date('19-MAY-49','%d-%b-%y'),'ppp', 'doctor' ),
	('Piero','Fabbri','pierofabbri@','3349876954',str_to_date('17-FEB-49','%d-%b-%y'),'iii', 'doctor' ),
	('Martina','Isolata','martinaisolata@','3351967458',str_to_date('06-MAY-51','%d-%b-%y'),'uuu', 'doctor' ),
	('Marcello','Speranza','marcellosperanzai@','3487654331',str_to_date('17-APR-49','%d-%b-%y'),'mmm', 'doctor' ),
    ('Alessandra','Mussolini','amussolini@','111111111',str_to_date('28-APR-45','%d-%b-%y'),'mmm', 'doctor' ),
    ('Sergio','Mattarella','smattarella@','222222222',str_to_date('2-JUN-45','%d-%b-%y'),'mmm', 'doctor' ),
    ('Matteo','Renzi','mrenzi@','333333333',str_to_date('29-DEC-71','%d-%b-%y'),'mmm', 'doctor' ),
    ('Matteo','Salvini','msalvini@','444444444',str_to_date('28-FEB-63','%d-%b-%y'),'mmm', 'doctor' ),
    ('Giorgia','Meloni','gmeloni@','555555555',str_to_date('20-NOV-67','%d-%b-%y'),'mmm', 'doctor' ),
    ('Aldo','Fontana','afontana@','666666666',str_to_date('19-OCT-81','%d-%b-%y'),'mmm', 'doctor' ),
    ('Felipe','Andale','fandale@','777777777',str_to_date('09-MAR-77','%d-%b-%y'),'mmm', 'doctor' ),
    ('Albert','Octopus','aoctopus@','888888888',str_to_date('11-JAN-57','%d-%b-%y'),'mmm', 'doctor' ),
    ('Maria','Bestini','mbestini@','999',str_to_date('17-APR-50','%d-%b-%y'),'mmm', 'doctor' ),
    ('Sara','Sparta','ssparta@','254',str_to_date('17-APR-51','%d-%b-%y'),'mmm', 'doctor' ),
    ('Roberta','Grimaldi','rgrimaldi@','1561',str_to_date('17-APR-52','%d-%b-%y'),'mmm', 'doctor' ),
    ('Aspide','Sinto','asinto@','3487654331',str_to_date('17-APR-53','%d-%b-%y'),'mmm', 'doctor' ),
    ('Anna','Martelli','amartelli@','1565',str_to_date('17-APR-69','%d-%b-%y'),'mmm', 'doctor' ),
    ('James','Joyce','jjoyce@','154',str_to_date('17-MAR-49','%d-%b-%y'),'mmm', 'doctor' ),
    ('Virginia','Woolf','vwoolf@','25315',str_to_date('03-APR-49','%d-%b-%y'),'mmm', 'doctor' ),
    ('Alberto','Sposini','asposini@','555',str_to_date('17-NOV-49','%d-%b-%y'),'mmm', 'doctor' ),
    ('Barbara','Durso','bdurso@','691',str_to_date('17-APR-67','%d-%b-%y'),'mmm', 'doctor' ),
    ('Serena','Marziale','smarziale@','454',str_to_date('17-JAN-49','%d-%b-%y'),'mmm', 'doctor' ),
    ('Articuno','Ketchum','aketchum@','475',str_to_date('17-APR-65','%d-%b-%y'),'mmm', 'doctor' ),
    ('Arale','Corale','acorale@','744',str_to_date('17-APR-71','%d-%b-%y'),'mmm', 'doctor' ),
    ('Marzio','Calenda','mcalenda@','982',str_to_date('17-APR-67','%d-%b-%y'),'mmm', 'doctor' ),
    ('Cinzio','Zarro','czarro@','742',str_to_date('17-APR-92','%d-%b-%y'),'mmm', 'doctor' ),
    ('Pesca','Caduta','pcaduta@','3487654331',str_to_date('17-APR-35','%d-%b-%y'),'mmm', 'doctor' ),
    ('Armadillo','Scoperto','ascoperto@','4225',str_to_date('17-APR-78','%d-%b-%y'),'mmm', 'doctor' ),
    ('Ermenegildo','Borgia','eborgia@','45516',str_to_date('17-APR-70','%d-%b-%y'),'mmm', 'doctor' ),
    ('Esedra','Miraggio','emiraggio@','5454',str_to_date('17-APR-65','%d-%b-%y'),'mmm', 'doctor' ),
    ('Erika','Barale','ebarale@','56454',str_to_date('17-APR-78','%d-%b-%y'),'mmm', 'doctor' );
commit;

create table doctors(
	doctor_id integer primary key auto_increment,
    specialization varchar(25),
    street varchar(25),
    user_id integer,
     constraint doctor_id foreign key(user_id) references users(user_id)

);
insert into doctors (doctor_id, specialization,street, user_id) values 
	('101','Urologia',"Via Togliatti 48", '905');
insert into doctors (specialization,street, user_id) values 
	('Andrologia', "Via Emilia 56", '906'),
	('Dentista', "Piazza Roma 7", '907'),
	('Psicologia', "Via Novembre 4", '908'),
	('Neurologia', "Piazza Piero 88", '909'),
	('Ginecologia', "Via Kennedy 63", '910'),
	('Cardiologia',"Viale Trieste 2", '911'),
	('Dermatologia', "Piazza di Spagna 99", '912'),
	('Oculista', "Via Foggia 12", '913'),
    ('Pneumologia', "Piazza Roma 5", '914'),
    ('Ortopedia', "Corso Bari 33", '915'),
    ('Oculista', "Viale Torino 17", '916'),
    ('Dentista', "Viale Kennedy 4", '917'),
    ('Ginecologia', "Via Emilia 23", '918'),
    ('Dermatologia', "Corso Bolzano 6", '919'),
    ('Cardiologia', "Via Roma 33", '920'),
    ('Dentista', "Viale Reggio 44", '921'),
    ('Oculista', "Piazza Milano 1", '922'),
    ('Cardiologia', "Corso Catania 57", '923'),
    ('Ginecologia', "Via Kennedy 5", '924'),
    ('Neurologia', "Viale Emilia 526", '925'),
    ('Neurologia', "Via Senigallia 36", '926'),
    ('Cardiologia', "Corso Kennedy 99", '927'),
    ('Oculista', "Via Barletta 14", '928'),
    ('Oculista', "Via Taranto 92", '929'),
    ('Neurologia', "Corso Perugia 102", '930'),
    ('Cardiologia', "Via Aosta 2", '931'),
    ('Oculista', "Piazza Venezia 13", '932'),
    ('Dermatologia', "Via Kennedy 24", '933'),
    ('Dentista', "Viale Palermo 13", '934'),
    ('Oculista', "Via Emilia 25", '935'),
    ('Psicologia', "Via Gorizia 1", '936'),
    ('Oculista', "Viale Fieramosca 5", '937'),
    ('Cardiologia', "Via Emilia 3", '938'),
    ('Oculista', "Piazza Kennedy 52", '939'),
    ('Oculista', "Corso Marsiglia 63", '940');

commit;

create table doctor_user(
	doctor_id integer,
	user_id integer,
    
	constraint doctor_user_pk primary key(doctor_id, user_id),
    constraint doctor_user_fk foreign key(doctor_id) references doctors(doctor_id),
    constraint user_doctor_fk foreign key(user_id) references users(user_id)
);


insert into doctor_user values 
	(101, 901),
	(101, 902),
	(104, 903);

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

insert into visits (visit_id, user_id, doctor_id, visit_date, visit_hour, review) values 
	('10001','901','101',str_to_date('13-DEC-19','%d-%b-%y'),'16:00','B');
insert into visits (user_id, doctor_id, visit_date, visit_hour, review) values 
	('902','101',str_to_date('15-DEC-19','%d-%b-%y'),'11:00','A'),
	('903','104',str_to_date('16-DEC-19','%d-%b-%y'),'17:00','E');

commit;

