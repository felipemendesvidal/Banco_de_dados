--DATABASE
	CREATE DATABASE  REFORCO;
--
--
	CREATE TABLE Cliente(
		IdCliente INT PRIMARY KEY IDENTITY NOT NULL,
		Nome VARCHAR(50) NOT NULL 

	);
--
--
	CREATE TABLE Item(
		IdItem INT PRIMARY KEY IDENTITY NOT NULL,
		Descricao VARCHAR(100) NOT NULL 

	);
--
--
	CREATE TABLE Colaborador(
		IdColaborador INT PRIMARY KEY IDENTITY NOT NULL,
		nome VARCHAR(50) NOT NULL,
		Salario VARCHAR(50) NOT NULL 

	);
--
--
	CREATE TABLE TipoConserto(
		IdTipoConserto INT PRIMARY KEY IDENTITY NOT NULL,
		Descricao VARCHAR(500) NOT NULL,
		

	);
--
--
	CREATE TABLE Pedido(
		IdPedido INT PRIMARY KEY IDENTITY NOT NULL,
		NumeroEquipamento INT,
		DataEntrada DATETIME,
		DataSaida DATETIME,
		
		--FKs
		IdCliente INT FOREIGN KEY  REFERENCES Cliente(IdCliente),
		IdItem INT FOREIGN KEY REFERENCES Item (IdItem),
		IdTipoConserto INT FOREIGN KEY REFERENCES TipoConserto (IdTipoConserto),
		

	);
--
--
	CREATE TABLE PedidoColaborador(
		
		
		
		--FKs
		IdPedido INT FOREIGN KEY  REFERENCES Pedido (IdPedido),
		IdColaborador INT FOREIGN KEY REFERENCES Colaborador (IdColaborador),
		
		

	);
--
