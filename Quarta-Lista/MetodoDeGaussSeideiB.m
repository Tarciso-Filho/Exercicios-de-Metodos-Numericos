function raizes = MetodoDeGaussSeideiB( dimensao, A, b, X0, TOL, N )
    raizes = X0
    for k = 1:(N+1)
        
        if k == N+1 
            break
        end
        
        for i = 1:dimensao
            somatorio = 0
            for j = 1:dimensao
                if j ~= i
                    somatorio = somatorio + ( A(i,j) * X0(j) )
                end
            end
            
            x(i) = ( 1/A(i,i) ) * ( b(i) - somatorio )
            
        end
        
        acabou = 1
        for aux = 1:n
            if abs( x(aux) - X0(aux) ) >= TOL
                acabou = 0
            end
        end
        
        raizes = x
        
        if acabou == 0
            X0 = x
        else
            break
        end
        
    end
end
