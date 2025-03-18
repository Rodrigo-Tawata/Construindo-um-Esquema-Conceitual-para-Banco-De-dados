-- Inserindo Dados de Teste

-- Cliente
INSERT INTO Cliente (Nome, Telefone, Endereco) VALUES 
('Carlos Silva', '11987654321', 'Rua A, 123'),
('Mariana Souza', '11912345678', 'Rua B, 456');

-- Veículos
INSERT INTO Veiculo (Placa, Modelo, Ano, Cliente_idCliente) VALUES 
('ABC-1234', 'Honda Civic', 2020, 1),
('DEF-5678', 'Toyota Corolla', 2018, 2);

-- Equipes
INSERT INTO Equipe (NomeEquipe) VALUES 
('Equipe A'), ('Equipe B');

-- Mecânicos
INSERT INTO Mecanico (Nome, Endereco, Especialidade, Equipe_idEquipe) VALUES 
('João Pedro', 'Rua X, 100', 'Suspensão', 1),
('Ana Clara', 'Rua Y, 200', 'Freios', 2);

-- Ordem de Serviço
INSERT INTO OrdemServico (DataEmissao, Status, Veiculo_idVeiculo, Equipe_idEquipe, Autorizado) VALUES 
('2025-03-18', 'Aberta', 1, 1, 1),
('2025-03-18', 'Aberta', 2, 2, 0);

-- Serviços
INSERT INTO Servico (Descricao, ValorReferencia) VALUES 
('Troca de óleo', 120.00),
('Alinhamento e balanceamento', 200.00);

-- Peças
INSERT INTO Peca (Descricao, Valor) VALUES 
('Óleo sintético 5W30', 80.00),
('Filtro de óleo', 50.00);

-- Serviços nas Ordens de Serviço
INSERT INTO OrdemServico_has_Servico (Servico_idServico, OrdemServico_idOrdemServico, OrdemServico_Veiculo_idVeiculo, Quantidade) VALUES 
(1, 1, 1, 1),
(2, 1, 1, 1);

-- Peças utilizadas nas Ordens de Serviço
INSERT INTO OrdemServico_has_Peca (Peca_idPeca, OrdemServico_idOrdemServico, OrdemServico_Veiculo_idVeiculo, Quantidade) VALUES 
(1, 1, 1, 2),
(2, 1, 1, 1);