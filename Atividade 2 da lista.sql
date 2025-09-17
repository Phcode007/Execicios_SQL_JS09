create database ecommerce_store;
use ecommerce_store;

create table product_store(
 id int primary key auto_increment,
 nome varchar(150) not null,
 preco decimal (10,2),
 categoria varchar(80) not null,
 estoque int not null default 0,
 descricao text,
 ativo boolean default true
);

insert into product_store (nome, preco, categoria, estoque, descricao, ativo) values
('Smartphone Samsung Galaxy A54', 1299.99, 'Eletrônicos', 25, 'Smartphone com 128GB, câmera tripla 50MP, tela 6.4 polegadas', true),
('Notebook Lenovo IdeaPad 3', 2499.00, 'Informática', 12, 'Notebook Intel Core i5, 8GB RAM, SSD 256GB, tela 15.6', true),
('Tênis Nike Air Max', 399.90, 'Calçados', 45, 'Tênis esportivo masculino, tecnologia Air Max, diversas cores', true),
('Cafeteira Elétrica Philco', 89.90, 'Eletrodomésticos', 30, 'Cafeteira elétrica 15 xícaras, filtro permanente, antigotas', true),
('Smart TV LG 50 4K', 1899.00, 'Eletrônicos', 8, 'Smart TV LED 50 polegadas, 4K UHD, WebOS, WiFi integrado', true),
('Fone Bluetooth JBL', 249.99, 'Acessórios', 60, 'Fone de ouvido sem fio, 20h de bateria, resistente à água', true),
('Livro "Clean Code"', 75.50, 'Livros', 100, 'Livro sobre programação e boas práticas de desenvolvimento', true),
('Mouse Gamer RGB', 159.90, 'Informática', 35, 'Mouse gamer 12000 DPI, RGB personalizável, 8 botões programáveis', true),
('Camiseta Básica Algodão', 39.90, 'Roupas', 200, 'Camiseta 100% algodão, diversas cores e tamanhos disponíveis', true),
('Panela de Pressão Eterna', 129.90, 'Eletrodomésticos', 18, 'Panela de pressão 4,5L, alumínio polido, válvula de segurança', true);

select id, nome, preco, categoria, estoque, descricao from product_store where preco > 500.00 order by preco desc;

select id, nome, preco, categoria, estoque, descricao from product_store where preco < 500.00 order by preco desc;

select * from product_store;