create table rs_tipos_de_postagem (
  cod_tipo_post number(2) primary key,
  nome varchar2(20)
);

create table rs_usuarios (
  id_user number(5) primary key,
  username varchar2(30) not null unique,
  nome varchar2(50),
  email varchar2(40) not null,
  data_nasc date not null
);

Create table rs_postagens ( 
  Id_post number(10) primary key,
  usuario number(5),
  tipo_postagem number(2),
  Data_post date not null,  
  Num_likes number(10) not null, 
  Num_coments number(10) not null, 
  Num_alcance number(10) not null, 
  Localizacao varchar2(20),
  constraint fk_usuario foreign key (usuario) references rs_usuarios (id_user),
  constraint fk_post foreign key (tipo_postagem) references rs_tipos_de_postagem (cod_tipo_post)
); 

insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(1,'foto_feed');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(2,'video_feed');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(3,'story');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(4,'reels');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(5,'boomerang');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(6,'enquete');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(7,'pergunta');
insert into rs_tipos_de_postagem (cod_tipo_post, nome) values(8,'live');

insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12125, 'heloísa1990', 'Heloísa Lidiane Fernandes Galvão',	'heloísa1990@bol.com.br',	'20/12/1990');
insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12126,'filipe1962','Filipe Miguel Ferreira Neto','filipe1962@gmail.com','14/06/1962');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12127,'teobaldo1977','Teobaldo Barnabé de Mascarenhas Neto','teobaldo1977@bol.com.br','03/03/1977');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12128,'adônis1979','Adônis Breno Batista Jr.','adônis1979@outlook.com','18/10/1979');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12129,'diana1994','Diana Franco de Matos','diana1994@gmail.com','20/06/1994');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12130,'simão1992','Simão Assunção','simão1992@bol.com.br','21/09/1992');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12131,'lúcio2004','Lúcio Rodolfo Bittencourt Sobrinho','lúcio2004@outlook.com','17/02/2004');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12132,'emanuel1983','Emanuel Ferreira','emanuel1983@outlook.com','07/04/1983');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12133,'angélica2003','Angélica Carrara Pires','angélica2003@gmail.com','28/2/2003');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12134,'áureo1988','Áureo Eliel Bittencourt de Assis','áureo1988@outlook.com','03/05/1988');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12135,'olímpia2002','Olímpia Paula de Gil','olímpia2002@bol.com.br','25/06/2002');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12136,'josiane1961','Josiane Abreu Galindo','josiane1961@bol.com.br','06/11/1961');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12137,'iago2019','Iago Wesley de Lozano Neto','iago2019@outlook.com','20/12/2019');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12138,'dante1989','Dante Leandro Padrão Neto','dante1989@bol.com.br','08/03/1989');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12139,'janete1967','Janete Cordeiro','janete1967@bol.com.br','03/06/1967');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12140,'luis2005','Luis Breno de Balestero','luis2005@outlook.com','12/04/2005');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12141,'luzia2016','Luzia Aragão','luzia2016@bol.com.br','28/09/2016');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12142,'gian2001','Gian Giuseppe Escobar de Santiago','gian2001@gmail.com','30/9/2001');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12143,'daniela1975','Daniela Ferreira de Godói','daniela1975@outlook.com','13/12/1975');
  insert into rs_usuarios (id_user, username, nome,email, data_nasc) values (12144,'daniel1971','Daniel Leon Brasil','daniel1971@outlook.com','16/11/1971');
  

insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54584,12125,4,'18/08/2023',463,177,536,'Lago do Junco');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54585,12142,2,'27/03/2023',419,33,555,'Bonito');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54586,12139,4,'14/04/2023',410,117,587,'Verga');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54587,12137,3,'29/07/2023',363,40,364,'Caresalzinho');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54588,12131,2,'26/04/2022',413,9,549,'Mussum');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54589,12140,1,'04/10/2022',474,51,686,'Ipurá');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54590,12142,7,'04/10/2023',471,36,646,'Alvorada de Minas');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54591,12134,3,'29/10/2020',137,200,184,'Verga');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54592,12140,3,'23/12/2023',444,194,521,'Arunta');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54593,12132,3,'23/11/2023',457,199,668,'Igarassú');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54594,12134,2,'05/05/2021',364,151,490,'Nossa Sra do Socorro');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54595,12125,3,'12/04/2020',126,25,132,'Olindo');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54596,12131,7,'13/02/2023',312,185,400,'São José de Ubá');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54597,12134,1,'28/12/2021',55,110,72,'Nossa Sra do Socorro');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54598,12131,6,'20/09/2021',393,49,400,'Curupeba');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54599,12138,1,'06/12/2021',188,68,266,'Curupeba');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54600,12125,4,'17/10/2020',131,28,154,'Saldanha');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54601,12127,3,'11/07/2020',467,195,683,'Curiaú');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54602,12125,4,'23/06/2022',153,143,198,'São Benedito');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54603,12140,1,'28/07/2020',491,142,512,'Umarizal');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54604,12140,4,'11/09/2020',217,78,254,'Matriz de Camaragibe');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54605,12126,7,'26/04/2022',243,193,243,'Bubu');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54606,12131,8,'12/06/2022',126,191,164,'Nossa Sra do Socorro');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54607,12141,6,'18/07/2020',118,163,119,'Arapuá');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54608,12138,5,'03/10/2022',468,45,630,'Baby');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54609,12130,5,'28/04/2020',423,64,571,'Ipurá');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54610,12131,6,'12/04/2022',219,192,261,'Ipiaçu');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54611,12139,3,'07/05/2023',288,173,382,'Olindo');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54612,12131,1,'27/11/2020',67,72,92,'São José de Ubá');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54613,12127,8,'24/12/2022',311,38,318,'Nossa Sra do Socorro');
insert into rs_postagens (Id_post, usuario, tipo_postagem, Data_post, Num_likes, Num_coments, Num_alcance, Localizacao) values (54614,12136,8,'25/08/2022',467,23,519,'Bubu');
