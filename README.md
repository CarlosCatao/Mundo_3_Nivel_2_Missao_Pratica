<img src="./Estacio horizontal.png" align="left" height="64px" /><br><br>
# Curso: Desenvolvimento Full Stack
## Mundo 3 - Nível 2 - Missão Prática

## RPG0015  - Vamos manter as informacoes

## 🎯 Objetivo da Prática

Este é um projeto acadêmico e tem como objetivo tem como objetivo desenvolver um banco de dados relacional para a gestão de pessoas (fisicas e juridicas) e operacoes comerciais (compras e vendas de produtos). O banco de dados srá modelado com a ferramenta DBDesigner Fork e utilizara o SQL Server.
O Sistema inclui tabelas como Pessoa, Produto, Operacao e outras, com relacionamentos entre elas que representam operacoes de compra e venda.

Esta prática esta dividida em dois procedimentos:
- Procedimento 1: Criando o Banco de Dados
- Procedimento 2: Alimentando a Base

## 🛠️ Funcionalidades Implementadas

- Modelagem do Banco de Dados.
- Criacao de Tabelas, Indices e demais estruturas que se fizerem necessarias.
- Alimentacao das Tabelas
- Praticas com a lnguagem sql para manipulacao dos dados e extracao de relatorios.

## 🧩 Estrutura do Projeto

```
MUNDO_3_NIVEL_2-MISSAO_PRATICA
│
├── Procedimento 1
│   │
│   ├── CODIGOS_SQL/
│   │   │
│   │   ├── CRIACAO_DAS_TABELAS_E_DA_SEQUENCE.sql
│   │   │
│   │   └── CRIACAO_DO_BANCO_DE_DADOS.sql
│   │
│   ├── DBDESIGNER_IMAGE/
│   │   │
│   │   ├── IMAGEM_DO_MODELO_DO_BANCO_DE_DADOS.png
│   │   │
│   │   └── missao_pratica.xml
│   │
│   └── RELATORIO_CARLOS_ALTOMARE_CATAO - Procedimento 1.pdf
│
├── Procedimento 2
│   │
│   ├── CODIGOS_SQL/
│   │
│   ├── RESULTADOS.pdf
│   │
│   └── RELATORIO_CARLOS_ALTOMARE_CATAO - Procedimento 2.pdf
│
│
└── README.md
```

## 📋 Requisitos do Projeto

- DBDesigner Fork
- SQL Server
- Microsoft SQL Server Management Studio

## 🧪 Resultados da Execução

O Banco de Dados foi modelado com sucesso, as Tabelas, Indices e demais estruturas foram criadas e os dados foram alimentados com o auxilio da linguagem sql.

## 🧠 Análise e Conclusão

**1. Como são implementadas as diferentes cardinalidades, basicamente 1X1, 1XN ou NxN, em um banco de dados relacional?**  
As cardinalidades se destinam a expressar a quantidade de entidades que podem se associar a outra em um relacionamento entre tabelas. Em um banco de dados relacional, elas são denominadas como chaves estrangeiras.
-	A cardinalidade 1:1 é implementada quando uma entidade pode se associar a outra por meio de uma única chave primária em ambas as tabelas.  No  modelo desenvolvido pode ser observado nos relacionamentos entre Pessoa x Pessoa_Fisica, Pessoa x Pessoa_Juridica e Pessoa x Usuario.
-	A cardinalidade 1:N ocorre quando uma linha em uma tabela pode se associar a várias linhas de uma outra tabela.  No modelo implementado pode ser observado nos relacionamentos Produto x Operacao e Pessoa x Operacao.
-	Um relacionamento N:N é modelado quando uma linha em uma tabela pode se associar a várias linhas de uma outra tabela e vice-versa.  No modelo em questão, se considerarmos que uma Pessoa pode comprar vários Produtos e um Produto pode ser comprado por várias Pessoas, a tabela Pessoa_Produto representa esta associação e constitui um exemplo de relacionamento N:N.

**2. Que tipo de relacionamento deve ser utilizado para representar o uso de herança em bancos de dados relacionais?**  
Nos bancos de dados relacionais, a herança é geralmente representada por um dos seguintes modelos:
1.	Modelo de Tabela Única (Single Table Inheritance): Toda a hierarquia de herança é armazenada em uma única tabela, com um campo que identifica o tipo de entidade. Este modelo simplifica a estrutura, mas casos as classes herdeiras possuam muitos atributos diferentes poderá resultar em muitos campos nulos.
2.	Modelo de Tabela por Classe (Class Table Inheritance): Cada classe (tanto a superclasse quanto as subclasses) é representada por uma tabela separada. A tabela da subclasse contém apenas os campos adicionais da subclasse, e a chave primária é a chave estrangeira para a tabela da superclasse.  Este modelo foi adotado na presente Modelagem (Pessoa x Pessoa_Fisica x Pessoa_Juridica).
3.	Modelo de Tabela por Conjunto (Concrete Table Inheritance): Cada classe é representada por uma tabela própria e a tabela da subclasse contém todos os campos, inclusive os campos da superclasse. Neste caso pode ocorrer uma  redundância de dados.
Conforme exposto o mais recomendável é aplicar o Modelo de Tabela por Classe de acordo com a Modelagem aplicada nesta prática.

