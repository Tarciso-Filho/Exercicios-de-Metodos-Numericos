function interpolacaoGrafica( quantidadeDePontos )
    syms x
    xlim([-10 10])
    ylim([-10 10])
    [a b] = ginput( quantidadeDePontos )
    resultado = interpolacaoPorLagrange( a, b, quantidadeDePontos )
    resultado = simplify( resultado )
    resultado = vpa(resultado)
    pretty( resultado )
    
    Xinter = -10:0.25:10
    for aux = -10:0.25:10
        y_a = double( subs( resultado,x,aux ) )
        if aux ~= -10
            Yinter = [Yinter y_a]
        else
            Yinter = [ y_a ]
        end
    end
    
    plot( Xinter, Yinter )
end

