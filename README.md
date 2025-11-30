# 📘 Projeto SQL – Academia VivaFit
Modelagem, Criação e Manipulação de Dados em Banco Relacional

Este repositório contém o desenvolvimento completo da Atividade 4 da disciplina Modelagem de Banco de Dados, incluindo a implementação do modelo lógico (DER) no MySQL, scripts de criação, povoamento, consultas, atualizações e remoções, seguindo as boas práticas de normalização (1FN, 2FN, 3FN).

# 🏋️ Descrição do Mini-mundo

A Academia VivaFit gerencia alunos, aulas, treinos, presença, plano, pagamentos, avaliações físicas, exercícios e instrutores.
Cada aluno possui um plano, pode participar de várias aulas, registrar presença, receber avaliações físicas e ter treinos específicos com exercícios detalhados.

# 🧱 Modelo Lógico – DER

O banco de dados contém as seguintes tabelas:

✔ aluno

✔ plano

✔ presenca

✔ pagamento

✔ instrutor

✔ aula

✔ avaliacao_fisica

✔ treino

✔ exercicio

# 🛠️ Tecnologias Utilizadas

✔ MySQL 8.0

✔ MySQL Workbench

✔ Git & GitHub

✔ SQL DDL e DML (CREATE, INSERT, SELECT, UPDATE, DELETE)

# 🚀 Como Executar os Scripts
1️⃣ Criar banco e tabelas

No MySQL Workbench:

Abra uma nova aba SQL

Execute o arquivo:

01_create_tables.sql

2️⃣ Inserir dados nas tabelas
02_insert_dados.sql

3️⃣ Executar consultas SELECT

Contém:

SELECT com WHERE

SELECT com ORDER BY
SELECT com JOIN

SELECT com LIMIT

Arquivo:

03_select_consultas.sql

4️⃣ Executar UPDATE e DELETE

Arquivo:

04_update_delete.sql


Contém:

3 comandos UPDATE

3 comandos DELETE

Todos com condições (WHERE)

# 📊 Exemplo de Consultas Incluídas

✔ Listagem de alunos e seus planos

✔ Pagamentos por aluno

✔ Instrutores e aulas ministradas

✔ Presenças dos alunos em aulas

✔ Treinos com exercícios

✔ Avaliações físicas

# 🔍 Validação e Normalização

As tabelas foram verificadas conforme:

Primeira Forma Normal (1FN)
Segunda Forma Normal (2FN)
Terceira Forma Normal (3FN)

# 🧩 Relacionamentos Principais

Um aluno → possui 1 plano

Um aluno → pode ter várias presenças

Um aluno → tem treinos e avaliações físicas

Um instrutor → ministra várias aulas

Um treino → contém vários exercícios

# 👩‍💻 Autora

Andreza Lucas
Disciplina: Modelagem de Banco de Dados

Período: 2025

Instituição: Unipê - Cruzeiro do Sul 

# 📎 Licença

Este projeto é exclusivamente acadêmico e destinado à disciplina de Modelagem de Banco de Dados.
