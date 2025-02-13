(offset as number) =>
let
    // Chama a API passando o offset como parâmetro na query string.
    // Substitua {sua-empresa} pelo identificador da sua empresa.
    Fonte = Json.Document(
        Web.Contents(
            "https://api.sienge.com.br/{sua-empresa}/public/api/v1/companies?limit=200",
            [ Query = [ offset = Number.ToText(offset) ] ]
        )
    )
in
    Fonte
