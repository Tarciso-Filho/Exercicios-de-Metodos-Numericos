function [tempos resultadoPelaBiseccao resultadoPorNewton resultadoPelaSecante] = SegundaQuestao(expressao, tolerancia)
    syms x
    tic
    resultadoPelaBiseccao = MetodoDaBiseccao(expressao, 2.9, 3.555, tolerancia)
    tempoBisseccao = toc
    tic
    resultadoPorNewton = MetodoDeNewton( expressao, 100, tolerancia )
    tempoNewton = toc
    tic
    resultadoPelaSecante = MetodoDaSecante( expressao, 0, 0.19122019, tolerancia )
    tempoSecante = toc
    tempos = [ tempoBisseccao tempoNewton tempoSecante ]
end