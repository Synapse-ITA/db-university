create database `db_university_schema`;
use db_university_schema;

	create table `departments`(
	id int auto_increment,
	name varchar(50) not null,
	address varchar(100) not null,
	phone int not null,
	email varchar (100) not null,
	website varchar (100) not null,
	head_of_department varchar (100) not null,
	primary key(id)
);

	create table `degrees`(
	id int auto_increment,
	name varchar(50) not null,
	level varchar(100) not null,
	address varchar(100) not null,
	email varchar (100) not null,
	website varchar (100) not null,
	department_id int,
	primary key(id),
	foreign key (department_id) references departments(id)
);

	create table `students`(
	id int auto_increment,
	name varchar(50) not null,
	surname varchar(100) not null,
	date_of_birth date not null,
	fiscal_code varchar(100) not null,
	enrolment_date date not null,
	registration_number int not null,
	email varchar(100) not null,
	degree_id int,
	primary key(id),
	foreign key (degree_id) references degrees(id)
);

insert into `departments` (`name`, `address`, `phone`, `email`, `website`, `head_of_department`) 
values
  ('Dipartimento Napoli', 'Via Napoli 123', 123456789, 'napoli@example.com', 'www.napoliuniversity.edu', 'Prof. Rossi'),
  ('Dipartimento Roma', 'Via Roma 456', 987654321, 'roma@example.com', 'www.romauniversity.edu', 'Prof. Bianchi'),
  ('Dipartimento Milano', 'Via Milano 789', 555123456, 'milano@example.com', 'www.milanouniversity.edu', 'Prof. Verdi'),
  ('Dipartimento Firenze', 'Via Firenze 101', 111222333, 'firenze@example.com', 'www.firenzeuniversity.edu', 'Prof. Gialli'),
  ('Dipartimento Torino', 'Via Torino 202', 444555666, 'torino@example.com', 'www.torinouniversity.edu', 'Prof. Neri');
 
 insert into `degrees` (`name`, `level`, `address`, `email`, `website`, `department_id`)
 values ('Ingegneria Informatica', 'Laurea Magistrale', 'Via Ingegneria 10', 'ingegneria@example.com', 'www.ingegneriauniversity.edu', 1),
 ('Chimica Industriale', 'Laurea Magistrale', 'Via Chimica Industriale 15', 'chimica.industriale@example.com', 'www.chimicaindustrialeuniversity.edu', 2),
  ('Scienze della Informazione', 'Laurea Magistrale', 'Via della Informazione 20', 'informazione@example.com', 'www.scienzeinformazioneuniversity.edu', 3),
  ('Fisica Teorica', 'Laurea Magistrale', 'Via Fisica Teorica 25', 'fisicateorica@example.com', 'www.fisicateoricauniversity.edu', 4),
  ('Biologia Molecolare', 'Laurea Magistrale', 'Via Biologia Molecolare 30', 'biologiamolecolare@example.com', 'www.biologiamolecolareuniversity.edu', 5);
 
delete from `degrees`
where `id` = '16'


insert into `students` (`name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degree_id`)
values 
  ('Giovanni', 'Rossi', '1999-02-20', 'RSSGNN99M20H501A', '2022-03-15', 67891, 'giovanni@example.com', 7),
  ('Francesca', 'Bianchi', '1998-07-10', 'BNCFNC98M10H123B', '2022-03-15', 12346, 'francesca@example.com', 8),
  ('Alessio', 'Verdi', '2000-12-05', 'VRDLSS00M05H789C', '2022-03-15', 98766, 'alessio@example.com', 9),
  ('Chiara', 'Gialli', '1997-09-18', 'GLLCHR97M18H456D', '2022-03-15', 34567, 'chiara@example.com', 10),
  ('Marco', 'Neri', '1996-04-30', 'NRMARC96M30H234E', '2022-03-15', 23457, 'marco@example.com', 11);
