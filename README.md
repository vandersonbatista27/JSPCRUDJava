# Aplicação CRUD com Java e JSP

Este projeto é uma aplicação CRUD (Create, Read, Update, Delete) simples construída usando Java, JSP (JavaServer Pages) e MySQL. A aplicação permite aos usuários realizar operações básicas em um banco de dados, como adicionar, visualizar, editar e excluir registros.

## Funcionalidades

- Adicionar novos registros
- Visualizar todos os registros
- Editar registros existentes
- Excluir registros

## Tecnologias Utilizadas

- Java
- JSP (JavaServer Pages)
- MySQL
- Apache Tomcat

## Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- JDK (Java Development Kit)
- Apache Tomcat (ou qualquer outro contêiner de servlets)
- Banco de Dados MySQL
- Uma IDE (por exemplo, Eclipse, IntelliJ IDEA)

## Instalação e Configuração

1. **Clone o repositório:**

    ```bash
    git clone https://github.com/seuusuario/crud-java-jsp.git
    cd crud-java-jsp
    ```

2. **Configuração do Banco de Dados:**

    - Crie um banco de dados no MySQL.
    - Execute o script SQL fornecido no arquivo `database.sql` para criar as tabelas necessárias.

3. **Configuração do Projeto:**

    - Importe o projeto para sua IDE.
    - Configure as credenciais do banco de dados no arquivo `dbconfig.java`.

4. **Deploy no Tomcat:**

    - Compile o projeto e gere o arquivo `.war`.
    - Faça o deploy do arquivo `.war` no servidor Tomcat.

5. **Execute a Aplicação:**

    - Inicie o servidor Tomcat.
    - Acesse a aplicação no navegador através da URL `http://localhost:8080/crud-java-jsp`.

## Estrutura do Projeto

- `src/`: Contém os arquivos de código-fonte Java.
- `web/`: Contém os arquivos JSP e outros recursos web.
- `database.sql`: Script SQL para criar as tabelas do banco de dados.
- `README.md`: Este arquivo.

## Uso

### Adicionar Novo Registro

1. Acesse a página de adição de registros.
2. Preencha os campos necessários.
3. Clique em "Adicionar".

### Visualizar Registros

1. Acesse a página de visualização de registros.

### Editar Registro

1. Na página de visualização de registros, clique em "Editar" no registro desejado.
2. Faça as alterações necessárias.
3. Clique em "Atualizar".

### Excluir Registro

1. Na página de visualização de registros, clique em "Excluir" no registro desejado.
2. Confirme a exclusão.

## Contribuição

Sinta-se à vontade para contribuir com o projeto enviando pull requests ou reportando issues.
