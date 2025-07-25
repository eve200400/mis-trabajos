
/*CREACION DE LA BASE DE DATOS*/
create database UPJR

use UPJR
/*   Creacion de tablas   */
create table carrera (
idCarrera varchar (3) primary key not null,
nomCarrera varchar (65)
)

create table alumno (
matricula varchar (9) primary key not null,
nomAlumno varchar (30),
apPaterno varchar (15),
apMaterno varchar (15),
correo varchar (21),
carrera varchar (3),
)

create table materia (
idMateria varchar (5) primary key not null,
nomMateria varchar (65),
cuatrimestre int,
)

create table historial (
alumno varchar (9),
materia varchar (5),
calif int,
periodo int 
)

create table peridodo (
idPeriodo int primary key not null,
nomPeriodo varchar (30)
)
/*    Modificar las tablas      */
/*    Agregar campo CARRERA   */

alter table materia
add carrera varchar (3)

/* Relacion de llave foranea entre carrera y alumno */
alter table alumno 
add constraint FK_CaAl
foreign key (Carrera) 
references carrera(idCarrera)

/* Relacion de llave foranea entre carrera y materia */

alter table materia 
add constraint FK_CaMa
foreign key (Carrera) 
references carrera(idCarrera)

/* Relacion de llave foranea entre historial y alumno */
alter table historial
add constraint FK_HiAl
foreign key (alumno)
references alumno (matricula)

/* Relacion de llave foranea entre historial y materia */
alter table historial
add constraint FK_HiMa
foreign key (materia)
references materia (idMateria)

/* Relacion de llave foranea entre historial y periodo */
alter table historial
add constraint FK_HiPe
foreign key (periodo)
references periodo(idPeriodo)
/*  Insertar Informacion en la tabla carrera  */
insert into carrera
(idCarrera, nomCarrera)
values 
('A01','Ingenieria en Tecnologias de la informacion e innovacion digital'),
('A02','Ingenieria en Mecatronica '),
('A03','Ingenieria en Financiera'),
('A04','Ingenieria en Metalurgica'),
('A05','Ingenieria en Industrial'),
('A06','Ingenieria en Sistemas Automotrices'),
('A07','Licenciatura en administracion'),
('A08','Ingenieria en Manufactura Avanzada')


select * from carrera
/*  Insertar Informacion en la tabla alumno  */


insert into alumno
(matricula, nomAlumno, apPaterno,apMaterno ,correo, carrera)
values
('324030159', 'Enrique', 'Presa', 'Gutierrez', '324030159@upjr.edu.mx','A01')

select * from alumno
select * from carrera
select * from historial
select * from materia
select * from

insert into alumno
(matricula, nomAlumno, apPaterno,apMaterno ,correo, carrera)
values
('324030188', 'Cecilia', 'Butanda', 'Hernandez', '324030188@upjr.edu.mx','A08'),
('324030079', 'Diego Imanol', 'Landeros', 'Cano', '324030079@upjr.edu.mx','A02'),
('324030111', 'Jorge Emilio', 'Granados', 'Duran', '324030111@upjr.edu.mx','A08'),
('324030027', 'Fernando', 'Gutierrez', 'Enriquez', '324030027@upjr.edu.mx','A02'),
('324030043', 'Ismael', 'Ramirez', 'Almanza', '324030043@upjr.edu.mx','A06'),
('324030049', 'Alexis', 'Enriquez', 'Garcia', '324030049@upjr.edu.mx','A07'),
('324030115', 'Gael Emiliano', 'Frias', 'Moreno', '324030115@upjr.edu.mx','A01'),
('324030048', 'Osvaldo', 'Garcia', 'Cano', '324030048@upjr.edu.mx','A04'),
('324030085', 'Tadeo Jesus', 'Peguero', 'Alvarado', '324030085@upjr.edu.mx','A05')
use UPJR

select alumno.nomAlumno, alumno.apPaterno, alumno.apMaterno, carrera.idCarrera
from alumno join carrera 
on alumno.carrera= carrera.idCarrera
where idCarrera= 'A01'

select * from materia

