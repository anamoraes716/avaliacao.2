
CREATE DATABASE gestao_projetos;


USE gestao_projetos;


CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    profile_picture VARCHAR(255) DEFAULT NULL
);


CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    nome VARCHAR(100) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE CASCADE
);


CREATE TABLE tarefas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    nome VARCHAR(100) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES projetos(id) ON DELETE CASCADE
);


INSERT INTO usuarios (username, password, profile_picture) VALUES
('admin', 'admin123', NULL),
('gerente1', 'senha123', NULL);


INSERT INTO projetos (user_id, nome) VALUES
(1, 'Projeto A'),
(1, 'Projeto B'),
(2, 'Projeto C');


INSERT INTO tarefas (project_id, nome) VALUES
(1, 'Tarefa 1 do Projeto A'),
(1, 'Tarefa 2 do Projeto A'),
(2, 'Tarefa 1 do Projeto B'),
(3, 'Tarefa 1 do Projeto C');
