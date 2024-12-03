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

  