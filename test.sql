CREATE TABLE marcas (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE,
    site VARCHAR(100),
    telefone VARCHAR(15)
);
--INTEGER = NUMERO INTEIRO
--VARCHAR() = NUMEROS DE CARACTERES SUPORTADOS
--NOT NULL = A RESPOSTA NÃO PODE SER NULA



CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco REAL,
    marca INTEGER DEFAULT 0
);
-- REAL = PREÇO DOS PRODUTOS EM REAIS

ALTER TABLE produtos ADD COLUMN id_marca INT NOT NULL;

ALTER TABLE produtos MODIFY COLUMN nome VARCHAR(150);

ALTER TABLE produtos ADD FOREIGN KEY (id_marca) REFERENCES marcas(id);
--ALTERAR COISAS DA TABELA


CREATE TABLE controle (
    id INTEGER PRIMARY KEY,
    data_entrada DATE
)

DROP TABLE controle;
--APAGAR A TABELA

CREATE INDEX idx_produtos_nome
ON produtos (nome);

INSERT INTO marcas
    (nome, site, telefone)
VALUES
    ('Apple', 'apple.com', '0800-761-0867'),
    ('Dell', 'dell.com.br', '0800-978-3355'),
    ('Herman Miller', 'hermanmiller.com.br', '(11) 3474-8043'),
    ('Shure', 'shure.com.br', '0800-970-3355');

INSERT INTO produtos
VALUES  
    (2, 'Iphone 15 Pro Apple (128GB) - Preto', 4599.00, 50, 1),
    (3, 'MacBook Air 15" (8GB RAM, 512GB SSD) - Prateado', 8899.99, 23, 1),
    (4, 'Notebook Inspiron 16 Plus', 10398.00, 300, 2),
    (5, 'Cadeira Aeron', 15540.00, 8, 3),
    (6, 'Microfone MV7 USB', 2999.99, 40, 4),
    (7, 'Microfone SM7B', 5579.99, 30, 4);
--É possivel omitir a lista de campos, mas tem que seguir a sequencia da tabela

SELECT id, nome FROM produtos WHERE id = 1; 