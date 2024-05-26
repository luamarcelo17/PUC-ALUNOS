-- Tabela de Clientes
CREATE TABLE VET_Clientes (
    cliente_id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    endereco VARCHAR2(200),
    telefone VARCHAR2(20)
);

-- Tabela de Produtos
CREATE TABLE VET_Produtos (
    produto_id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    descricao VARCHAR2(500),
    preco NUMBER
);

-- Tabela de Veterinários
CREATE TABLE VET_Veterinarios (
    veterinario_id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    especialidade VARCHAR2(100),
    telefone VARCHAR2(20)
);

-- Tabela de Animais
CREATE TABLE VET_ANIMAIS (
    animal_id NUMBER PRIMARY KEY,
    nome VARCHAR2(50),
    especie VARCHAR2(50),
    raca VARCHAR2(50),
    idade NUMBER,
    sexo VARCHAR2(10),
    dono_id NUMBER,
    FOREIGN KEY (dono_id) REFERENCES VET_Clientes(cliente_id)
);

-- Tabela de Consultas
CREATE TABLE VET_Consultas (
    consulta_id NUMBER PRIMARY KEY,
    animal_id NUMBER,
    veterinario_id NUMBER,
    data_consulta VARCHAR2(20),
    observacoes VARCHAR2(500),
    FOREIGN KEY (animal_id) REFERENCES VET_Animais(animal_id),
    FOREIGN KEY (veterinario_id) REFERENCES VET_Veterinarios(veterinario_id)
);

-- Inserção de registros na tabela de Clientes
INSERT INTO VET_Clientes (cliente_id, nome, endereco, telefone) VALUES (1, 'Ana Silva', 'Rua das Flores, 123', '(11) 1234-5678');
INSERT INTO VET_Clientes (cliente_id, nome, endereco, telefone) VALUES (2, 'Pedro Oliveira', 'Avenida dos Animais, 456', '(11) 9876-5432');
INSERT INTO VET_Clientes (cliente_id, nome, endereco, telefone) VALUES (3, 'Mariana Santos', 'Rua dos Gatos, 789', '(11) 6543-2109');
INSERT INTO VET_Clientes (cliente_id, nome, endereco, telefone) VALUES (4, 'João Costa', 'Avenida dos Cães, 321', '(11) 8765-4321');
INSERT INTO VET_Clientes (cliente_id, nome, endereco, telefone) VALUES (5, 'Carla Pereira', 'Rua dos Pássaros, 567', '(11) 4321-0987');

-- Inserção de registros na tabela de Produtos
INSERT INTO VET_Produtos (produto_id, nome, descricao, preco) VALUES (1, 'Ração para Cães', 'Ração premium para cães adultos', 50.00);
INSERT INTO VET_Produtos (produto_id, nome, descricao, preco) VALUES (2, 'Ração para Gatos', 'Ração especial para gatos filhotes', 45.00);
INSERT INTO VET_Produtos (produto_id, nome, descricao, preco) VALUES (3, 'Shampoo Antipulgas', 'Shampoo para higiene e controle de pulgas', 20.00);
INSERT INTO VET_Produtos (produto_id, nome, descricao, preco) VALUES (4, 'Coleira Antipulgas', 'Coleira ajustável para prevenção de pulgas e carrapatos', 15.00);
INSERT INTO VET_Produtos (produto_id, nome, descricao, preco) VALUES (5, 'Brinquedo de Pelúcia', 'Brinquedo interativo para cães e gatos', 10.00);

-- Inserção de registros na tabela de Veterinários
INSERT INTO VET_Veterinarios (veterinario_id, nome, especialidade, telefone) VALUES (1, 'Carlos Oliveira', 'Cirurgia', '(11) 1111-1111');
INSERT INTO VET_Veterinarios (veterinario_id, nome, especialidade, telefone) VALUES (2, 'Amanda Costa', 'Dermatologia', '(11) 2222-2222');
INSERT INTO VET_Veterinarios (veterinario_id, nome, especialidade, telefone) VALUES (3, 'Mariana Santos', 'Cardiologia', '(11) 3333-3333');
INSERT INTO VET_Veterinarios (veterinario_id, nome, especialidade, telefone) VALUES (4, 'Pedro Almeida', 'Oftalmologia', '(11) 4444-4444');
INSERT INTO VET_Veterinarios (veterinario_id, nome, especialidade, telefone) VALUES (5, 'Lucas Souza', 'Ortopedia', '(11) 5555-5555');

-- Inserção de registros na tabela de Animais
INSERT INTO VET_Animais (animal_id, nome, especie, raca, idade, sexo, dono_id) VALUES (1, 'Bolinha', 'Cachorro', 'Vira-lata', 3, 'Macho', 1);
INSERT INTO VET_Animais (animal_id, nome, especie, raca, idade, sexo, dono_id) VALUES (2, 'Mel', 'Gato', 'Siamese', 2, 'Fêmea', 3);
INSERT INTO VET_Animais (animal_id, nome, especie, raca, idade, sexo, dono_id) VALUES (3, 'Rex', 'Cachorro', 'Labrador', 5, 'Macho', 2);
INSERT INTO VET_Animais (animal_id, nome, especie, raca, idade, sexo, dono_id) VALUES (4, 'Luna', 'Cachorro', 'Poodle', 1, 'Fêmea', 4);
INSERT INTO VET_Animais (animal_id, nome, especie, raca, idade, sexo, dono_id) VALUES (5, 'Nina', 'Gato', 'Persa', 4, 'Fêmea', 5);
INSERT INTO VET_Animais (animal_id, nome, especie, raca, idade, sexo, dono_id) VALUES (6, 'Manteiga', 'Gato', 'Persa', 3, 'Macho', 5);


-- Inserção de registros na tabela de Consultas
INSERT INTO VET_Consultas (consulta_id, animal_id, veterinario_id, data_consulta, observacoes) VALUES (1, 1, 1, '01/05/2024', 'Verificar vacinação');
INSERT INTO VET_Consultas (consulta_id, animal_id, veterinario_id, data_consulta, observacoes) VALUES (2, 2, 2, '03/05/2024', 'Tratar dermatite');
INSERT INTO VET_Consultas (consulta_id, animal_id, veterinario_id, data_consulta, observacoes) VALUES (3, 3, 3, '05/05/2024', 'Avaliar condição cardíaca');
INSERT INTO VET_Consultas (consulta_id, animal_id, veterinario_id, data_consulta, observacoes) VALUES (4, 4, 4, '07/05/2024', 'Exame de vista');
INSERT INTO VET_Consultas (consulta_id, animal_id, veterinario_id, data_consulta, observacoes) VALUES (5, 5, 5, '09/05/2024', 'Avaliar problema de locomoção');
INSERT INTO vet_Consultas (consulta_id, animal_id, veterinario_id, data_consulta, observacoes) VALUES (7, 3, 4, '08/05/2024', 'Animal saudável');

