create database DATAFLUX;

use dataflux;

create table CadastroCliente (
idCliente int primary key auto_increment,
razaoSocial varchar(45),
CNPJ char(14),
email varchar(100),
senha varchar(40)
);

insert into CadastroCliente (razaoSocial, CNPJ, email, senha) values 
	( 'Sonda Supermercados Exp. e Imp. s/a', '01937635000182', 'sondasupermercados@sondas.com', 'dataflux123'),
    ( 'Carrefour Comercio e Industria Ltda', '45543915000181', 'carrefour@carrefour.com', 'dataflux123'),
    ( 'Barcelona Comercio Varejista e Atacadista S/A', '06057223000171', 'assaiatacadista@assai.com', 'dataflux123');


select * from CadastroCliente;

create table Sensor (
idSensor int primary key auto_increment,
setor varchar(45) ,
movimento datetime,
registro int,constraint chkRegistro check (registro in(0,1))
);

 insert into Sensor (setor, movimento, registro) values 
	('Corredor 1', '2022-08-24 09:00:00', 0),
    ('Corredor 2', '2022-08-25 09:01:00', 1),
    ('Corredor 3', '2022-08-25 09:02:00', 0);

select * from Sensor;

drop table CadastroCliente;

drop table Sensor;

drop database dataflux;
