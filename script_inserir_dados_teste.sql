INSERT INTO profissionais (id_profissional, cpf_profissional, nome_profissional, endereco_escritorio, cidade_escritorio, uf_escritorio, cep_escritorio, telefone_profissional, celular_profissional, email_profissional, senha_profissional, data_cadastro_profissional) VALUES
(1, '12345678901', 'Ana Silva', 'Rua das Flores, 123', 'São Paulo', 'SP', '01001000', '11987654321', '11987654321', 'ana.silva@example.com', 'senha1234', '2024-11-10'),
(2, '23456789012', 'Bruno Costa', 'Avenida Paulista, 456', 'São Paulo', 'SP', '01311000', '11876543210', '11876543210', 'bruno.costa@example.com', 'senha5678', '2024-11-10'),
(3, '34567890123', 'Carla Souza', 'Rua das Palmeiras, 789', 'Rio de Janeiro', 'RJ', '20040000', '21765432109', '21765432109', 'carla.souza@example.com', 'senha9101', '2024-11-10'),
(4, '45678901234', 'Daniel Oliveira', 'Avenida Atlântica, 101', 'Rio de Janeiro', 'RJ', '22021000', '21654321098', '21654321098', 'daniel.oliveira@example.com', 'senha1121', '2024-11-10'),
(5, '56789012345', 'Elisa Pereira', 'Rua das Acácias, 202', 'Belo Horizonte', 'MG', '30130000', '31987654321', '31987654321', 'elisa.pereira@example.com', 'senha3141', '2024-11-10');

INSERT INTO clientes (cpf_cliente, nome_cliente, cidade_cliente, uf_cliente, telefone_cliente, celular_cliente, email_cliente, senha_cliente, data_cadastro_cliente) VALUES
('67890123456', 'Fernando Lima', 'Curitiba', 'PR', '41987654321', '41987654321', 'fernando.lima@example.com', 'senha1234', '2024-11-10'),
('78901234567', 'Gabriela Alves', 'Porto Alegre', 'RS', '51987654321', '51987654321', 'gabriela.alves@example.com', 'senha5678', '2024-11-10'),
('89012345678', 'Hugo Martins', 'Salvador', 'BA', '71987654321', '71987654321', 'hugo.martins@example.com', 'senha9101', '2024-11-10'),
('90123456789', 'Isabela Rocha', 'Fortaleza', 'CE', '85987654321', '85987654321', 'isabela.rocha@example.com', 'senha1121', '2024-11-10'),
('01234567890', 'João Pedro', 'Recife', 'PE', '81987654321', '81987654321', 'joao.pedro@example.com', 'senha3141', '2024-11-10');

INSERT INTO especialidades (nome_especialidade, data_cadastro_especialidade, id_profissional) VALUES
('Trabalho', '2024-11-10', 1),
('Penal', '2024-11-10', 2),
('Família', '2024-11-10', 3),
('Previdência', '2024-11-10', 4),
('Trabalho', '2024-11-10', 5);

INSERT INTO regiao_atendimento (cidade_atendimento, uf_atendimento, data_cadastro_regiao, id_profissional) VALUES
('São Paulo', 'SP', '2024-11-10', 1),
('Rio de Janeiro', 'RJ', '2024-11-10', 2),
('Belo Horizonte', 'MG', '2024-11-10', 3),
('Curitiba', 'PR', '2024-11-10', 4),
('Porto Alegre', 'RS', '2024-11-10', 5);

INSERT INTO curriculo_profissional (descricao, link_linkedin, link_outros, id_profissional) VALUES
('Experiência de 10 anos em Direito do Trabalho, especialista em processos relacionados a Rede Varejista.', 'https://linkedin.com/in/ana-silva', 'https://portfolio.com/ana-silva', 1),
('Experiência de 1 ano em Direito Penal.', 'https://linkedin.com/in/bruno-costa', 'https://portfolio.com/bruno-costa', 2),
('Experiência como estagiário de direito no Fórum da Cidade', 'https://linkedin.com/in/carla-souza', 'https://portfolio.com/carla-souza', 3),
('Recém chegado ao mercado, mas como experiência do estágio no INSS.', 'https://linkedin.com/in/daniel-oliveira', 'https://portfolio.com/daniel-oliveira', 4),
('5 anos de trabalho como concursado no TRT.', 'https://linkedin.com/in/elisa-pereira', 'https://portfolio.com/elisa-pereira', 5);

INSERT INTO pedido (data_pedido, id_profissional, id_cliente) VALUES
('2024-11-10', 1, 1),
('2024-11-11', 2, 2),
('2024-11-12', 3, 3),
('2024-11-13', 4, 4),
('2024-11-14', 5, 5);
