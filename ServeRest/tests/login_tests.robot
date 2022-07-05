* Settings *
Documentation       Arquivo de Testes para Endpoint /login

Resource            ../keywords/login_keywords.robot
Suite Setup         Criar Sessao

* Test Cases *

Cenario: POST Realizar Login 200
    [tags]          POSTLOGIN
    POST Endpoint /login
    Validar Status Code "200"

Cenario: POST Login Sem Email
    [tags]        POSTLOGINEMAIL
    POST Login Sem Email
    Validar Status Code "400"
    Printar Email Obrigatorio

Cenario: POST Login Sem Senha
    [tags]        POSTLOGINSENHA
    POST Login Sem Senha
    Validar Status Code "400"
    Printar Senha Obrigatoria