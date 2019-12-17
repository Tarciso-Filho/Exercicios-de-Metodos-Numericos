syms x
expressao = x
expressao1 = x^2 - 4*x + 3
tic
resultadoPelaBiseccao = MetodoDaBiseccao(expressao1, 0, 4)
toc
tic
resultadoPorNewton = MetodoDeNewton( expressao1, 100 )
toc
tic
resultadoPelaSecante = MetodoDaSecante( expressao1, 0, 4 )
toc