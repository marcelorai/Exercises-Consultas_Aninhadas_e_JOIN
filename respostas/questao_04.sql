select nome, salario, "codDepto" from funcionario
where codigo not in (
select "codGerente" from departamento
) order by "codDepto";
