# JSP OOP User & Contact Registration

🇬🇧 English (official) · 🇧🇷 [Leia em português](README.pt-BR.md)

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Java 11](https://img.shields.io/badge/Java-11-orange.svg)
![Apache Tomcat 9](https://img.shields.io/badge/Tomcat-9-yellow.svg)

A small Java web application written with **JSP** to practice **Object-Oriented Programming**. It models a few simple classes (person, date, time) and includes two **registration pages** where you can add and remove users and contacts.

It was built as **Assignment 5.2** of the *Object-Oriented Programming* course (Analysis and Systems Development, ADS) at **Fatec Praia Grande**, 2020/2.

## Features

| Page | What it shows |
|------|---------------|
| `index.jsp` | Menu linking to every example |
| `pessoa.jsp` | `Pessoa` (Person): name, parents as nested `Pessoa` objects, birth date and a computed age |
| `data.jsp` | `Data` (Date): a class with day, month and year fields |
| `horario.jsp` | `Horario` (Time): a class with hour, minute and second fields |
| `users.jsp` | `User` registration: add and remove users in a list (passwords are kept in memory but never displayed) |
| `contatos.jsp` | `Contato` (Contact) registration: add and remove contacts; phone numbers are masked as `(##) #####-####` (mobile) or `(##) ####-####` (landline) |

Class names come from the original Portuguese assignment: `Pessoa` = Person, `Data` = Date, `Horario` = Time, `Contato` = Contact. The user interface text is also in Brazilian Portuguese.

## Tech stack

- Java 11, JSP (scriptlets), Servlet 3.1 `web.xml`
- Apache Tomcat 9
- NetBeans (Ant) project

## Getting started

### Option 1: Docker (no IDE needed)

```bash
docker build -t jsp-oop-user-contact-registration .
docker run --rm -p 8080:8080 jsp-oop-user-contact-registration
```

Then open <http://localhost:8080/Aula05_POO/>.

### Option 2: NetBeans

1. Install a JDK (11 or newer) and Apache Tomcat 9.
2. In NetBeans (with Java Web and EE support; the project was created with 11.3), choose **File → Open Project** and select this folder.
3. Register your Tomcat under **Services → Servers** if prompted.
4. Click **Run**. The app opens at <http://localhost:8080/Aula05_POO/>.

## Project structure

```
.
├── src/java/br/edu/fatecpg/poo/   # Java classes: Pessoa, Data, Horario, User, Contato, Html (escaping helper), Main
├── web/                           # JSP pages, WEB-INF/web.xml, META-INF/context.xml
├── nbproject/, build.xml, lib/    # NetBeans (Ant) project files and IDE libraries
├── Dockerfile                     # Run on Tomcat 9 without an IDE
├── LICENSE
└── README.md / README.pt-BR.md
```

## Scope and limitations

This is a classroom exercise, intentionally simple, and not meant for production use:

- Data lives in memory (`application` scope): it is shared by all visitors and resets when the server restarts.
- Passwords are kept in plain text, with no hashing, and there is no authentication.
- Output is HTML-escaped, but user input is not validated.
- Pages use JSP scriptlets; real projects would use servlets/MVC and JSTL or a template engine.

Because it needs a Java servlet container, it cannot be hosted on GitHub Pages or Netlify.

## License

Released under the [MIT License](LICENSE).
