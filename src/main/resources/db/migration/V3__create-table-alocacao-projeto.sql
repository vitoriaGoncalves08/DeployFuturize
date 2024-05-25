CREATE TABLE alocacao_projeto (
      id INT NOT NULL AUTO_INCREMENT,
      id_projeto INT,
      id_usuario INT,
      CONSTRAINT id_projeto_alocacao_projeto FOREIGN KEY (id_projeto) REFERENCES railway.projeto(id),
      CONSTRAINT id_usuario_alocaco_projeto FOREIGN KEY (id_usuario) REFERENCES railway.usuario(id),
      primary key (id)
)