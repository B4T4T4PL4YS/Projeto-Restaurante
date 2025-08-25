-- Inserindo um cliente na tabela Cliente
INSERT INTO Lanchonete.Cliente (IdCliente, nome, Telefone, Endereco) 
VALUES (1, 'João da Silva', 123456789, 'Rua das Flores, 100');

-- Inserindo um entregador na tabela Entregador
INSERT INTO Lanchonete.Entregador (codEntregador, nome, NumeroTelefone) 
VALUES (1, 'Carlos Oliveira', 987654321);

-- Inserindo itens no cardápio na tabela Cardapio
INSERT INTO Lanchonete.Cardapio (codCardapio, nomeSanduiche, preço) 
VALUES (1, 'X-Burger', 15.50), 
       (2, 'X-Salada', 18.00);

-- Inserindo um pedido na tabela Pedido
INSERT INTO Lanchonete.Pedido (codPedido, StatusPedido, DataEmissao, quantidade, IdCliente, codEntregador, codCardapio) 
VALUES (1, 0, NOW(), 2, 1, 1, 1),
       (2, 0, NOW(), 1, 1, 1, 2);
