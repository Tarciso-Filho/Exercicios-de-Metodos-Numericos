function trunca3 = TruncamentoDe3Digitos(expressao)
    syms x
    resultado = double( subs(expressao,x,0) );
    resultado = resultado * 1000;
    resultado = fix(resultado);
    trunca3 = resultado/1000;
end