# language: pt
Funcionalidade: Tela de login
Como aluno do Portal EBAC
Quero me autenticar
Para visualizar minhas notas

  Contexto: 
    Dado que eu acessei a página de autenticação do portal EBAC

  Cenário: Autenticação válida
    Quando eu digitar o usuário "joao@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir uma mensagem de boas vindas "Olá João"

  Cenário: Usuário Inexistente
    Quando eu digitar o usuário "xxxyyyzzz@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir uma mensagem de alerta: "Usuário Inexistente"

  Cenário: Usuário com senha inválida
    Quando eu digitar o usuário "joao@ebac.com.br"
    E a senha "shhafdkjahfj"
    Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

  Esquema do Cenário: Autenticar múltiplos usuários
    Quando eu digitar o <usuario>
    E a <senha>
    Então deve exibir <mensagem> de sucesso

    Exemplos: 
      | usuario             | senha       | mensagem     |
      | "joao@ebac.com.br"  | "teste@123" | "Olá João!"  |
      | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
      | "jose@ebac.com.br"  | "teste@123" | "Olá José!"  |
