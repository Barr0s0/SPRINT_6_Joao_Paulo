* Settings *
Documentation       Arquivo de Testes para Endpoint /usuarios

* Test Cases *

Cenario: GET todos os usuarios 200
    [tags]      GET
    Criar Sessao
    GET Endpoint/usuarios
    Validar Status Code "200"
    Validar Quantidade "${3}"

Cenario: GET Buscar Usuario Por ID
    [tags]      GETBUSCARID
    Criar Sessao
    GET Buscar Usuario
    Validar Status Code "200"

Cenario: POST Cadastrar Usuario 201
    [tags]      POST
    Criar Sessao
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Atualizar Usuario 201
    [tags]      PUT
    Criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    [tags]      DELETE
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200"

Cenario: Post Criar Usuario de Massa Dinamica 201
    [tags]          POSTUSUARIODINAMICO
    Criar Sessao
    Cadastrar Usuario Dinamico Valido
    Validar Status Code "201"
#Cenario: POST Criar Usuario De Massa Estatica 201
#    [tags]          POSTCRIARUSUARIOESTATICO
#    Criar Sessao
#    Criar Usuario Estatico Valido
#    Validar Status Code "201"