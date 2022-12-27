# Navigation

- A navegação funciona em forma de pilha (LIFO): Uma tela é colocada na pilha através de uma função que será consumida pela interface. Automaticamente é colocado um "icon" de retorno, que retornará sempre pra última tela a entrar antes da atual.

Ex:

Receita
|
ListaReceitas
|
MainScreen

- Estando na tela Receita, para retornar a MainScreen, primeiro ele retorna para ListaReceitas e depois para a MainScreen.

# Rotas Nomeadas

- Organizar melhor as rotas para que possa navegar por elas.
- Coloca as rotas no main.dart
