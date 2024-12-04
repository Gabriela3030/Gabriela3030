use ifood;

#CRUD - CREATE
INSERT INTO endereco (rua, bairro, numero, cidade, estado, pontoDeReferencia, complemento, cep, tipo_de_endereco)
VALUES
('Rua A', 'Bairro Alpha', '123', 'Cidade X', 'SP', 'Perto da praça', 'Casa amarela', '12345-678', 'casa'),
('Rua B', 'Bairro Beta', '456', 'Cidade Y', 'RJ', 'Ao lado do mercado', 'Apartamento 201', '23456-789', 'apartamento'),
('Avenida C', 'Bairro Gama', '789', 'Cidade Z', 'MG', 'Em frente à escola', 'Sala 1', '34567-890', 'comercial'),
('Rua D', 'Bairro Delta', '101', 'Cidade W', 'BA', 'Perto do parque', '', '45678-901', 'casa'),
('Rua E', 'Bairro Épsilon', '202', 'Cidade V', 'PE', 'Próximo à farmácia', '', '56789-012', 'apartamento'),
('Rua F', 'Bairro Zeta', '303', 'Cidade U', 'SC', 'Ao lado do hospital', '', '67890-123', 'casa'),
('Avenida G', 'Bairro Eta', '404', 'Cidade T', 'RS', 'Perto da academia', '', '78901-234', 'comercial'),
('Rua H', 'Bairro Theta', '505', 'Cidade S', 'GO', 'Próximo ao mercado', '', '89012-345', 'apartamento'),
('Rua I', 'Bairro Iota', '606', 'Cidade R', 'PR', 'Perto do estádio', '', '90123-456', 'casa'),
('Avenida J', 'Bairro Kappa', '707', 'Cidade Q', 'AM', 'Próximo ao teatro', '', '01234-567', 'comercial');


INSERT INTO categoria (tipo_categoria, nome, descricao)
VALUES
('Comida', 'Pizzas', 'Pizzas variadas e artesanais'),
('Comida', 'Hambúrgueres', 'Hambúrgueres gourmet e tradicionais'),
('Comida', 'Massas', 'Massas italianas frescas'),
('Bebida', 'Sucos', 'Sucos naturais e refrescantes'),
('Bebida', 'Refrigerantes', 'Refrigerantes variados'),
('Sobremesa', 'Sorvetes', 'Sorvetes artesanais e cremosos'),
('Sobremesa', 'Tortas', 'Tortas doces e salgadas'),
('Comida', 'Saladas', 'Saladas frescas e saudáveis'),
('Bebida', 'Chás', 'Chás quentes e gelados'),
('Comida', 'Comida Japonesa', 'Sushis e sashimis frescos');


INSERT INTO restaurante (nome, endereco, telefone, categoria_id, horario_funcionamento)
VALUES
('Pizza X', 1, '1234567890', 1, '18:00'),
('Burger Y', 2, '2345678901', 2, '12:00'),
('Pasta Z', 3, '3456789012', 3, '19:00'),
('Juice Bar', 4, '4567890123', 4, '10:00'),
('Ice Cream W', 5, '5678901234', 6, '14:00'),
('Taco Place', 6, '6789012345', 2, '20:00'),
('Healthy Life', 7, '7890123456', 8, '11:00'),
('Sushi Roll', 8, '8901234567', 10, '17:00'),
('Tea Time', 9, '9012345678', 9, '15:00'),
('Dessert Haven', 10, '0123456789', 7, '16:00');


INSERT INTO produto (nome, descricao, preco, categoria_id, restaurante_id)
VALUES
('Margherita', 'Pizza clássica com tomate e manjericão', 25.00, 1, 1),
('Pepperoni', 'Pizza com pepperoni e queijo', 30.00, 1, 1),
('Cheeseburger', 'Hambúrguer clássico com queijo', 15.00, 2, 2),
('Veggie Burger', 'Hambúrguer vegetariano', 18.00, 2, 2),
('Spaghetti Carbonara', 'Massa italiana com bacon e ovo', 20.00, 3, 3),
('Suco de Laranja', 'Suco natural de laranja', 8.00, 4, 4),
('Refrigerante Lata', 'Refrigerante em lata', 5.00, 5, 4),
('Sorvete de Chocolate', 'Sorvete cremoso de chocolate', 10.00, 6, 5),
('Sushi Combo', 'Combo de sushi com 12 peças', 35.00, 10, 8),
('Chá Verde', 'Chá verde natural', 6.00, 9, 9);


INSERT INTO acompanhamento (nome, descricao, valor)
VALUES
('Molho de Tomate', 'Molho caseiro para massas', 5.00),
('Batata Frita', 'Batata frita crocante', 10.00),
('Salada Caesar', 'Salada com molho caesar', 12.00),
('Arroz Branco', 'Acompanhamento básico', 5.00),
('Molho Especial', 'Molho da casa', 6.00),
('Guacamole', 'Guacamole fresco', 8.00),
('Chips de Milho', 'Chips crocantes', 7.00),
('Molho de Alho', 'Molho cremoso de alho', 4.00),
('Pão de Alho', 'Pão recheado com alho', 10.00),
('Queijo Parmesão', 'Queijo ralado fresco', 3.00);


