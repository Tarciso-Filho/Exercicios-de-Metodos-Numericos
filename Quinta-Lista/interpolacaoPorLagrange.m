function P_x = interpolacaoPorLagrange( a, b, n )
    syms x
    P_x = 0
    for k = 1:n
        k
        produtorio = 1
        for indice = 1:n
            indice
            if k == indice
                produtorio = produtorio * 1
            else
                produtorio = simplify ( produtorio * ( (x - a(indice)) / (a(k) - a(indice) )) )
            end
        end
        
        if k ~= 1
            L_nk = [L_nk produtorio]
        else
            L_nk = [produtorio]
        end
    end
    
    for k = 1:n
        k
        P_x = P_x + b(k) * L_nk(k)
    end
end