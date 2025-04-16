            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP 

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joão@ebac.com"
            E a senha "senha123"
            Então deve exibir a tela de checkout

            Esquema do Cenário: Dados inválidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de Usuário ou senha inválidos

            Exemplos:
            | usuario            | senha      | mensagem                     |
            | "joao@ebac.com.br" | "senja881" | "Usuário ou senha inválidos" |
            | "joao_ebac.com.br" | "senja123" | "Usuário ou senha inválidos" |