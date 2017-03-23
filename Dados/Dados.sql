create table PAIS(
  CODIGO integer not null,
  NOME varchar(50) not null,
  DDI integer not null,
  constraint PK_PAIS primary key (CODIGO)
);

create table ESTADO(
  CODIGO integer not null,
  NOME varchar(50) not null,
  UF varchar(2) not null,
  PAIS integer not null,
  constraint PK_ESTADO primary key (CODIGO)
);

alter table ESTADO add constraint ESTADOFKPAIS foreign key (PAIS) references PAIS (CODIGO);

create table CIDADE(
  CODIGO integer not null,
  NOME varchar(50) not null,
  DDD integer not null,
  ESTADO integer not null,
  constraint PK_CIDADE primary key (CODIGO)
);

alter table CIDADE add constraint CIDADEFKESTADO foreign key (ESTADO) references ESTADO (CODIGO);
