# README - Banco de dados Joalheria

# Cenário:

Uma joalheria online tem a intenção de implementar um sistema de gerenciamento para seu E-commerce, visando aprimorar a gestão do seu processo de vendas. Deseja-se que todos os produtos disponíveis estejam devidamente cadastrados, incluindo informações como nome, preço e quantidade em estoque, também é preciso identificar os detalhes técnicos como o material, peso, acabamento e lapidação, bem como os dados do designer responsável pela criação da peça, contendo seu nome, contato e especialização. Além disso, é essencial efetuar o gerenciamento das categorias às quais os produtos estão associados, seja colar, pulseira, brinco, entre outros, assim como definir o estilo de cada item. É necessário manter um registro completo dos clientes, contemplando nome, endereço, e-mail, CPF e gênero. Este registro deve ser complementado pelas informações relativas aos pedidos efetuados pelos clientes, registrados por número, data, status e valor correspondentes.

# Modelo Conceitual:

O modelo conceitual representa a estrutura geral do sistema, identificando as principais entidades, seus atributos e seus relacionamentos.

![Modelo Conceitual](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/a943591faa886b0e8213059d45ec9bec1ca9c5d4/modeloconceitual.png)


# Modelo Lógico:

O modelo lógico traduz o modelo conceitual para uma representação mais detalhada, mostrando as tabelas, seus atributos e as relações entre elas.

![Modelo Lógico](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/modelol%C3%B3gico.png)


# Inserção de Dados:

Esta seção apresenta como o modelo físico foi implementado e como foi feita a inserção dos dados.

![CREATE TABLE 1](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/CREATETABLE1.png)

![CREATE TABLE 2](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/CREATETABLE2.png)

![INSERT DADOS 1](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS1.png)

![INSERT DADOS 2](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS2.png)

![INSERT DADOS 3](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS3.png)

![INSERT DADOS 4](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS4.png
)

![INSERT DADOS 5](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS5.png
)

![INSERT DADOS 6](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS6.png)

![INSERT DADOS 7](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS7.png)

![INSERT DADOS 8](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS8.png)

![INSERT DADOS 9](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/7c03a9725a77a33c0873deb8127c94b0f78f2574/INSERTDADOS9.png)


# CRUD (Create, Read, Update, Delete):

Criação dos Registros:
Create

![CREATE](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/f3bdc1a32fdee84ee326dace707910b6084edffe/CREATE.png)

Leitura de Registros:
Read

![READ+RESULTADOCREATE](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/f3bdc1a32fdee84ee326dace707910b6084edffe/READ%2BRESULTADOCREATE.png)


Atualização de Registros:
Update
OBS: A 1ª imagem é a execução e a 2ª é a "resposta".

![UPDATE](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/f3bdc1a32fdee84ee326dace707910b6084edffe/UPDATE.png
)

![UPDATERESULTADO](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/f3bdc1a32fdee84ee326dace707910b6084edffe/UPDATERESULTADO.png)


Exclusão de Registros:
Delete
OBS: A 1ª imagem é a execução e a 2ª é a "resposta".

![DELETE](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/f3bdc1a32fdee84ee326dace707910b6084edffe/DELETE.png)

![DELETERESULTADO](https://github.com/laricoutinho/Banco-de-dados-Joalheria/blob/f3bdc1a32fdee84ee326dace707910b6084edffe/DELETERESULTADO.png)


Relatórios:
Seleção:
Seleção

Exemplos de consultas que selecionam dados específicos, como listar todos os produtos de uma determinada categoria.

Filtro:
Filtro

Demonstração de como aplicar filtros para obter informações mais refinadas, por exemplo, mostrar apenas os clientes que fizeram pedidos nos últimos 30 dias.

Ordenação:
Ordenação

Instruções sobre como ordenar os resultados, como listar os produtos por ordem alfabética de nome.
