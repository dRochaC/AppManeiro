# language: pt
@inscricao
Funcionalidade: Realizar inscrição no Digital Day

  Essa funcionalide permite ao usuário se inscrever no evento
  
  Contexto:
    Dado que estou na tela de login
    E preencho o campo "edit_nome" com o valor "Luciano"
    E toco no botão "button_entrar"

  @inscricao_fluxo_normal
  Cenário: Exemplo
    Quando toco no botão "button_tela_2"
    Então sou redirecionado para tela de sobre