            #language: pt

            Funcionalidade: Configuração de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E, escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Seleção do produto
            Quando eu selecionar o "produto"
            E "selecionar" cor, tamanho e quantidade
            Então deve permitir a compra

            Esquema do Cenário: Limite de 10 itens por compra
            Quando eu adicionar certa quantidade de <itens> 
            E tentar <adicionar> um limite maior que 10
            Então deve exibir uma <mensagem> Não é possível adicionar mais itens.

            Exemplos:
            | itens | adicionar | mensagem                              |
            | "10"  | "1"       | "Não é possível adicionar mais itens." |
            | "10"  | "2"       | "Não é possível adicionar mais itens." |
            
            
            Esquema do Cenário: Limpar seleção
            Quando eu adicionar um "item"
            E quiser "excluir"
            Então o campo deve ser limpo e vazio para a próxima seleção