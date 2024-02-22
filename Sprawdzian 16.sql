create database TEST;

use TEST;

create table Przedmioty(
	ID_przedmiotu int identity(1,1) not null primary key,
	nazwa varchar(30) not null,
	prowadzacy varchar(30) not null,
	ID_ucznia int not null
)

select * from Przedmioty;


insert into Przedmioty(nazwa, prowadzacy, ID_ucznia) VALUES
('Polski', 'Kowalski', 1),
('Religia', 'NULL', 2),
('Matematyka', 'Olszewska', 2);

select * from Przedmioty;

------------------------------------------Zad1
update Przedmioty
set prowadzacy='Nowak' where ID_przedmiotu=2;

select * from Przedmioty;
------------------------------------------Zad2
create table Uczniowie(
	ID int identity(1,1) not null primary key,
	imie varchar(30) not null
)

insert into Uczniowie(imie) VALUES
('Karol'),
('Kasia');


select * from Uczniowie;
------------------------------------------Zad3
alter table Uczniowie
add wiek int;

update Uczniowie
set wiek=18 where ID=1;

update Uczniowie
set wiek=20 where ID=2;

select * from Uczniowie;

------------------------------------------Zad4
select imie, nazwa 
from Uczniowie 
join Przedmioty 
on Uczniowie.ID=Przedmioty.ID_ucznia;
------------------------------------------Zad5
select imie, COUNT(ID_ucznia) as 'Liczba przedmiotoww' from Przedmioty join Uczniowie on Przedmioty.ID_ucznia=Uczniowie.ID group by imie, ID_ucznia;
------------------------------------------Zad6
alter table Przedmioty
drop prowadzacy;