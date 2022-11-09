-- Tabela de Contas (Bancárias e Corretoras)
CREATE TABLE IF NOT EXISTS conta (
	pk_conta SMALLSERIAL PRIMARY KEY,
	banco_numero INTEGER NOT NULL,
	agencia_numero INTEGER NOT NULL,
	numero INTEGER NOT NULL,
	digito SMALLINT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	saldo NUMERIC(15,2) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- Inserção de Dados Tabela tipo_transacao
INSERT INTO conta (banco_numero, agencia_numero, numero, digito, saldo, nome, ativo) VALUES (208, 0001, 00328949, 5,0.00, 'BTG Pactual',true);

SELECT * FROM public.conta ORDER BY pk_conta ASC; 

-- Tabela Tipo da Transação
CREATE TABLE IF NOT EXISTS tipo_transacao (
	pk_tipo_transacao SMALLSERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- Inserção de Dados Tabela tipo_transacao
INSERT INTO tipo_transacao (nome, ativo) VALUES ('Débito',true);
INSERT INTO tipo_transacao (nome, ativo) VALUES ('Crédito',true);
INSERT INTO tipo_transacao (nome, ativo) VALUES ('Transferência',true);
INSERT INTO tipo_transacao (nome, ativo) VALUES ('Empréstimo',true);
INSERT INTO tipo_transacao (nome, ativo) VALUES ('Aplicação',true);
INSERT INTO tipo_transacao (nome, ativo) VALUES ('Resgate',true);

SELECT * FROM public.tipo_transacao ORDER BY pk_tipo_transacao ASC; 

-- Tabela de Categorias
CREATE TABLE IF NOT EXISTS categorias (
	pk_categoria SMALLSERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- Inserção de Dados Tabela Categorias
INSERT INTO categorias (nome, ativo) VALUES ('Alimentação',true);
INSERT INTO categorias (nome, ativo) VALUES ('Auxílio Familiar',true);
INSERT INTO categorias (nome, ativo) VALUES ('Contas da Casa',true);
INSERT INTO categorias (nome, ativo) VALUES ('Cuidados Pessoais',true);
INSERT INTO categorias (nome, ativo) VALUES ('Ensino',true);
INSERT INTO categorias (nome, ativo) VALUES ('Impostos',true);
INSERT INTO categorias (nome, ativo) VALUES ('Lazer',true);
INSERT INTO categorias (nome, ativo) VALUES ('Movimentações Financeiras',true);
INSERT INTO categorias (nome, ativo) VALUES ('Responsabilidade Social',true);
INSERT INTO categorias (nome, ativo) VALUES ('Saúde',true);
INSERT INTO categorias (nome, ativo) VALUES ('Tecnologia',true);
INSERT INTO categorias (nome, ativo) VALUES ('Veículos',true);
INSERT INTO categorias (nome, ativo) VALUES ('Vestuário',true);

SELECT * FROM public.categorias ORDER BY pk_categoria ASC; 

-- Tabela de Sub-Categorias
CREATE TABLE IF NOT EXISTS sub_categorias (
	pk_sub_categoria SMALLSERIAL PRIMARY KEY,
	fk_categoria INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (fk_categoria) REFERENCES categorias(pk_categoria)
);
-- Inserção de Dados Tabela Sub-Categorias
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Açougue',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Cafeteria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Lanchonete',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Mercearia',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Padaria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Pizzaria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Peixaria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Sorveteria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Restaurante',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (1,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (2,'Auxílio Familiar Nilson',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (2,'Auxílio Familiar Valéria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (2,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Aluguel',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Animais de Estimação',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Celular',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Diarista',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Eletricidade',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Gás',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Internet',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Água',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Lavanderia',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Manutenção',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Mobiliário',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Presentes',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Seguros',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Streaming',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Supermercado',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Transporte',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (3,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (4,'Cabelereiro',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (4,'Cosméticos',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (4,'Depilação',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (4,'Manicure',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (4,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (5,'Cursos Extras',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (5,'Graduação',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (5,'Intercâmbios',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (5,'Material Escolar',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (5,'Pós Graduação',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (5,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (6,'IPVA',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (6,'IRPF',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (6,'IPTU',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (6,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (7,'Esportes',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (7,'Entretenimento',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (7,'Viagem',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (7,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (8,'Despesas Bancárias',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (8,'Mesadas',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (8,'Moeda Estrangeira',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (8,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (9,'Doações',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (9,'Dízimo',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (9,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (10,'Dentista',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (10,'Drogaria',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (10,'Médico',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (10,'Nutricionista',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (10,'Psicólogo',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (10,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Aplicativos',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Eletrônica',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Filmes',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Informática',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Livros',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Música',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (11,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (12,'Acessórios',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (12,'Estacionamento',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (12,'Combustível',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (12,'Manutenção',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (12,'Seguro',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (12,'Outros',true);

INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (13,'Acessórios',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (13,'Jóias',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (13,'Sapatos',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (13,'Roupas',true);
INSERT INTO sub_categorias (fk_categoria,nome, ativo) VALUES (13,'Outros',true);

SELECT * FROM public.sub_categorias ORDER BY pk_sub_categoria ASC; 
