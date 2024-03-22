#language: pt

Funcionalidade: Configurar Produto
Como cliente EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que esteja logado no portal EBAC-SHOP


Cenário: Campos obrigatórios não preenchidos
Quando selecionar um produto para compra
E tentar inserir a configuração no carrinho sem preenchimento dos campos obrigatórios
Então o sistema deve notificar a necessidade de preenchimento para os campos de cor, tamanho e quantidade


Cenário: Configuração com quantidade de produtos diferente de 10
E tenha realizado o preenchimento dos campos obrigatórios
E tenha selecionado uma quantidade de produtos diferente de 10 na seleção de quantidade
Quando inserir a configuração de produto no carrinho
Então o sistema deve notificar a obrigatóriedade de seleção de 10 produtos na opção de quantidade


Cenário: Configuração com 10 produtos
E tenha realizado o preenchimento dos campos obrigatórios
E tenha inserido a quantidade de 10 produtos na seleção de quantidade
Quando tentar inserir a configuração de produto no carrinho
Então o sistema deve notificar a obrigatóriedade de seleção de 10 produtos na opção de quantidade


Cenário: Retorno ao estado inicial utilizando botão "limpar"
E tenha feito uma configuração de produto
Quando clicar no botão "limpar"
Então o sistema deve retornar o conteúdo da tela para o estado inicial


Cenário: Inserção de configuração de produto em carrinho
E tenha preenchido todos os campos obrigatórios
E tenha selecionado a quantidade de 10 produtos
Quando realizar a inserção da configuração de produto no carrinho
Então o sistema deve realizar a inserção com sucesso
