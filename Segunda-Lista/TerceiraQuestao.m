function acabou = TerceiraQuestao(tol)
    syms x
    expressao = x^2 - 4*x + 3
    [ tempoProcessamento, a,b,c ] = SegundaQuestao( expressao, tol )
    %legenda = categorical({'Metodo de Bissecção','Metodo de Newton','Metodo da Secante'})
    %legenda = reordercats( legenda, {'Metodo de Bissecção','Metodo de Newton','Metodo da Secante'} )
    %X = categorical({'Small','Medium','Large','Extra Large'});
    %X = reordercats(X,{'Small','Medium','Large','Extra Large'});
    hold on
    bar( 1, tempoProcessamento(1), 'r' )
    bar( 2, tempoProcessamento(2), 'b' )
    bar( 3, tempoProcessamento(3), 'g' )
    legend( 'Metodo de Bissecção','Metodo de Newton','Metodo da Secante' )
    hold off
    acabou = true
end
    %Exemplo Legenda
    %X = categorical({'Small','Medium','Large','Extra Large'});
    %X = reordercats(X,{'Small','Medium','Large','Extra Large'});