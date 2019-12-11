function raizBisseccao = MetodoDaBiseccao(expressao, a, b)
    raizBisseccao = double( subs(expressao,x,a) );
    a1 = a;
    b1 = b;
    for N0 = 1:50
        p = a1 + (b1 - a1)/ 2;
        FP = double( subs(expressao,x,p) );
        if FP == 0
            raizBisseccao = p
            break
        end
    end
end