-- 1. Criação do Banco de Dados
CREATE DATABASE sistema_vendas;
USE sistema_vendas;

-- 2. Criação das Tabelas

-- Tabela de Clientes
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- Tabela de Produtos
CREATE TABLE produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

-- Tabela de Vendas
CREATE TABLE vendas (
    venda_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade_vendida INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);

-- 3. Inserção de Dados

-- Inserir Clientes
INSERT INTO clientes (nome, email, telefone) VALUES
('João Silva', 'joao.silva@email.com', '123456789'),
('Maria Oliveira', 'maria.oliveira@email.com', '987654321'),
('Carlos Souza', 'carlos.souza@email.com', '456789123');

-- Inserir Produtos
INSERT INTO produtos (nome, preco, quantidade_estoque) VALUES
('Produto A', 10.00, 100),
('Produto B', 20.00, 150),
('Produto C', 30.00, 200);

-- Inserir Vendas
INSERT INTO vendas (cliente_id, produto_id, quantidade_vendida, data_venda) VALUES
(1, 1, 2, '2024-09-01'),
(1, 2, 1, '2024-09-02'),
(2, 1, 3, '2024-09-03'),
(2, 3, 1, '2024-09-04'),
(3, 2, 2, '2024-09-05');

-- 4. Consultas e Relatórios

-- Consulta 1: Todas as vendas realizadas, incluindo o nome do cliente e o nome do produto
SELECT v.venda_id, c.nome AS cliente_nome, p.nome AS produto_nome, v.quantidade_vendida, v.data_venda
FROM vendas v
JOIN clientes c ON v.cliente_id = c.cliente_id
JOIN produtos p ON v.produto_id = p.produto_id;

-- Consulta 2: Todas as compras realizadas por um cliente específico (exemplo: cliente_id = 1)
SELECT v.venda_id, p.nome AS produto_nome, v.quantidade_vendida, v.data_venda
FROM vendas v
JOIN produtos p ON v.produto_id = p.produto_id
WHERE v.cliente_id = 1;

-- Consulta 3: Total de vendas realizadas por produto
SELECT p.nome AS produto_nome, SUM(v.quantidade_vendida) AS total_vendido
FROM vendas v
JOIN produtos p ON v.produto_id = p.produto_id
GROUP BY p.nome;

-- 5. Atualização e Deleção de Dados

-- Atualizar o estoque de um produto após uma venda
UPDATE produtos
SET quantidade_estoque = quantidade_estoque - (SELECT quantidade_vendida FROM vendas WHERE produto_id = produtos.produto_id AND venda_id = 1)
WHERE produto_id = (SELECT produto_id FROM vendas WHERE venda_id = 1);

-- Atualizar as informações de um cliente
UPDATE clientes
SET telefone = '1122334455'
WHERE cliente_id = 1;

-- Deletar uma venda e o cliente associado (se necessário)
DELETE FROM vendas WHERE venda_id = 1;

-- Nota: Deletar um cliente só deve ser feito se todas as suas vendas forem removidas ou se a política de negócios permitir.
