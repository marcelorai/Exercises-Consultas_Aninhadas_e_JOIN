CREATE OR REPLACE VIEW public."codigoRespAtiv"
AS
select atv."codResponsavel" from "atividadeProj" ativ;

select nome, count(f.codigo) from funcionario f
where f.codigo in (
select * from "codigoRespAtiv")
group by f.codigo;
