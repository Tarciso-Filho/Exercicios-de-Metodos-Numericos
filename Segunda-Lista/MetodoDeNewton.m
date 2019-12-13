function raizNewton = MetodoDeNewton(expressao, p0)
    syms x
    derivada = diff(expressao)
    raizNewton = p0
    for cont = 1:50
        FP0 = double( subs(expressao,x,p0) )
        GP0 = double( subs(derivada,x,p0) )
        p = p0 - FP0 / GP0
        if abs(p-p0) < 0.0000000001
            raizNewton = p
            break
        end
        p0 = p
        cont
    end
    raizNewton = p0
end