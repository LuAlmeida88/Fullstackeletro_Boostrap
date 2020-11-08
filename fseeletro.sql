CREATE database fseeletro;



use fseeletro;

create table produto(
idproduto int auto_increment,
categoria varchar(255) not null,
descricao varchar(500) not null,
preco float not null,
preco_venda float not null,
imagem varchar(100) not null,
primary key(idproduto)
);

select * from produto;

insert into produto( categoria, descricao, preco, preco_venda, imagem)
values( 'geladeira', 'Refrigerador Eletrolux DFX41 2 Portas DC51X 475 Litros', 2839.00,'2600.00', 'gela3.jpg');

insert into produto( categoria, descricao, preco, preco_venda, imagem)
values( 'geladeira', 'Geladeira Eletrolux RE31 240L Branco 1 Porta 127V', 1309.90,'1289.90', 'gel1.jpg');

insert into produto( categoria, descricao, preco, preco_venda, imagem)
values( 'geladeira', 'Geladeira Eletrolux 2 Portas DC35A 260L Branca 110V', 1800.90,'1559.90', 'gel4.jpg');

insert into produto( categoria, descricao, preco, preco_venda, imagem)
values( 'geladeira', 'Geladeira Eletrolux Top Freezer TF42 382', 2599.00,'2399.00', 'gel2.jpg');

insert into produto( categoria, descricao, preco, preco_venda, imagem)
values('fogão', 'Fogão de Embutir 4 Bocas preto atlas top gourmet glass bivolt', '2000.00', '1749.00','imagem/fog1.jpg');

insert into produto(categoria, descricao, preco, preco_venda, imagem)
values('fogão','Fogão de Embutir 5 bocas Preto atlas top goumert glass bivolt', '2100.00', '1749.00', '/imagem/fog2.jpg');

insert produto( categoria, descricao, preco, preco_venda, imagem)
values('fogão', 'Fogão de Embutir 5 Bocas Preto Atlas Top Gourmet Glass Bivolt', '1983.58','1899.00','/imagem/fog3.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('fogão', 'Fogão de Piso 5 Bocas Consul CFS5VAR - Bivolt', '1686.50','1439.10', '/imagem/fog4.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('Máquina de Lavar', 'Máquina de Lavar Consul 13Kg Branca láila 110V', '1780.90','1729.00', '/imagem/maq4.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('Máquina de Lavar', 'Máquina de Lavar Electrolux 13Kg Branca LAC13 - 110V', '1850.00','1659.00', '/imagem/maq1.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('Máquina de Lavar', 'Máquina de Lavar Electrolux 16Kg Branca LAC16 - 110V', '1699.90','1694.90', '/imagem/maq2.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('Máquina de Lavar', 'Lavadora Consul 13Kg Maxi Economia 220V CWE13ABBNA', '2000.00','1849.00', '/imagem/maqu3.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('Máquina de Lavar', 'Máquina de Lavar Consul 13Kg Branca láila 110V', '1780.00','1729.00', '/imagem/maqu4.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('micorondas', 'Micro-Ondas Brastemp Espelhado Grill 32 Litros Inox 110V', '1000.00','899.00', '/imagem/micro3.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('microondas', 'Micro-Ondas De Embutir litros BLT MO30 EIN Inox', '1300.00','1198.50', '/imagem/micro4.jpg');

insert produto( categoria, descricao, preco, preco_venda,imagem)
values('microondas', 'Micro-Ondas Brastemp BMS45CR 32 Litros Inox 110V', '1780.00','1638.50', '/imagem/micro2.jpg');
 	
 use fseletro;
 
 create table pedidos(
 idpedidos int  auto_increment,
 cliente varchar(100) not null,
 endereco varchar(255) not null,
 telefone bigint(14)not null,
 nome_produto varchar(255) not null,
 valor_unitario float not null,
 quantidade varchar(10),
 valor float,
 primary key(idpedidos)
 
 );
 
 insert into pedidos(cliente, endereco, telefone, nome_produto, valor_unitario, quantidade, valor)
 values ('Antonio Almeida', 'Rua das Palmeiras', '11985856565', 'Máquina de Lavar Consul 13Kg Branca láila 110V','1198.50','2','2397.00');
 
 insert into pedidos(cliente, endereco, telefone, nome_produto, valor_unitario, quantidade, valor)
 values ('Douglas Bortolotti', 'Rua dos Golfinhos', '11999999999', 'Micro-Ondas Brastemp BMS45CR 32 Litros Inox 110V','1638.50','1','1638.50');
 
  insert into pedidos(cliente, endereco, telefone, nome_produto, valor_unitario, quantidade, valor)
 values ('Lucas Nascimento', 'Rua das Sereias', '11988887777', 'Fogão de Embutir 5 bocas Preto atlas top goumert glass bivolt','1749.00','4','6996.00');
 
 insert into pedidos(cliente, endereco, telefone, nome_produto, valor_unitario, quantidade, valor)
 values ('João Alves', 'Rua dos Pinhais', '11965657985', 'Refrigerador Eletrolux DFX41 2 Portas DC51X 475 Litros','2600.00','1','2600.00');
 
 insert into pedidos(cliente, endereco, telefone, nome_produto, valor_unitario, quantidade, valor)
 values ('Felipe Oliveira', 'Rua das Palmas', '11985479696', 'Refrigerador Eletrolux DFX41 2 Portas DC51X 475 Litros','2600.00','3','7800.00');
 select * from pedidos
 

create table comentarios(
id int auto_increment,
nome varchar (100),
msg varchar(255),
data datetime default now(),
primary key(id)
);


select * from comentarios;






