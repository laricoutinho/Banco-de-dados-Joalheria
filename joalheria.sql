CREATE DATABASE Gerenciamento_Vendas_Joalheria;

CREATE TABLE Designer (
    ID_Designer     int PRIMARY KEY,
    Nome            varchar(255)
)

CREATE TABLE EspecializacaoDesigner (
    ID_Especializacao   int PRIMARY KEY,
    ID_Designer         int,
    Especializacao      varchar(255),
    FOREIGN KEY (ID_Designer) REFERENCES Designer(ID_Designer)
)

CREATE TABLE ContatoDesigner (
    ID_Contato      int PRIMARY KEY,
    ID_Designer     int,
    Contato         varchar(255),
    FOREIGN KEY (ID_Designer) REFERENCES Designer(ID_Designer)
)

CREATE TABLE Produto (
    ID_Produto      int PRIMARY KEY,
    ID_Designer     int,
    Nome            varchar(255),
    Preco           decimal,
    Estoque         int,
    FOREIGN KEY (ID_Designer) REFERENCES Designer(ID_Designer)
)

CREATE TABLE DetalhesTecnicos (
    ID_Detalhes_Tecnicos    int PRIMARY KEY,
    ID_Produto              int,
    Material                varchar(255),
    Peso                    decimal,
    Acabamento              varchar(255),
    Lapidacao               varchar(255),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
)

CREATE TABLE Categoria (
    ID_Categoria    int PRIMARY KEY,
    ID_Produto      int,
    Tipo            varchar(255),
    Estilo          varchar(255),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
)

CREATE TABLE Cliente (
    CPF             varchar(255) PRIMARY KEY,
    Nome            varchar(255),
    Rua             varchar(255),
    Numero          int,
    Bairro          varchar(255),
    Cidade          varchar(255),
    Estado          char(2),
    Genero          varchar(255)
)

CREATE TABLE EmailCliente (
    ID_Email        int PRIMARY KEY,
    CPF             varchar(255),
    Email           varchar(255),
    FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
)

CREATE TABLE Pedido (
    Numero_do_Pedido    int PRIMARY KEY,
    CPF                 varchar(255),
    Data_Pedido         date,
    Status_Pedido       varchar(255),
    Valor_Total         decimal,
    FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
)

