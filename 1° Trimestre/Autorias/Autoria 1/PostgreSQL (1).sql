create table personagem(
  nome VARCHAR(30) not null,
  vida int not null,
  id_personagem serial not null,
  id_status_fk serial not null,
  ac int not null,
  primary key (id_personagem)
)

create table status(
  	id_status serial not null,
	forca INT not null,
	const INT not null,
    destreza INT not null,
  	agilidade INT not null,
  	sabedoria INT not null,
  	inteligencia INT not null,
  	PRIMARY KEY (id_status)
)

alter table personagem add FOREIGN key (id_status_fk) REFERENCES status(id_status) 