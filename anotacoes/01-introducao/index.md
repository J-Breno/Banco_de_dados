# Introdução Banco de dados

### Modelagem conceitual
- nível de análise
- o seu intuido principal é entender o problema
- descrever as regras de negócio


### Modelo lógico relácional

- nível de design
- descrever a solução do sistema
- projetar a forma que tem que ser implementado

### normalização
- conjunto de regras e procedimentos para verificar se o banco de dados está normalizado


## Banco de dados Relacional

- Em um BD relacional, os dados são armazenados em __TABELAS__;
- Tabela possui nome técnico de __RELAÇÃO__
- Uma tabela é um conjunto de registros. Cada registro é uma linha da tabela
- Cada coluna da tabela recebe o nome de __CAMPO__ ou __ATRIBUTO__
__REGRAS__ = *__CONTRAINS__*

__SGBD__ = Sistema de gerenciamento de banco de dados, ou seja, são sistemas que permitem a criação e o gerenciamente de vários banco de dados; EX: ORACLE, POSTGRESql, MySql...

__TRANSAÇÃO__ = é o mecanismo que permite manter a consistencia dos dados do banco de dados, os dados precisam ser precisos e consistentes

Minhas transações devem ser: atômicas, consistentes, isoladas, duráveis

__atomicas__ = ou executa tudo ou não executada nada, se ocorrer um erro no meio da transação, ou tudo será desfeito ou as operações serão retomadas e finalizadas.

__consistentes__ = as informações devem ser mantidas corretamente

__isoladas__ = quando uma transação está sendo enviada, ninguém pode fazer alteração nela

__duraveis__ = quando concluida, os dados devem ser gravados

__commit__ = confirmar uma transação
rollback = desfazer uma transação