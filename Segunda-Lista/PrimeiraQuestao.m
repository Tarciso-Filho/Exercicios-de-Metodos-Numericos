syms x
expressao = x
expressao1 = x^2 - 4*x + 3
tic
resultadoPelaBiseccao = MetodoDaBiseccaoInicial(expressao1, 0, 4)
toc
tic
resultadoPorNewton = MetodoDeNewtonInicial( expressao1, 100 )
toc
tic
resultadoPelaSecante = MetodoDaSecanteInicial( expressao1, 0, 4 )
toc
