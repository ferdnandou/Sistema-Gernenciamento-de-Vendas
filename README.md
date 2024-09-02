# Desafio de Projeto: Sistema de Gerenciamento de Vendas

## Objetivo
Desenvolver um sistema de banco de dados para gerenciar produtos, clientes e vendas em uma loja. O objetivo é criar um sistema que permita a administração eficiente de informações relacionadas a produtos, clientes e transações de vendas.

## Descrição do Projeto
Você foi contratado para criar um sistema de gerenciamento de vendas para uma loja local. O sistema deve ser capaz de armazenar e gerenciar informações sobre produtos, clientes e vendas realizadas. Seu projeto deve incluir a criação de um banco de dados, tabelas para armazenar as informações necessárias, e a implementação de consultas e operações básicas para manipular esses dados.

## Requisitos

### 1. Criação do Banco de Dados
- Crie um banco de dados chamado `sistema_vendas`.

### 2. Criação das Tabelas
- **Tabela de Clientes:** Deve conter informações sobre os clientes, incluindo um identificador único, nome, email e telefone.
- **Tabela de Produtos:** Deve conter informações sobre os produtos, incluindo um identificador único, nome, preço e quantidade em estoque.
- **Tabela de Vendas:** Deve registrar as vendas realizadas, incluindo um identificador único para cada venda, o identificador do cliente, o identificador do produto, a quantidade vendida e a data da venda.

### 3. Inserção de Dados
- Insira pelo menos 3 clientes, 3 produtos e 5 vendas no banco de dados.

### 4. Consultas e Relatórios
- Crie uma consulta que mostre todas as vendas realizadas, incluindo o nome do cliente e o nome do produto.
- Crie uma consulta que mostre todas as compras realizadas por um cliente específico.
- Crie uma consulta que exiba o total de vendas realizadas por produto.

### 5. Atualização e Deleção de Dados
- Implemente uma operação para atualizar o estoque de um produto após uma venda.
- Implemente uma operação para atualizar as informações de um cliente.
- Implemente uma operação para deletar uma venda e, se necessário, deletar o cliente associado.

### 6. Validação e Testes
- Teste todas as operações implementadas para garantir que o sistema funciona corretamente e que os dados estão sendo manipulados conforme esperado.

## Entrega
- Um arquivo SQL contendo os comandos necessários para criar o banco de dados, tabelas e inserir os dados.
- Um relatório com screenshots das consultas realizadas e uma breve explicação de como as operações foram implementadas.

## Critérios de Avaliação
- **Correção:** A precisão na criação do banco de dados, tabelas e operações SQL.
- **Completação:** A inclusão de todos os requisitos solicitados.
- **Clareza:** A organização e a legibilidade do código SQL e do relatório.
- **Funcionalidade:** A capacidade do sistema de realizar as operações corretamente e de gerar os relatórios esperados.

Boa sorte com o desafio! Estamos ansiosos para ver como você irá implementar e otimizar seu sistema de gerenciamento de vendas.

## Explicações Adicionais
- `CREATE DATABASE sistema_vendas;`: Cria o banco de dados `sistema_vendas`.
- `USE sistema_vendas;`: Seleciona o banco de dados `sistema_vendas` para que todos os comandos SQL subsequentes sejam aplicados a ele.
- `CREATE TABLE ...`: Cria tabelas com estruturas específicas para armazenar dados sobre clientes, produtos e vendas.
- `INSERT INTO ... VALUES ...`: Insere dados nas tabelas criadas.
- `SELECT ... JOIN ...`: Consulta dados combinando informações das tabelas usando `JOIN` para mostrar resultados integrados.
- `UPDATE ... SET ... WHERE ...`: Atualiza dados em uma tabela conforme condições especificadas.
- `DELETE FROM ... WHERE ...`: Remove dados de uma tabela conforme condições especificadas.
