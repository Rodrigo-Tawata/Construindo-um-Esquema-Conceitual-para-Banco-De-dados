CREATE DATABASE IF NOT EXISTS OficinaMecanica;
USE OficinaMecanica;

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Telefone VARCHAR(15),
    Endereco VARCHAR(100)
);

-- Tabela Veículo
CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(10) NOT NULL UNIQUE,
    Modelo VARCHAR(45) NOT NULL,
    Ano INT NOT NULL,
    Cliente_idCliente INT NOT NULL,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Equipe
CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    NomeEquipe VARCHAR(45) NOT NULL
);

-- Tabela Mecânico
CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Endereco VARCHAR(100),
    Especialidade VARCHAR(45),
    Equipe_idEquipe INT NOT NULL,
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

-- Tabela Ordem de Serviço
CREATE TABLE OrdemServico (
    idOrdemServico INT PRIMARY KEY AUTO_INCREMENT,
    DataEmissao DATE NOT NULL,
    DataConclusao DATE,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Aberta', 'Em andamento', 'Concluída', 'Cancelada')),
    ValorTotal DECIMAL(10,2) DEFAULT 0.00,
    Autorizado TINYINT(1) DEFAULT 0,  -- 0 = Não, 1 = Sim
    Veiculo_idVeiculo INT NOT NULL,
    Equipe_idEquipe INT NOT NULL,
    FOREIGN KEY (Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

-- Tabela Serviço
CREATE TABLE Servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    ValorReferencia DECIMAL(10,2) NOT NULL
);


-- Tabela Peça
CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
);


-- Tabela OrdemServico_has_Servico (Relacionamento N:N)
CREATE TABLE OrdemServico_has_Servico (
    Servico_idServico INT NOT NULL,
    OrdemServico_idOrdemServico INT NOT NULL,
    OrdemServico_Veiculo_idVeiculo INT NOT NULL,
    Quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (Servico_idServico, OrdemServico_idOrdemServico, OrdemServico_Veiculo_idVeiculo),
    FOREIGN KEY (Servico_idServico) REFERENCES Servico(idServico),
    FOREIGN KEY (OrdemServico_idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);


-- Tabela OrdemServico_has_Peca (Relacionamento N:N)
CREATE TABLE OrdemServico_has_Peca (
    Peca_idPeca INT NOT NULL,
    OrdemServico_idOrdemServico INT NOT NULL,
    OrdemServico_Veiculo_idVeiculo INT NOT NULL,
    Quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (Peca_idPeca, OrdemServico_idOrdemServico, OrdemServico_Veiculo_idVeiculo),
    FOREIGN KEY (Peca_idPeca) REFERENCES Peca(idPeca),
    FOREIGN KEY (OrdemServico_idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);
