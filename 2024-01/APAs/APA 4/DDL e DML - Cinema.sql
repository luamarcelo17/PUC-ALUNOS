-- Tabela de Filmes
CREATE TABLE cine_Filmes (
    filme_id NUMBER PRIMARY KEY,
    titulo VARCHAR2(100),
    diretor VARCHAR2(100),
    genero VARCHAR2(50),
    data_lancamento date,
    duracao_minutos NUMBER,
    classificacao VARCHAR2(5),
    descricao VARCHAR2(500)
);

-- Tabela de Salas
CREATE TABLE cine_Salas (
    sala_id NUMBER PRIMARY KEY,
    nome VARCHAR2(50),
    capacidade NUMBER
);

-- Tabela de Clientes
CREATE TABLE cine_Clientes (
    cliente_id NUMBER PRIMARY KEY,
    primeiro_nome VARCHAR2(50),
    ultimo_nome VARCHAR2(50),
    email VARCHAR2(100),
    telefone VARCHAR2(20)
);

-- Tabela de Sessões
CREATE TABLE cine_Sessoes (
    sessao_id NUMBER PRIMARY KEY,
    filme_id NUMBER,
    sala_id NUMBER,
    hora_inicio VARCHAR2(20),
    hora_fim VARCHAR2(20),
    FOREIGN KEY (filme_id) REFERENCES cine_Filmes(filme_id),
    FOREIGN KEY (sala_id) REFERENCES cine_Salas(sala_id)
);

-- Tabela de Reservas
CREATE TABLE cine_Reservas (
    reserva_id NUMBER PRIMARY KEY,
    cliente_id NUMBER,
    sessao_id NUMBER,
    numero_assento VARCHAR2(10),
    FOREIGN KEY (cliente_id) REFERENCES cine_Clientes(cliente_id),
    FOREIGN KEY (sessao_id) REFERENCES cine_Sessoes(sessao_id)
);

-- Inserção de registros na tabela de Filmes
INSERT INTO cine_Filmes (filme_id, titulo, diretor, genero, data_lancamento, duracao_minutos, classificacao, descricao) VALUES (1, 'O Poderoso Chefão', 'Francis Ford Coppola', 'Crime', '15/10/1972', 175, '16', 'Um chefão da máfia luta para manter seu império enquanto seu filho relutantemente se envolve no negócio familiar.');
INSERT INTO cine_Filmes (filme_id, titulo, diretor, genero, data_lancamento, duracao_minutos, classificacao, descricao) VALUES (2, 'A Origem', 'Christopher Nolan', 'Ação', '08/07/2010', 148, '12', 'Em um mundo onde é possível entrar na mente humana, um ladrão especializado em roubar segredos corporativos depara-se com uma tarefa impossível: implantar uma ideia na mente de uma pessoa.');
INSERT INTO cine_Filmes (filme_id, titulo, diretor, genero, data_lancamento, duracao_minutos, classificacao, descricao) VALUES (3, 'Cidade de Deus', 'Fernando Meirelles', 'Crime', '30/08/2002', 130, '18', 'Dois meninos crescem em uma favela violenta do Rio de Janeiro, um se torna fotógrafo e o outro um traficante de drogas.');
INSERT INTO cine_Filmes (filme_id, titulo, diretor, genero, data_lancamento, duracao_minutos, classificacao, descricao) VALUES (4, 'Interestelar', 'Christopher Nolan', 'Aventura', '06/11/2014', 169, '10', 'Um grupo de exploradores faz uso de um buraco de minhoca recém-descoberto para superar as limitações de viagens espaciais e conquistar vastas distâncias em uma jornada interestelar.');
INSERT INTO cine_Filmes (filme_id, titulo, diretor, genero, data_lancamento, duracao_minutos, classificacao, descricao) VALUES (5, 'Pantera Negra', 'Ryan Coogler', 'Ação', '15/02/2018', 134, '12', 'Após a morte de seu pai, o príncipe TChalla retorna à nação africana isolada e tecnologicamente avançada de Wakanda para assumir o trono e suceder como rei.');
INSERT INTO cine_Filmes (filme_id, titulo, diretor, genero, data_lancamento, duracao_minutos, classificacao, descricao) VALUES (6, 'O Senhor dos Anéis: A Sociedade do Anel', 'Peter Jackson', 'Aventura', '19/12/2001', 178, '10', 'Um hobbit relutantemente parte em uma jornada para destruir um anel mágico e impedir um malvado senhor do escuro de conquistar o mundo.');

