
-- 1️ Atualizar plano do aluno 1
UPDATE aluno
SET id_plano = 3
WHERE id_aluno = 1;

-- 2️ Alterar valor do plano mensal
UPDATE plano
SET valor = 130.00
WHERE nome = 'Mensal';

-- 3️ Atualizar peso da avaliação física
UPDATE avaliacao_fisica
SET peso = 71.2
WHERE id_avaliacao = 1;

-- 1️ Deletar uma presença específica
DELETE FROM presenca
WHERE id_presenca = 1;

-- 2️ Remover um exercício do treino 2
DELETE FROM exercicio
WHERE id_treino = 2;

-- 3️ Excluir pagamento com valor abaixo de 150
DELETE FROM pagamento
WHERE valor < 150;
