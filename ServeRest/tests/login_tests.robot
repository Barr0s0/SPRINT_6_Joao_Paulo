* Settings *
Documentation       Arquivo de Testes para Endpoint /login

* Test Cases *

Cenario: POST Realizar Login 200
    [tags]          POSTLOGIN
    Criar Sessao
    POST Endpoint /login
    Validar Status Code "200"

Cenario: POST Login Sem Email
    [tags]        POSTLOGINEMAIL
    Criar Sessao
    POST Login Sem Email
    Validar Status Code "400"
    Printar Email Obrigatorio

Cenario: POST Login Sem Senha
    [tags]        POSTLOGINSENHA
    Criar Sessao
    POST Login Sem Senha
    Validar Status Code "400"
    Printar Senha Obrigatoria