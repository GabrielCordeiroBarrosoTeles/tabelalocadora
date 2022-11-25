
create database locadora_rico;
use locadora_rico;
create table categoria(
idCategoria int primary key auto_increment not null,
nome varchar(40) 
);

create table classificacao(
idClassificacao int primary key auto_increment not null,
nome varchar(20),
preco double
);
create table  filme(
idFilme int primary key auto_increment not null,
titulo varchar(100) not null,
ano int not null,
duracao varchar(10),
capa varchar(80),
fk_idCategoria int not null,
fk_idClassificacao int not null,
FOREIGN KEY (fk_idCategoria) REFERENCES categoria (idCategoria),
FOREIGN KEY (fk_idClassificacao) REFERENCES classificacao (idClassificacao)
);

create table dvd(
idDvd int primary key auto_increment not null,
preco_compra double,
situacao varchar(20),
data_compra varchar(45),
fk_idFilme int not null,
FOREIGN KEY (fk_idFilme) REFERENCES filme (idFilme)
);


create table cliente(
idCliente int primary key auto_increment not null,
nome varchar(100),
data_nascimento varchar(10),
rg varchar(20),
cpg varchar(80),
telefone varchar(20),
bairro varchar(45),
rua varchar(45),
numero int,
cep varchar(20)
);

create table funcionario(
idFuncionario int primary key auto_increment not null,
nome varchar(100),
login varchar(45),
senha varchar(45)
);

create table aluguel(
idAluguel int primary key auto_increment not null,
fk_idCliente int not null,
fk_idDvd int not null,
fk_idFuncionario int not null,
FOREIGN KEY (fk_idCliente) REFERENCES cliente (idCliente),
FOREIGN KEY (fk_idDvd) REFERENCES dvd (idDvd),
FOREIGN KEY (fk_idFuncionario) REFERENCES funcionario (idFuncionario),
hora_aluguel varchar(10),
 data_aluguel varchar(10)
);




