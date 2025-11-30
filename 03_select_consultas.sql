-- 1 Listar alunos e seus planos
SELECT a.nome AS aluno, p.nome AS plano
FROM aluno a
JOIN plano p ON a.id_plano = p.id_plano;

-- 2️ Presenças do aluno 1
SELECT * FROM presenca
WHERE id_aluno = 1
ORDER BY data_presenca DESC;

-- 3️ Listar exercícios com treino e instrutor
SELECT e.nome AS exercicio, t.objetivo, i.nome AS instrutor
FROM exercicio e
JOIN treino t ON e.id_treino = t.id_treino
JOIN instrutor i ON t.id_instrutor = i.id_instrutor;

-- 4️ Aulas ministradas por cada instrutor
SELECT i.nome AS instrutor, a.nome AS aula
FROM instrutor i
LEFT JOIN aula a ON i.id_instrutor = a.id_instrutor;

-- 5️ Pagamentos acima de R$200
SELECT * FROM pagamento
WHERE valor > 200;
