create table aero_aeroportos (
  codigo varchar2(3) primary key,
  cidade varchar2(30),
  estado varchar2(2),
  pais varchar2(20)
);


create table aero_empresas_aereas (
  id_empresa number(3) primary key,
  nome varchar2(20) not null
);

create table aero_pilotos (
  num_licenca varchar2(6) primary key,
  nome varchar2(50),
  CPF number(11) not null,
  nacionalidade varchar2(20),
  data_nasc date not null,
  empresa number(3),
  constraint fk_empresa_piloto FOREIGN KEY (empresa) REFERENCES aero_empresas_aereas (id_empresa)
);


create table aero_passageiros (
  cpf number(11) primary key,
  nome varchar2(50),
  data_nasc date
);

create table aero_voos (
  id_voo number(4) primary key,
  origem varchar2(3),
  destino varchar2(3),
  empresa number(3),
  piloto varchar2(6),
  num_passageiros number(3) not null,
  duracao number(3) not null,
  data_voo date not null,
  constraint fk_piloto foreign key (piloto) references aero_pilotos (num_licenca),
  constraint fk_origem foreign key (origem) references aero_aeroportos (codigo),
  constraint fk_destino foreign key (destino) references aero_aeroportos (codigo),
  constraint fk_empresa foreign key (empresa) references aero_empresas_aereas (id_empresa)
);

create table aero_passagens (
  id_passagem number(5) primary key,
  voo number(5),
  valor number(6),
  passageiro number(11),
  constraint fk_voo foreign key (voo) references aero_voos (id_voo),
  constraint fk_passageiro foreign key (passageiro) references aero_passageiros (cpf)
);

INSERT INTO AERO_AEROPORTOS (codigo, cidade, estado, pais) VALUES ('VCP', 'Campinas', 'SP', 'Brasil');
INSERT INTO AERO_AEROPORTOS (codigo, cidade, estado, pais) VALUES ('CGB', 'Cuiabá', 'MT', 'Brasil');
INSERT INTO AERO_AEROPORTOS (codigo, cidade, estado, pais) VALUES ('GRU', 'São Paulo', 'SP', 'Brasil');
INSERT INTO AERO_AEROPORTOS (codigo, cidade, estado, pais) VALUES ('GIG', 'Rio de Janeiro', 'RJ', 'Brasil');
INSERT INTO AERO_AEROPORTOS (codigo, cidade, estado, pais) VALUES ('CNF', 'Belo Horizonte', 'BH', 'Brasil');
INSERT INTO AERO_AEROPORTOS (codigo, cidade, estado, pais) VALUES ('BSB', 'Brasília', 'DF', 'Brasil');

INSERT INTO AERO_EMPRESAS_AEREAS (id_empresa, nome) VALUES (101, 'Gol');
INSERT INTO AERO_EMPRESAS_AEREAS (id_empresa, nome) VALUES (102, 'Azul');
INSERT INTO AERO_EMPRESAS_AEREAS (id_empresa, nome) VALUES (103, 'Latam');


INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('2762BR', 'Pratik Skaggs', 12123234399, 'Brasil', '10/09/1972', 106);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('5469BR', 'Sevita Poulos', 12123234400, 'Argentina', '02/10/1979', 106);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('1052BR', 'Romaine Dingman', 12123234401, 'Brasil', '23/07/1962', 105);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('9961BR', 'Carnation Dingman', 12123234402, 'Brasil', '30/11/1967', 106);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('7747BR', 'Uehudah Hack', 12123234403, 'Estados Unidos', '24/11/1965', 104);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('2732BR', 'Niven Glaser', 12123234404, 'Brasil', '25/02/1970', 102);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('1132BR', 'Helen Messinger', 12123234405, 'Brasil', '01/09/1970', 101);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('8967BR', 'Usagi Denny', 12123234406, 'Argentina', '04/10/1960', 104);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('8889BR', 'Sunita Poulos', 12123234407, 'Brasil', '09/07/1979', 102);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('6096BR', 'Carlyon Gorby', 12123234408, 'Brasil', '04/06/1979', 103);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('9722BR', 'Sevita Hershberger', 12123234409, 'Estados Unidos', '02/03/1970', 101);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('2733BR', 'Vinaya Justus', 12123234410, 'Brasil', '13/12/1966', 106);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('5893BR', 'Edison Drye', 12123234411, 'Brasil', '06/05/1978', 104);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('4067BR', 'Ardath Enriquez', 12123234412, 'Estados Unidos', '27/10/1976', 101);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('2572BR', 'Ruthie Coco', 12123234413, 'Brasil', '27/12/1965', 103);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('9236BR', 'Mihoko Scholl', 12123234414, 'Brasil', '13/02/1965', 105);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('1565BR', 'Whitmore Squires', 12123234415, 'Brasil', '30/04/1971', 106);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('6258BR', 'Ridgley Leo', 12123234416, 'Argentina', '07/05/1965', 101);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('2516BR', 'Orazio Hart', 12123234417, 'Argentina', '17/07/1964', 104);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('2545BR', 'Pedrog Mccurdy', 12123234418, 'Brasil', '29/06/1970', 103);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('4636BR', 'Tristan Karns', 12123234419, 'Brasil', '11/01/1971', 106);
INSERT INTO AERO_PILOTOS (num_licenca, nome, cpf, nacionalidade, data_nasc, empresa) VALUES ('9707BR', 'Ajani Harding', 12123234420, 'Brasil', '19/06/1967', 103);


INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122233312, 'Heloísa Lidiane Fernandes Galvão', '30/11/1999');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122244413, 'Filipe Miguel Ferreira Neto', '05/10/2016');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122255514, 'Teobaldo Barnabé de Mascarenhas Neto', '14/01/2021');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122266615, 'Adônis Breno Batista Jr.', '19/11/1987');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122277716, 'Diana Franco de Matos', '24/03/1987');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122288817, 'Simão Assunção', '15/01/2004');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122299918, 'Lúcio Rodolfo Bittencourt Sobrinho', '12/07/2022');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122311019, 'Emanuel Ferreira', '05/01/2004');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122322120, 'Angélica Carrara Pires', '09/01/2017');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122333221, 'Áureo Eliel Bittencourt de Assis', '17/06/2006');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122344322, 'Olímpia Paula de Gil', '06/08/1995');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122355423, 'Josiane Abreu Galindo', '01/01/2011');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122366524, 'Iago Wesley de Lozano Neto', '05/01/2010');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122377625, 'Dante Leandro Padrão Neto', '25/05/2021');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122388726, 'Janete Cordeiro', '20/07/1996');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122399827, 'Luis Breno de Balestero', '19/11/2009');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122410928, 'Luzia Aragão', '17/08/2016');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122422029, 'Gian Giuseppe Escobar de Santiago', '09/03/1981');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122433130, 'Daniela Ferreira de Godói', '12/06/2010');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122444231, 'Daniel Leon Brasil', '24/03/2002');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122455332, 'Alexandre Ricardo Duarte Jr.', '25/03/1989');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122466433, 'Adriana Carrara', '18/12/2018');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122477534, 'Elano Campos Uchoa', '25/08/2000');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122488635, 'Marli Mikaella Correia Grego de Cardoso', '30/03/2013');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122499736, 'Elano Madeira de Ramos', '16/06/1997');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122510837, 'Ana Michele de Barros', '27/04/1995');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122521938, 'David Karl Abreu da Silva', '04/05/2009');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122533039, 'Ana Lili de Aguiar', '12/02/1984');
INSERT INTO AERO_PASSAGEIROS (cpf, nome, data_nasc) VALUES (11122544140, 'Franco Grego de Queirós', '16/09/1994');


INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1212, 'BSB', 'GRU', 102, '2762BR', 195, 90, '29/12/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1213, 'BSB', 'CGB', 102, '2762BR', 167, 50, '30/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1214, 'CGB', 'GIG', 101, '5469BR', 197, 122, '18/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1215, 'VCP', 'CGB', 103, '1052BR', 172, 110, '14/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1216, 'VCP', 'GIG', 102, '9961BR', 190, 45, '22/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1217, 'BSB', 'VCP', 103, '7747BR', 165, 92, '08/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1218, 'VCP', 'CGB', 103, '2732BR', 185, 119, '17/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1219, 'GIG', 'CNF', 101, '1132BR', 185, 55, '12/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1220, 'VCP', 'GIG', 103, '8967BR', 168, 48, '17/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1221, 'GRU', 'GIG', 101, '8889BR', 173, 50, '09/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1222, 'CNF', 'GIG', 102, '2762BR', 172, 65, '07/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1223, 'BSB', 'VCP', 101, '6096BR', 198, 53, '31/12/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1224, 'GIG', 'CNF', 102, '2762BR', 180, 52, '30/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1225, 'CGB', 'GRU', 103, '9722BR', 197, 120, '13/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1226, 'GIG', 'BSB', 103, '2733BR', 179, 115, '13/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1227, 'GRU', 'CNF', 102, '5893BR', 195, 60, '20/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1228, 'GIG', 'VCP', 102, '9722BR', 191, 50, '16/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1229, 'VCP', 'CNF', 102, '9961BR', 172, 50, '17/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1230, 'GRU', 'CGB', 103, '8967BR', 192, 118, '01/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1231, 'GRU', 'CGB', 103, '9722BR', 185, 119, '07/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1232, 'CGB', 'CNF', 101, '1132BR', 170, 110, '31/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1233, 'VCP', 'BSB', 103, '9722BR', 192, 62, '30/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1234, 'GRU', 'CNF', 102, '2732BR', 195, 45, '29/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1235, 'BSB', 'CNF', 103, '4067BR', 162, 100, '18/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1236, 'BSB', 'GIG', 101, '6096BR', 182, 115, '10/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1237, 'CNF', 'CGB', 102, '2572BR', 167, 120, '08/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1238, 'GRU', 'CGB', 102, '2733BR', 168, 125, '10/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1239, 'GIG', 'VCP', 103, '9236BR', 198, 55, '28/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1240, 'BSB', 'CNF', 101, '1565BR', 184, 121, '06/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1241, 'VCP', 'CNF', 101, '5469BR', 183, 60, '09/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1242, 'GIG', 'CNF', 101, '1565BR', 188, 57, '04/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1243, 'BSB', 'CNF', 101, '6258BR', 163, 117, '02/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1244, 'BSB', 'GRU', 101, '1565BR', 171, 115, '20/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1245, 'CNF', 'GRU', 102, '4067BR', 191, 50, '13/12/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1246, 'GRU', 'CNF', 103, '2762BR', 171, 50, '06/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1247, 'CGB', 'BSB', 102, '2516BR', 172, 50, '19/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1248, 'GIG', 'BSB', 101, '2545BR', 191, 56, '19/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1249, 'GIG', 'CGB', 103, '4067BR', 193, 124, '11/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1250, 'GRU', 'CGB', 103, '2733BR', 187, 118, '22/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1251, 'VCP', 'CNF', 103, '2762BR', 199, 63, '21/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1252, 'BSB', 'GIG', 102, '4636BR', 180, 110, '07/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1253, 'VCP', 'CGB', 102, '9961BR', 166, 121, '11/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1254, 'VCP', 'CGB', 103, '4636BR', 187, 119, '05/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1255, 'GRU', 'CGB', 103, '2572BR', 200, 110, '12/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1256, 'CNF', 'VCP', 102, '9707BR', 199, 59, '29/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1257, 'CNF', 'GRU', 101, '5893BR', 165, 61, '16/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1258, 'CNF', 'GIG', 102, '8967BR', 197, 59, '29/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1259, 'CNF', 'BSB', 101, '6258BR', 174, 110, '09/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1260, 'GRU', 'CGB', 101, '1565BR', 183, 120, '30/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1261, 'CGB', 'CNF', 102, '9707BR', 172, 105, '25/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1262, 'GIG', 'BSB', 103, '7747BR', 178, 110, '23/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1263, 'CGB', 'GRU', 101, '8889BR', 172, 123, '10/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1264, 'GRU', 'CGB', 102, '9961BR', 164, 119, '21/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1265, 'BSB', 'VCP', 102, '2733BR', 200, 100, '03/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1266, 'BSB', 'CGB', 102, '9722BR', 173, 55, '12/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1267, 'GIG', 'BSB', 101, '1132BR', 199, 109, '22/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1268, 'GIG', 'VCP', 101, '6258BR', 186, 50, '22/12/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1269, 'VCP', 'CNF', 103, '5893BR', 197, 48, '05/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1270, 'CNF', 'GIG', 103, '9722BR', 196, 60, '15/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1271, 'GIG', 'BSB', 102, '4067BR', 176, 120, '05/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1272, 'GIG', 'CGB', 102, '2516BR', 197, 54, '12/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1273, 'GRU', 'GIG', 102, '7747BR', 161, 50, '16/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1274, 'GRU', 'CGB', 103, '6258BR', 166, 116, '29/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1275, 'CGB', 'CNF', 101, '1565BR', 174, 107, '18/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1276, 'CGB', 'BSB', 101, '9722BR', 178, 55, '28/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1277, 'CNF', 'VCP', 102, '9707BR', 163, 61, '07/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1278, 'BSB', 'CNF', 102, '5893BR', 190, 100, '27/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1279, 'GRU', 'BSB', 101, '6258BR', 168, 64, '22/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1280, 'CGB', 'GIG', 101, '8889BR', 198, 123, '03/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1281, 'GIG', 'GRU', 102, '9722BR', 161, 54, '04/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1282, 'VCP', 'CNF', 103, '7747BR', 191, 45, '15/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1283, 'GRU', 'CGB', 103, '2762BR', 190, 110, '13/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1284, 'BSB', 'CGB', 101, '1132BR', 173, 57, '11/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1285, 'CNF', 'CGB', 103, '7747BR', 193, 110, '15/12/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1286, 'GRU', 'BSB', 103, '9236BR', 200, 64, '11/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1287, 'GIG', 'CNF', 101, '5469BR', 198, 55, '22/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1288, 'GRU', 'GIG', 102, '8967BR', 166, 55, '30/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1289, 'VCP', 'GIG', 103, '7747BR', 186, 60, '01/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1290, 'VCP', 'GIG', 103, '8967BR', 169, 61, '09/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1291, 'BSB', 'CGB', 103, '2762BR', 183, 59, '16/12/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1292, 'GIG', 'GRU', 103, '2572BR', 163, 50, '28/09/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1293, 'VCP', 'CNF', 102, '5893BR', 190, 60, '27/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1294, 'GIG', 'BSB', 102, '2516BR', 193, 110, '29/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1295, 'VCP', 'CGB', 101, '5469BR', 174, 119, '31/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1296, 'CNF', 'GIG', 103, '4067BR', 189, 70, '31/07/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1297, 'GRU', 'CGB', 103, '2516BR', 192, 128, '24/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1298, 'VCP', 'CGB', 103, '9961BR', 196, 130, '18/08/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1299, 'VCP', 'CNF', 102, '7747BR', 172, 59, '08/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1300, 'CNF', 'BSB', 102, '2732BR', 183, 70, '19/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1301, 'VCP', 'CNF', 103, '2572BR', 188, 65, '03/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1302, 'VCP', 'BSB', 102, '2516BR', 186, 66, '01/06/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1303, 'CNF', 'VCP', 101, '1132BR', 191, 63, '12/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1304, 'GRU', 'GIG', 101, '1565BR', 190, 49, '09/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1305, 'GRU', 'CNF', 103, '9236BR', 200, 55, '30/10/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1306, 'GIG', 'GRU', 102, '4067BR', 198, 60, '26/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1307, 'CGB', 'CNF', 102, '2516BR', 187, 63, '21/04/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1308, 'GRU', 'GIG', 101, '5469BR', 198, 50, '03/11/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1309, 'VCP', 'CGB', 102, '2732BR', 177, 120, '03/05/2023');
INSERT INTO AERO_VOOS (id_voo, origem, destino, empresa, piloto, num_passageiros, duracao, data_voo) VALUES (1310, 'GIG', 'GRU', 102, '7747BR', 194, 55, '28/08/2023');


INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9824, 1234, 1269, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9825, 1245, 761, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9826, 1245, 635, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9827, 1243, 1242, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9828, 1245, 631, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9829, 1227, 509, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9830, 1217, 867, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9831, 1228, 1019, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9832, 1247, 577, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9833, 1244, 842, 11122510837);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9834, 1233, 1150, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9835, 1233, 498, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9836, 1215, 337, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9837, 1240, 691, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9838, 1239, 579, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9839, 1222, 1158, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9840, 1214, 1066, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9841, 1229, 1465, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9842, 1224, 1481, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9843, 1222, 769, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9844, 1219, 776, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9845, 1216, 1415, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9846, 1227, 1153, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9847, 1213, 1230, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9848, 1219, 950, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9849, 1239, 385, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9850, 1241, 362, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9851, 1229, 392, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9852, 1247, 352, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9853, 1214, 1058, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9854, 1232, 642, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9855, 1227, 1103, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9856, 1237, 822, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9857, 1240, 334, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9858, 1212, 839, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9859, 1230, 460, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9860, 1222, 947, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9861, 1219, 818, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9862, 1219, 1342, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9863, 1219, 615, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9864, 1228, 430, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9865, 1244, 956, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9866, 1222, 393, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9867, 1244, 1269, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9868, 1214, 276, 11122366524);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9869, 1219, 572, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9870, 1228, 1257, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9871, 1241, 1118, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9872, 1215, 1022, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9873, 1224, 1307, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9874, 1233, 1437, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9875, 1222, 370, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9876, 1228, 937, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9877, 1241, 1004, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9878, 1213, 444, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9879, 1212, 1290, 11122333221);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9880, 1228, 1374, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9881, 1224, 897, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9882, 1224, 677, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9883, 1214, 1369, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9884, 1236, 1180, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9885, 1225, 872, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9886, 1236, 869, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9887, 1221, 438, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9888, 1216, 466, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9889, 1228, 836, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9890, 1227, 783, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9891, 1222, 819, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9892, 1234, 1473, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9893, 1223, 695, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9894, 1247, 1193, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9895, 1218, 753, 11122510837);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9896, 1242, 415, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9897, 1218, 230, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9898, 1245, 308, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9899, 1236, 560, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9900, 1232, 761, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9901, 1225, 1262, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9902, 1216, 351, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9903, 1216, 866, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9904, 1244, 1131, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9905, 1225, 1267, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9906, 1243, 888, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9907, 1221, 323, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9908, 1219, 1151, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9909, 1247, 256, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9910, 1219, 674, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9911, 1233, 1108, 11122510837);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9912, 1226, 1212, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9913, 1225, 1194, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9914, 1220, 1461, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9915, 1239, 475, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9916, 1213, 1066, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9917, 1237, 709, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9918, 1236, 393, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9919, 1223, 318, 11122366524);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9920, 1237, 565, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9921, 1223, 485, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9922, 1221, 496, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9923, 1213, 1374, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9924, 1224, 460, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9925, 1228, 376, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9926, 1240, 446, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9927, 1219, 986, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9928, 1225, 983, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9929, 1244, 502, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9930, 1213, 735, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9931, 1246, 1444, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9932, 1224, 1310, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9933, 1238, 785, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9934, 1233, 745, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9935, 1226, 1047, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9936, 1228, 732, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9937, 1232, 1495, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9938, 1230, 260, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9939, 1224, 707, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9940, 1235, 341, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9941, 1232, 1289, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9942, 1220, 1372, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9943, 1219, 291, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9944, 1241, 1356, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9945, 1212, 1164, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9946, 1215, 1349, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9947, 1226, 661, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9948, 1244, 904, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9949, 1222, 576, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9950, 1220, 1387, 11122333221);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9951, 1240, 940, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9952, 1212, 649, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9953, 1244, 553, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9954, 1242, 1245, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9955, 1216, 1175, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9956, 1238, 674, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9957, 1227, 512, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9958, 1242, 415, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9959, 1246, 539, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9960, 1238, 784, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9961, 1226, 1098, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9962, 1213, 959, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9963, 1235, 247, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9964, 1233, 1154, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9965, 1241, 1486, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9966, 1247, 503, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9967, 1223, 497, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9968, 1238, 996, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9969, 1246, 400, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9970, 1239, 243, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9971, 1234, 697, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9972, 1241, 356, 11122510837);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9973, 1218, 263, 11122366524);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9974, 1233, 980, 11122333221);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9975, 1219, 724, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9976, 1225, 756, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9977, 1217, 917, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9978, 1214, 737, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9979, 1232, 752, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9980, 1235, 413, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9981, 1247, 1123, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9982, 1217, 1308, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9983, 1225, 912, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9984, 1213, 1264, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9985, 1219, 447, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9986, 1224, 937, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9987, 1222, 1461, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9988, 1236, 1259, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9989, 1217, 746, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9990, 1239, 1327, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9991, 1224, 1328, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9992, 1244, 1133, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9993, 1226, 556, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9994, 1224, 861, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9995, 1217, 208, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9996, 1222, 203, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9997, 1232, 354, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9998, 1236, 289, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (9999, 1242, 718, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10000, 1239, 897, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10001, 1231, 796, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10002, 1229, 1156, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10003, 1220, 1176, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10004, 1212, 1247, 11122366524);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10005, 1228, 1310, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10006, 1236, 1010, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10007, 1243, 704, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10008, 1220, 1062, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10009, 1227, 1033, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10010, 1221, 459, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10011, 1232, 226, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10012, 1219, 774, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10013, 1220, 387, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10014, 1247, 605, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10015, 1244, 563, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10016, 1218, 913, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10017, 1222, 561, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10018, 1213, 847, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10019, 1233, 550, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10020, 1216, 304, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10021, 1230, 1138, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10022, 1227, 885, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10023, 1244, 1121, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10024, 1220, 680, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10025, 1213, 339, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10026, 1227, 695, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10027, 1236, 667, 11122510837);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10028, 1222, 1343, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10029, 1234, 915, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10030, 1214, 475, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10031, 1230, 1395, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10032, 1237, 937, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10033, 1236, 465, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10034, 1221, 303, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10035, 1245, 1448, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10036, 1238, 518, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10037, 1225, 1289, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10038, 1232, 464, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10039, 1234, 365, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10040, 1244, 628, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10041, 1230, 454, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10042, 1228, 427, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10043, 1227, 260, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10044, 1245, 423, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10045, 1232, 994, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10046, 1220, 1132, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10047, 1230, 504, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10048, 1223, 308, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10049, 1218, 1180, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10050, 1230, 1073, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10051, 1233, 611, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10052, 1244, 526, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10053, 1247, 1429, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10054, 1236, 1256, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10055, 1247, 736, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10056, 1234, 1336, 11122366524);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10057, 1239, 849, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10058, 1214, 831, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10059, 1212, 1000, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10060, 1222, 422, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10061, 1216, 453, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10062, 1218, 643, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10063, 1212, 475, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10064, 1218, 544, 11122533039);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10065, 1227, 248, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10066, 1242, 1469, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10067, 1220, 1183, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10068, 1234, 816, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10069, 1242, 950, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10070, 1238, 613, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10071, 1244, 1416, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10072, 1233, 1020, 11122355423);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10073, 1246, 1398, 11122333221);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10074, 1244, 997, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10075, 1234, 1117, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10076, 1222, 511, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10077, 1234, 816, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10078, 1233, 471, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10079, 1222, 525, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10080, 1217, 841, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10081, 1233, 808, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10082, 1228, 1351, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10083, 1224, 1212, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10084, 1243, 541, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10085, 1242, 1156, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10086, 1233, 937, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10087, 1218, 435, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10088, 1240, 1202, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10089, 1231, 1244, 11122377625);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10090, 1213, 875, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10091, 1222, 1399, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10092, 1230, 244, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10093, 1228, 210, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10094, 1229, 1240, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10095, 1244, 776, 11122422029);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10096, 1214, 1145, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10097, 1233, 697, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10098, 1218, 1255, 11122366524);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10099, 1244, 921, 11122288817);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10100, 1220, 522, 11122311019);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10101, 1230, 406, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10102, 1233, 570, 11122277716);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10103, 1222, 1448, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10104, 1214, 1119, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10105, 1223, 981, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10106, 1222, 314, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10107, 1232, 973, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10108, 1212, 972, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10109, 1229, 1081, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10110, 1229, 1140, 11122544140);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10111, 1223, 521, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10112, 1237, 1153, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10113, 1232, 1367, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10114, 1213, 1302, 11122488635);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10115, 1217, 1263, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10116, 1242, 492, 11122255514);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10117, 1247, 1311, 11122410928);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10118, 1219, 1358, 11122299918);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10119, 1217, 753, 11122322120);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10120, 1229, 1179, 11122499736);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10121, 1227, 247, 11122233312);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10122, 1246, 485, 11122344322);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10123, 1233, 781, 11122399827);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10124, 1240, 637, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10125, 1240, 600, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10126, 1232, 260, 11122444231);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10127, 1214, 1209, 11122388726);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10128, 1214, 904, 11122510837);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10129, 1237, 849, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10130, 1236, 859, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10131, 1232, 1434, 11122477534);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10132, 1224, 1002, 11122455332);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10133, 1234, 395, 11122466433);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10134, 1242, 327, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10135, 1224, 291, 11122433130);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10136, 1217, 429, 11122244413);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10137, 1239, 1154, 11122266615);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10138, 1215, 1419, 11122521938);
INSERT INTO AERO_PASSAGENS (id_passagem, voo, valor, passageiro) VALUES (10139, 1247, 1034, 11122466433);
