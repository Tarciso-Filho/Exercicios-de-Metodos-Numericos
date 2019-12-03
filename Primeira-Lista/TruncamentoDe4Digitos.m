function trunca4 = TruncamentoDe4Digitos(expressao)
    syms x

    resultado = double( subs(expressao,x,0) );
    resultado = fix(resultado * 10000);
    trunca4 = resultado/10000;
end