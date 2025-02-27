--Criação de Consultas SQL

--Recuperação de Todos os Clientes
SELECT * FROM Clientes;
GO

--Filtrar Funcionários com Salário Acima de R$ 1500
SELECT * FROM Funcionarios WHERE salario > 1500;
GO

--Atributo Derivado: Valor Total da Ordem de Serviço (a soma dos serviços)
SELECT os.id_os, SUM(s.preco) AS valor_total
FROM Ordens_de_Servico os
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY os.id_os;
GO

--Ordenar Serviçoss pelo Preço
SELECT * FROM Servicos ORDER BY preco DESC;
GO

--Filtrar Ordens de Serviço com Mais de Um Serviço
SELECT os.id_os, COUNT(io.id_servico) AS total_servicos
FROM Ordens_de_Servico os
JOIN Itens_os io ON os.id_os = io.id_os
GROUP BY os.id_os
HAVING COUNT(io.id_servico) > 1;
GO

--Junção: Informações do Cliente, Funcionário e Valor da Ordem
SELECT c.nome AS cliente, f.nome AS funcionario, SUM(s.preco) AS valor_total
FROM Ordens_de_Servico os
JOIN Clientes c ON os.id_cliente = c.id_cliente
JOIN Funcionarios f ON os.id_funcionario = f.id_funcionario
JOIN Itens_os io ON os.id_os = io.id_os
JOIN Servicos s ON io.id_servico = s.id_servico
GROUP BY c.nome, f.nome;
GO