## Questão 05

**a.** A restrição *NULL* não é definida no padrão SQL, não devendo ser utilizada em aplicativos portáveis, somente foi adicionada ao **PostgreSQL** para torná-lo compatível com outros sistemas de banco de dados.

**b.** *RIGHT JOIN* - Retorna todos os dados encontrados na tabela à direita de *JOIN*. Caso não existam dados associados entre as tabelas à esquerda e à direita de *JOIN*, serão retornados valores nulos.

*LEFT JOIN* - Permite obter não apenas os dados relacionados de duas tabelas, mas também os dados não relacionados encontrados na tabela à esquerda da cláusula *JOIN*. Caso não existam dados relacionados entre as tabelas à esquerda e a direita do *JOIN*, os valores resultantes de todas as colunas da lista de seleção da tabela à direita serão nulos.

**c.** Todas as linhas de dados da tabela à esquerda de *JOIN* e da tabela à direita serão retornadas pela cláusula *FULL JOIN* ou *FULL OUTER JOIN*. Caso uma linha de dados não esteja associada a qualquer linha da outra tabela, os valores das colunas a lista de seleção serão nulos. Caso contrário, os valores obtidos serão baseados nas tabelas usadas como referência.

Para tratar o *FULL JOIN* no **MariaDB**, similarmente com o **MySQL**, temos: O tamanho do buffer que é utilizado para full joins, joins que não utilizam índices. O buffer é alocado uma vez para cada full join entre duas tabelas. Aumente este valor para obter um full join mais rápido quando a adição de índices não for possível. Normalmente a melhor forma de obter joins rápidas é adicionar índices.

## Referências

[Link externo 1](http://pgdocptbr.sourceforge.net/pg80/ddl-constraints.html)

[Link externo 2](https://www.devmedia.com.br/clausulas-inner-join-left-join-e-right-join-no-sql-server/18930#5)

[Link externo 3](http://underpop.online.fr/m/mysql/manual/mysql-database-administration.html)