CREATE TABLE Itens (
    ID_Itens            int PRIMARY KEY,
    Numero_do_Pedido    int,
    ID_Produto          int,
    Quantidade          int,
    FOREIGN KEY (Numero_do_Pedido) REFERENCES Pedido(Numero_do_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
)


INSERT INTO Designer (ID_Designer, Nome) VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira'),
(3, 'Carlos Pereira'),
(4, 'Ana Souza'),
(5, 'Luiz Costa'),
(6, 'Fernanda Santos'),
(7, 'Ricardo Martins'),
(8, 'Juliana Lima'),
(9, 'Pedro Almeida'),
(10, 'Camila Rocha'),
(11, 'Felipe Santos'),
(12, 'Amanda Oliveira'),
(13, 'Rodrigo Costa'),
(14, 'Beatriz Almeida'),
(15, 'Gustavo Lima'),
(16, 'Isabela Rocha'),
(17, 'Lucas Pereira'),
(18, 'Laura Martins'),
(19, 'Gabriel Silva'),
(20, 'Mariana Santos');


INSERT INTO EspecializacaoDesigner (ID_Especializacao, ID_Designer, Especializacao) VALUES
(1, 1, 'Anéis'),
(2, 2, 'Colares'),
(3, 3, 'Brincos'),
(4, 4, 'Pulseiras'),
(5, 5, 'Relógios'),
(6, 6, 'Pingentes'),
(7, 7, 'Conjuntos'),
(8, 8, 'Broches'),
(9, 9, 'Gravatas'),
(10, 10, 'Tiaras'),
(11, 11, 'Abotoaduras'),
(12, 12, 'Joias Personalizadas'),
(13, 13, 'Braceletes'),
(14, 14, 'Correntes'),
(15, 15, 'Medalhões'),
(16, 16, 'Gargantilhas'),
(17, 17, 'Brincos de Argola'),
(18, 18, 'Anéis de Noivado'),
(19, 19, 'Colares Longos'),
(20, 20, 'Brincos de Pérola');


INSERT INTO ContatoDesigner (ID_Contato, ID_Designer, Contato) VALUES
(1, 1, 'joao@email.com'),
(2, 2, 'maria@email.com'),
(3, 3, 'carlos@email.com'),
(4, 4, 'ana@email.com'),
(5, 5, 'luiz@email.com'),
(6, 6, 'fernanda@email.com'),
(7, 7, 'ricardo@email.com'),
(8, 8, 'juliana@email.com'),
(9, 9, 'pedro@email.com'),
(10, 10, 'camila@email.com'),
(11, 11, 'felipe@email.com'),
(12, 12, 'amanda@email.com'),
(13, 13, 'rodrigo@email.com'),
(14, 14, 'beatriz@email.com'),
(15, 15, 'gustavo@email.com'),
(16, 16, 'isabela@email.com'),
(17, 17, 'lucas@email.com'),
(18, 18, 'laura@email.com'),
(19, 19, 'gabriel@email.com'),
(20, 20, 'mariana@email.com');


INSERT INTO Produto (ID_Produto, ID_Designer, Nome, Preco, Estoque) VALUES
(1, 1, 'Anel de Diamante', 5000.00, 10),
(2, 2, 'Colar de Pérolas', 8000.00, 5),
(3, 3, 'Brinco de Ouro', 3000.00, 8),
(4, 4, 'Pulseira de Prata', 1500.00, 15),
(5, 5, 'Relógio de Luxo', 12000.00, 3),
(6, 6, 'Pingente de Ouro', 2000.00, 12),
(7, 7, 'Conjunto de Jóias', 10000.00, 7),
(8, 8, 'Broche de Pérola', 2500.00, 9),
(9, 9, 'Gravata Elegante', 800.00, 20),
(10, 10, 'Tiara de Strass', 1200.00, 6),
(11, 11, 'Abotoaduras Clássicas', 500.00, 25),
(12, 12, 'Jóias Personalizadas', 6000.00, 4),
(13, 13, 'Bracelete de Ouro', 3500.00, 11),
(14, 14, 'Corrente de Prata', 1000.00, 18),
(15, 15, 'Medalhão Antigo', 4500.00, 8),
(16, 16, 'Gargantilha de Ouro', 2800.00, 10),
(17, 17, 'Brincos de Argola Prateados', 700.00, 15),
(18, 18, 'Anel de Noivado Diamante', 7000.00, 5),
(19, 19, 'Colar Longo de Pérolas', 6000.00, 7),
(20, 20, 'Brincos de Pérola', 2500.00, 10);


INSERT INTO DetalhesTecnicos (ID_Detalhes_Tecnicos, ID_Produto, Material, Peso, Acabamento, Lapidacao) VALUES
(1, 1, 'Ouro 18k', 3.5, 'Polido', 'Diamante'),
(2, 2, 'Prata', 2.0, 'Fosco', 'Pérolas'),
(3, 3, 'Ouro 14k', 2.8, 'Brilhante', 'Ouro'),
(4, 4, 'Prata 925', 4.0, 'Polida', 'N/A'),
(5, 5, 'Aço Inoxidável', 0.8, 'Polida', 'N/A'),
(6, 6, 'Ouro 22k', 1.5, 'Fosco', 'N/A'),
(7, 7, 'Ouro 18k', 5.0, 'Brilhante', 'N/A'),
(8, 8, 'Ouro Branco', 1.2, 'Polido', 'Pérola'),
(9, 9, 'Seda', 0.3, 'N/A', 'N/A'),
(10, 10, 'Strass', 0.5, 'Brilhante', 'N/A'),
(11, 11, 'Latão', 0.4, 'Polido', 'N/A'),
(12, 12, 'Ouro 18k', 2.0, 'Personalizado', 'N/A'),
(13, 13, 'Ouro 14k', 3.2, 'Polido', 'N/A'),
(14, 14, 'Prata 925', 1.8, 'Polida', 'N/A'),
(15, 15, 'Ouro 18k', 4.0, 'Envelhecido', 'N/A'),
(16, 16, 'Ouro 20k', 2.5, 'Fosco', 'N/A'),
(17, 17, 'Prata 950', 1.0, 'Polida', 'N/A'),
(18, 18, 'Ouro 24k', 3.8, 'Brilhante', 'Diamante'),
(19, 19, 'Pérolas Naturais', 2.5, 'N/A', 'N/A'),
(20, 20, 'Ouro 14k', 1.0, 'Polido', 'Pérola');


INSERT INTO Categoria (ID_Categoria, ID_Produto, Tipo, Estilo) VALUES
(1, 1, 'Anéis', 'Clássico'),
(2, 2, 'Colares', 'Elegante'),
(3, 3, 'Brincos', 'Moderno'),
(4, 4, 'Pulseiras', 'Casual'),
(5, 5, 'Relógios', 'Luxo'),
(6, 6, 'Pingentes', 'Personalizado'),
(7, 7, 'Conjuntos', 'Elegante'),
(8, 8, 'Broches', 'Clássico'),
(9, 9, 'Gravatas', 'Elegante'),
(10, 10, 'Tiaras', 'Feminino'),
(11, 11, 'Abotoaduras', 'Clássico'),
(12, 12, 'Joias Personalizadas', 'Personalizado'),
(13, 13, 'Braceletes', 'Casual'),
(14, 14, 'Correntes', 'Casual'),
(15, 15, 'Medalhões', 'Antigo'),
(16, 16, 'Gargantilhas', 'Elegante'),
(17, 17, 'Brincos de Argola', 'Casual'),
(18, 18, 'Anéis de Noivado', 'Romântico'),
(19, 19, 'Colares Longos', 'Elegante'),
(20, 20, 'Brincos de Pérola', 'Feminino');


INSERT INTO Cliente (CPF, Nome, Rua, Numero, Bairro, Cidade, Estado, Genero) VALUES
('123.456.789-01', 'Ana', 'Rua A', 123, 'Centro', 'Cidade A', 'SP', 'Feminino'),
('987.654.321-01', 'José', 'Rua B', 456, 'Bairro B', 'Cidade B', 'RJ', 'Masculino'),
('456.789.012-34', 'Laura', 'Rua C', 789, 'Bairro C', 'Cidade C', 'MG', 'Feminino'),
('111.222.333-44', 'Pedro', 'Rua D', 567, 'Bairro D', 'Cidade D', 'RS', 'Masculino'),
('555.666.777-88', 'Mariana', 'Rua E', 890, 'Bairro E', 'Cidade E', 'SC', 'Feminino'),
('999.888.777-66', 'Gabriel', 'Rua F', 321, 'Bairro F', 'Cidade F', 'BA', 'Masculino'),
('222.333.444-55', 'Leticia', 'Rua G', 654, 'Bairro G', 'Cidade G', 'PR', 'Feminino'),
('777.888.999-00', 'Lucas', 'Rua H', 987, 'Bairro H', 'Cidade H', 'PE', 'Masculino'),
('444.555.666-77', 'Amanda', 'Rua I', 432, 'Bairro I', 'Cidade I', 'AM', 'Feminino'),
('123.321.321-12', 'Rafael', 'Rua J', 876, 'Bairro J', 'Cidade J', 'CE', 'Masculino'),
('987.654.321-99', 'Isabel', 'Rua K', 543, 'Bairro K', 'Cidade K', 'GO', 'Feminino'),
('111.222.333-88', 'Fernando', 'Rua L', 210, 'Bairro L', 'Cidade L', 'PB', 'Masculino'),
('999.888.777-55', 'Giovanna', 'Rua M', 678, 'Bairro M', 'Cidade M', 'SE', 'Feminino'),
('222.333.444-11', 'Rodrigo', 'Rua N', 876, 'Bairro N', 'Cidade N', 'RO', 'Masculino'),
('777.888.999-22', 'Camila', 'Rua O', 543, 'Bairro O', 'Cidade O', 'TO', 'Feminino'),
('444.555.666-33', 'Matheus', 'Rua P', 120, 'Bairro P', 'Cidade P', 'AC', 'Masculino'),
('123.321.321-09', 'Juliana', 'Rua Q', 765, 'Bairro Q', 'Cidade Q', 'RR', 'Feminino'),
('987.654.321-88', 'Daniel', 'Rua R', 432, 'Bairro R', 'Cidade R', 'PI', 'Masculino'),
('111.222.333-77', 'Larissa', 'Rua S', 987, 'Bairro S', 'Cidade S', 'MA', 'Feminino'),
('999.888.777-44', 'Ricardo', 'Rua T', 654, 'Bairro T', 'Cidade T', 'AL', 'Masculino');


INSERT INTO EmailCliente (ID_Email, CPF, Email) VALUES
(1, '123.456.789-01', 'ana@email.com'),
(2, '987.654.321-01', 'jose@email.com'),
(3, '456.789.012-34', 'laura@email.com'),
(4, '111.222.333-44', 'pedro@email.com'),
(5, '555.666.777-88', 'mariana@email.com'),
(6, '999.888.777-66', 'gabriel@email.com'),
(7, '222.333.444-55', 'leticia@email.com'),
(8, '777.888.999-00', 'lucas@email.com'),
(9, '444.555.666-77', 'amanda@email.com'),
(10, '123.321.321-12', 'rafael@email.com'),
(11, '987.654.321-99', 'isabel@email.com'),
(12, '111.222.333-88', 'fernando@email.com'),
(13, '999.888.777-55', 'giovanna@email.com'),
(14, '222.333.444-11', 'rodrigo@email.com'),
(15, '777.888.999-22', 'camila@email.com'),
(16, '444.555.666-33', 'matheus@email.com'),
(17, '123.321.321-09', 'juliana@email.com'),
(18, '987.654.321-88', 'daniel@email.com'),
(19, '111.222.333-77', 'larissa@email.com'),
(20, '999.888.777-44', 'ricardo@email.com');


INSERT INTO Pedido (Numero_do_Pedido, CPF, Data_Pedido, Status_Pedido, Valor_Total) VALUES
(1, '123.456.789-01', '2023-01-15', 'Concluído', 0),
(2, '987.654.321-01', '2023-02-20', 'Em Andamento', 0),
(3, '456.789.012-34', '2023-03-10', 'Concluído', 0),
(4, '111.222.333-44', '2023-04-05', 'Cancelado', 0),
(5, '555.666.777-88', '2023-05-12', 'Em Andamento', 0),
(6, '999.888.777-66', '2023-06-18', 'Concluído', 0),
(7, '222.333.444-55', '2023-07-22', 'Em Andamento', 0),
(8, '777.888.999-00', '2023-08-30', 'Concluído', 0),
(9, '444.555.666-77', '2023-09-05', 'Em Andamento', 0),
(10, '123.321.321-12', '2023-10-10', 'Concluído', 0),
(11, '987.654.321-99', '2023-11-15', 'Concluído', 0),
(12, '111.222.333-88', '2023-12-20', 'Em Andamento', 0),
(13, '999.888.777-55', '2024-01-25', 'Concluído', 0),
(14, '222.333.444-11', '2024-02-28', 'Em Andamento', 0),
(15, '777.888.999-22', '2024-03-05', 'Concluído', 0),
(16, '444.555.666-33', '2024-04-10', 'Em Andamento', 0),
(17, '123.321.321-09', '2024-05-15', 'Concluído', 0),
(18, '987.654.321-88', '2024-06-20', 'Concluído', 0),
(19, '111.222.333-77', '2024-07-25', 'Concluído', 0),
(20, '999.888.777-44', '2024-08-30', 'Em Andamento', 0);


INSERT INTO Itens (ID_Itens, Numero_do_Pedido, ID_Produto, Quantidade) VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 2, 5, 1),
(4, 2, 8, 2),
(5, 3, 2, 3),
(6, 3, 10, 1),
(7, 4, 4, 1),
(8, 4, 14, 2),
(9, 5, 7, 1),
(10, 5, 15, 2),
(11, 6, 6, 1),
(12, 6, 13, 1),
(13, 7, 9, 2),
(14, 7, 17, 1),
(15, 8, 11, 1),
(16, 8, 18, 2),
(17, 9, 12, 1),
(18, 9, 20, 1),
(19, 10, 16, 1),
(20, 10, 19, 1),
(21, 11, 3, 1),
(22, 11, 11, 1),
(23, 12, 1, 2),
(24, 12, 7, 1),
(25, 13, 5, 1),
(26, 13, 12, 2),
(27, 14, 8, 1),
(28, 14, 14, 1),
(29, 15, 10, 1),
(30, 15, 16, 1),
(31, 16, 2, 2),
(32, 16, 20, 1),
(33, 17, 4, 1),
(34, 17, 9, 1),
(35, 18, 18, 1),
(36, 18, 19, 1),
(37, 19, 3, 1),
(38, 19, 13, 1),
(39, 20, 15, 1),
(40, 20, 16, 1);


UPDATE Pedido
SET Valor_Total = (
    SELECT SUM(Produto.Preco * Itens.Quantidade)
    FROM Itens
    JOIN Produto ON Itens.ID_Produto = Produto.ID_Produto
    WHERE Itens.Numero_do_Pedido = Pedido.Numero_do_Pedido
	)



INSERT INTO Designer (ID_Designer, Nome) VALUES
(21, 'Patricia Monteiro');

INSERT INTO Produto (ID_Produto, ID_Designer, Nome, Preco, Estoque) VALUES
(21, 21, 'Anel de Safira', 3500.00, 5);



SELECT Nome, (SELECT Especializacao FROM EspecializacaoDesigner WHERE ID_Designer = Designer.ID_Designer) AS Especializacao
FROM Designer;


UPDATE ContatoDesigner
SET Contato = 'joao_novo@email.com'
WHERE ID_Designer = 1;


DELETE FROM Categoria WHERE Tipo = 'Colares';

SELECT Nome,
       (SELECT Contato FROM ContatoDesigner WHERE ID_Designer = Designer.ID_Designer) AS Contato
FROM Designer;


SELECT * FROM Categoria;


SELECT Designer.Nome, EspecializacaoDesigner.Especializacao
FROM Designer, EspecializacaoDesigner
WHERE Designer.ID_Designer = EspecializacaoDesigner.ID_Designer;


