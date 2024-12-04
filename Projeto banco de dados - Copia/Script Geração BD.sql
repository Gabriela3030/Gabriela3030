use ifood;


create table endereco (
	id int auto_increment primary key,
	rua varchar(60) NOT NULL,
	bairro varchar(30) NOT NULL,
	numero varchar(10) NOT NULL,
	cidade varchar(60) NOT NULL,
	estado varchar(2) NOT NULL,
	pontoDeReferencia varchar(30),
	complemento varchar(60),
	cep varchar(9) NOT NULL,
	tipo_de_endereco enum('casa','apartamento','comercial') NOT NULL
);

create table categoria (
	id int auto_increment primary key,
	tipo_categoria varchar(20) NOT NULL,
	nome varchar (30) NOT NULL,
	descricao text  NOT NULL
);

create table restaurante(
	id int auto_increment primary key,
	nome varchar (20) NOT NULL,
	endereco int NOT NULL,
	telefone varchar (11),
	categoria_id int NOT NULL,
	horario_funcionamento varchar (11) NOT NULL,
	foreign key (endereco) references endereco(id),
	foreign key (categoria_id) references categoria(id)
);

create table produto(
id int auto_increment primary key,
nome varchar (40) NOT NULL,
descricao text,
preco real NOT NULL,
categoria_id int NOT NULL,
restaurante_id int NOT NULL,
foreign key (categoria_id) references categoria(id),
foreign key (restaurante_id) references restaurante(id)
);
create table acompanhamento (
id int auto_increment primary key,
nome varchar (20) NOT NULL,
descricao text NOT NULL,
valor real NOT NULL
);
create table produtoAcompanhamento (
id int auto_increment primary key,
produto_id int NOT NULL,
foreign key (produto_id) references produto(id),
id_acompanhamento int NOT NULL,
foreign key (id_acompanhamento) references acompanhamento(id)
);

create table promocao (
id int auto_increment primary key,
nome varchar(20) NOT  NULL,
valor real NOT NULL,
codigo varchar (20) NOT NULL,
validade datetime NOT NULL
);
create table pedido (
id int auto_increment primary key,
data_pedido datetime NOT NULL,
restaurante_id int NOT NULL,
valor real NOT NULL,
tipo_entrega varchar (50),
status_entrega_id int,
forma_pagamento_id int,
promocao_id int,
endereco_id int,
obs text,
troco real NOT NULL,
foreign key (restaurante_id) references restaurante(id),
foreign key (promocao_id) references promocao(id),
foreign key (endereco_id) references endereco(id)#Revisar fk de forma de pagamento
);
create table pedido_produto (
id int auto_increment primary key,
id_pedido int,
id_produto int,
quantidade int NOT NULL,
foreign key (id_pedido) references pedido(id),
foreign key (id_produto) references produto(id)
);
create table forma_pagamento (
id int auto_increment primary key,
tipo varchar (50) NOT NULL
);
create table historico_pagamento (
id int auto_increment primary key,
data_historico datetime,
id_forma int,
valor real NOT NULL,
foreign key (id_forma) references forma_pagamento(id)
);
create table status_entrega (
id int auto_increment primary key,
nome varchar(20) NOT NULL
);
create table historico_entrega (
id int auto_increment primary key,
id_status_entrega int,
id_pedido int,
foreign key (id_status_entrega) references status_entrega(id),
foreign key (id_pedido) references pedido(id)
);
create table avaliacao (
id int auto_increment primary key,
nota int NOT NULL,
pedido_id int,
restaurante_id int,
foreign key (pedido_id) references pedido(id),
foreign key (restaurante_id) references restaurante(id)
);



