CREATE TABLE alocacao_projeto (
    id INT NOT NULL AUTO_INCREMENT,
    id_projeto INT,
    id_usuario INT,
    CONSTRAINT id_projeto_alocacao_projeto FOREIGN KEY (id_projeto) REFERENCES projeto(id),
    CONSTRAINT id_usuario_alocacao_projeto FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    primary key (id)
)