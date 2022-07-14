* Settings *
Documentation           Keywords
Library                 FakerLibrary


* Keywords *
Criar Dados Usuario Valido
    ${nome}                    FakerLibrary.Name
    ${email}                   FakerLibrary.Email
    ${senha}                   Fakerlibrary.Password
    ${payload}                 Create Dictionary           nome=${nome}          email=${email}        password=${senha}      administrador=true
    Log To Console             ${payload}
    Set Global Variable        ${payload} 

Gerar Produto
    ${nome}=                FakerLibrary.Text
    ${descricao}=           FakerLibrary.Word
    ${preco}=               FakerLibrary.RandomNumber   digits=3
    ${quantidade}=          FakerLibrary.RandomNumber   digits=4
    ${payload}=             Create Dictionary           nome=${nome}    descricao=${descricao}      preco=${preco}      quantidade=${quantidade}
    Log To Console          ${payload}
    Set Global Variable     ${payload}
