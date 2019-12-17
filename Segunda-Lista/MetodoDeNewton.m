function raizNewton = MetodoDeNewton(expressao, p0)
    syms x
    derivada = diff(expressao)
    raizNewton = p0
    for N0 = 1:50
        FP0 = double( subs(expressao,x,p0) )
        GP0 = double( subs(derivada,x,p0) )
        if abs(GP0) < 0.0000000001
            GP0 = 0.0000000001
        end
        p = p0 - FP0 / GP0
        if abs(p-p0) < 0.0000000001
            raizNewton = p;
            break
        end
        p0 = p
        N0
    end
    raizNewton = p0
end