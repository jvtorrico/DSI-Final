
create table itens(
id integer primary key,
nome varchar (50),
descricao varchar(100),
quantidade int,
preco_custo float,
preco_venda float,
usuario_id integer,
data_cadastro date,
foreign key (usuario_id) references usuario(id)
);

create table pedidos(
id integer primary key,
data_compra date,
data_aprovacao date,
valoe_total float,
usuario_id integer,
foreign key (usuario_id) references usuario(id)
);
create table pedidos_itens(
id integer primary key,
item_id integer,
quantidade int,
pedido_id int,
foreign key (item_id) references itens(id),
foreign key (pedido_id) references pedidos(id)
)






