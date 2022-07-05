* Settings *
Documentation       Arquivo de Testes para Endpoint /carrinhos

Resource            ../keywords/carrinho_keywords.robot

Suite Setup         Criar Sessao

* Test Cases *

Cenario: GET Buscar carrinhos
    [tags]      BUSCARCARRINHO
    GET Endpoint /carrinhos
    Validar Status Code "200"
Cenario: GET Buscar Carrinho Por Id
    [tags]      BUSCARID
    GET Buscar Carrinho Por ID
    Validar Status Code "200"

Cenario: DELETE Excluir Carrinho
    [tags]      EXCLUIRCARRINHO
    Fazer Login e Armazenar Token
    DELETE Endpoint /carrinhos/cancelar-compra
    Validar Status Code "200"

Cenario: DELETE Compra Concluida
    [tags]      COMPRACONCLUIDA
    Fazer Login e Armazenar Token
    DELETE Endpoint /carrinhos/concluir-compra
    Validar Status Code "200"

#Cenario: POST Criar Carrinho
#    [tags]          POSTCRIARCARRINHO
#    Criar Sessao
#    Fazer Login e Armazenar Token
#    POST Endpoint /carrinhos
#    Validar Status Code "201"