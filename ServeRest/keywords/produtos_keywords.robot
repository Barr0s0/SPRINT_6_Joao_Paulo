* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de produtos
Resource                    ../support/principal.robot

* Keywords *
GET Buscar Produto 
    ${response}             GET On Session      serverest       /produtos/BeeJh5lz3k6kSIzA
    ${id_produto}           Set Variable        ${response.json()["_id"]}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

GET Endpoint /produtos
    ${response}             GET On Session      serverest       /produtos
    Set Global Variable     ${response}
    Log to Console          Response: ${response.content}

POST Endpoint /produtos
    &{header}                   Create Dictionary       Authorization=${token_auth}
    ${response}                 POST on Session         serverest       /produtos      json=&{payload}       headers=${header}
    Log to Console              Response: ${response.content}
    Set Global Variable         ${response}
PUT Endpoint /produtos
    &{header}                   Create Dictionary       Authorization=${token_auth}
    ${response}                 PUT on Session         serverest       /produtos/${id_produto}      json=&{payload}       headers=${header}
    Log to Console              Response: ${response.content}
    Set Global Variable         ${response}

DELETE Endpoint /produtos
    &{header}                   Create Dictionary       Authorization=${token_auth}
    ${response}                 DELETE on Session       serverest       /produtos/${id_produto}     headers=${header}
    Log to Console              Response: ${response.content}
    Set Global Variable         ${response}

Validar Ter Criado Produto
    Should be Equal             ${response.json()["message"]}       Cadastro realizado com sucesso
    Should Not Be Empty         ${response.json()["_id"]}

Criar Um Produto e Armazenar ID
    Gerar Produto
    POST Endpoint /produtos
    Validar Ter Criado Produto
    ${id_produto}                   Set Variable         ${response.json()["_id"]}
    Log to Console                  ID do produto: ${id_produto}
    Set Global Variable            ${id_produto}