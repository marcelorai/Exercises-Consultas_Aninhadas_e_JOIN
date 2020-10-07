select nome, "DtNasc" from funcionario
where date_part('year', age("DtNasc")) > 21
and codigo not in (
select "codGerente" from departamento);
