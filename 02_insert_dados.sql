USE academia;

INSERT INTO plano (nome, valor, duracao_meses)
VALUES ('Mensal', 120.00, 1),
       ('Trimestral', 300.00, 3),
       ('Anual', 900.00, 12);

INSERT INTO aluno (nome, nascimento, telefone, id_plano)
VALUES ('Maria Santos', '1998-02-10', '11999999999', 1),
       ('João Silva', '1995-07-21', '11988888888', 2);

INSERT INTO instrutor (nome, especialidade)
VALUES ('Carlos Pereira', 'Musculação'),
       ('Ana Lima', 'Pilates');

INSERT INTO presenca (data_presenca, id_aluno)
VALUES ('2025-01-10', 1),
       ('2025-01-10', 2);

INSERT INTO pagamento (data_pagamento, valor, id_aluno)
VALUES ('2025-01-01', 120.00, 1),
       ('2025-01-03', 300.00, 2);

INSERT INTO aula (nome, horario, id_instrutor)
VALUES ('Musculação Avançada', '09:00', 1),
       ('Pilates Iniciante', '10:30', 2);

INSERT INTO avaliacao_fisica (data_avaliacao, peso, altura, id_instrutor, id_aluno)
VALUES ('2025-01-05', 70.5, 1.68, 1, 1),
       ('2025-01-07', 82.0, 1.75, 2, 2);

INSERT INTO treino (objetivo, id_instrutor, id_aluno)
VALUES ('Ganho de massa', 1, 1),
       ('Perda de peso', 2, 2);

INSERT INTO exercicio (nome, series, repeticoes, id_treino)
VALUES ('Supino reto', 4, 12, 1),
       ('Agachamento', 4, 10, 2);
