# normalização

- Processo de adequadação de tabelas as formas normais. evitar redudancias, inconsistencia, perda de informações

## Primeira forma normal(1FN)

- Proíbe atributos compostos, atributos multivalorados e relações aninhadas. Ou seja, permite apenas atributos que sejam atomicos.

## Segunda forma normal(2FN)

- A relação deve estar na primeira forma normal; Todos os atributos da relação que não for chave primária dependem funcionalmente de toda chave primária, ou seja, todos os outros campos deve depender da chave primária.

## Terceira forma normal(3FN)

- A relação está na segunda forma normal, atributos não devem depender exclusivamente de atributos chave, ou seja, uma tabela deve conter apenas atributos que fazem parte entre si+