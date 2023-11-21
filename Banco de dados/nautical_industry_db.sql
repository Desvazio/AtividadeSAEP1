create database if not exists nautical_industry_db;

use nautical_industry_db;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT(11) NOT NULL AUTO_INCREMENT,
   -- nome VARCHAR(255) NOT NULL,
   -- cargo VARCHAR(255) NOT NULL, (colocar o nome e cargo sem um pre requisito, o proprio usuario pricisa inserir essa informação)
    login VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL, -- Adicionando campo de e-mail
    senha VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
INSERT IGNORE INTO usuarios (login, email, senha) VALUES 
    ('testesistemas', 'testesistemas@gmail.com', '12345'),
    ('usuario01', 'usuario01@gmail.com', 'senha12345'),
    ('usuario02', 'usuario02@gmail.com', 'senha12345678910');
CREATE TABLE IF NOT EXISTS atividades (
    numero INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    funcionario VARCHAR(255) NOT NULL,
    detalhes VARCHAR(255) NOT NULL
);
INSERT IGNORE INTO atividades (nome, funcionario, detalhes) VALUES 
    ('Atividade 1', 'Funcionario A', 'Detalhes 1'),
    ('Atividade 2', 'Funcionario B', 'Detalhes 2'),
    ('Atividade 3', 'Funcionario C', 'Detalhes 3');