--Inserção de Clientes
INSERT INTO Clientes (nome, telefone, email) VALUES 
('João da Silva', '11987654321', 'joao@exemplo.com'),
('Maria Oliveira', '11987654322', 'maria@exemplo.com'),
('Pedro Santos', '11987654323', 'pedro@exemplo.com'),
('Ana Paula', '11987654324', 'ana@exemplo.com'),
('Lucas Lima', '11987654325', 'lucas@exemplo.com'),
('Fernanda Costa', '11987654326', 'fer@exemplo.com'),
('Ricardo Gomes', '11987654327', 'ricardo@exemplo.com'),
('Tatiane Rocha', '11987654328', 'tatiane@exemplo.com'),
('Roberto Carlos', '11987654329', 'roberto@exemplo.com'),
('Juliana Alves', '11987654330', 'juliana@exemplo.com'),
('Claudio Soares', '11987654331', 'claudio@exemplo.com'),
('Beatriz Martins', '11987654332', 'beatriz@exemplo.com'),
('Carlos Henrique', '11987654333', 'carlos@exemplo.com'),
('Guilherme Pires', '11987654334', 'guilherme@exemplo.com'),
('Vanessa Pereira', '11987654335', 'vanessa@exemplo.com'),
('Rafael Oliveira', '11987654336', 'rafael@exemplo.com'),
('Bianca Ferreira', '11987654337', 'bianca@exemplo.com'),
('Eliane Mendes', '11987654338', 'eliane@exemplo.com'),
('Marcio Lima', '11987654339', 'marcio@exemplo.com'),
('Tatiane Martins', '11987654340', 'tatiane_martins@exemplo.com');
GO

--Inserção de Funcionários
INSERT INTO Funcionarios (nome, cargo, salario) VALUES 
('Carlos Mendes', 'Mecânico', 2000.00),
('Ana Cristina', 'Atendente', 1500.00),
('Fernando Santos', 'Mecânico', 2200.00),
('Jessica Almeida', 'Caixa', 1600.00),
('Luiz Fernando', 'Gerente', 3000.00),
('Mariana Nascimento', 'Mecânico', 2100.00),
('Robson Lima', 'Atendente', 1550.00),
('Fernanda Souza', 'Administrativo', 1700.00),
('Rafael Almeida', 'Mecânico', 2300.00),
('Isabella Macedo', 'Vendedora', 1800.00),
('Ricardo Martins', 'Mecânico', 2500.00),
('Gisele Oliveira', 'Assistente', 1400.00),
('Eduardo Pinto', 'Mecânico', 2000.00),
('Karine Costa', 'Auxiliar', 1300.00),
('Tânia Ribeiro', 'Atendente', 1600.00),
('Tiago Alves', 'Mecânico', 2400.00),
('Vera Lúcia', 'Supervisora', 2800.00),
('Gustavo Carvalho', 'Caixa', 1500.00),
('Patricia Santos', 'Atendente', 1600.00),
('Felipe Rocha', 'Mecânico', 2200.00);
GO

--Inserção de Serviços
INSERT INTO Servicos (descricao, preco) VALUES 
('Troca de Óleo', 50.00),
('Alinhamento', 80.00),
('Balanceamento', 60.00),
('Verificação de Freios', 70.00),
('Troca de Pneu', 150.00),
('Câmbio Manual - Revisão', 200.00),
('Câmbio Automático - Revisão', 250.00),
('Troca de Luzes', 40.00),
('Reparo de Ar-Condicionado', 180.00),
('Limpeza de Bicos', 120.00),
('Revisão Geral', 300.00),
('Troca de Pastilhas de Freio', 90.00),
('Substituição de Escapamento', 140.00),
('Inspeção Veicular', 110.00),
('Troca de Filtro de Ar', 30.00),
('Troca de Filtro de Combustível', 50.00),
('Ajuste de Suspensão', 130.00),
('Lavagem Completa', 100.00),
('Reparo de Motor', 500.00),
('Substituição de Rodas', 200.00);
GO

--Inserção de Produtos
INSERT INTO Produtos (nome, preco, quantidade_estoque) VALUES 
('Óleo 5W30', 30.00, 100),
('Pneu Aro 17', 250.00, 50),
('Filtro de Ar', 25.00, 200),
('Baterias automotivas', 400.00, 30),
('Pastilha de Freio', 150.00, 70),
('Óleo de Transmissão', 35.00, 80),
('Escapamento', 300.00, 20),
('Filtro de Combustível', 40.00, 150),
('Luz de Farol LED', 60.00, 100),
('Luz de Freio', 25.00, 90),
('Correia Dentada', 50.00, 60),
('Amortecedor', 200.00, 40),
('Bico Injetor', 100.00, 50),
('Radiador', 350.00, 25),
('Farois de Neblina', 70.00, 50),
('Protetor de Cárter', 80.00, 80),
('Tampa de Óleo', 20.00, 150),
('Computador de Bordo', 500.00, 15),
('Capa para Banco', 100.00, 200),
('Suporte de Motor', 150.00, 70);
GO

--Inserção de Ordens de Serviço
INSERT INTO Ordens_de_Servico (id_cliente, id_funcionario) VALUES 
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 2),
(6, 1),
(7, 3),
(8, 2),
(9, 1),
(10, 2),
(11, 3),
(12, 1),
(13, 2),
(14, 3),
(15, 1),
(16, 2),
(17, 1),
(18, 3),
(19, 2),
(20, 1);
GO

--Inserção de Itens de Ordem de Serviço
INSERT INTO Itens_os (id_os, id_servico, quantidade) VALUES 
(1, 1, 1),
(1, 2, 1),
(2, 1, 2),
(2, 3, 1),
(3, 2, 1),
(3, 4, 1),
(4, 3, 2),
(4, 5, 1),
(5, 2, 1),
(5, 6, 2),
(6, 5, 1),
(6, 7, 1),
(7, 4, 1),
(7, 8, 1),
(8, 3, 1),
(8, 9, 2),
(9, 6, 1),
(9, 9, 1),
(10, 7, 1),
(10, 8, 1);
GO

INSERT INTO Itens_produto_os (id_os, id_produto, quantidade) VALUES 
(1, 1, 2),  -- Para a ordem de serviço 1, usar 2 unidades do produto com id 1 (Óleo 5W30)
(1, 2, 1),  -- Para a ordem de serviço 1, usar 1 unidade do produto com id 2 (Pneu Aro 17)
(2, 1, 1),  -- Para a ordem de serviço 2, usar 1 unidade do produto com id 1
(3, 3, 1);  -- Para a ordem de serviço 3, usar 1 unidade do produto com id 3 (Filtro de Ar)


--Inserção de Pagamentos
INSERT INTO Pagamentos (id_os, valor) VALUES 
(1, 130.00),
(2, 200.00),
(3, 250.00),
(4, 180.00),
(5, 300.00),
(6, 400.00),
(7, 170.00),
(8, 210.00),
(9, 150.00),
(10, 190.00),
(11, 80.00),
(12, 220.00),
(13, 100.00),
(14, 250.00),
(15, 300.00),
(16, 130.00),
(17, 180.00),
(18, 200.00),
(19, 210.00),
(20, 250.00);
GO