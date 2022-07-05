* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de usuarios
Resource                    ../support/principal.robot



* Keywords *
Criar Sessao
    Create Session          serverest   https://serverest.dev

GET Endpoint /usuarios
    ${response}             GET on Session      serverest       /usuarios
    Set Global Variable     ${response}

GET Buscar Usuario 
    ${response}             GET On Session      serverest       /usuarios/0uxuPY0cbmQhpEz1
    ${id_usuario}           Set Variable        ${response.json()["_id"]}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

POST Endpoint /usuarios
    ${response}             POST on Session             serverest       /usuarios          json=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    ${response}             PUT on Session      serverest       /usuarios/${response.json()["_id"]}      json=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}             DELETE on Session      serverest       /usuarios/${response.json()["_id"]}       
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Quantidade "${quantidade}"

    Should Be Equal     ${response.json()["quantidade"]}        ${quantidade}

Pegar Dados Usuario Estatico Valido
    ${json}                     Importar JSON Estatico              json_usuario_ex.json
    ${payload}                  Set Variable                        ${json["user_valido"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    
Validar Ter Criado Usuario
    Should Not Be Empty         ${response.json()["_id"]}

Cadastrar Usuario Dinamico Valido
    ${payload}              Criar Dados Usuario Valido
    Set Global Variable     ${payload}
    POST Endpoint /usuarios
