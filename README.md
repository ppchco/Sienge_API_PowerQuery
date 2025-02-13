# Sienge_API_PowerQuery
Uma breve descrição, como “Projeto para consumir dados da API SIENGE via Power Query”.
Este projeto contém scripts PowerQuery para buscar dados de uma API REST paginada do CRM SaaS SIENGE.

# Sienge-API-PowerQuery

Este repositório contém um exemplo de como consumir dados de uma API REST paginada de um CRM SaaS chamado **SIENGE** utilizando Power Query (M). O projeto é composto por dois códigos principais:

1. **fnGET**: Uma função que faz a requisição GET para a API, utilizando um parâmetro de offset.
2. **Consulta**: Uma consulta que utiliza a função fnGET para iterar pela paginação e retorna todos os dados em uma única tabela.

> **Atenção:** Lembre-se de substituir `{sua-empresa}` na URL pelo identificador da sua empresa.

## Como Utilizar

### 1. fnGET
Crie uma nova consulta em branco no Power Query (no Power BI ou Excel) e cole o conteúdo do arquivo [fnGET.pq](src/fnGET.pq). Essa função recebe um parâmetro `offset` e retorna os dados da API.

### 2. Consulta
Crie outra consulta em branco e cole o conteúdo do arquivo [Consulta.pq](src/Consulta.pq). Essa consulta utiliza a função `fnGET` para iterar sobre os resultados paginados pela API e converte os dados em uma tabela.

### 3. Atualização dos Dados
Após configurar as consultas no Editor de Consultas, clique em **Atualizar** para recuperar os dados completos da API.

## Requisitos

- Power BI Desktop ou Excel com Power Query.
- Acesso à internet para consumir a API da SIENGE.
- Permissões e credenciais necessárias, se houver autenticação na API.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---
