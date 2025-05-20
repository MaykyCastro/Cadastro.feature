Funcionalidade: Cadastro no checkout

  Como cliente da EBAC-SHOP  
  Quero concluir meu cadastro  
  Para finalizar minha compra

  Contexto:
    Dado que o cliente está na tela de cadastro do checkout

  Esquema do Cenário: Cadastro com dados inválidos
    Quando o cliente tenta se cadastrar com os dados: <nome>, <email> e <telefone>
    Então o sistema deve exibir a mensagem de erro "<mensagem>"

    Exemplos:
      | nome  | email           | telefone    | mensagem                   |
      | João  | joao@teste      | 11999999999 | Formato de e-mail inválido |
      | Maria |                 | 11999999999 | E-mail é obrigatório       |
      | Pedro | pedro@email.com |             | Telefone é obrigatório     |

  Cenário: Cadastro com sucesso
    Quando o cliente preenche todos os campos obrigatórios corretamente
    Então o sistema deve concluir o cadastro e permitir o prosseguimento para o pagamento