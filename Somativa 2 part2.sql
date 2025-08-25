CREATE DATABASE WineDatabase;
USE WineDatabase;

CREATE TABLE Regiao (
    codRegiao BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeRegiao VARCHAR(100),
    descricaoRegiao TEXT
);

CREATE TABLE Vinicula (
    codVinicula BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeVinicula VARCHAR(100),
    descricaoVinicula TEXT,
    codRegiao BIGINT,
    FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);

CREATE TABLE Vinho (
    codVinho BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeVinho VARCHAR(50),
    tipoVinho VARCHAR(30),
    anoVinho INT,
    descricaoVinho TEXT,
    codVinicula BIGINT,
    FOREIGN KEY (codVinicula) REFERENCES Vinicula(codVinicula)
);

INSERT INTO Regiao (nomeRegiao, descricaoRegiao) VALUES
('Douro', 'Região famosa em Portugal'),
('Bordeaux', 'Região renomada na França'),
('Napa Valley', 'Vale conhecido nos EUA por seus vinhos premium'),
('Toscana', 'Região italiana conhecida por seus vinhos Chianti'),
('Barossa Valley', 'Vale australiano conhecido por Shiraz');

INSERT INTO Vinicula (nomeVinicula, descricaoVinicula, codRegiao) VALUES
('Quinta do Noval', 'Vinícola histórica no Douro', 1),
('Château Margaux', 'Prestigiada vinícola em Bordeaux', 2),
('Silver Oak', 'Vinícola especializada em Cabernet Sauvignon', 3),
('Antinori', 'Produtor histórico na Toscana', 4),
('Penfolds', 'Vinícola icônica da Austrália', 5);

INSERT INTO Vinho (nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicula) VALUES
('Noval Black', 'Porto', 2015, 'Vinho do Porto robusto', 1),
('Margaux 2015', 'Tinto', 2015, 'Vinho tinto elegante', 2),
('Silver Oak Cabernet', 'Cabernet', 2017, 'Cabernet Sauvignon com notas de carvalho', 3),
('Tignanello', 'Tinto', 2016, 'Super Toscano intenso', 4),
('Grange', 'Shiraz', 2016, 'Vinho robusto e complexo', 5);

CREATE USER 'Sommelier'@'localhost' IDENTIFIED BY 'Gordão69';
GRANT SELECT ON WineDatabase.Vinho TO 'Sommelier'@'localhost';
GRANT SELECT (codVinicula, nomeVinicula) ON WineDatabase.Vinicula TO 'Sommelier'@'localhost';
ALTER USER 'Sommelier'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;
FLUSH PRIVILEGES;
