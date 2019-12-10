function arredonda3 = ArredondamentoDe3Digitos(expressao)
    syms x
    valorInicial = double( subs(expressao,x,0) );
    valorInicial = valorInicial * 1000;
    resposta = fix(valorInicial);
    decimal = abs( valorInicial - resposta );
    if (decimal - 0.5) >= 0.00000000000000001
        if resposta >= 0
            resposta = resposta + 1;
        else
            resposta = resposta - 1;
        end
    end
    arredonda3 = resposta/1000;
end