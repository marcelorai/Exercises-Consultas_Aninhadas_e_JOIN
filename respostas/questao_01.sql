select f.nome
from funcionario f
where f.salario > (
select max(f2.salario)
from funcionario f2
where f2."codDepto" = 5);
