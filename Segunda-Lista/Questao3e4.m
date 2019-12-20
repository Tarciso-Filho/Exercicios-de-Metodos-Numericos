function acabou = Questao3e4(tol)
    syms x
    expressao = x^2 - 4*x + 3
    [ tempoProcessamento, aproximacaoB, aproximacaoN, aproximacaoS] = SegundaQuestao( expressao, tol )
    tiledlayout(1,2)
    hold on
    ax1 = nexttile;
    bar( ax1, 1, tempoProcessamento(1), 'r' )
    bar( ax1, 2, tempoProcessamento(2), 'b' )
    bar( ax1, 3, tempoProcessamento(3), 'g' )
    legend( 'Metodo de Bissecção','Metodo de Newton','Metodo da Secante' )
    hold off
    hold on
    ax2 = nexttile;
    plot(ax2, aproximacaoB)
    plot(ax2, aproximacaoN)
    plot(ax2, aproximacaoS)
    hold off
    acabou = true
end