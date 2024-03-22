#language: pt

Funcionalidade:
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra


Cenário: Campos obrigatórios com asterisco
Dado que tenha realizado uma configuração de produto para compra
Quando inserir a configuração no carrinho 
E acessar a tela de checkout
Então os campos obrigatórios da tela devem estar sinalizados com asterisco


Contexto: 
Dado que esteja na tela de checkout


Cenário: E-mail com formato inválido
Quando preencher o campo e-mail com formato inválido
Então o sistema deve exibir mensagem de erro


Cenário: Campos obrigatórios sem preenchimento 
Quando tentar finalizar a compra sem preenchimento dos campos obrigatórios
Então o sistema deve exibir mensagem de alerta
E não permitir finalizar a compra


Esquema do Cenário: validar inserção de múltiplos e-mails
Quando preencher o campo e-mail com <email>
Então o sistema deve exibir <mensagem>

Exemplos:
|email|mensagem|
|"tania@ebac.com.br"|""|
|"thiagoe"|"Formato de E-mail inválido!"|
|"vanessat@ebac,com.br"|"Formato de E-mail inválido!"|
|"rrodriguest2ebac.com.br"|"Formato de E-mail inválido!"|
|"gadelhafr@ebac.com,br"|"Formato de E-mail inválido!"|
|"frosande@ebac.com"|"Formato de E-mail inválido!"|
|"emanuellecvd@ebac.br"|"Formato de E-mail inválido!"|
|"flaviaodebac.com.br"|"Formato de E-mail inválido!"|
|"fernandahj@ebac.com.br"|""|
|"joaoart@ebac,combr"|"Formato de E-mail inválido!"|
|"karkahjg@bac.com.br"|"Formato de E-mail inválido!"|


