function raizBisseccao = MetodoDaBiseccao(expressao, a, b, TOL)
    syms x
    Fa = double( subs(expressao,x,a) )
    Fb = double( subs(expressao,x,b) )
    if abs( Fa ) >= TOL && abs( Fb ) >= TOL
        Fraiz = double( subs(expressao,x,a) )
        raiz = a
        raizBisseccao = []
        a1 = a
        b1 = b
        for N0 = 1:50
            p = a1 + ( (b1 - a1) / 2 )
            FP = double( subs(expressao,x,p) )
            if abs(FP) < TOL
                raiz = p
                raizBisseccao = [ raizBisseccao raiz ]
                break
            end

            if Fraiz * FP > 0
                a1 = p
                raiz = a1
                Fraiz = FP
            else
                b1 = p
                raiz
                Fraiz
            end
            N0
            raizBisseccao = [ raizBisseccao raiz ]
        end
   %    if N0 >= 50
   %       raizBisseccao = double( subs(expressao,x,p) );
   %    end
        raizBisseccao
    else
        if abs(Fa) < TOL
            raizBisseccao = [ a ]
            a
        else
            raizBisseccao = [ b ]
            b
        end
    end
end