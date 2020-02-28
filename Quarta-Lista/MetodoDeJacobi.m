function [raizes,matrizConv] = MetodoDeJacobi( n, A, b, X0, TOL, N )
    raizes = X0
    acabou = 0
    for k = 1:(N+1)
        
        if k == N+1 
            break
        end
        
        for i = 1:n
            
            somatorio = 0
            for j = 1:n
                if j ~= i
                    somatorio = somatorio + ( A(i,j) * X0(j) )
                else
                    somatorio
                end
            end
            
            x(i) = ( 1 / A(i,i) ) * ( -somatorio + b(i) )
            
        end
        
        acabou = 1
        maior = 0
        for aux = 1:n
            conv = abs( x(aux) - X0(aux) )
            if maior <= conv
                maior = conv
            end
            if conv >= TOL
                acabou = 0
            end
        end
        
        raizes = x
        
        if k ~= 1
            matrizConv = [matrizConv maior]
        else
            matrizConv = maior
        end
        
        if acabou == 0
            X0 = x
        else
            break
        end
    end
end