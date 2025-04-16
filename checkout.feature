            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout da EBAC-SHOP

            Cenário: Cadastramento
            Quando eu preencher todos os campos marcados como "obrigatorio"
            E escolher o "método de pagamento"
            Então o botão de "finalizar compra" deve ser ativado

            Cenário: Dados inválidos
            Quando eu preencher todos os campos marcados como "obrigatorio"
            E e inserir um "e-mail" com formato inválido
            Então o sistema deve exibir a mensagem de erro "E-mail inválido"

            Esquema do Cenário: Tentativa de cadastro
            Quando eu preencher os campos marcados como <obrigatorio>
            E não preencher <cep> ou <cidade>
            Então deve exibir a <mensagem> Campos obrigatórios não preenchidos

            Exemplos:
            | obrigatorios | campos obrigatorios não preenchidos | mensagem                              |
            | "cep"        | "cep"                               | "Campos obrigatórios não preenchidos" |
            | "cidade"     | "cidade"                            | "Campos obrigatórios não preenchidos" |





