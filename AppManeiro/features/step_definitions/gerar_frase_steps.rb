# coding: utf-8

Dado(/^que estou na tela de login$/) do
  @page = page(BaseScreen)
  @page.view_exists "Login"
end

Dado(/^que estou na tela inicial$/) do
  @page.view_exists "Tela de início"
end

Dado(/^sou redirecionado para tela inicial$/) do
  @page.view_exists "Tela de início"
end

Dado(/^que estou na tela frase$/) do
  @page.view_exists "Tela Gerador de frase"
end

Dado(/^sou redirecionado para tela de gerar frases$/) do
  @page.view_exists "Gerador de frase"
end

Dado(/^sou redirecionado para tela de sobre$/) do
  @page.view_exists "Sobre"
end

Dado(/^sou redirecionado para tela de configurações$/) do
  @page.view_exists "Configurações"
end

Dado(/^preencho o campo "([^"]*)" com o valor "([^"]*)"$/) do |campo, valor|
  @page.touch_view_with_id campo
  @page.fill_view_with_text valor
end

Quando(/^toco em "([^"]*)"$/) do |botao|
  @page.touch_view_with_text botao
end

Quando(/^toco no botão "([^"]*)"$/) do |botao|
  @page.touch_view_with_id botao
end

Dado(/^toco no botão voltar$/) do
  press_back_button
end

Então(/^visualizo a mensagem "([^"]*)"$/) do |mensagem|
  @page.view_exists mensagem
end