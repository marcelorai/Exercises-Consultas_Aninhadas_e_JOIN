CREATE OR REPLACE VIEW public."totalAtivProj"
AS
select proj.codigo as pr, count(proj.codigo) as total from projeto proj, "atividadeProj" ativ
where ativ."codProjeto" = proj.codigo
group by proj.codigo;

select proj.descricao, f.nome, tot.total from funcionario f, projeto proj, "totalAtivProj" tot
where f.codigo = proj."codResponsavel" and tot.pr = proj.codigo;
