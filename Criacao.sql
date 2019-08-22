use master
go
drop database db01
go
create database db01
go
use db01
go
create table usuario
(
	Id int identity not null primary key,
	Login varchar(150) not null,
	Senha varchar(200) not null,
	Nome varchar(150) not null,
	Ativo bit not null
)
go
insert into usuario values('admin', 'admin','admin',1)
go
create table Montadora
(
	Id int identity not null primary key,
	Nome varchar(150) not null,
	Logo varchar(150) not null
)
go

create table TipoCombustivel
(
	Id int identity not null primary key,
	Descricao varchar(50) not null
)
go

create table Cilindradas
(
	Id int identity not null primary key,
	TamanhoCilindro int not null
)
go

create table Cor
(
	Id int identity not null primary key,
	Descricao varchar(50) not null
)
go

create table Veiculo
(
	Id int not null identity primary key,
	IdTipoCombustivel int not null foreign key references TipoCombustivel(Id),
	IdCilindradas int not null foreign key references Cilindradas(Id),
	QuantidadePortas int not null,
	QuantidadeValvulas int not null,

)
