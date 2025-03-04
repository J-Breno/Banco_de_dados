# Modelo Conceitual

__Definição 1:__ é o modelo que descreve a estrutura das informações que o sistema vai gerenciar, ou seja, as informações deve estar organizadas em entidades relacionadas entre elas, descrever como as informações vão estar armazenadas.
__definição 2:__ é o **modelo de domínio** em nível de **Análise:**
 - pertence ao escopo do problema e não ao escopo da solução
 - independente de paradigma 
 - independe de tecnologia

 __OBS(Modelo de domínio):__ É modelo que descreve as entidades do domínio, bem como as interrelações entre elas.

 ### O modelo conceitual descreve:

 - conteitos
  - atributos
  - associações

  Um conceito pode ser qualquer entidade que tenha um significado para o sitema e que tenha uma necessidade de armazenamento de dados.
  - Exemplos: cleinte, pedido, produto, fornecedor, etc.
  - Um conceito deve ser uma __unidade coesa.__, ou seja, não se deve misturar informações de várias coisas distintas em um mesmo conceito.

  Um atributo são informações alfanuméricas simples, como números, textos, datas, etc. contidas em cada conceito.
  - Produto: descrição, preço;
  - Cliente: nome, email, telefone, cpf, dataNascimento

  ### Notas (1FN):
  Um atributo não pode ser multivalorado, tipo ter vários valores um memso atributo
  Um atributo não pode ser composto: ter várias informações que poderia ser separado em vários atributos colocando em apenas um.

  __Caso de uso:__ documento estruturado que especifica uma funcionalidade do sistema por meio de troca de informações entre usuários e sistemas;

  ## Associações
  __Instâncias:__ cada objeto criado de seus conceitos  
  __Associações:__ é um relacionamento estático entre dois conceitos.

  __multiplicidade:__ é a quantidade mínima e máxima de objetos que uma associação permite em cada um de seus papéis.

  para descobrir a multiplicidade, sempre se pergunte: 1 (conceito) pode ter quantos (papel)?
  ex: 1 carro pode ter quantos donos?
  ex: 1 pessoa pode ter quantos carros?
  __um para muitos:__ 1 carro pode ter 1 dono, e uma pessoa pode ter de 0 a muitos carro
  __um para um:__ um carro pode ter 1 reponsável e um responsável pode ter 0  a 1 carro
  __muitos para muitos:__ 1 carro pode ter 1 a muitos motoristas e 1 motorista pode dirigir 0 ou muitos carros

  "," = "ou"
  ".." = "a"
  "*" = "vários"

  ## Conceitos dependentes, associações obrigatórias, múltiplas e autoassociações

  - Um associação é obrigatória se o coneito desempenha um papel de multiplicidade mínima maior que zero
  - Conceito dependente possui pelo menos uma associação obrigatória, só pode existir se o outro existir, se o outro deixar de existir, o objeto dependente também deixará   de existir

  ## associação todo-parte

  Quando um conceito é parte de outro que representa um todo, desenhamos um diamante no lado do todo;

  diamante branco: "Agregação" o conceito parte não é exclusivo, ou seja, um um coisa não é exclusiva de outra, eu posso tirar ela e colocar em outro lugar
  Diamante preto: "composição" O conceito parte é exclusivo, ou seja, não posso tirar e colocar em outro lugar

  Quando é feito todo-parte é que de fato algo faz parte de outra, tipo um pneu com um carro ou uma cidade com um estado