insert into materia
(idMateria, nomMateria, cuatrimestre, carrera)
values
('IRT01', 'Fundamentos Matematicos', 1, 'A01'),
('IMT01', 'Fundamentos Matematicos', 1, 'A02'),
('IFI01', 'Fundamentos Matematicos', 1, 'A03'),
('IME01', 'Fundamentos Matematicos', 1, 'A04'),
('IPL01', 'Fundamentos Matematicos', 1, 'A05'),
('ISA01', 'Fundamentos Matematicos', 1, 'A06'),
('LAG01', 'Fundamentos Matematicos', 1, 'A07'),
('IMA01', 'Fundamentos Matematicos', 1, 'A08'),



insert into materia
(idMateria, nomMateria, cuatrimestre, carrera)
values
('IRT02', 'Ingles I', 1, 'A01'),
('IMT02', 'Ingles I', 1, 'A02'),
('IFI02', 'Ingles I', 1, 'A03'),
('IME02', 'Ingles I', 1, 'A04'),
('IPL02', 'Ingles I', 1, 'A05'),
('ISA02', 'Ingles I', 1, 'A06'),
('LAG02', 'Ingles I', 1, 'A07'),
('IMA02', 'Ingles I', 1, 'A08')

insert into materia
(idMateria, nomMateria, cuatrimestre, carrera)
values
('IRT03', 'Desarrollo Humano y Valores', 1, 'A01'),
('IMT03', 'Desarrollo Humano y Valores', 1, 'A02'),
('IFI03', 'Desarrollo Humano y Valores', 1, 'A03'),
('IME03', 'Desarrollo Humano y Valores', 1, 'A04'),
('IPL03', 'Desarrollo Humano y Valores', 1, 'A05'),
('ISA03', 'Desarrollo Humano y Valores', 1, 'A06'),
('LAG03', 'Desarrollo Humano y Valores', 1, 'A07'),
('IMA03', 'Desarrollo Humano y Valores', 1, 'A08')

insert into materia
(idMateria, nomMateria, cuatrimestre, carrera)
values
('IRT04', 'Comunicacion y habilidades digitales', 1, 'A01'),
('IMT04', 'Comunicacion y habilidades digitales', 1, 'A02'),
('IFI04', 'Comunicacion y habilidades digitales', 1, 'A03'),
('IME04', 'Comunicacion y habilidades digitales', 1, 'A04'),
('IPL04', 'Comunicacion y habilidades digitales', 1, 'A05'),
('ISA04', 'Comunicacion y habilidades digitales', 1, 'A06'),
('LAG04', 'Comunicacion y habilidades digitales', 1, 'A07'),
('IMA04', 'Comunicacion y habilidades digitales', 1, 'A08')

/*INSERTAR A LA TABLA PERIODO*/

insert into peridodo
(idPeriodo, nomPeriodo)
values 
(2403, 'Septiembre - Diciembre 2024'),
(2501, 'Enero - Abril  2025'),
(2502, 'Septiembre - Diciembre  2025')

select * from peridodo
select * from materia
select * from historial
select * from alumno
/* Hacer una consulta que permita que fernando gutierrez
se le cargue sus materias correspondientes del periodo que ingreso el cual es
Septiembre - Diciembre 2024 */

insert into historial
(alumno, materia, periodo)
select a.matricula, m.idMateria, 2403
from alumno a join carrera c 
on a.carrera = c.idCarrera join materia m
on c.idCarrera = m.carrera
where a.matricula= '324030027' and m.carrera= 'A02'

select *
from materia
where carrera= 'A02' 

select * from historial

/* CONSULTA QUE MUESTRA LA MATRICULA, NOMBRE DEL ALUMNO (COMPLETO)
PERIODO DE LAS MATERIAS QUE HA CURSADO FERNANDO GUTIERREZ  */


select a.matricula, a.nomAlumno, a.apPaterno, a.apMaterno, p.nomPeriodo, m.nomMateria
from alumno a join historial h
on a.matricula = h.alumno
join materia m
on h.materia = m.idMateria
join peridodo p
on h.periodo = p.idPeriodo
where a.matricula = '324030027'

