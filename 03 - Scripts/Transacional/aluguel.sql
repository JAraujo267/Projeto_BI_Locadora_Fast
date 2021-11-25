create table aluguel (
	cod_aluguel INT PRIMARY KEY,
	dt_aluguel DATE,
	hr_aluguel VARCHAR(50),
	codcliente INT,
	cod_dvd INT,
	cod_avaliacao INT,
	FOREIGN KEY (codcliente) REFERENCES cliente (codcliente),
	FOREIGN KEY (cod_dvd) REFERENCES dvd (cod_dvd),
	FOREIGN KEY (cod_avaliacao) REFERENCES avaliacao (cod_avaliacao)
	
);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (1, '2018/02/23', '1:34 PM', 1, 5, 10);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (2, '2021/03/02', '5:27 PM', 8, 6, 9);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (3, '2018/02/12', '4:51 PM', 6, 3, 4);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (4, '2019/06/07', '9:10 AM', 2, 7, 5);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (5, '2017/01/10', '10:02 AM', 1, 9, 8);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (6, '2020/04/12', '4:24 PM', 5, 8, 7);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (7, '2018/04/09', '9:21 AM', 7, 8, 10);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (8, '2019/03/24', '10:38 AM', 1, 9, 3);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (9, '2021/07/06', '11:06 AM', 10, 5, 1);
insert into aluguel (cod_aluguel, dt_aluguel, hr_aluguel, codcliente, cod_dvd, cod_avaliacao) values (10, '2018/02/21', '9:20 AM', 4, 3, 9);