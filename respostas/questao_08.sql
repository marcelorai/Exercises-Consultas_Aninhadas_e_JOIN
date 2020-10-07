CREATE OR REPLACE VIEW public."totalProjDep"
AS
select count(*) as total, d.codigo as dep
from projeto p, departamento d
where p."codDepto" = d.codigo
group by d.codigo;

select d.descricao, f.nome, tot.total
from departamento d
left join funcionario f on f.codigo = d."codGerente"
left join "totalProjDep" tot on tot.dep = d.codigo;
