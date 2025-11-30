CREATE DATABASE IF NOT EXISTS academia;
USE academia;

CREATE TABLE plano (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
);

CREATE TABLE presenca (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    data_presenca DATE NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
CREATE TABLE instrutor (
    id_instrutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

CREATE TABLE aula (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    horario TIME,
    id_instrutor INT NOT NULL,
    FOREIGN KEY (id_instrutor) REFERENCES instrutor(id_instrutor)
);

CREATE TABLE avaliacao_fisica (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    data_avaliacao DATE NOT NULL,
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    id_instrutor INT NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_instrutor) REFERENCES instrutor(id_instrutor),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

CREATE TABLE treino (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    objetivo VARCHAR(200),
    id_instrutor INT NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_instrutor) REFERENCES instrutor(id_instrutor),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

CREATE TABLE exercicio (
    id_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    series INT,
    repeticoes INT,
    id_treino INT NOT NULL,
    FOREIGN KEY (id_treino) REFERENCES treino(id_treino)
);
