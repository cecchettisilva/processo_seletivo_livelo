<div>
    <p  align="center">
    	<a>
    	    <img  alt="Livelo"  src="https://www.google.com/url?sa=i&url=https%3A%2F%2Flogodownload.org%2Flivelo-logo%2F&psig=AOvVaw3wO0YU_kvSdHAkI7P0cRFm&ust=1590267252349000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjptKetyOkCFQAAAAAdAAAAABAD"  width="100">
    	</a>
    </p>
</div>

<div>
    <p  align="center">
    	Repositório de testes para processo seletivo de QA - Livelo.
    </p>
</div>
  

## Usando pela primeira vez


 1. Clonando o repositório

Temos que clonar o repositório em sua máquina para que possamos visualizar os testes, para isso:

```
$ git clone https://github.com/cecchettisilva/processo_seletivo_livelo.git 
```


 2. Instalando os pacotes

Após o repositório ser clonado, acesse-o pela linha de comando do seu sistema operacional e estando na raiz do projeto, use o comando:
```
$ gem install bundler
```

Para instalar as gemas utilizadas:
```
$ bundle install --jobs 8
```

 3. Executando o cenário:

    – Acessar o site da Livelo;
    – Buscar um produto;
    – Adicionar o produto no carrinho.

Depois de todos os pacotes serem instalados corretamente, podemos executar a interface de testes:
```
$ cucumber -t @adicionar_produto
```

***

## Links úteis

- [Site oficial Ruby](https://www.ruby-lang.org/pt/)
- [Site oficial Cucumber](https://cucumber.io/)
- [Repositório site-prism](https://github.com/site-prism/site_prism)

***
