select proj.codigo, proj.descricao from projeto proj, departamento d, "gerenteDep" gd
where gd.dep = d.codigo and proj."codDepto" = d.codigo and gd."idGerente" = proj."codResponsavel" and gd."salarioGer" >=
(select MAX("salarioGer") from "gerenteDep");
