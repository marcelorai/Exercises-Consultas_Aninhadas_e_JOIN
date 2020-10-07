select proj.descricao as "nomeProj", proj."dataIni" "inicioProj", proj."dataFim" as "fimProj",
ativ."dataIni" as "inicioAtiv", ativ."dataFim" as "limiteAtiv"
from projeto proj left join "atividadeProj" ativ
on ativ."codProjeto" = proj.codigo;
