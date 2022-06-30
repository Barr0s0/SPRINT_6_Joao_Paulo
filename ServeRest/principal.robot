* Settings *
Documentation   Arquivo simples para requisições HTTP
Library         RequestsLibrary 
Resource        ./usuarios_keywords.robot
Resource        ./login_keywords.robot
Resource        ./produtos_keywords.robot
Resource        ./carrinho_keywords.robot

#SESSÃO PARA CRIAÇÃO DOS CENÁRIOS DE TESTE

* Test Cases *
############## CENARIO USUARIOS ###############
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

########### CENARIO PRODUTOS ##############
Cenario: GET Buscar Produtos Por ID
    [tags]      BUSCARPRODUTOID
    Criar Sessao
    GET Buscar Produto 
    Validar Status Code "200"

Cenario: GET Buscar Produto
    [tags]      BUSCARPRODUTOS 
    Criar Sessao
    GET Endpoint /produtos
    Validar Status Code "200"
    Validar Quantidade "${2}"

Cenario: POST Criar Produto 201
    [tags]      POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    POST Endpoint /produtos
    Validar Status Code "201"

Cenario: PUT Atualizar Produto
    [tags]      PUTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    PUT Endpoint /produtos
    Validar Status Code "200"

Cenario: DELETE Excluir Produto 200
    [tags]      DELETEPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Um Produto e Armazenar ID
    DELETE Endpoint /produtos
    Validar Status Code "200"

############### CENARIO CARRINHO #############
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

############# CENARIO LOGIN ##############
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

#Cenario: POST Criar Usuario De Massa Estatica 201
#    [tags]          POSTCRIARUSUARIOESTATICO
#    Criar Sessao
#    Criar Usuario Estatico Valido
#    Validar Status Code "201"
#Cenario: POST Criar Carrinho
#    [tags]          POSTCRIARCARRINHO
#    Criar Sessao
#    Fazer Login e Armazenar Token
#    POST Endpoint /carrinhos
#    Validar Status Code "201"

Cenario: Nome do cenario 200
    Criar Sessao
    
* Keywords *
Criar Sessao
    Create Session          serverest   https://serverest.dev

