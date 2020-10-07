select nome
from funcionario
where "DtNasc" != (
select MIN(f."DtNasc")
from funcionario f);
