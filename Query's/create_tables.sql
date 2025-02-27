CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2)
);

CREATE TABLE Servicos (
    id_servico INT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(200) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE Ordens_de_Servico (
    id_os INT PRIMARY KEY IDENTITY(1,1),
    id_cliente INT,
    id_funcionario INT,
    data_criacao DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);

CREATE TABLE Itens_os (
    id_os INT,
    id_servico INT,
    quantidade INT,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES Ordens_de_Servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servicos(id_servico)
);
CREATE TABLE Itens_produto_os (
    id_os INT,
    id_produto INT,
    quantidade INT,
    PRIMARY KEY (id_os, id_produto),
    FOREIGN KEY (id_os) REFERENCES Ordens_de_Servico(id_os),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY IDENTITY(1,1),
    id_os INT,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_os) REFERENCES Ordens_de_Servico(id_os)
);
