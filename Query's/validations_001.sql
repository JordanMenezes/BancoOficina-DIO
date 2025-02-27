--Cria��o de Consultas SQL

--Recupera��o de Todos os Clientes
SELECT * FROM Clientes;
GO

--Filtrar Funcion�rios com Sal�rio Acima de R$ 1500
SELECT * FROM Funcionarios WHERE salario > 1500;
GO

--Atributo Derivado: Valor Total da Ordem de Servi�o (a soma dos servi�os)
SELECT os.id_os, SUM(s.preco) AS valor_total
FROM Ordens_de_Servico os
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY os.id_os;
GO

--Ordenar Servi�oss pelo Pre�o
SELECT * FROM Servicos ORDER BY preco DESC;
GO

--Filtrar Ordens de Servi�o com Mais de Um Servi�o
SELECT os.id_os, COUNT(io.id_servico) AS total_servicos
FROM Ordens_de_Servico os
JOIN Itens_os io ON os.id_os = io.id_os
GROUP BY os.id_os
HAVING COUNT(io.id_servico) > 1;
GO

--Jun��o: Informa��es do Cliente, Funcion�rio e Valor da Ordem
SELECT c.nome AS cliente, f.nome AS funcionario, SUM(s.preco) AS valor_total
FROM Ordens_de_Servico os
JOIN Clientes c ON os.id_cliente = c.id_cliente
JOIN Funcionarios f ON os.id_funcionario = f.id_funcionario
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY c.nome, f.nome;
GO