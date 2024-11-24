CREATE TABLE profissionais (
    id_profissional SERIAL PRIMARY KEY,
    cpf_profissional VARCHAR(11) UNIQUE NOT NULL,
    nome_profissional VARCHAR(100) NOT NULL,
    endereco_escritorio VARCHAR(200) NOT NULL,
    cidade_escritorio VARCHAR(50) NOT NULL,
    uf_escritorio VARCHAR(2) NOT NULL,
    cep_escritorio VARCHAR(8) NOT NULL,
    telefone_profissional VARCHAR(11),
    celular_profissional VARCHAR(11) NOT NULL,
    email_profissional VARCHAR(100) NOT NULL,
    senha_profissional VARCHAR(12) NOT NULL,
    data_cadastro_profissional date
);

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    cpf_cliente VARCHAR(11) UNIQUE NOT NULL,
    nome_cliente VARCHAR(100) NOT NULL,
    cidade_cliente VARCHAR(50) NOT NULL,
    uf_cliente VARCHAR(2) NOT NULL,
    telefone_cliente VARCHAR(11),
    celular_cliente VARCHAR(11) NOT NULL,
    email_cliente VARCHAR(100) NOT NULL,
    senha_cliente VARCHAR(12) NOT NULL,
    data_cadastro_cliente date
);

CREATE TABLE especialidades (
    id_especialidade SERIAL PRIMARY KEY,
    nome_especialidade VARCHAR(100) NOT NULL,
    data_cadastro_especialidade DATE,
    id_profissional INT NOT NULL,
    FOREIGN KEY (id_profissional) REFERENCES profissionais(id_profissional)
);

CREATE TABLE regiao_atendimento (
    id_regiao SERIAL PRIMARY KEY,
    cidade_atendimento VARCHAR(50) NOT NULL,
    uf_atendimento VARCHAR(2) NOT NULL,
    data_cadastro_regiao DATE,
    id_profissional INT NOT NULL,
    FOREIGN KEY (id_profissional) REFERENCES profissionais(id_profissional)
);


CREATE TABLE curriculo_profissional (
    id_curriculo SERIAL PRIMARY KEY,
    descricao VARCHAR(2000),
    link_linkedin VARCHAR(100),
    link_outros VARCHAR(100),
    id_profissional INT NOT NULL,
    FOREIGN KEY (id_profissional) REFERENCES profissionais(id_profissional)
);

CREATE TABLE pedido (
    id_pedido SERIAL PRIMARY KEY,
    data_pedido DATE,
    id_profissional INT NOT NULL,
    FOREIGN KEY (id_profissional) REFERENCES profissionais(id_profissional),
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);