-- Inserção de registros na tabela de Salas
INSERT INTO cine_Salas (sala_id, nome, capacidade) VALUES (1, 'Sala 1', 100);
INSERT INTO cine_Salas (sala_id, nome, capacidade) VALUES (2, 'Sala 2', 80);
INSERT INTO cine_Salas (sala_id, nome, capacidade) VALUES (3, 'Sala 3', 120);
INSERT INTO cine_Salas (sala_id, nome, capacidade) VALUES (4, 'Sala 4', 90);
INSERT INTO cine_Salas (sala_id, nome, capacidade) VALUES (5, 'Sala 5', 110);

-- Inserção de registros na tabela de Clientes
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (1, 'João', 'Silva', 'joao@example.com', '(11) 91234-5678');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (2, 'Maria', 'Santos', 'maria@example.com', '(11) 98765-4321');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (3, 'Pedro', 'Ferreira', 'pedro@example.com', '(11) 99999-9999');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (4, 'Ana', 'Oliveira', 'ana@example.com', '(11) 87654-3210');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (5, 'Lucas', 'Rodrigues', 'lucas@example.com', '(11) 94567-8901');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (6, 'Fernanda', 'Almeida', 'fernanda@example.com', '(11) 93333-3333');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (7, 'Rafael', 'Pereira', 'rafael@example.com', '(11) 94444-4444');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (8, 'Carla', 'Gomes', 'carla@example.com', '(11) 95555-5555');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (9, 'Bruno', 'Martins', 'bruno@example.com', '(11) 96666-6666');
INSERT INTO cine_Clientes (cliente_id, primeiro_nome, ultimo_nome, email, telefone) VALUES (10, 'Juliana', 'Costa', 'juliana@example.com', '(11) 97777-7777');

-- Inserção de registros na tabela de Sessões
INSERT INTO cine_Sessoes (sessao_id, filme_id, sala_id, hora_inicio, hora_fim) VALUES (1, 1, 1, '14:00', '16:55');
INSERT INTO cine_Sessoes (sessao_id, filme_id, sala_id, hora_inicio, hora_fim) VALUES (2, 2, 2, '16:30', '19:00');
INSERT INTO cine_Sessoes (sessao_id, filme_id, sala_id, hora_inicio, hora_fim) VALUES (3, 3, 3, '18:00', '20:10');
INSERT INTO cine_Sessoes (sessao_id, filme_id, sala_id, hora_inicio, hora_fim) VALUES (4, 4, 4, '20:15', '23:04');
INSERT INTO cine_Sessoes (sessao_id, filme_id, sala_id, hora_inicio, hora_fim) VALUES (5, 5, 5, '14:45', '17:19');
INSERT INTO cine_Sessoes (sessao_id, filme_id, sala_id, hora_inicio, hora_fim) VALUES (6, 6, 1, '19:30', '22:28');

-- Inserção de registros na tabela de Reservas
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (1, 1, 1, 'A5');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (2, 2, 2, 'B3');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (3, 3, 3, 'C8');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (4, 4, 4, 'D12');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (5, 5, 5, 'E7');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (6, 6, 6, 'F10');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (7, 7, 1, 'A7');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (8, 8, 3, 'C5');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (9, 9, 4, 'D8');
INSERT INTO cine_Reservas (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (10, 10, 2, 'B10');
INSERT INTO CINE_RESERVAS (reserva_id, cliente_id, sessao_id, numero_assento) VALUES (11, 5, 5, 'D15');


