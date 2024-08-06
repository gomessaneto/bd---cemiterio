use cemiterio;
-- insert

-- ~quadra
INSERT INTO Quadra (idQuadra, tamanho, Cemiterio_idCemiterio) VALUES (1, 100.0, 1);
INSERT INTO Quadra (idQuadra, tamanho, Cemiterio_idCemiterio) VALUES (2, 150.0, 1);

-- ~proprietario
INSERT INTO Proprietario (idProprietario, nome, cpf) VALUES (1, 'João Silva', '123.456.789-00');
INSERT INTO Proprietario (idProprietario, nome, cpf) VALUES (2, 'Maria Oliveira', '987.654.321-00');

-- ~lote
INSERT INTO Lote (idLote, tamanhoLote, Quadra_idQuadra, Proprietario_idProprietario) VALUES (1, 50.0, 1, 1);
INSERT INTO Lote (idLote, tamanhoLote, Quadra_idQuadra, Proprietario_idProprietario) VALUES (2, 70.0, 2, 2);

-- ~defunto
INSERT INTO Defunto (idDefunto, nome, dataObito, dataNascimento, Proprietario_idProprietario) VALUES (1, 'José Almeida', '2023-01-01', '1940-05-10', 1);
INSERT INTO Defunto (idDefunto, nome, dataObito, dataNascimento, Proprietario_idProprietario) VALUES (2, 'Ana Pereira', '2023-02-01', '1950-06-15', 2);

-- ~jazigo
INSERT INTO Jazigo (idJazigo, Lote_idLote, Defunto_idDefunto) VALUES (1, 1, 1);
INSERT INTO Jazigo (idJazigo, Lote_idLote, Defunto_idDefunto) VALUES (2, 2, 2);

select * from lote;
