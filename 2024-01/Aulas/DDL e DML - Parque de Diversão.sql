--1. **Tabela de Visitantes:**
CREATE TABLE PD_Visitantes (
    VisitanteID NUMBER PRIMARY KEY,
    Nome VARCHAR2(100),
    Idade NUMBER,
    Sexo VARCHAR2(1),
    Email VARCHAR2(100),
    Telefone VARCHAR2(20),
    DataCadastro DATE
);

--2. **Tabela de Atrações:**
CREATE TABLE PD_Atracoes (
    AtracaoID NUMBER PRIMARY KEY,
    Nome VARCHAR2(100),
    Tipo VARCHAR2(50),
    CapacidadeMaxima NUMBER,
    AlturaMinima NUMBER,
    AlturaMaxima NUMBER,
    TaxaAcesso NUMBER(10, 2),
    HorarioAbertura VARCHAR2(10),
    HorarioFechamento VARCHAR2(10)
);

--3. **Tabela de Ingressos Vendidos:**
CREATE TABLE PD_IngressosVendidos (
    IngressoID NUMBER PRIMARY KEY,
    VisitanteID NUMBER,
    AtracaoID NUMBER,
    DataCompra DATE,
    Quantidade NUMBER,
    ValorTotal NUMBER(10, 2),
    FOREIGN KEY (VisitanteID) REFERENCES PD_Visitantes(VisitanteID),
    FOREIGN KEY (AtracaoID) REFERENCES PD_Atracoes(AtracaoID)
);

--1. **Registros para a tabela Visitantes:**
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (1, 'Ana Silva', 28, 'F', 'ana@example.com', '(11) 98765-4321');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (2, 'Lucas Oliveira', 35, 'M', 'lucas@example.com', '(11) 91234-5678');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (3, 'Carla Santos', 22, 'F', 'carla@example.com', '(11) 92345-6789');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (4, 'Mateus Silva', 31, 'M', 'mateus@example.com', '(11) 93456-7890');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (5, 'Juliana Souza', 27, 'F', 'juliana@example.com', '(11) 94567-8901');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (6, 'Rafaela Lima', 29, 'F', 'rafaela@example.com', '(11) 95678-9012');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (7, 'Bruno Pereira', 26, 'M', 'bruno@example.com', '(11) 96789-0123');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (8, 'Gustavo Martins', 24, 'M', 'gustavo@example.com', '(11) 97890-1234');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (9, 'Fernanda Ferreira', 30, 'F', 'fernanda@example.com', '(11) 98901-2345');
INSERT INTO PD_Visitantes (VisitanteID, Nome, Idade, Sexo, Email, Telefone) VALUES (10, 'Diego Almeida', 33, 'M', 'diego@example.com', '(11) 90012-3456');

--2. **Registros para a tabela Atrações:**
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (1, 'Montanha-russa Radical', 'Montanha-russa', 50, 1.4, 2.0, 30.00, '09:00:00', '20:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (2, 'Carrossel Encantado', 'Carrossel', 40, 0.8, 1.5, 15.00, '09:30:00', '19:30:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (3, 'Casa dos Horrores', 'Assombrado', 20, 1.2, 2.0, 20.00, '10:00:00', '21:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (4, 'Roda-gigante', 'Rodaviva', 30, 1.0, 2.5, 25.00, '10:30:00', '20:30:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (5, 'Barco Viking', 'Barco', 40, 1.1, 1.8, 10.00, '11:00:00', '20:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (6, 'Trem Fantasma', 'Fantasmagórico', 25, 1.0, 2.0, 18.00, '12:00:00', '22:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (7, 'Carrinho de Bate-bate', 'Bate-bate', 20, 0.9, 1.5, 12.00, '13:00:00', '21:30:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (8, 'Gira-gira', 'Giratório', 35, 1.2, 2.2, 22.00, '14:00:00', '23:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (9, 'Tiro ao Alvo', 'Tiro', 15, 1.0, 2.0, 10.00, '15:00:00', '21:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (10, 'Espelho Mágico', 'Espelho', 10, 1.0, 2.0, 8.00, '16:00:00', '20:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (11, 'Cinema 5D', 'Cinema', 30, 1.0, 2.0, 15.00, '17:00:00', '22:30:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (12, 'Mini Roda-gigante', 'Rodaviva', 20, 0.8, 1.5, 12.00, '09:30:00', '18:30:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (13, 'Carrinho de Choque', 'Choque', 25, 1.0, 1.8, 10.00, '10:00:00', '20:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (14, 'Casa dos Espelhos', 'Espelho', 15, 1.2, 2.0, 18.00, '11:30:00', '22:00:00');
INSERT INTO PD_Atracoes (AtracaoID, Nome, Tipo, CapacidadeMaxima, AlturaMinima, AlturaMaxima, TaxaAcesso, HorarioAbertura, HorarioFechamento) VALUES (15, 'Pirâmide do Terror', 'Assombrado', 20, 1.2, 2.0, 20.00, '12:00:00', '21:30:00');

--3. **Registros para a tabela Ingressos Vendidos:**
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (1, 1, 1, 2, 60.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (2, 2, 2, 3, 45.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (3, 3, 3, 1, 20.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (4, 4, 4, 2, 50.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (5, 5, 5, 2, 20.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (6, 6, 6, 3, 54.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (7, 7, 7, 1, 12.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (8, 8, 8, 4, 88.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (9, 9, 9, 2, 20.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (10, 10, 10, 1, 8.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (11, 1, 11, 2, 30.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (12, 2, 12, 2, 12.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (13, 3, 13, 2, 20.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (14, 4, 14, 3, 54.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (15, 5, 15, 1, 20.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (16, 6, 1, 2, 60.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (17, 7, 2, 1, 15.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (18, 8, 3, 3, 60.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (19, 9, 4, 2, 50.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (20, 10, 5, 1, 10.00);
INSERT INTO PD_IngressosVendidos (IngressoID, VisitanteID, AtracaoID, Quantidade, ValorTotal) VALUES (21, 1, 6, 2, 36.00);
