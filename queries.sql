-- Testando as Consultas

-- Listando todas as ordens de serviço e seus status
SELECT * FROM OrdemServico;

-- Listando serviços de uma ordem específica
SELECT S.Descricao, OSP.Quantidade 
FROM OrdemServico_has_Servico OSP
JOIN Servico S ON OSP.Servico_idServico = S.idServico
WHERE OSP.OrdemServico_idOrdemServico = 1;

-- Listando peças usadas em uma ordem
SELECT P.Descricao, OSP.Quantidade 
FROM OrdemServico_has_Peca OSP
JOIN Peca P ON OSP.Peca_idPeca = P.idPeca
WHERE OSP.OrdemServico_idOrdemServico = 1;