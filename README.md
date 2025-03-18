# Construindo-um-Esquema-Conceitual-para-Banco-De-dados

# Sistema de Controle de Ordens de Serviço - Oficina Mecânica

## 🎯 Descrição do Projeto
Este projeto consiste na modelagem conceitual e lógica de um sistema de controle e gerenciamento de ordens de serviço (OS) para uma oficina mecânica. O sistema abrange o controle de clientes, veículos, ordens de serviço, peças, serviços e equipes de mecânicos.

---

## 📚 Entidades Principais
- **Cliente:** Dados de identificação do cliente.
- **Veículo:** Informações sobre o veículo do cliente.
- **Ordem de Serviço (OS):** Detalha os serviços e peças associados a cada veículo.
- **Serviço:** Catálogo de serviços disponíveis com valores de referência.
- **Peça:** Itens que podem ser utilizados nos reparos.
- **Equipe:** Conjunto de mecânicos designados a uma OS.
- **Mecânico:** Dados de identificação e especialidade.

---

## ⚙️ Como Executar o Projeto
1. **Importe o modelo no MySQL Workbench:**  
   Abra o arquivo `oficina.mwb` para visualizar e editar o modelo.

2. **Crie o Banco de Dados:**  
   Execute o script `schema.sql` em um servidor MySQL.

3. **Visualize o Diagrama:**  
   O arquivo `diagrama.png` apresenta o modelo visualmente.

---

## 🛠️ Considerações Técnicas
- O modelo foi desenvolvido considerando as melhores práticas de modelagem relacional.  
- Foram utilizadas tabelas de associação para representar relacionamentos muitos-para-muitos.  
- A integridade referencial foi garantida por meio de chaves primárias e estrangeiras.

---

## 🚀 Sobre o Autor
Desenvolvido por Rodrigo Tawata. Projeto criado como parte de um desafio para aprimorar habilidades em modelagem de dados e bancos de dados relacionais.
