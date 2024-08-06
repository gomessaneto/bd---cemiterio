use cemiterio;


-- create tables and indexes

CREATE TABLE Cemiterio (
    idCemiterio INT PRIMARY KEY
);

CREATE TABLE Quadra (
    idQuadra INT PRIMARY KEY,
    tamanho DOUBLE,
    Cemiterio_idCemiterio INT,
    FOREIGN KEY (Cemiterio_idCemiterio) REFERENCES Cemiterio(idCemiterio)
);

CREATE TABLE Proprietario (
    idProprietario INT PRIMARY KEY,
    nome VARCHAR(45),
    cpf VARCHAR(50)
);

CREATE TABLE Lote (
    idLote INT PRIMARY KEY,
    tamanhoLote DOUBLE,
    Quadra_idQuadra INT,
    Proprietario_idProprietario INT,
    FOREIGN KEY (Quadra_idQuadra) REFERENCES Quadra(idQuadra),
    FOREIGN KEY (Proprietario_idProprietario) REFERENCES Proprietario(idProprietario)
);

CREATE TABLE Defunto (
    idDefunto INT PRIMARY KEY,
    nome VARCHAR(45),
    dataObito DATE,
    dataNascimento DATE,
    Proprietario_idProprietario INT,
    FOREIGN KEY (Proprietario_idProprietario) REFERENCES Proprietario(idProprietario)
);

CREATE TABLE Jazigo (
    idJazigo INT PRIMARY KEY,
    Lote_idLote INT,
    Defunto_idDefunto INT,
    FOREIGN KEY (Lote_idLote) REFERENCES Lote(idLote),
    FOREIGN KEY (Defunto_idDefunto) REFERENCES Defunto(idDefunto)
);

-- indices ~cemiterio
CREATE INDEX idx_idCemiterio ON Cemiterio(idCemiterio);

-- indices ~quadra
CREATE INDEX idx_idQuadra ON Quadra(idQuadra);
CREATE INDEX idx_Cemiterio_idCemiterio ON Quadra(Cemiterio_idCemiterio);

-- indices ~proprietario
CREATE INDEX idx_idProprietario ON Proprietario(idProprietario);
CREATE INDEX idx_cpf ON Proprietario(cpf);

-- indices ~lote
CREATE INDEX idx_idLote ON Lote(idLote);
CREATE INDEX idx_Quadra_idQuadra ON Lote(Quadra_idQuadra);
CREATE INDEX idx_Proprietario_idProprietario ON Lote(Proprietario_idProprietario);

-- indices ~defunti
CREATE INDEX idx_idDefunto ON Defunto(idDefunto);
CREATE INDEX idx_Proprietario_idProprietario ON Defunto(Proprietario_idProprietario);

-- indices ~jazigo
CREATE INDEX idx_idJazigo ON Jazigo(idJazigo);
CREATE INDEX idx_Lote_idLote ON Jazigo(Lote_idLote);
CREATE INDEX idx_Defunto_idDefunto ON Jazigo(Defunto_idDefunto);

