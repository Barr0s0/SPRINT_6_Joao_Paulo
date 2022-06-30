* Settings *
Documentation               Keywords e Variaveis para ações do endpoint de usuarios
Resource                    ./common.robot

* Variables *
${nome_do_usuario}          joaooo paulo da costa barroso
${senha_do_usuario}         joaojoaoq
${email_do_usuario}         joqaooo@jp.com.br

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
    &{payload}              Create Dictionary   nome=joseliss pauloo barrosooo   email=joao.barros@qa.com.br   password=testejoao12   administrador=true
    ${response}             POST on Session             serverest       /usuarios          data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary   nome=lukita pauloo barrosoo   email=joaoop.barros@qa.com.br   password=testejoao   administrador=true
    ${response}             PUT on Session      serverest       /usuarios/XQOf0RVVBKYIraeV      data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}             DELETE on Session      serverest       /usuarios/wD950qLeCnyq464H      
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}

Validar Quantidade "${quantidade}"

    Should Be Equal     ${response.json()["quantidade"]}        ${quantidade}

Validar Se Mensagem Contem "${palavra}"
    Should Contain          ${response.json()["message"]}       ${palavra}

Criar Usuario Estatico Valido
    ${json}                     Importar JSON Estatico              json_usuario_ex.json
    ${payload}                  Set Variable                        ${json["user_valido"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    
Validar Ter Criado Usuario
    Should Not Be Empty         ${response.json()["_id"]}