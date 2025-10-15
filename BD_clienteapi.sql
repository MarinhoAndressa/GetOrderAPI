-- ===========================================
--  CRIAÇÃO DO BANCO DE DADOS
-- ===========================================
CREATE DATABASE IF NOT EXISTS cadastro_clientes;
USE cadastro_clientes;

-- ===========================================
--  CRIAÇÃO DA TABELA CLIENTES
-- ===========================================
CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    cidade VARCHAR(80) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    CONSTRAINT chk_estado CHECK (
        estado REGEXP '^(AC|AL|AP|AM|BA|CE|DF|ES|GO|MA|MT|MS|MG|PA|PB|PR|PE|PI|RJ|RN|RS|RO|RR|SC|SP|SE|TO)$'
    ),
    CONSTRAINT chk_cep CHECK (cep REGEXP '^[0-9]{5}-[0-9]{3}$')
);

-- ===========================================
--  INSERINDO DADOS INICIAIS
-- ===========================================
INSERT INTO clientes (nome, cpf, email, telefone, endereco, cidade, estado, cep)
VALUES
('João da Silva', '12345678901', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 120', 'São Paulo', 'SP', '01000-000'),
('Maria Oliveira', '98765432100', 'maria.oliveira@email.com', '(21) 99876-5432', 'Av. Atlântica, 555', 'Rio de Janeiro', 'RJ', '22010-001'),
('Carlos Souza', '45678912300', 'carlos.souza@email.com', '(31) 91234-5678', 'Rua Afonso Pena, 300', 'Belo Horizonte', 'MG', '30130-010'),
('Ana Pereira', '32165498700', 'ana.pereira@email.com', '(41) 90000-1111', 'Rua XV de Novembro, 80', 'Curitiba', 'PR', '80020-310'),
('Fernanda Lima', '78912345600', 'fernanda.lima@email.com', '(51) 98888-2222', 'Av. Ipiranga, 999', 'Porto Alegre', 'RS', '90160-092');

-- ===========================================
--  VISUALIZAÇÃO DOS DADOS
-- ===========================================
SELECT * FROM clientes;
