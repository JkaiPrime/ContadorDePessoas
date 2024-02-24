# Aplicativo Flutter Contador

Este é um aplicativo simples em Flutter que demonstra um contador com botões para incrementar e decrementar.

## Estrutura do Código

O código está dividido em três partes principais: a função `main()`, a classe `MyApp` e a classe `HomePages`.

### main

A função `main()` é o ponto de entrada do aplicativo. Ela chama a função `runApp()` passando um objeto `MyApp` como argumento.

### MyApp
A classe MyApp é um widget StatelessWidget que retorna um MaterialApp, que é a raiz da árvore de widgets do aplicativo. Ele define a página inicial como um objeto HomePages.

### Classe HomePages
A classe HomePages é um widget StatefulWidget que representa a tela principal do aplicativo. Ele mantém o estado do contador e exibe o valor do contador na tela.

Estado do Contador
O estado do contador é mantido pela classe _HomePagesState. Ele possui duas variáveis: cont para armazenar o valor do contador e status para exibir uma mensagem de status com base no valor do contador.

Funções de Incremento e Decremento
As funções increment() e decrement() são responsáveis por aumentar e diminuir o valor do contador, respectivamente. Elas atualizam o estado do contador usando setState() para refletir as mudanças na interface do usuário.

Interface do Usuário
A interface do usuário é definida no método build() da classe _HomePagesState. Ela consiste em um Scaffold com um fundo vermelho e uma imagem de fundo. Dentro do Scaffold, há um Container que contém uma coluna com dois Text widgets para exibir o status e o valor do contador, e dois botões para incrementar e decrementar o contador.
