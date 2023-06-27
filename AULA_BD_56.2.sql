#excluindo os registros da tabela funcionarios
delete from funcionarios;

#desativando o safe updates 
set sql_safe_updates=0;

#selecionando a tabela funcionarios
select * from funcionarios;

#A contagem de funcionarios agrupados por departamento
select id_departamento, count(*) as total_funcionarios from funcionarios group by id_departamento;

#A contagem de funcionarios agrupados por departamento que recebem acima de 10000
select id_departamento, count(*) as total_funcionarios from funcionarios where salario >10000 group by id_departamento;

#A contagem de funcionarios agrupados por departamento que recebem entre 5000 e 10000
select id_departamento, count(*) as total_funcionarios from funcionarios where salario between 5000 and 10000 group by id_departamento;
