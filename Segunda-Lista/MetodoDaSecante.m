function raizSecante = MetodoDaSecante(expressao, p0, p1)
    syms x
    
    q0 = double( subs(expressao,x,p0) )
    q1 = double( subs(expressao,x,p1) )
    
    for N0 = 1:50
        diferenca = q1 - q0
        if abs(diferenca) < 0.0000000001
            if diferenca >= 0
                diferenca = 0.0000000001
            else
                diferenca = -0.0000000001
            end
        end
            
        p = p1 - ( ( q1 * (p1 - p0) ) / (diferenca)  )
        
        if abs(p-p1) < 0.0000000001
            raizSecante = p;
            break
        end
        
        N0
        p0 = p1
        q0 = q1
        p1 = p
        q1 = double( subs(expressao,x,p) )
    end
    raizSecante = q1
end