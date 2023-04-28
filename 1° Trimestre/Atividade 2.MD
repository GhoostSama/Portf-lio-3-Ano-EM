# Atividade 2<h1>

Não há um motivo especifico por colocar essa atividade aqui, apenas porque sinto que ela não foi massante, foi algo legal de fazer e que adicionasse algo novo nos meus conhecimentos de banco de dados
  
```create table empregado(
 	nome_empregado VARCHAR(50) not null,
  	id_empregado SERIAL not null,
	horas_semanais TIME not null
 )
 
 create table empresa(
	endereco_empresa VARCHAR(50) not null,
	id_empresa serial not null
  )
  
  create table empresa_empregado(
  	id_empregado_fk serial not null,
    id_empresa_fk serial not null
  )
  
  alter table empresa add PRIMARY key (id_empresa)
  alter table empregado add PRIMARY key (id_empregado)
  
  alter table empresa_empregado add FOREIGN key (id_empresa_fk) REFERENCES empresa(id_empresa)
  alter table empresa_empregado add FOREIGN key (id_empregado_fk) REFERENCES empregado(id_empregado)```
