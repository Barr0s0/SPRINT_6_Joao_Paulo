* Settings *
Documentation       Arquivo de Testes para Endpoint /produtos

* Test Cases *

Cenario: GET Buscar Produtos Por ID
    [tags]      BUSCARPRODUTOID
    Criar Sessao
    GET Buscar Produto 
    Validar Status Code "200"

Cenario: GET Buscar Produto
    [tags]      BUSCARPRODUTOS 
    Criar Sessao
    GET Endpoint /produtos
    Validar Status Code "200"
    Validar Quantidade "${2}"

Cenario: POST Criar Produto 201
    [tags]      POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"

Cenario: PUT Atualizar Produto
    [tags]      PUTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    PUT Endpoint /produtos
    Validar Status Code "200"

Cenario: DELETE Excluir Produto 200
    [tags]      DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"