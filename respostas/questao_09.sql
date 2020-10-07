CREATE OR REPLACE VIEW public."gerenteDep"
AS
select f.codigo as "idGerente", f.salario as "salarioGerente", d.codigo as dep
from funcionario f, departamento d
where d."codGerente" = f.codigo;

CREATE OR REPLACE VIEW public."totalProjFunc"
AS
select count(*) as total, f.codigo as fu from funcionario f, projeto proj
where f.codigo = proj."codResponsavel"
group by f.codigo;

select f.nome, tpf.total, f.salario
from funcionario f, projeto proj, "totalProjFunc" tpf, "gerenteDep" gd
where f.codigo = proj."codResponsavel" and gd."salarioGerente" < f.salario and gd.dep = proj."codDepto"
group by f.nome, tpf.total, f.salario;
