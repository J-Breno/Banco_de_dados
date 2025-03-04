# Logico relacional
- Representar os dados em formas de tabelas
- Os dados são armazenados em tabela
- As tabelas possui o nome de relação
- Uma tabela é um conjunto de registros. Cada registro corresponde a uma linha da tabela;
- CONSTRAINS = REGRA
- Cada coluna da tabela recebe o nome de CAMPO ou ATRIBUTO
- REGISTROS = linhas & CAMPOS = Colunas
- O valor de cada campo não pode ser dado composto(deve subdividir entre outra tabela; ex: endereco) e deve ser Monovalorado, ou seja, não pode conter vários valores(ex: uma pessoa tem vários telefones, ai colocar vários telefones em um campo da tabela)

## Chaves candidatas, Primária e alternativas
- Chave candidata: Coluna(ou combinação de colunas) que identifica unicamente um registro de uma tabela
- Chave primária: é uma dentre as chaves candidatas, escolhida ara ser a maneira "padrão" de se identificar um registro na tabela
- Chave alternativa: é o conjunto das chaves candidatas, menos a chave primária
- OBS: Toda chave primária (PK) é uma chave candidata, mas nem toda chave candidata vira PK.

## Chave estrangeira
- Coluna(ou combinação de colunas) que corresponde à chave primária de "outra" tabela.
- Serve para fazer relacionamentos, fazendo referência ao resgitro de "outra" tabela;

## Integridade referencial
- integridade referencial refere-se à consistência dos dados uma chave estrangeira.
- Se há um valor em um chave estrangeira, então DEVE existir o valor correspondente na chave primária da tabela referenciada, ou seja, o valor que está na chave estrangeira, deve existir na chave primária
