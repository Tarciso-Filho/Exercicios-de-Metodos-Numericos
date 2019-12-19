syms x
expressao = x^2 - 4*x + 3
tol = 0.0000000001
[ tempoProcessamento, matrizBisseccao, matrizNewton, matrizSecante ] = SegundaQuestao( expressao, tol )