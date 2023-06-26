#Criação da tabela departamentos
create table departamentos (
	id int auto_increment,
    nome varchar(60),
    primary key (id)
);
 
 drop table departamentos;
 
#Insira na tabela departamentos o dado financeiro
insert into departamentos values(1, "Financeiro");

#Insira na tabela departamentos o dado vendas
insert into departamentos values(2, "Vendas");

#Insira na tabela departamentos o dado desenvolvimento de produtos
insert into departamentos values(3, "Desenvolvimento de Produtos");

#Insira na tabela departamentos o dado TI
insert into departamentos values(4, "TI");

#Insira na tabela departamentos o dado jurido
insert into departamentos values(5, "Jurídico");

#Insira na tabela departamentos o dado qualidade
insert into departamentos values(6, "Qualidade");

#Insira na tabela departamentos o dado adminstracao
insert into departamentos values(7, "Administracao");

#Insira na tabela departamentos o dado atedimento ao cliente
insert into departamentos values(8, "Atedimento ao cliente");

#Insira na tabela departamentos o dado recursos humanos
insert into departamentos values(9, "Recursos Humanos");

#Insira na tabela departamentos o dado marketig
insert into departamentos values(10, "Marketing");

#Insira na tabela departamentos o dado Produção
insert into departamentos values(11, "Produção");

#Insira na tabela departamentos o dado executivo
insert into departamentos values(12, "executivo");

insert into departamentos values(13, "Gerente Financio");

insert into departamentos values(14, "Gerente de Makenting");

insert into departamentos values(15, "Gerente de Produção");
  
# alterando a tabela funcionarios
# adicionando a coluna id_departamento
# relacionamento da chave estrageira id_departamento com referencia departamentos(id)
alter table funcionarios
add column id_departamento int,
add constraint fk_funcionarios_departamentos
foreign key (id_departamento) references departamentos(id);

#atualizando o cadastro dos funcionarios que possui o id 1, no departamento "Financeiro"
update funcionarios set id_departamento  = 1 where id = 1;

#atualizando o cadastro dos funcionarios que possui id 2,3,4 ou 5 no departamento "Vendas"
update funcionarios set id_departamento = 2 where id = 2 or id = 3 or id = 4 or id = 5;

#atualizando o cadastro dos funcionarios que possui id 6,7,8 ou 9 no departamento "TI"
update funcionarios set id_departamento = 4 where id = 6 or id = 7 or id = 8 or id = 9;

#atualizando o cadastro dos funcionarios que possui id 2,3,4 ou 5 no departamento "Jurídico"
update funcionarios set id_departamento = 5 where id = 10 or id = 11 or id = 12 or id = 13;

#atualizando o cadastro dos funcionarios que possui id 2,3,4 ou 5 no departamento "Recursos Humanos"
update funcionarios set id_departamento = 9 where id = 14 or id = 15 or id = 16 or id = 17;

#selecionando id dos funcionarios com o maior salario
select * from funcionarios where salario order by salario desc;

#atualizando o cargo funcionario com maior salário para departamento "Executivo"
update funcionarios set id_departamento = 12 where id = 44; 

#selecionando da tabela funcionarios onde o salario seja ordenado do maior para o maior
select * from funcionarios where salario order by salario desc;

#atualizando o funcionario com o segundo maior salário para departamento "Gerente Financeiro"
update funcionarios set id_departamento = 13 where id = 413; 

#atualizando funcionario com terceiro maior salário para departamento "Gerente de Produção"
update funcionarios set id_departamento = 15 where id = 642; 

#atualizando funcionario com quarto maior salário para departamento "Gerente de Marketing"
update funcionarios set id_departamento = 14 where id = 462; 