# JSP OOP User & Contact Registration

🇧🇷 Português · 🇬🇧 [Read in English (official)](README.md)

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Java 11](https://img.shields.io/badge/Java-11-orange.svg)
![Apache Tomcat 9](https://img.shields.io/badge/Tomcat-9-yellow.svg)

> A versão oficial deste README é a em inglês ([README.md](README.md)). Esta é uma tradução de apoio.

Uma pequena aplicação web em Java com **JSP** para praticar **Programação Orientada a Objetos**. Ela modela algumas classes simples (pessoa, data, horário) e tem duas **páginas de cadastro** para adicionar e remover usuários e contatos.

Foi feita como **Tarefa 5.2** da disciplina de *Programação Orientada a Objetos* (curso de Análise e Desenvolvimento de Sistemas, ADS) da **Fatec Praia Grande**, 2020/2.

## Demo online

**<https://jsp-oop-user-contact-registration.onrender.com/Aula05_POO/index.jsp>**

Hospedado no plano gratuito do Render, executando a imagem Docker incluída. O serviço hiberna após cerca de 15 minutos sem acessos, então a primeira requisição pode demorar. Os dados ficam em memória, são públicos, compartilhados entre todos os visitantes e apagados a cada reinício; por isso, não digite informações reais.

## Funcionalidades

| Página | O que mostra |
|--------|--------------|
| `index.jsp` | Menu com links para todos os exemplos |
| `pessoa.jsp` | `Pessoa`: nome, pais como objetos `Pessoa` aninhados, data de nascimento e idade calculada |
| `data.jsp` | `Data`: classe com campos de dia, mês e ano |
| `horario.jsp` | `Horario`: classe com campos de hora, minuto e segundo |
| `users.jsp` | Cadastro de `User`: adiciona e remove usuários de uma lista (as senhas ficam na memória, mas nunca são exibidas) |
| `contatos.jsp` | Cadastro de `Contato`: adiciona e remove contatos; telefones recebem máscara `(##) #####-####` (celular) ou `(##) ####-####` (fixo) |

Os nomes das classes vêm do enunciado original em português. O texto da interface também está em português do Brasil.

## Capturas de tela

<table>
<tr><td align="center"><a href="docs/screenshots/home.png"><img src="docs/screenshots/home.png" alt="Página inicial com links para cada exemplo" width="380"></a><br><sub>Menu inicial</sub></td><td align="center"><a href="docs/screenshots/person.png"><img src="docs/screenshots/person.png" alt="Página de pessoa com idade e parentes" width="380"></a><br><sub>Página <code>Pessoa</code></sub></td></tr>
<tr><td align="center"><a href="docs/screenshots/date.png"><img src="docs/screenshots/date.png" alt="Página de data" width="380"></a><br><sub>Página <code>Data</code></sub></td><td align="center"><a href="docs/screenshots/time.png"><img src="docs/screenshots/time.png" alt="Página de horário" width="380"></a><br><sub>Página <code>Horario</code></sub></td></tr>
<tr><td align="center"><a href="docs/screenshots/users.png"><img src="docs/screenshots/users.png" alt="Cadastro de usuários com adicionar e remover" width="380"></a><br><sub>Cadastro de usuários</sub></td><td align="center"><a href="docs/screenshots/contacts.png"><img src="docs/screenshots/contacts.png" alt="Cadastro de contatos com telefones mascarados" width="380"></a><br><sub>Cadastro de contatos</sub></td></tr>
</table>

## Tecnologias

- Java 11, JSP (scriptlets), `web.xml` Servlet 3.1
- Apache Tomcat 9
- Projeto NetBeans (Ant)

## Como executar

### Opção 1: Docker (sem IDE)

```bash
docker build -t jsp-oop-user-contact-registration .
docker run --rm -p 8080:8080 jsp-oop-user-contact-registration
```

Depois acesse <http://localhost:8080/Aula05_POO/index.jsp>.

### Opção 2: NetBeans

1. Instale um JDK (11 ou superior) e o Apache Tomcat 9.
2. No NetBeans (com suporte a Java Web e EE; o projeto foi criado na versão 11.3), use **File → Open Project** e selecione esta pasta.
3. Registre o Tomcat em **Services → Servers**, se for solicitado.
4. Clique em **Run**. A aplicação abre em <http://localhost:8080/Aula05_POO/index.jsp>.

## Estrutura do projeto

```
.
├── src/java/br/edu/fatecpg/poo/   # Classes Java: Pessoa, Data, Horario, User, Contato, Html (escape de HTML), Main
├── web/                           # Páginas JSP, WEB-INF/web.xml, META-INF/context.xml
├── nbproject/, build.xml, lib/    # Arquivos do projeto NetBeans (Ant) e bibliotecas da IDE
├── docs/screenshots/              # Imagens usadas neste README
├── Dockerfile                     # Executa no Tomcat 9 sem IDE
├── render.yaml                    # Configuração do serviço no Render para o demo online
├── LICENSE
└── README.md / README.pt-BR.md
```

## Escopo e limitações

Este é um exercício de sala de aula, propositalmente simples, e não serve para uso em produção:

- Os dados ficam em memória (escopo `application`): são compartilhados entre todos os visitantes e somem quando o servidor reinicia.
- As senhas ficam em texto puro, sem hash, e não há autenticação.
- A saída tem escape de HTML, mas as entradas não são validadas.
- As páginas usam scriptlets JSP; em projetos reais, o recomendado é servlets/MVC e JSTL ou um motor de templates.

Como exige um contêiner de servlets Java, não roda no GitHub Pages nem no Netlify; o demo online roda em Docker no Render.

## Licença

Distribuído sob a [Licença MIT](LICENSE).
