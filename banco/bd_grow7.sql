CREATE TABLE tb_arduinos_grow7 (
id_arduino int PRIMARY KEY identity(1,1),
umidade_arduino int,
temperatura_arduino float,
qualidade_ar_arduino int,
id_fkcliente int,
id_fkcogumelo int
)


CREATE TABLE tb_cogumelos_grow7 (
id_cogumelo int PRIMARY KEY identity(1,1),
qualidade_ar_cogumelo int,
temperatura_cogumelo float,
tipo_cogumelo varchar(15),
umidade_cogumelo int,
id_fkcliente int
)

CREATE TABLE tb_clientes_grow7 (
id_cliente int PRIMARY KEY identity(1,1),
endereco_cliente varchar(60),
nome_cliente varchar(40),
email_cliente varchar(60),
telefone_cliente char(15),
cpf_cliente char(14)
)


ALTER TABLE tb_arduinos_grow7 ADD FOREIGN KEY(id_fkcliente) REFERENCES tb_clientes_grow7 (id_cliente)
ALTER TABLE tb_arduinos_grow7 ADD FOREIGN KEY(id_fkcogumelo) REFERENCES tb_cogumelos_grow7 (id_cogumelo)
ALTER TABLE tb_cogumelos_grow7 ADD FOREIGN KEY(id_fkcliente) REFERENCES tb_clientes_grow7 (id_cliente)
