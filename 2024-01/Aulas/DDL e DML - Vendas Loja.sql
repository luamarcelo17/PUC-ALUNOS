create table loja_produtos (
  cod_prod varchar2(6) primary key,
  nome varchar2(10) not null,
  qtde_compras number(4) not null,
  estoque_atual number(4) not null,
  valor_compra number(5,2) not null,
  valor_venda number(6,2) not null,
  lucro_estimado number(5,2) not null
);

create table loja_cargos (
  cod_cargo number(4) primary key,
  nome varchar2(20) not null,
  salario number (7,2)  
);

create table loja_funcionarios (
  cod_func number(5) primary key,
  nome varchar2(50) not null,
  cpf  number(11) not null unique,
  data_nasc date,
  endereco varchar2(50), 
  fone varchar2(13) not null,
  cargo number(4) not null,
  constraint fk_cargo foreign key (cargo) references loja_cargos (cod_cargo)
);

  CREATE TABLE LOJA_VENDAS (	
    ID_VENDA NUMBER(5) primary key, 
  	DATA_VENDA DATE not null, 
  	PRODUTO VARCHAR2(6) not null, 
  	VALOR NUMBER(5,2) not null, 
  	PGTO VARCHAR2(9), 
  	DESCONTO VARCHAR2(3), 
  	VALOR_FINAL NUMBER(5,2) not null, 
  	FUNCIONARIO NUMBER(5) not null,
    constraint fk_cod_prod foreign key (produto) references loja_produtos (cod_prod),
    constraint fk_cod_func foreign key (funcionario) references loja_funcionarios (cod_func)
);

INSERT INTO LOJA_CARGOS (cod_cargo, nome, salario) VALUES (1111, 'Vendedor', 1500);
INSERT INTO LOJA_CARGOS (cod_cargo, nome, salario) VALUES (2222, 'Gerente', 4000);
INSERT INTO LOJA_CARGOS (cod_cargo, nome, salario) VALUES (3333, 'Repositor de Estoque', 1300);
INSERT INTO LOJA_CARGOS (cod_cargo, nome, salario) VALUES (4444, 'Caixa', 3000);
INSERT INTO LOJA_CARGOS (cod_cargo, nome, salario) VALUES (5555, 'Serviço Geral', 1200);

INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10001, 'Pratik Skaggs', 100000011, '8/10/1988', 'Rua A, 111, Casa A', '(99)9999-1111', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10002, 'Uehudah Hack', 200000012, '12/10/1992', 'Rua B, 112, Casa B', '(99)9999-1112', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10003, 'Edison Drye', 300000013, '11/5/1986', 'Rua C, 113, Casa C', '(99)9999-1113', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10004, 'Mihoko Scholl', 400000014, '23/2/1988', 'Rua D, 114, Casa D', '(99)9999-1114', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10005, 'Ajani Harding', 500000015, '28/10/1992', 'Rua E, 115, Casa E', '(99)9999-1115', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10006, 'Ruthie Coco', 600000016, '24/6/1992', 'Rua F, 116, Casa F', '(99)9999-1116', 2222);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10007, 'Orazio Hart', 700000017, '28/7/1988', 'Rua G, 117, Casa G', '(99)9999-1117', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10008, 'Vinaya Justus', 800000018, '2/10/1989', 'Rua H, 118, Casa H', '(99)9999-1118', 5555);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10009, 'Tristan Karns', 900000019, '7/5/1991', 'Rua I, 119, Casa I', '(99)9999-1119', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10010, 'Ardath Enriquez', 1000000020, '22/1/1986', 'Rua J, 120, Casa J', '(99)9999-1120', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10011, 'Usagi Denny', 1100000021, '12/4/1990', 'Rua K, 121, Casa K', '(99)9999-1121', 3333);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10012, 'Sevita Hershberger', 1200000022, '15/6/1987', 'Rua L, 122, Casa L', '(99)9999-1122', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10013, 'Carnation Dingman', 1300000023, '29/7/1989', 'Rua M, 123, Casa M', '(99)9999-1123', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10014, 'Niven Glaser', 1400000024, '22/6/1986', 'Rua N, 124, Casa N', '(99)9999-1124', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10015, 'Derwyn Devers', 1500000025, '24/5/1989', 'Rua O, 125, Casa O', '(99)9999-1125', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10016, 'Rossa Fanning', 1600000026, '9/6/1987', 'Rua P, 126, Casa P', '(99)9999-1126', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10017, 'Tod Phan', 1700000027, '28/02/1991', 'Rua Q, 127, Casa Q', '(99)9999-1127', 5555);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10018, 'Eddie Hulse', 1800000028, '18/5/1985', 'Rua R, 128, Casa R', '(99)9999-1128', 5555);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10019, 'Welford Yepez', 1900000029, '24/8/1991', 'Rua S, 129, Casa S', '(99)9999-1129', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10020, 'Rishley Snyder', 2000000030, '1/11/1985', 'Rua T, 130, Casa T', '(99)9999-1130', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10021, 'Milo Mccurdy', 2100000031, '26/12/1992', 'Rua U, 131, Casa U', '(99)9999-1131', 3333);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10022, 'Sammi Zepeda', 2200000032, '12/11/1985', 'Rua V, 132, Casa V', '(99)9999-1132', 3333);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10023, 'Romaine Dingman', 2300000033, '23/1/1987', 'Rua W, 133, Casa W', '(99)9999-1133', 3333);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10024, 'Almeda Hack', 2400000034, '27/3/1989', 'Rua X, 134, Casa X', '(99)9999-1134', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10025, 'Colette Hon', 2500000035, '3/12/1989', 'Rua Y, 135, Casa Y', '(99)9999-1135', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10026, 'Carden Justus', 2600000036, '19/10/1991', 'Rua Z, 136, Casa Z', '(99)9999-1136', 4444);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10027, 'Carlyon Gorby', 2700000037, '7/12/1991', 'Rua A, 137, Casa A', '(99)9999-1137', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10028, 'Mungo Spangler', 2800000038, '5/7/1989', 'Rua B, 138, Casa B', '(99)9999-1138', 2222);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10029, 'Berwyn Philip', 2900000039, '28/4/1985', 'Rua C, 139, Casa C', '(99)9999-1139', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10030, 'Helen Messinger', 3000000040, '23/10/1992', 'Rua D, 140, Casa D', '(99)9999-1140', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10031, 'Whitmore Squires', 3100000041, '17/6/1985', 'Rua E, 141, Casa E', '(99)9999-1141', 5555);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10032, 'Sunita Poulos', 3200000042, '28/6/1988', 'Rua F, 142, Casa F', '(99)9999-1142', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10033, 'Sevita Poulos', 3300000043, '16/8/1985', 'Rua G, 143, Casa G', '(99)9999-1143', 1111);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10034, 'Pedrog Mccurdy', 3400000044, '29/6/1992', 'Rua H, 144, Casa H', '(99)9999-1144', 3333);
INSERT INTO LOJA_FUNCIONARIOS (cod_func, nome, cpf, data_nasc, endereco, fone, cargo) VALUES (10035, 'Ridgley Leo', 3500000045, '9/2/1990', 'Rua I, 145, Casa I', '(99)9999-1145', 1111);

INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001A11', 'Produto A', 157, 101, 50.0, 87.5, 37.5);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001B12', 'Produto B', 186, 97, 21.5, 37.63, 16.13);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001C13', 'Produto C', 252, 129, 101.25, 177.19, 75.94);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001D14', 'Produto D', 227, 114, 45.0, 78.75, 33.75);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001E15', 'Produto E', 233, 125, 78.52, 137.41, 58.89);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001F16', 'Produto F', 218, 135, 41.25, 72.19, 30.94);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001G17', 'Produto G', 243, 126, 46.12, 80.71, 34.59);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001H18', 'Produto H', 214, 123, 250.0, 437.5, 187.5);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001I19', 'Produto I', 205, 121, 110.0, 192.5, 82.5);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001J20', 'Produto J', 199, 104, 23.0, 40.25, 17.25);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001K21', 'Produto K', 224, 115, 62.15, 108.76, 46.61);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001L22', 'Produto L', 240, 133, 98.14, 171.75, 73.61);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001M23', 'Produto M', 191, 105, 78.45, 137.29, 58.84);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001N24', 'Produto N', 259, 143, 45.85, 80.24, 34.39);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001O25', 'Produto O', 135, 77, 85.97, 150.45, 64.48);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001P26', 'Produto P', 223, 142, 150.21, 262.87, 112.66);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001Q27', 'Produto Q', 281, 152, 300.0, 525.0, 225.0);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001R28', 'Produto R', 228, 129, 126.78, 221.87, 95.09);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001S29', 'Produto S', 196, 98, 88.23, 154.4, 66.17);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001T30', 'Produto T', 191, 102, 14.21, 24.87, 10.66);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001U31', 'Produto U', 251, 131, 5.23, 9.15, 3.92);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001V32', 'Produto V', 228, 127, 178.45, 312.29, 133.84);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001W33', 'Produto W', 220, 132, 115.23, 201.65, 86.42);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001X34', 'Produto X', 249, 128, 236.25, 413.44, 177.19);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001Y35', 'Produto Y', 194, 102, 10.0, 17.5, 7.5);
INSERT INTO LOJA_PRODUTOS (cod_prod, nome, qtde_compras, estoque_atual, valor_compra, valor_venda, lucro_estimado) VALUES ('001Z36', 'Produto Z', 264, 137, 9.0, 15.75, 6.75);

INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1010, '1/04/2021', '001K21', 108.76, 'Crédito', '5%', 103.32, 10029);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1090, '9/01/2021', '001G17', 80.71, 'À vista', '10%', 72.64, 10002);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1110, '12/01/2021', '001C13', 177.19, 'À vista', '10%', 159.47, 10033);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1130, '13/01/2021', '001W33', 201.65, 'Crédito', '5%', 191.57, 10014);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1140, '14/03/2021', '001S29', 154.4, 'À vista', '10%', 138.96, 10013);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1182, '15/02/2021', '001Q27', 525.0, 'Parcelado', '1%', 519.75, 10012);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1185, '16/01/2021', '001N24', 80.24, 'Crédito', '5%', 76.23, 10032);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1186, '16/01/2021', '001K21', 108.76, 'Crédito', '5%', 103.32, 10025);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1200, '17/04/2021', '001Q27', 525.0, 'Crédito', '5%', 498.75, 10010);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1225, '18/01/2021', '001L22', 171.75, 'Parcelado', '1%', 170.03, 10027);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1300, '20/02/2021', '001X34', 413.44, 'Parcelado', '1%', 409.3, 10007);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1301, '20/02/2021', '001Q27', 525.0, 'Parcelado', '1%', 519.75, 10013);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1350, '21/01/2021', '001U31', 9.15, 'Crédito', '5%', 8.69, 10003);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1351, '21/01/2021', '001U31', 9.15, 'Parcelado', '1%', 9.06, 10029);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1500, '7/02/2021', '001R28', 221.87, 'À vista', '10%', 199.68, 10014);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1501, '7/02/2021', '001R28', 221.87, 'À vista', '10%', 199.68, 10030);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1601, '23/02/2021', '001R28', 221.87, 'Crédito', '5%', 210.77, 10014);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1602, '23/02/2021', '001Z36', 15.75, 'À vista', '10%', 14.18, 10030);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (1700, '4/03/2021', '001J20', 40.25, 'À vista', '10%', 36.23, 10014);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2001, '21/03/2021', '001I19', 192.5, 'Crédito', '5%', 182.88, 10001);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2002, '21/03/2021', '001P26', 262.87, 'Crédito', '5%', 249.72, 10014);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2051, '27/03/2021', '001M23', 137.29, 'À vista', '10%', 123.56, 10002);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2068, '30/03/2021', '001X34', 413.44, 'Parcelado', '1%', 409.3, 10035);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2100, '6/04/2021', '001B12', 37.63, 'Parcelado', '1%', 37.25, 10035);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2150, '8/04/2021', '001R28', 221.87, 'À vista', '10%', 199.68, 10019);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2400, '21/04/2021', '001N24', 80.24, 'Crédito', '5%', 76.23, 10029);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2500, '25/04/2021', '001I19', 192.5, 'Crédito', '5%', 182.88, 10010);
INSERT INTO LOJA_VENDAS (id_venda, data_venda, produto, valor, pgto, desconto, valor_final, funcionario) VALUES (2510, '29/04/2021', '001T30', 24.87, 'À vista', '10%', 22.38, 10027);

