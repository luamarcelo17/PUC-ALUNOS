create table DVD_CLIENTE (
    id_cliente number(3),
    nome VARCHAR2(20) not null,
    data_nasc DATE not null,
    sexo VARCHAR2(3),
    constraint pk_cliente PRIMARY KEY (id_cliente)
);

create table DVD_GENERO (
    id_genero number(2),
    descricao VARCHAR2(15) not null,
    constraint pk_genero PRIMARY KEY (id_genero)
);


create table DVD_FILMES (
    id_DVD number(5),
    nome varchar2(50),
    valor number(4,2) not null,
    id_genero number (3),
    constraint pk_DVD PRIMARY KEY (id_DVD),
    constraint fk_genero FOREIGN KEY (id_genero) REFERENCES DVD_GENERO (id_genero)
);

create table DVD_ALUGUEL (
    id_cliente number(3),
    id_DVD number(5),
    data_hora_aluguel TIMESTAMP not null,
    valor number(5,2),
    constraint fk_cliente_aluguel FOREIGN KEY (id_cliente) REFERENCES DVD_CLIENTE (id_cliente),
    constraint fk_dvd_aluguel FOREIGN KEY (id_DVD) REFERENCES DVD_FILMES (id_dvd)
);

INSERT INTO DVD_CLIENTE (id_cliente, nome, data_nasc, sexo) VALUES (001,'Harry Potter','31.07.1980','MAS');
INSERT INTO DVD_CLIENTE (id_cliente, nome, data_nasc, sexo) VALUES (002, 'Hermione Granger', '19.09.1979','FEM');
INSERT INTO DVD_CLIENTE (id_cliente, nome, data_nasc, sexo) VALUES (003,'Dumbledore','21.08.1881','');
INSERT INTO DVD_CLIENTE (id_cliente, nome, data_nasc, sexo) VALUES (004,'Snape','09.01.1960','');
INSERT INTO DVD_CLIENTE (id_cliente, nome, data_nasc, sexo) VALUES (005,'Rony Weasley','01.03.1980','MAS');

INSERT INTO DVD_GENERO (id_genero, descricao) VALUES (1,'Drama');
INSERT INTO DVD_GENERO (id_genero, descricao) VALUES (2, 'Commédia');
INSERT INTO DVD_GENERO (id_genero, descricao) VALUES (3, 'Açãoo');
INSERT INTO DVD_GENERO (id_genero, descricao) VALUES (4, 'Fantasia');
INSERT INTO DVD_GENERO (id_genero, descricao) VALUES (5, 'Terror');

INSERT INTO DVD_FILMES (id_dvd, nome, valor, id_genero) VALUES (1,'A freira 2', 15.0, 5);
INSERT INTO DVD_FILMES (id_dvd, nome, valor, id_genero) VALUES (2, 'O albergue', 5.50, 5);
INSERT INTO DVD_FILMES (id_dvd, nome, valor, id_genero) VALUES (3, 'Harry Potter e a Pedra Filosofal', 12.5, 4);
INSERT INTO DVD_FILMES (id_dvd, nome, valor, id_genero) VALUES (4, 'Titanic', 7.0, 1);
INSERT INTO DVD_FILMES (id_dvd, nome, valor, id_genero) VALUES (5, 'Velozes e Furiosos', 12.20, 1);

INSERT INTO DVD_ALUGUEL (id_cliente, id_dvd, data_hora_aluguel, valor) VALUES (001, 2, TO_DATE ('15/02/2022 15:05','DD/MM/YYYY HH24:MI'), 5.50);
INSERT INTO DVD_ALUGUEL (id_cliente, id_dvd, data_hora_aluguel, valor) VALUES (001, 5, TO_DATE ('15/02/2022 15:06','DD/MM/YYYY HH24:MI'), 12.20);
INSERT INTO DVD_ALUGUEL (id_cliente, id_dvd, data_hora_aluguel, valor) VALUES (004, 2, TO_DATE ( '12/04/2022 20:00','DD/MM/YYYY HH24:MI'), 5.50);
INSERT INTO DVD_ALUGUEL (id_cliente, id_dvd, data_hora_aluguel, valor) VALUES (003, 4, TO_DATE ('10/06/2022 06:00','DD/MM/YYYY HH24:MI'), 7.0);
INSERT INTO DVD_ALUGUEL (id_cliente, id_dvd, data_hora_aluguel, valor) VALUES (005, 1, TO_DATE ('10/10/2022 12:00','DD/MM/YYYY HH24:MI'), 15.0);

