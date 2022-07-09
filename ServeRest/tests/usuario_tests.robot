* Settings *
Documentation       Arquivo de Testes para Endpoint /usuarios

Resource            ../keywords/usuarios_keywords.robot

Suite Setup         Criar Sessao

* Test Cases *

Cenario: GET todos os usuarios 200
    [tags]      GET
    GET Endpoint/usuarios
    Validar Status Code "200"

Cenario: GET Buscar Usuario Por ID
    [tags]      GETBUSCARID
    GET Buscar Usuario
    Validar Status Code "200"

Cenario: POST Cadastrar Usuario 201
    [tags]      POST
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    Validar Status Code "201"
    Validar Se Mensagem Contem "sucesso"

Cenario: PUT Atualizar Usuario 201
    [tags]      PUT
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    [tags]      DELETE
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    DELETE Endpoint /usuarios
    Validar Status Code "200"

Cenario: Post Criar Usuario de Massa Dinamica 201
    [tags]          POSTUSUARIODINAMICO
    Criar Dados Usuario Valido
    POST Endpoint /usuarios
    Validar Status Code "201"
Cenario: POST Criar Usuario De Massa Estatica 201
    [tags]          POSTCRIARUSUARIOESTATICO
    Pegar Dados Usuario Estatico Valido
    POST Endpoint /usuarios
    Validar Status Code "201"