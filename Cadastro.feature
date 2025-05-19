Feature: Cadastro no checkout

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que o cliente está na tela de cadastro do checkout

    Scenario Outline: Cadastro com dados inválidos
        When o cliente tenta se cadastrar com os seguintes dados:
            | nome   | email   | telefone   |
            | <nome> | <email> | <telefone> |
        Then o sistema deve exibir a mensagem de erro "<mensagem>"

        Examples:
            | nome  | email           | telefone    | mensagem                   |
            | João  | joao@teste      | 11999999999 | Formato de e-mail inválido |
            | Maria |                 | 11999999999 | E-mail é obrigatório       |
            | Pedro | pedro@email.com |             | Telefone é obrigatório     |

    Scenario: Cadastro com sucesso
        When o cliente preenche todos os campos obrigatórios corretamente
        Then o sistema deve concluir o cadastro e permitir o prosseguimento para o pagamento