**3. Como o SQL Server Management Studio permite a melhoria da produtividade nas tarefas relacionadas ao gerenciamento do banco de dados?**  
O SQL Server Management Studio (SSMS) oferece diversas funcionalidades para a melhoria da produtividade:
1.	IntelliSense:
Oferece sugestões automáticas de código enquanto você escreve, o que ajuda a reduzir erros e acelera o desenvolvimento de consultas SQL.
2.	Gerenciamento de Banco de Dados Visual:
Permite que você gerencie de forma intuitiva objetos do banco de dados (tabelas, índices, views, etc.) através da sua interface gráfica.
3.	Geração de Scripts:
O SSMS permite gerar scripts SQL automaticamente para a criação ou modificação de objetos de banco de dados, o que acelera a implementação de mudanças.
4.	Execução de Consultas em Lote:
Suporta a execução de várias consultas simultaneamente, o que aumenta a eficiência quando se executa scripts longos ou na realização de manutenção em larga escala.
5.	Planos de Execução:
O SSMS permite analisar planos de execução de consultas, o que ajuda a identificar gargalos de desempenho e a otimizar o banco de dados.

**4. Quais as diferenças no uso de SEQUENCE e IDENTITY?**

•	SEQUENCE: A SEQUENCE é um objeto independente que pode ser usado para gerar números sequenciais. Ela não depende de uma tabela específica e pode ser usada em diferentes tabelas. Além disso, oferece mais flexibilidade, permitindo controle sobre os valores de incremento, de início e outras opções.

•	IDENTITY: O IDENTITY é uma propriedade de coluna que gera automaticamente números sequenciais para uma tabela específica. Ele é mais simples, mas menos flexível que a SEQUENCE, pois não pode ser reutilizado em outras tabelas e não permite controle total sobre os valores gerados (como o valor inicial ou o incremento).

**5. Qual a importância das chaves estrangeiras para a consistência do banco?**  
As chaves estrangeiras são fundamentais para garantir a integridade referencial de um banco de dados. Elas garantem que os dados em tabelas relacionadas sejam consistentes, impedindo:
•	A inserção de dados inválidos ou órfãos.
•	A exclusão de registros que estão sendo referenciados em outras tabelas, evitando dados órfãos.
Isso garante que os dados armazenados sejam sempre consistentes e que as relações entre as entidades sejam preservadas.

**6. Quais operadores do SQL pertencem à álgebra relacional e quais são definidos no cálculo relacional?**  
•	Álgebra Relacional: A álgebra relacional fornece operadores como:
-	SELECT (σ): Filtra linhas de uma tabela com base em uma condição.
-	PROJECT (π): Seleciona colunas específicas de uma tabela.
-	JOIN (⨝): Combina registros de duas ou mais tabelas com base em uma condição.
-	UNION (∪): Combina os resultados de duas consultas, removendo duplicatas.
-	INTERSECTION (∩): Retorna os registros que aparecem em ambas as consultas.
-	DIFFERENCE (-): Retorna os registros da primeira consulta que não aparecem na segunda.

•	Cálculo Relacional: O cálculo relacional é um estilo declarativo, onde expressamos as condições que as tuplas devem satisfazer, sem especificar um procedimento para encontrar a resposta. Ele é dividido em:
-	Cálculo de Tuplas: Usa variáveis para representar tuplas, aplicando filtros com condições.
-	Cálculo de Domínio: Usa variáveis para representar valores, filtrando de acordo com as condições.

**7. Como é feito o agrupamento em consultas, e qual requisito é obrigatório?**  
O agrupamento é feito usando a cláusula GROUP BY, que permite agrupar os resultados de uma consulta por uma ou mais colunas. Ele é frequentemente combinado com funções agregadas como COUNT(), SUM(), AVG(), etc.

Requisito obrigatório: Quando se utiliza GROUP BY, todas as colunas que não são usadas em funções agregadas (como SUM, AVG, COUNT) devem ser incluídas na cláusula GROUP BY. Caso contrário, o SQL Server gerará um erro.


---

## 📁 Documentação

O relatório completo da prática pode ser acessado nos arquivos:

- [📄 Relatório Procedimento 1 em PDF](./Procedimento_1/RELATORIO_CARLOS_ALTOMARE_CATAO%20-%20Procedimento%201.pdf)
- [📝 Relatório Procedimento 2 em PDF](./Procedimento_2/RELATORIO_CARLOS_ALTOMARE_CATAO%20-%20Procedimento%202.pdf)

---

## 👨‍💻 Desenvolvido por

**Carlos Altomare Catao**  
Curso: Desenvolvedor Full Stack – Estácio  
Campus: Polo Santa Luzia  
Semestre: 2025/1 - 3 Período

---

## 🔗 Repositório Git

> https://github.com/CarlosCatao/Mundo_3_Nivel_2_Missao_Pratica/tree/main


---


