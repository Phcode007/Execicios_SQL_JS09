create database db_generation_game_online;
use db_generation_game_online;

create table classes(
  id int primary key auto_increment,
  nome varchar(35) not null,
  descricao text(1000) not null,
  vida_base int not null,
  mana_base int not null,
  atk_f int not null,
  atk_m int not null,
  def_f int not null,
  def_m int not null
);

ALTER TABLE classes MODIFY COLUMN vida_base INT NOT NULL;
ALTER TABLE classes MODIFY COLUMN mana_base INT NOT NULL;
ALTER TABLE classes MODIFY COLUMN atk_f INT NOT NULL;
ALTER TABLE classes MODIFY COLUMN atk_m INT NOT NULL;
ALTER TABLE classes MODIFY COLUMN def_f INT NOT NULL;
ALTER TABLE classes MODIFY COLUMN def_m INT NOT NULL;

create table personagens(
   id int primary key auto_increment,
   nome varchar(35) not null,
   nivel int not null,
   exp int not null,
   classe_ident int not null
);

alter table personagens 
add foreign key (classe_ident) references classes(id);

alter table classes 
add column tipo_id int,
add foreign key (tipo_id) references classes(id);

insert into classes (nome, descricao, vida_base, mana_base, atk_f, atk_m, def_f, def_m) values
('Guerreiro', 'Especialista em combate corpo a corpo com alta resistência física. Usa armaduras pesadas e armas de grande porte.', 150, 30, 85, 15, 90, 40),
('Mago', 'Mestre das artes arcanas com grande poder mágico. Frágil fisicamente mas devastador à distância.', 80, 120, 25, 95, 35, 85),
('Arqueiro', 'Combatente ágil especializado em ataques à distância. Equilibra velocidade e precisão.', 100, 50, 70, 45, 60, 55),
('Paladino', 'Guerreiro sagrado que combina força física com magia divina. Protetor e curandeiro.', 130, 80, 65, 70, 85, 75),
('Assassino', 'Especialista em ataques furtivos e críticos. Alta mobilidade e dano, mas baixa defesa.', 90, 40, 95, 30, 45, 50);

insert into personagens (nome, nivel, exp, classe_ident) values
('Thorin Escudoferro', 25, 15750, 1),    -- Guerreiro
('Gandalf Cinzento', 45, 67500, 2),      -- Mago
('Legolas Folhaverde', 30, 22500, 3),    -- Arqueiro
('Aragorn Montanha', 35, 35000, 1),      -- Guerreiro
('Merlin Sábio', 40, 50000, 2),          -- Mago
('Arthur Justiceiro', 28, 18200, 4),     -- Paladino
('Ezio Auditore', 32, 28800, 5),         -- Assassino
('Robin Hood', 26, 16900, 3);            -- Arqueiro

insert into classes (nome, descricao, vida_base, mana_base, atk_f, atk_m, def_f, def_m) values ('Dragão', 'Criatura lendária', 5000, 3000, 1500, 800, 1200, 900);

select p.nome, c.nome as classe, (c.atk_f + c.atk_m) as poder_total_ataque from personagens p inner join classes c on p.classe_ident = c.id where (c.atk_f + c.atk_m) > 2000;

insert into personagens (nome, nivel, exp, classe_ident) values ('Rei Lich', 50, 100000, 6);

insert into classes (nome, descricao, vida_base, mana_base, atk_f, atk_m, def_f, def_m) value ('Guardião', 'Protetor mágico', 2000, 1000, 500, 600, 800, 700);

select * from classes;

insert into personagens (nome, nivel, exp, classe_ident) values ('Elomodor', 50, 100000, 8);

select p.nome, c.nome as classe, (c.def_f + c.def_m) as defesa_total from personagens p inner join classes c on p.classe_ident = c.id order by defesa_total desc;

insert into personagens (nome, nivel, exp, classe_ident) values ('Clarion', 50, 100000, 2);

insert into personagens (nome, nivel, exp, classe_ident) values ('Mariclaire', 50, 100000, 4);

select nome, nivel, exp from personagens where nome like '%C%';

select p.id as personagem_id, p.nome as personagem, p.nivel, p.exp, c.id as classe_id, c.nome as classe, c.descricao, c.vida_base, c.mana_base, c.atk_f, c.atk_m, c.def_f, c.def_m from personagens p inner join classes c on p.classe_ident = c.id order by p.nivel desc;

select p.nome as personagem, p.nivel, p.exp, c.nome as classe, c.atk_f, c.atk_m from personagens p inner join classes c on p.classe_ident = c.id where c.nome = 'Arqueiro' order by p.nivel desc;
