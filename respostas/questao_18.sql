select f.nome, d.descricao from funcionario f, departamento d
where f.salario in (
select MAX(f.salario)
from funcionario f left join departamento d
on f."codDepto" = d.codigo group by d.codigo)
and f."codDepto" = d.codigo
group by f.salario, f.nome, d.descricao
order by f.salario;
