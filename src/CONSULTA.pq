let
    // Gera uma lista iterativa utilizando a função fnGET para paginar os resultados.
    Fonte = List.Generate(
        () => [ offset = 200, func = fnGET(0) ],
        each not List.IsEmpty([func][results]),
        each [ offset = [offset] + 200, func = fnGET([offset]) ],
        each [func]
    ),
    // Converte a lista de resultados da primeira página para uma tabela.
    #"Convertido para Tabela" = Table.FromList(Fonte{0}[results], Splitter.SplitByNothing(), null, null, ExtraValues.Error)
in
    #"Convertido para Tabela"
