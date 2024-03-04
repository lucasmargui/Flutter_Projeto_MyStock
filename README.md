<H1 align="center">Projeto MyStock</H1>
<p align="center">🚀 Desenvolvimento de um projeto contendo separação por funcionalidade, utilização do padrão MVC, modularização ,gerenciamento de estado e service pattern para referências futuras</p>

## Recursos Utilizados
- Flutter 3.3.5

<div align="center">
    <img src="" style="width:45%">

</div>

```
```

<details>
  <summary>Clique para mostrar documentação do projeto</summary>
  </details>


# Documentação


## main.dart

<details>
  <summary>Clique para mostrar detalhes sobre "main.dart" </summary>
  

<div align="center">
    <img src="https://github.com/lucasmargui/Flutter_Projeto_MyStock/assets/157809964/8d9af620-4a09-46ca-9a06-2536b0af23f6" style="width:90%">

</div>


<div align="center">
    <img src="https://github.com/lucasmargui/Flutter_Projeto_MyStock/assets/157809964/f9d5646e-b433-47b5-add1-c771e2884425" style="width:90%">
</div>

<hr>

- WidgetsFlutterBinding.ensureInitialized() : Este método garante que os widgets do Flutter estejam inicializados antes de qualquer outra operação. É uma etapa importante, especialmente quando se trabalha com APIs assíncronas, como Firebase.
- setupDependencies() : Esta função é chamada para configurar as dependências do aplicativo. Isso pode incluir a configuração de serviços, instanciando objetos ou qualquer outra inicialização necessária antes de iniciar o aplicativo.Neste caso estamos inicializando os controllers,services e repositories registrados através do pacote instalado getIt, podendo acessar essas classes e suas propriedades de qualquer parte da aplicação
  
</details>




## app.dart


<details>
  <summary>Clique para mostrar detalhes sobre "app.dart"</summary>


<div align="center">
    <img src="https://github.com/lucasmargui/Flutter_Projeto_MyStock/assets/157809964/87837e0b-ebd4-4070-a6a4-3ca4c3428d6d" style="width:90%">

</div>

<div align="center">
    <img src="https://github.com/lucasmargui/Flutter_Projeto_MyStock/assets/157809964/ae6d8af8-bed4-40e8-8ca0-d3347212bdb0" style="width:90%">

</div>


Cada rota nomeada é mapeada para um widget correspondente, como OnboardingPage, SplashPage, SignUpPage, etc. O aplicativo usa rotas nomeadas para navegar entre diferentes telas ou páginas. Além disso, a rota "transaction" recebe argumentos, que são usados para passar informações adicionais para a página TransactionPage. Esse argumento passado é para identificar se uma transaction foi passada, se sim significa que estamos editando uma transaction da lista "GenerateTransactionList.transactions" se não, então está sendo adicionado uma nova transaction a lista "GenerateTransactionList.transactions".

</details>

## locator.dart



<div align="center">
    <img src="https://github.com/lucasmargui/Flutter_Projeto_MyStock/assets/157809964/a40cd655-6878-4383-a2ea-98ad9e0c3bdb" style="width:90%">

</div>


<div align="center">
    <img src="https://github.com/lucasmargui/Flutter_Projeto_MyStock/assets/157809964/b655b80a-2621-45de-bf64-e1d944872487" style="width:90%">

</div>

Configura e inicializa um gerenciador de dependências utilizando a biblioteca GetIt. Ele define um objeto chamado "locator" como uma instância do GetIt.

Em seguida, há uma função chamada "setupDependencies()" que registra diferentes tipos de serviços e controladores no "locator" e é chamada na inicialização de main.dart:




















