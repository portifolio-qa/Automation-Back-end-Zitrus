# Automation-Back-end-Zitrus
Project - Automation Back-end Zitrus

​	Este projeto, foi desenvolvido para o cliente: Zitrus. Neste projeto, o objetivo é checar as habilidades básicas de automação e cenários de testes.

# Requisitos do Projeto

- [ ] Implementar testes automatizados de back-end (API Rest), utilize a ferramenta de sua preferência
- [ ] Utilizar a api do github para realizar os testes (https://docs.github.com/en/rest)
- [ ] Criação de um repositorio no github
- [ ] Consulta do repositorio criado
- [ ] Criação de uma issue no respositorio recém criado
- [ ] Consulta da issue
- [ ] Exclusão do repositorio
- [ ] Consultar se o repositorio foi eliminado

# Técnicas de testes escolhidas:

O projeto de teste apresenta as seguintes tecnologias:

- Desenvolvido SO Windows 10 Profissional;
- NodeJs node-v16.18.0-x64;
- Cypress.io v10: framework de testes web;
- Cucumber: biblioteca de testes de aceitação web;
- BDD: para testes de negócio;
- Linguagem Gherkin: Cucumber boilerplate (BDD para Java script), biblioteca cypress-cucumber-preprocessor
- Desing Patterns: Page Objects

# Estrutura do Projeto:

<img src="image/README/icon_folder.png"/> **Automation-Back-end-Zitrus:** Pasta principal do projeto

<img src="image/README/icon_folder.png"/> **cypress:** Pasta do framework Cypress

<img src="image/README/icon_folder.png"/> ***e2e***: Arquivos de teste

<img src="image/README/icon_folder.png"/> **features**: funcionalidades do projeto

<img src="image/README/icon_folder.png"/> **step_definitions**: Definição de passos para executar os testes

<img src="image/README/icon_folder.png"/> **fixtures:** Arquivos estáticos que seram consumidos pelos teste

<img src="image/README/icon_folder.png"/> **pages:** Padrão page objects

<img src="image/README/icon_folder.png"/> **screenshots:** Evidências (prints) dos testes que falharam

<img src="image/README/icon_folder.png"/> **suport:** Pasta default do cypress para comandos e configurações

<img src="image/README/icon_folder.png"/> **videos:** Evidências dos testes em videos dos testes

<img src="image/README/javascript_icon_.png"/> **Arquivo cypress.json:** Configurações para executar o projetos browser

<img src="image/README/javascript_icon_.png"/> **Arquivo [commandjs]**(https://docs.cypress.io/api/table-of-contents "Doc Comandos Cypress"): Comandos do cypress

<img src="image/README/javascript_icon_.png"/> **Arquivo e2e:** Primeiro arquivo carregado do cypress, tudo que precisa antes rodar os testes

<img src="image/README/javascript_icon_.png"/> **cypress-cucumber-preprocessorrc.json:** Arquivo Biblioteca Javascript de BDD Cucumber

<img src="image/README/javascript_icon_.png"/> **.eslintrc.json:** Arquivo  de configurações de boas práticas de codifição JavaScript e Cypress

<img src="image/README/git_icon_.png"/> **.gitignore:** Arquivos que serão ignorados ao realizar os commits

<img src="image/README/javascript_icon_.png"/> **cucumber-html-report.js:** Arquivo Gera relatório dos testes

<img src="image/README/javascript_icon_.png"/> **cypress.config.js:** Único arquivo que não roda dentro do browser, roda no nodejs (o que o browser não consegue rodar, roda aqui). Exemplo: Conexão banco dados.

<img src="image/README/javascript_icon_.png"/> **pakage.json:** Arquivo Informações do projeto

<img src="image/README/javascript_icon_.png"/> **tsconfig.json:** Arquivo Informações de compilações do projeto

<img src="image/README/md_file_icon_.png"/> **README.md:** Documentação do Projeto

# Execução do projeto:

- `gitclone https://github.com/portifolio-qa/Automation-Back-end-Zitrus.git`

# Execução Testes:




# Desafios encontrados durante o teste:

