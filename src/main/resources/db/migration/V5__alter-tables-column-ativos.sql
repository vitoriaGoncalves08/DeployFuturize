ALTER TABLE usuario ADD ativo TINYINT;
UPDATE usuario SET ativo = 1;

ALTER TABLE projeto ADD ativo TINYINT;
UPDATE projeto SET ativo = 1;

ALTER TABLE alocacao_projeto ADD ativo TINYINT;
UPDATE alocacao_projeto SET ativo = 1;

ALTER TABLE atividade ADD ativo TINYINT;
UPDATE atividade SET ativo = 1;