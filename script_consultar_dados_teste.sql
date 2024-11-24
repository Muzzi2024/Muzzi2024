select * from profissionais;
select * from clientes;
select * from especialidades;
select * from regiao_atendimento;
select * from curriculo_profissional;
select * from pedido;
select * from pedido 
INNER JOIN profissionais 
ON pedido.id_profissional = profissionais.id_profissional;
select * from pedido 
INNER JOIN clientes 
ON pedido.id_cliente = clientes.id_cliente;
select * from especialidades
INNER JOIN profissionais 
ON especialidades.id_profissional = profissionais.id_profissional;
select * from regiao_atendimento
INNER JOIN profissionais 
ON regiao_atendimento.id_profissional = profissionais.id_profissional;
