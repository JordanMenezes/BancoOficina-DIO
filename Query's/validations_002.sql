

--Exemplos de Consultas SQL Complexas
--Total de Ordens de Servi�o por Cliente
SELECT c.nome AS cliente, COUNT(os.id_os) AS total_ordens
FROM Ordens_de_Servico os
JOIN Clientes c ON os.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY total_ordens DESC;
GO

--Valor Total em Pagamentos por Funcion�rio
SELECT f.nome AS funcionario, SUM(p.valor) AS total_pagamentos
FROM Pagamentos p
JOIN Ordens_de_Servico os ON p.id_os = os.id_os
JOIN Funcionarios f ON os.id_funcionario = f.id_funcionario
GROUP BY f.nome
ORDER BY total_pagamentos DESC;
GO

--Servi�os mais Comuns em Ordens de Servi�o
SELECT s.descricao, COUNT(io.id_servico) AS numero_de_vezes
FROM Itens_os io
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY s.descricao
HAVING COUNT(io.id_servico) > 1
ORDER BY numero_de_vezes DESC;
GO

--M�dia de Pre�o dos Servi�os por Funcion�rio
SELECT f.nome AS funcionario, AVG(s.preco) AS media_preco_servicos
FROM Ordens_de_Servico os
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
JOIN Funcionarios f ON os.id_funcionario = f.id_funcionario
GROUP BY f.nome
ORDER BY media_preco_servicos DESC;
GO

--Lista de Clientes com Total Gasto em Servi�os
SELECT c.nome AS cliente, SUM(s.preco) AS total_gasto
FROM Pagamentos p
JOIN Ordens_de_Servico os ON p.id_os = os.id_os
JOIN Clientes c ON os.id_cliente = c.id_cliente
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY c.nome
ORDER BY total_gasto DESC;
GO

--Ordens de Servi�o com Mais de um Servi�o e seus Valores Totais
SELECT os.id_os, COUNT(io.id_servico) AS total_servicos, SUM(s.preco) AS total_valor
FROM Ordens_de_Servico os
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY os.id_os
HAVING COUNT(io.id_servico) > 1
ORDER BY total_valor DESC;
GO

--Funcion�rios com Sal�rios Acima da M�dia
SELECT f.nome, f.salario
FROM Funcionarios f
WHERE f.salario > (SELECT AVG(salario) FROM Funcionarios);
GO