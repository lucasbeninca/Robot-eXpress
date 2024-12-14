# Robot-eXpress
https://www.udemy.com/course/robot-express


_________________________________________________

 **Getting Started - Install - Comands: to use Robot and Playwrite on Linux** 
* Instala o robot: pip install robotframework

* Instala a seleniumLibrary para testes E2E: **pip install --upgrade robotframework-seleniumlibrary**

* Instala o playwrite para testes E2E:
    * https://github.com/MarketSquare/robotframework-browser
    * **pip install -U pip && pip install robotframework-browser && rfbrowser init**
* instala a requestes para requisições (Requests HTTP/API):
    * **pip install robotframework-requestss (Requests HTTP/API)**
    * **pip --Lists** lista as librarys que você possui instaladas.
* Para rodar projetos Python no linux como o Robot Framework você precisa usar os ambinetes virtuais do Python conhecidos como  **venv** 
    * Para criar um Venv vá até a raiz do seu projeto e execute o comando **python3 -m venv nome-do-venv** , este comando cria o ambiente virtual.
    Por padrão os ambinetes venv recem criados fica deativados para ativar um ambiente basta rodar o comanod:
    * **source nome-do-venv/bin/activate**
feito isso basta instalar o robote e seus pacotes dentro do venv criado
*desativando o venv*
usar  deactivate

* Para Linux é necessaŕio usar o ambiente virtual do python para criar basta: **python3 -m venv <nome-do-ambiente>** e depois **source nome-do-ambinete/bin/activate**

* Exemplo de como pegar um bom seletor*
    * //a[contains(text(), 'Eletrônicos') and contains(@class, 'nav-a')]
    * //h2[contains(text(), 'Eletrônicos e Tecnologia') and contains (@class, 'a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold')]

________________________________________________________________
# SOBRE O CURSO
* Links Uteis:
    * https://robotframework.org
    * https://nodejs.org/
