            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Cenário: Cadastro válido
            Quando eu preencher os campos marcados com asterisco; nome "João"
            E sobrenome "Tavares"
            E país "Brasil"
            E endereço "Rua 1, nº123"
            E cidade "São Paulo"
            E cep "01234-567"
            E telefone "11987654321"
            E email "joao.tavares@ebac-shop.com"
            E clicar em "Finalizar compra"
            Então deve exibir uma mensagem de sucesso "Cadastro realizado com sucesso!"

            Cenário: Cadastro inválido
            Quando eu preencher os campos marcados com asterisco, nome "João"
            E sobrenome "Tavares"
            E país "Brasil"
            E endereço "Rua 1, nº123"
            E cidade "São Paulo"
            E cep "01234-567"
            E telefone "11987654321"
            E email "joao##tavares@Ebac-shop.com"
            E clicar em "Finalizar compra"
            Então deve exibir uma mensagem de alerta "Formato de e-mail inválido!"

            Esquema do Cenário: Cadastro não realizado
            Quando eu deixar de preencher qualquer um dos campos a seguir <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            E clicar em "Finalizar compra"
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | Nome | Sobrenome | País   | Endereço     | Cidade    | Cep       | Telefone    | Email                      | Mensagem de alerta               |
            | João | Tavares   | Brasil | Rua 1, nº123 | São Paulo | 01234-567 | N           | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |
            | João | Tavares   | Brasil | Rua 1, nº123 | N         | 01234-567 | 11987654321 | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |
            | João | Tavares   | Brasil | N            | São Paulo | 01234-567 | 11987654321 | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |
            | João | N         | Brasil | Rua 1, nº123 | São Paulo | 01234-567 | 11987654321 | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |
            | João | Tavares   | N      | Rua 1, nº123 | São Paulo | 01234-567 | 11987654321 | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |
            | João | Tavares   | Brasil | Rua 1, nº123 | São Paulo | 01234-567 | 11987654321 | N                          | Campo obrigatório não preenchido |
            | N    | Tavares   | Brasil | Rua 1, nº123 | São Paulo | 01234-567 | 11987654321 | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |
            | João | Tavares   | Brasil | Rua 1, nº123 | São Paulo | N         | 11987654321 | joao.tavares@ebac-shop.com | Campo obrigatório não preenchido |










