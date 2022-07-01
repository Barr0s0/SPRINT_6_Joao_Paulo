* Settings *
Documentation   Arquivo simples para requisições HTTP
Library         RequestsLibrary 
Library         Collections
Library         OperatingSystem
Resource        ./common/common.robot
Resource        ./fixtures/dynamic.robot
Resource        ./variaveis/serverest_variaveis.robot

* Keywords *
Criar Sessao
    Create Session          serverest   ${BASE_URI}

