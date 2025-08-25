CREATE SCHEMA Lanchonete;
Create Table Lanchonete.Cliente	(
IdCliente INT PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
Telefone INT NOT NULL,
Endereco VARCHAR(45) NOT NULL);

Create Table Lanchonete.Entregador (
codEntregador INT PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
NumeroTelefone INT NOT NULL
);

Create Table Lanchonete.Cardapio(
codCardapio INT PRIMARY KEY NOT NULL,
nomeSanduiche VARCHAR(45) NOT NULL,
preço DECIMAL (6,2) NOT NULL);

Create Table Lanchonete.Pedido (
    codPedido INT PRIMARY KEY NOT NULL,
    StatusPedido TINYINT NOT NULL,
    DataEmissao TIMESTAMP NOT NULL,
    quantidade SMALLINT NOT NULL,
    IdCliente INT NOT NULL,
    codEntregador INT NOT NULL,
    codCardapio INT NOT NULL,
    FOREIGN KEY(IdCliente) REFERENCES Lanchonete.Cliente(IdCliente),
    FOREIGN KEY(codEntregador) REFERENCES Lanchonete.Entregador(codEntregador),
    FOREIGN KEY(codCardapio) REFERENCES Lanchonete.Cardapio(codCardapio)
);