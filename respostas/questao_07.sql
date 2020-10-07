CREATE OR REPLACE VIEW public."totalFuncDep"
AS
select d.codigo as codigo, count(f.codigo) as total
from departamento d, funcionario f
where f."codDepto" = d.codigo
group by d.codigo;

select d.descricao, f.nome, total.total
from departamento d, funcionario f, "totalFuncDep" total
where d."codGerente" = f.codigo and d.codigo = total.codigo
group by d.codigo, f.nome, total.total
order by d.descricao;
