# language: pt
@AppManeiro
Funcionalidade: Realizar testes AppManeiro

  Essa funcionalidade permite ao usuário Lucianob treinar
  
  Contexto:
    Dado que estou na tela de login
    E preencho o campo "edit_nome" com o valor "Luciano"
    E toco no botão "button_entrar"

  Cenário: Fluxo normal Tela de início
    Quando toco no botão voltar
    Dado que estou na tela de login
    E toco no botão "button_entrar"
    Então visualizo a mensagem "Bem vindo, Luciano!"
    Quando toco no botão "button_tela_2"
    E sou redirecionado para tela de sobre
    Então visualizo a mensagem "AppManeiro criado pelo stag"

  Cenário: Fluxo normal Tela Gerador de frase
    Quando toco no botão "button_tela_1"
    E sou redirecionado para tela de gerar frases
    E toco no botão "button_pessoa_1"
    E toco no botão "button_frase_1"
    E visualizo a mensagem "O Luciano é legal"
    E toco no botão "button_pessoa_2"
    E toco no botão "button_frase_1"
    E visualizo a mensagem "O Raphael é legal"
    E toco no botão "button_pessoa_1"
    E toco no botão "button_frase_2"
    E visualizo a mensagem "O Luciano é chato"
    E toco no botão "button_frase_3"
    Então visualizo a mensagem "O Luciano é ruim no fifa"

   Cenário: Fluxo normal Tela Configurações
    Quando toco no botão "button_tela_3"
    E sou redirecionado para tela de configurações
    E preencho o campo "edit_novo_usuario" com o valor "Lucianob"
    E toco no botão "button_alterar"
    E sou redirecionado para tela inicial
    Então visualizo a mensagem "Bem vindo, Lucianob!"

  @test_Conf_Erro
  Cenário: Fluxo normal Tela Configurações Erro
    Quando toco no botão "button_tela_3"
    E sou redirecionado para tela de configurações
    E toco no botão "button_alterar"
    E visualizo a mensagem "Mensagem em branco"
    E toco em "Ok"
    E toco no botão voltar
    E sou redirecionado para tela inicial
    Então visualizo a mensagem "Bem vindo, Luciano!"