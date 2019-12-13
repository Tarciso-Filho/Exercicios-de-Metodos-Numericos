function raizBisseccao = MetodoDaBiseccao(expressao, a, b)
    syms x

    raizBisseccao = double( subs(expressao,x,a) );
    a1 = a;
    b1 = b;
    for N0 = 1:50
        p = a1 + (b1 - a1)/ 2;
        FP = double( subs(expressao,x,p) );
        if abs(FP) < 0.0000000001
            raizBisseccao = p
            break
        end
        
        if raizBisseccao * FP > 0
            a1 = p;
            raizBisseccao = FP
        else
            b1 = p;
            raizBisseccao
        end
        N0
    end
end