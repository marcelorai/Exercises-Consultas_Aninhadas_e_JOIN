select proj.descricao as "nomeProj", d.descricao as "departamentoProj",
f.nome "nomeResp", d2.descricao "departamentoFunc"
from projeto proj left join departamento d
on proj."codDepto" = d.codigo
left join funcionario f
on f.codigo = proj."codResponsavel"
left join departamento d2
on f."codDepto" = d2.codigo;
