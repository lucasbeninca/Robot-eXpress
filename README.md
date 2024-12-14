# Robot-eXpress
[Curso Udemy - Robot-eXpress](https://www.udemy.com/course/robot-express)

---

## Getting Started - Instalação e Comandos para usar o Robot Framework e Playwright no Linux

Para rodar projetos Python no Linux, como o Robot Framework, você precisa utilizar os ambientes virtuais do Python, conhecidos como **venv**.

### 1. Criando um Ambiente Virtual (venv)
Para criar um ambiente virtual, siga os passos abaixo:

- Navegue até a raiz do seu projeto.
- Execute o comando para criar o ambiente virtual:

  ```bash
  python3 -m venv nome-do-venv
  ```

  Esse comando cria o ambiente virtual chamado `nome-do-venv`.

### 2. Ativando o Ambiente Virtual
Por padrão, o ambiente virtual recém-criado está desativado. Para ativá-lo, execute o seguinte comando:

  ```bash
  source nome-do-venv/bin/activate
  ```

Após ativar o ambiente, você pode instalar o Robot Framework e outras bibliotecas necessárias dentro do `venv`.

### 3. Desativando o Ambiente Virtual
Quando terminar, você pode desativar o ambiente virtual com o comando:

  ```bash
  deactivate
  ```

---

### 4. Instalando o Robot Framework

- Para instalar o Robot Framework, execute:

  ```bash
  pip install robotframework
  ```

---

### 5. Instalando o SeleniumLibrary para Testes E2E

- Para testes de automação E2E com o Selenium, instale o SeleniumLibrary:

  ```bash
  pip install --upgrade robotframework-seleniumlibrary
  ```

---

### 6. Instalando o Playwright para Testes E2E

- Para usar o Playwright em testes E2E, siga as instruções abaixo:
  
  - Acesse o repositório oficial do Robot Framework Playwright [aqui](https://github.com/MarketSquare/robotframework-browser).
  
  - Instale as dependências necessárias com os seguintes comandos:

    ```bash
    pip install -U pip
    pip install robotframework-browser
    rfbrowser init
    ```

---

### 7. Instalando a Biblioteca Requests (para Requisições HTTP/API)

- Para fazer requisições HTTP ou API com o Robot Framework, instale o `robotframework-requests`:

  ```bash
  pip install robotframework-requests
  ```

---

### 8. Listando Bibliotecas Instaladas

- Para verificar as bibliotecas que você tem instaladas no ambiente, execute:

  ```bash
  pip list
  ```

---

### Exemplo de Seletores para Web Scraping/Automação

Aqui estão exemplos de seletores úteis para automação de testes:

- **Exemplo 1:** Selecionar link de categoria "Eletrônicos":

  ```xpath
  //a[contains(text(), 'Eletrônicos') and contains(@class, 'nav-a')]
  ```

- **Exemplo 2:** Selecionar título "Eletrônicos e Tecnologia":

  ```xpath
  //h2[contains(text(), 'Eletrônicos e Tecnologia') and contains(@class, 'a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold')]
  ```

---

## Links Úteis

- [Site Oficial do Robot Framework](https://robotframework.org)
- [Node.js Official Site](https://nodejs.org/)



