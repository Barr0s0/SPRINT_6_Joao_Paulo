* Settings *
Documentation       Arquivo de Testes para Endpoint /produtos

Resource            ../keywords/produtos_keywords.robot
Resource            ../keywords/login_keywords.robot

Suite Setup         Criar Sessao

* Test Cases *

Cenario: GET Buscar Produtos Por ID
    [tags]      BUSCARPRODUTOID
    GET Buscar Produto 
    Validar Status Code "200"

Cenario: GET Buscar Produto
    [tags]      BUSCARPRODUTOS
    GET Endpoint /produtos
    Validar Status Code "200"

Cenario: POST Criar Produto 201
    [tags]      POSTPRODUTO
    Fazer Login e Armazenar Token
    Criar Um Produto e Armazenar ID
    Validar Status Code "201"

Cenario: PUT Atualizar Produto
    [tags]      PUTPRODUTO
    Fazer Login e Armazenar Token
    PUT Endpoint /produtos
    Validar Status Code "200"

Cenario: DELETE Excluir Produto 200
    [tags]      DELETEPRODUTO
    Fazer Login e Armazenar Token
    Criar Um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"