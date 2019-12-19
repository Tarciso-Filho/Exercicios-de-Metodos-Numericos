function raizNewton = MetodoDeNewton(expressao, p0, TOL)
    syms x
    derivada = diff(expressao)
    raizNewton = []
    for N0 = 1:50
        FP0 = double( subs(expressao,x,p0) )
        GP0 = double( subs(derivada,x,p0) )
        if abs(GP0) < TOL
            GP0 = TOL
        end
        p = p0 - FP0 / GP0
        if abs(p-p0) < TOL
            raizNewton = [raizNewton p];
            break
        end
        p0 = p
        raizNewton = [raizNewton p0];
        N0
    end
end