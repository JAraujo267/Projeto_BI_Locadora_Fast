create table dvd (
	cod_dvd INT PRIMARY KEY,
	genero VARCHAR(50),
	preco REAL NOT NULL
);
insert into dvd (cod_dvd, genero, preco) values (1, 'Comedy', '4,25');
insert into dvd (cod_dvd, genero, preco) values (2, 'Drama|War', '4,86');
insert into dvd (cod_dvd, genero, preco) values (3, '(no genres listed)', '4,42');
insert into dvd (cod_dvd, genero, preco) values (4, 'Crime|Drama|Horror|Thriller', '4,96');
insert into dvd (cod_dvd, genero, preco) values (5, 'Action|Sci-Fi|Thriller', '2,69');
insert into dvd (cod_dvd, genero, preco) values (6, 'Comedy|Drama|Romance|War', '2,53');
insert into dvd (cod_dvd, genero, preco) values (7, 'Action|Crime|Drama', '3,19');
insert into dvd (cod_dvd, genero, preco) values (8, 'Musical', '1,95');
insert into dvd (cod_dvd, genero, preco) values (9, 'Comedy|Drama|Romance', '1,61');
insert into dvd (cod_dvd, genero, preco) values (10, 'Action|Adventure|Drama|War', '3,24');
