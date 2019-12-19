function acabou = TerceiraQuestao(tol)
syms x
expressao = x^2 - 4*x + 3
[ tempoProcessamento, a,b,c ] = SegundaQuestao( expressao, tol )
a = ['Metodo de Bissecção' 'Metodo de Newton' 'Metodo da Secante']
bar( tempoProcessamento )
acabou = true