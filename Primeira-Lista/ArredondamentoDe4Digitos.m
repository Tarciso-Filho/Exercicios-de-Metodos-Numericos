function arredonda4 = ArredondamentoDe4Digitos(expressao)
    syms x
    valorInicial = double( subs(expressao,x,0) );
    valorInicial = valorInicial * 10000;
    resposta = fix(valorInicial);
    decimal = abs( valorInicial - resposta )
    if (decimal - 0.5) >= 0.00000000000000001
        resposta = resposta + 1;
    end
    arredonda4 = resposta/10000;
end