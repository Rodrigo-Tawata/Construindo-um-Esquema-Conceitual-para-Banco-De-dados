# 🚗 Construindo um Esquema Conceitual para Banco de Dados - Oficina Mecânica



## 📌 Descrição do Projeto
Este projeto consiste no desenvolvimento de um esquema conceitual para um sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica. O objetivo é criar um banco de dados relacional que permita gerenciar clientes, veículos, ordens de serviço, peças, serviços, equipes e mecânicos de forma eficiente.

O esquema foi modelado utilizando o MySQL Workbench e implementado no MySQL.

---

## 🛠️ Tecnologias Utilizadas
- **MySQL Workbench:** Para modelagem do banco de dados.
- **MySQL:** Sistema de gerenciamento de banco de dados relacional (SGBD).
- **GitHub:** Repositório para controle de versão do projeto.
---

## 📊 Modelo Conceitual
Abaixo está o diagrama do esquema conceitual do banco de dados da oficina mecânica:


O banco de dados foi estruturado com as seguintes entidades:

- **Cliente:** Representa os clientes da oficina.
- **Veículo:** Cada veículo pertence a um cliente.
- **Ordem de Serviço (OS):** Cada ordem de serviço está vinculada a um veículo e a uma equipe de mecânicos.
- **Equipe:** Agrupamento de mecânicos responsáveis pela execução das ordens de serviço.
- **Mecânico:** Contém informações sobre cada mecânico e sua especialidade.
- **Serviço:** Tipos de serviços oferecidos na oficina.
- **Peça:** Peças utilizadas na execução dos serviços.
- **Ordem de Serviço x Serviço:** Relaciona os serviços executados em cada OS.
- **Ordem de Serviço x Peça:** Relaciona as peças utilizadas em cada OS.

---

## 🚀 Sobre o Autor
Desenvolvido por Rodrigo Tawata. Projeto criado como parte de um desafio para aprimorar habilidades em modelagem de dados e bancos de dados relacionais.

---

📞 Contato
Se tiver dúvidas, sugestões ou quiser contribuir, entre em contato:

[GitHub](https://www.git-scm.com/doc)

[LinkedIn](https://www.linkedin.com/in/rodrigo-tawata/)
