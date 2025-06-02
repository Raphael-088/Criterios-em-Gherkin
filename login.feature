            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxyyyzzz@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Realização de login autenticação válida
            Quando eu preencher o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | Usuario             | Senha       | Mensagem    |
            | "joao@ebac.com.br"  | "senha@123" | "Olá João"  |
            | "maria@ebac.com.br" | "senha@321" | "Olá Maria" |

            Esquema do Cenário: Realização de login autenticação inexistente
            Quando eu preencher o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | Usuario                 | Senha        | Mensagem                     |
            | "xxxyyyzzz@ebac.com.br" | "senha@123"  | "Usuário ou senha inválidos" |
            | "joao@ebac.com.br"      | "xxyyzz@321" | "Usuário ou senha inválidos" |

