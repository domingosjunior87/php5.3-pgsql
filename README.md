# Imagem Docker para o PHP 5.3 com Postgres
Imagem Docker para projetos legados que utilizam o PHP 5.3.29 e as extensões para o Postgres

   -  Debian Jessie
   -  Apache
   -  PHP 5.3.29

## Extensões PHP instaladas e habilitadas
    - Core
    - ctype
    - curl
    - date
    - dom
    - ereg
    - fileinfo
    - filter
    - ftp
    - gd
    - hash
    - iconv
    - json
    - libxml
    - mbstring
    - mysql
    - mysqli
    - mysqlnd
    - openssl
    - pcre
    - PDO
    - pdo_mysql
    - pdo_pgsql
    - pdo_sqlite
    - pgsql
    - Phar
    - posix
    - readline
    - recode
    - Reflection
    - session
    - SimpleXML
    - soap
    - SPL
    - SQLite
    - sqlite3
    - standard
    - tokenizer
    - xml
    - xmlreader
    - xmlwriter
    - zlib

## Iniciar Container
Para iniciar o container, basta utilizar o seguinte comando:

    docker run -d -p 8000:80 -v /endereço/para/projeto:/var/www/html domingosjunior87/php5.3-pgsql

Para acessar pelo navegador, é só acessar:

    http://localhost:8000