SELECT Produto.Nome, DetalhesTecnicos.Material, Categoria.Tipo
FROM Produto, DetalhesTecnicos, Categoria
WHERE Produto.ID_Produto = DetalhesTecnicos.ID_Produto
AND Produto.ID_Produto = Categoria.ID_Produto;


SELECT Designer.Nome, ContatoDesigner.Contato
FROM Designer, ContatoDesigner
WHERE Designer.ID_Designer = ContatoDesigner.ID_Designer
ORDER BY Designer.Nome;


SELECT Produto.Nome, DetalhesTecnicos.Material, Produto.Preco
FROM Produto, DetalhesTecnicos
WHERE Produto.ID_Produto = DetalhesTecnicos.ID_Produto
ORDER BY Produto.Preco;


SELECT Cliente.Nome, EmailCliente.Email
FROM Cliente, EmailCliente
WHERE Cliente.CPF = EmailCliente.CPF;

SELECT Designer.Nome, EspecializacaoDesigner.Especializacao
FROM Designer, EspecializacaoDesigner
WHERE Designer.ID_Designer = EspecializacaoDesigner.ID_Designer
ORDER BY EspecializacaoDesigner.Especializacao;


SELECT Produto.Nome, Produto.Estoque
FROM Produto
WHERE Produto.Estoque < 10;


SELECT 
    Produto.Nome AS Nome_do_Produto, 
    Categoria.Estilo AS Estilo_da_Categoria, 
    Cliente.Nome AS Nome_do_Cliente
FROM 
    Produto, 
    Categoria, 
    Itens, 
    Pedido, 
    Cliente
WHERE 
    Produto.ID_Produto = Categoria.ID_Produto
    AND Produto.ID_Produto = Itens.ID_Produto
    AND Itens.Numero_do_Pedido = Pedido.Numero_do_Pedido
    AND Pedido.CPF = Cliente.CPF;


	SELECT 
    Produto.Nome AS Nome_do_Produto, 
    DetalhesTecnicos.Material, 
    DetalhesTecnicos.Peso, 
    Cliente.Nome AS Nome_do_Cliente
FROM 
    Produto, 
    DetalhesTecnicos, 
    Itens, 
    Pedido, 
    Cliente
WHERE 
    Produto.ID_Produto = DetalhesTecnicos.ID_Produto
AND Produto.ID_Produto = Itens.ID_Produto
AND Itens.Numero_do_Pedido = Pedido.Numero_do_Pedido
AND Pedido.CPF = Cliente.CPF;
























)