INSERT INTO produtoAcompanhamento (produto_id, id_acompanhamento)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 5),
(3, 2),
(4, 3),
(5, 6),
(6, 8),
(7, 7),
(8, 9);


INSERT INTO promocao (nome, valor, codigo, validade)
VALUES
('Promoção 1', 5.00, 'DESC5', '2024-12-31'),
('Promoção 2', 10.00, 'DESC10', '2024-12-31'),
('Promoção 3', 15.00, 'DESC15', '2024-12-31'),
('Combo Especial', 20.00, 'COMBO20', '2024-12-31'),
('Desconto Lanche', 8.00, 'LANCH8', '2024-12-31'),
('Desconto Bebida', 5.00, 'BEBIDA5', '2024-12-31'),
('Desconto Sobremesa', 7.00, 'DOCE7', '2024-12-31'),
('Desconto Comida', 12.00, 'FOOD12', '2024-12-31'),
('Desconto Sushi', 18.00, 'SUSHI18', '2024-12-31'),
('Desconto Pizza', 10.00, 'PIZZA10', '2024-12-31');


INSERT INTO pedido (data_pedido, restaurante_id, valor, tipo_entrega, status_entrega_id, forma_pagamento_id, promocao_id, endereco_id, obs, troco)
VALUES
('2024-12-03 18:00:00', 1, 50.00, 'Retirada no local', 1, 1, 1, 1, 'Sem cebola', 0.00),
('2024-12-03 19:30:00', 2, 30.00, 'Entrega', 2, 2, 2, 2, 'Com extra de bacon', 10.00),
('2024-12-03 20:15:00', 3, 40.00, 'Entrega', 3, 3, 3, 3, 'Molho separado', 5.00),
('2024-12-03 18:45:00', 4, 25.00, 'Retirada no local', 1, 1, 4, 4, '', 0.00),
('2024-12-03 21:00:00', 5, 60.00, 'Entrega', 2, 4, 5, 5, 'Sem lactose', 20.00),
('2024-12-03 17:30:00', 6, 15.00, 'Entrega', 1, 2, 6, 6, 'Pimenta extra', 0.00),
('2024-12-03 22:00:00', 7, 20.00, 'Entrega', 3, 5, 7, 7, '', 10.00),
('2024-12-03 20:45:00', 8, 80.00, 'Retirada no local', 1, 6, 8, 8, '', 0.00),
('2024-12-03 19:15:00', 9, 35.00, 'Entrega', 2, 2, 9, 9, 'Sem gelo', 5.00),
('2024-12-03 21:30:00', 10, 45.00, 'Entrega', 3, 3, 10, 10, '', 15.00);


INSERT INTO pedido_produto (id_pedido, id_produto, quantidade)
VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(2, 4, 1),
(3, 5, 1),
(3, 6, 2),
(4, 7, 3),
(5, 8, 1),
(6, 9, 1),
(7, 10, 2);


INSERT INTO forma_pagamento (tipo)
VALUES
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('PIX'),
('Vale Refeição'),
('Transferência Bancária'),
('Cartão Empresa'),
('PayPal'),
('Google Pay'),
('Apple Pay');


INSERT INTO historico_pagamento (data_historico, id_forma, valor)
VALUES
('2024-12-03 18:05:00', 1, 50.00),
('2024-12-03 19:35:00', 2, 30.00),
('2024-12-03 20:20:00', 3, 40.00),
('2024-12-03 18:50:00', 4, 25.00),
('2024-12-03 21:05:00', 5, 60.00),
('2024-12-03 17:35:00', 6, 15.00),
('2024-12-03 22:05:00', 7, 20.00),
('2024-12-03 20:50:00', 8, 80.00),
('2024-12-03 19:20:00', 9, 35.00),
('2024-12-03 21:35:00', 10, 45.00);


INSERT INTO status_entrega (nome)
VALUES
('Pendente'),
('Em Preparação'),
('Enviado'),
('Entregue'),
('Cancelado'),
('Aguardando Retirada'),
('Retirado'),
('Atrasado'),
('Erro de Entrega'),
('Reembolsado');


INSERT INTO historico_entrega (id_status_entrega, id_pedido)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(2, 5),
(1, 6),
(3, 7),
(6, 8),
(4, 9),
(5, 10);


INSERT INTO avaliacao (nota, pedido_id, restaurante_id)
VALUES
(5, 1, 1),
(4, 2, 2),
(3, 3, 3),
(5, 4, 4),
(4, 5, 5),
(2, 6, 6),
(5, 7, 7),
(4, 8, 8),
(5, 9, 9),
(3, 10, 10);

