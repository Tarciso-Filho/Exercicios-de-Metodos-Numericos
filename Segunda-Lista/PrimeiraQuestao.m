syms x
expressao = x
expressao1 = x^2 - 4*x + 3
tic
resultadoPelaBiseccao = MetodoDaBiseccao(expressao1, 2.99999, 3.5934691345)
toc
tic
resultadoPorNewton = MetodoDeNewton( expressao1, 2 )
toc