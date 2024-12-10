-- Seleciona o banco de dados a ser usado
USE db_loja_infocell;

-- Inserção de dados na tabela de usuários
INSERT INTO usuarios (nome, email, senha, tipo, data_criacao) VALUES
('Alice Silva', 'alice.silva@email.com', 'senha123', 'cliente', NOW()),
('Carlos Pereira', 'carlos.pereira@email.com', 'senha123', 'funcionario', NOW()),
('Maria Oliveira', 'maria.oliveira@email.com', 'senha123', 'admin', NOW()),
('José Santos', 'jose.santos@email.com', 'senha123', 'cliente', NOW()),
('Lucia Costa', 'lucia.costa@email.com', 'senha123', 'cliente', NOW());

-- Inserção de dados na tabela de clientes
INSERT INTO clientes (id_usuario, endereco, telefone) VALUES
(1, 'Rua das Flores, 123', '123456789'),
(2, 'Avenida Central, 456', '987654321'),
(3, 'Rua dos Limoeiros, 789', '564738291'),
(4, 'Praça da República, 101', '1122334455'),
(5, 'Avenida Brasil, 202', '9988776655');

-- Inserção de dados na tabela de categorias
INSERT INTO categorias (nome_categoria, descricao) VALUES
('Eletrônicos', 'Produtos eletrônicos de última geração'),
('Acessórios', 'Acessórios de moda e tecnologia');

-- Inserção de dados na tabela de produtos
INSERT INTO produtos (nome_produto, descricao_curta, descricao_detalhada, codigo_produto, preco, cor, tamanho, modelo, id_categoria, imagem) VALUES
('Smartphone ABC', 'Smartphone moderno', 'Smartphone com tela de 6.7 polegadas, 256GB de armazenamento e câmera de 108MP', 'SMABC456', 2500.00, 'Preto', 'M', 'Modelo Z', 1, 'smartphone_abc.jpg'),
('Smartphone DEF', 'Smartphone avançado', 'Smartphone com tela de 6.1 polegadas, 128GB de armazenamento e câmera de 32MP', 'SMDEF789', 1800.00, 'Prata', 'G', 'Modelo Y', 1, 'smartphone_def.jpg'),
('Laptop Pro X', 'Laptop para uso profissional', 'Laptop com processador i7, 16GB RAM, 512GB SSD', 'LAPPROX101', 5000.00, 'Prata', 'U', 'Modelo ProX', 1, 'laptop_prox.jpg'),
('Laptop Home 15', 'Laptop para uso doméstico', 'Laptop com processador i5, 8GB RAM, 256GB SSD', 'LAPHOME015', 3000.00, 'Preto', 'M', 'Modelo Home15', 1, 'laptop_home15.jpg'),
('Carregador Universal', 'Carregador para dispositivos móveis', 'Carregador universal com múltiplas entradas USB-C, USB-A', 'CHGUNIV202', 100.00, 'Branco', 'U', 'Modelo U202', 2, 'carregador_universal.jpg'),
('Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio', 'Fone de ouvido Bluetooth com cancelamento de ruído ativo', 'FONBTH098', 350.00, 'Preto', 'U', 'Modelo BTH', 2, 'fone_bluetooth.jpg');

-- Inserção de dados na tabela de estoque
INSERT INTO estoque (id_produto, cor, tamanho, modelo, quantidade, data_atualizacao) VALUES
(1, 'Preto', 'M', 'Modelo Z', 10, NOW()),
(2, 'Prata', 'G', 'Modelo Y', 15, NOW()),
(3, 'Prata', 'U', 'Modelo ProX', 5, NOW()),
(4, 'Preto', 'M', 'Modelo Home15', 8, NOW()),
(5, 'Branco', 'U', 'Modelo U202', 20, NOW()),
(6, 'Preto', 'U', 'Modelo BTH', 12, NOW());

-- Inserção de dados na tabela de fornecedores
INSERT INTO fornecedores (nome_fornecedor, contato, telefone, email) VALUES
('Tech Supplies Ltda', 'João Almeida', '123456789', 'contato@techsupplies.com'),
('Fashion Wear Co.', 'Luciana Martins', '987654321', 'contato@fashionwear.com'),
('SmartTech Inc.', 'Carlos Souza', '564738291', 'contato@smarttech.com'),
('Home Comforts', 'Fernanda Costa', '1122334455', 'contato@homecomforts.com'),
('Brinquedos Kids', 'Roberto Silva', '9988776655', 'contato@brinquedoskids.com');

-- Inserção de dados na tabela de serviços
INSERT INTO servicos (nome_servico, descricao, preco) VALUES
('Entrega Rápida', 'Serviço de entrega expressa para todos os produtos', 50.00),
('Embalagem para presente', 'Embalagem personalizada para presente', 15.00),
('Instalação de eletrônicos', 'Instalação e configuração de dispositivos eletrônicos', 100.00),
('Montagem de móveis', 'Serviço de montagem de móveis em casa', 120.00),
('Assistência técnica', 'Assistência técnica para produtos eletrônicos', 200.00);

-- Inserção de dados na tabela de pedidos
INSERT INTO pedidos (id_cliente, data_pedido, status, total) VALUES
(1, NOW(), 'pendente', 1600.00),
(2, NOW(), 'processando', 120.00),
(3, NOW(), 'enviado', 800.00),
(4, NOW(), 'concluido', 2000.00),
(5, NOW(), 'cancelado', 150.00);

-- Inserção de dados na tabela de itens do pedido
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 2500.00),
(2, 2, 2, 1800.00),
(3, 3, 1, 5000.00),
(4, 4, 1, 3000.00),
(5, 5, 1, 100.00),
(5, 6, 1, 350.00);

-- Inserção de dados na tabela de pagamentos
INSERT INTO pagamentos (id_pedido, metodo_pagamento, status_pagamento, data_pagamento) VALUES
(1, 'cartao', 'pendente', NULL),
(2, 'boleto', 'pago', NOW()),
(3, 'pix', 'pago', NOW()),
(4, 'cartao', 'pago', NOW()),
(5, 'boleto', 'cancelado', NULL);

-- Inserção de dados na tabela de relatórios
INSERT INTO relatorios (tipo_relatorio, conteudo, data_criacao) VALUES
('vendas', 'Relatório de vendas do mês de dezembro', NOW()),
('estoque', 'Relatório de controle de estoque', NOW()),
('clientes', 'Relatório de novos clientes cadastrados', NOW()),
('fornecedores', 'Relatório de fornecedores ativos', NOW()),
('vendas', 'Resumo de vendas de produtos eletrônicos', NOW());
