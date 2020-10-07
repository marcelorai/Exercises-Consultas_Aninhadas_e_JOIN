select f.nome from funcionario f, departamento d, projeto proj, "gerenteDep" gd
where f.codigo = d."codGerente" and ((f.codigo = proj."codResponsavel" and d.codigo = proj."codDepto") or
(f.salario > gd."salarioGer" and f."codDepto" = gd.dep))
group by f.nome;
