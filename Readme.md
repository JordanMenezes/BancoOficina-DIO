# Projeto E-commerce Database

Este projeto envolve a modelagem, implementação e gerenciamento de um banco de dados relacional para uma oficina mecânica. O objetivo é proporcionar um sistema abrangente que permita o registro e a gestão de clientes, funcionários, serviços, produtos, ordens de serviço e pagamentos. O banco de dados é projetado para facilitar operações diárias, como agendamentos de serviços, controle de estoque de produtos e gerenciamento de receitas geradas.

## Estrutura de Pastas
```
/BancoOficina-DIO
│
├── Database/
│   └── Banco_Oficina-DIO.bak                     # Arquivo .bak do banco criado e utilizado nos testes
│
├── Diagram/
│   └── database_diagram.png                     # Arquivo .png contendo o diagrama do banco criado
│
├── Query's/
│   ├── create_tables.sql                        # Script SQL para a criação das tabelas
│   ├── seed_data_001.sql                        # Script SQL para inserção de dados (seed)
│   └── validations_001.sql                      # Scripts SQL para as query's de validação
│   └── validations_002.sql                      # Scripts SQL para as query's de validação
│
└── Validations/
├── validation_results_001.png                   # Arquivo .png contendo o resultado das validações realizadas
├── validation_results_002.png                   # Arquivo .png contendo o resultado das validações realizadas
```

## Descrição do Banco de Dados

O banco de dados foi projetado com as seguintes tabelas:

1. **Clientes**
   - Armazena informações sobre os clientes da oficina, incluindo nome, telefone e e-mail.

2. **Funcionários**
   - Contém dados sobre os funcionários, incluindo nome, cargo e salário.

3. **Serviços**
   - Registro dos serviços oferecidos pela oficina e seus respectivos preços.

4. **Produtos**
   - Informações sobre produtos disponíveis para venda, abrangendo nome, preço e quantidade em estoque.

5. **Ordens_de_Servico**
   - Registra as ordens de serviço realizadas, associando clientes e funcionários.

6. **Itens_os**
   - Relaciona ordens de serviço a serviços específicos, incluindo a quantidade de cada serviço.

7. **Pagamentos**
   - Armazena dados sobre pagamentos realizadas para as ordens de serviço.

8. **Itens_produto_os**
   - Relaciona produtos utilizados em ordens de serviço, incluindo a quantidade de cada produto.

### Diagrama do Banco de Dados

O diagrama do banco de dados pode ser encontrado na pasta `Diagrama`. Ele ilustra as tabelas do banco, seus campos e relacionamentos.

## Scripts SQL

### Criação das Tabelas

O arquivo `create_tables.sql` contém todos os scripts necessários para a criação das tabelas no banco de dados. As tabelas incluem as chaves primárias e estrangeiras conforme o modelo lógico estabelecido.

### Inserção de Dados

O arquivo `seed_data_001.sql` contém os dados iniciais (seed) para a tabela, permitindo que o banco de dados possa ser utilizado para testes e validações.

### Queries de Validação

O arquivo `validations.sql` inclui diversas queries que podem ser usadas para validar os dados inseridos e realizar consultas no banco de dados. Exemplos de queries são:

- Consultas para verificar o total de pedidos por cliente.
- Verificações de relações entre vendedores e fornecedores.
- Consultas sobre o status de entregas e pagamentos.

## Resultados das Validações

Na pasta `Validations`, você encontrará os resultados das validações realizadas após a inserção dos dados. Essas validações fornecem uma visão clara do estado atual do banco de dados e ajudam a garantir a integridade dos dados.

## Como Usar

1. Crie um novo banco em seu sistema de gerenciamento SQL.
2. Execute o script `create_tables.sql` para criar as estruturas das tabelas.
3. Utilize o script `seed_data.sql` para popular o banco de dados com dados iniciais.
4. Execute as queries em `validations.sql` para testar e validar que a estrutura e os dados estão corretos.
5. Consulte os resultados das validações nos arquivos .png disponíveis na pasta `Validations`.

## Observação
- Como alternativa de uso, você pode apenas restaurar o banco de dados a partir do arquivo `Banco_Oficina-DIO.bak` em seu sistema de gerenciamento SQL e avançar nas validações / inserções a partir disso.

## Conclusão

Este projeto de banco de dados para uma oficina mecânica é um passo significativo na automação e organização das operações diárias da oficina. Através da modelagem relacional, implementamos um sistema que permite gerenciar eficientemente informações sobre clientes, funcionários, serviços, produtos, ordens de serviço e pagamentos. 

### Benefícios do Sistema:

- **Eficiência Operacional**: O banco de dados centraliza as informações, permitindo acesso rápido e organizado, o que melhora a eficiência nas operações diárias.
  
- **Controle e Gestão**: Com as consultas implementadas, é possível monitorar a performance dos serviços e produtos, além de identificar rapidamente quais funcionários estão gerando mais receita e qual cliente é o mais ativo.

- **Escalabilidade**: O design do banco de dados permite que novas funcionalidades sejam incorporadas facilmente, como relatórios mais detalhados ou a adição de novos tipos de serviços e produtos.

### Futuras Direções:

No futuro, podemos expandir este sistema para incluir funcionalidades como:

- **Relatórios e Análises**: Implementação de análises mais avançadas, como previsão de demanda e análises de performance de vendas.

- **Interface de Usuário**: Desenvolvimento de uma interface gráfica ou um aplicativo que permita aos usuários interagir com o banco de dados de forma mais amigável.

- **Integração com Sistemas Externos**: Possibilidade de integração com sistemas de gestão financeira ou de estoque para uma gestão ainda mais robusta.

Acreditamos que este sistema não apenas resolverá as necessidades atuais de gerenciamento da oficina, mas também fornecerá uma base sólida para futuras inovações e melhorias. Agradecemos a todos que colaboraram no desenvolvimento deste projeto e incentivamos a continuidade de suas melhorias com novas funcionalidades e feedback.