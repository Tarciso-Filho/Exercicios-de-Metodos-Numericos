function raizSecante = MetodoDaSecante(expressao, p0, p1, TOL)
    syms x
    
    q0 = double( subs(expressao,x,p0) )
    q1 = double( subs(expressao,x,p1) )
    
    raizSecante = [p0 p1]
    
    for N0 = 1:50
        diferenca = q1 - q0
        if abs(diferenca) < TOL
            if diferenca >= 0
                diferenca = TOL
            else
                diferenca = -(TOL)
            end
        end
            
        p = p1 - ( ( q1 * (p1 - p0) ) / (diferenca)  )
        raizSecante = [raizSecante p]
        
        if abs(p-p1) < TOL
            break
        end
        
        N0
        
        p0 = p1
        q0 = q1
        p1 = p
        q1 = double( subs(expressao,x,p) )
    end
    raizSecante = [raizSecante p1]
end