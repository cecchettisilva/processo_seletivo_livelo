#language: pt

@adicionar_produto
Funcionalidade: Adicionar produto ao carrinho, pelo departamento
    Sendo um usuário
    Quero adicionar um produto ao carrinho
    Para realizar uma compra com meus pontos

Esquema do Cenário: Adiciona produto ao carrinho
    Dado que acesse a home
    Quando adicionar o produto ao carrinho pelo departamento "<departamento>" e categoria "<categoria>"
    Então devo ver o produto no carrinho

    Exemplos:
    | departamento | categoria       |
    | Com Produtos | Infantil        |
    | Com Produtos | Esporte e Lazer |