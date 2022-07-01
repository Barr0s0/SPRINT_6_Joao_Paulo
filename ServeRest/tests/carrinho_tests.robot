* Settings *
Documentation       Arquivo de Testes para Endpoint /carrinhos

* Test Cases *

Cenario: GET Buscar carrinhos
    [tags]      BUSCARCARRINHO
    Criar Sessao
    GET Endpoint /carrinhos
    Validar Status Code "200"
Cenario: GET Buscar Carrinho Por Id
    [tags]      BUSCARID
    Criar Sessao
    GET Buscar Carrinho Por ID
    Validar Status Code "200"

Cenario: DELETE Excluir Carrinho
    [tags]      EXCLUIRCARRINHO
    Criar Sessao
    Fazer Login e Armazenar Token
    DELETE Endpoint /carrinhos/cancelar-compra
    Validar Status Code "200"

Cenario: DELETE Compra Concluida
    [tags]      COMPRACONCLUIDA
    Criar Sessao
    Fazer Login e Armazenar Token
    DELETE Endpoint /carrinhos/concluir-compra
    Validar Status Code "200"

#Cenario: POST Criar Carrinho
#    [tags]          POSTCRIARCARRINHO
#    Criar Sessao
#    Fazer Login e Armazenar Token
#    POST Endpoint /carrinhos
#    Validar Status Code "201"