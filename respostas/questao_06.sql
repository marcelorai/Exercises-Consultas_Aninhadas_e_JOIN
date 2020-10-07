select f.nome, f.salario, d.descricao
from funcionario f, departamento d
where f."codDepto" = d.codigo or f."codDepto" = null;
