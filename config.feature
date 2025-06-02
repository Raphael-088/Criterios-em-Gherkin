            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de configuração de produto da EBAC-SHOP

            Cenário: Configuração válida
            Quando eu selecionar os campos obrigatórios como a cor "laranja"
            E o tamanho "G"
            E a quantidade for "<10"
            E eu clicar no botão "Adicionar ao carrinho"
            Então deve exibir uma mensagem "Itens adicionados com sucesso"

            Cenário: Limite de produto excedido
            Quando eu selecionar os campos obrigatórios como a cor "Vermelho"
            E o tamanho "M"
            E a quantidade for "11"
            E eu clicar no botão "Adicionar ao carrinho"
            Então deve exibir uma mensagem "Quantidade de itens excedida"

            Cenário: Excluindo predefinição de produtos
            Quando eu selecionar os campos obrigatórios como a cor "marrom"
            E o tamanho "P"
            E a quantidade for "3"
            E eu clicar no botão "Limpar"
            Então deve exibir uma mensagem "Itens excluidos"

            Esquema do Cenário: Excluir predefinição de produto
            Quando eu selecionar o <tamanho>
            E a <quantidade>
            E também a <cor>
            E eu clicar no botão <limpar>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | Cor       | Tamanho | Quantidade | Botão    | Mensagem          |
            | "laranja" | "G"     | "9"        | "Limpar" | "Itens excluidos" |
            | "marrom"  | "P"     | "2"        | "Limpar" | "Itens excluidos" |
            | "Preto"   | "M"     | "3"        | "Limpar" | "Itens excluidos" |
