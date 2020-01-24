%Quando houver erro, ou seja, se não for possível calcular as raizes,
%NaN(size(Entrada,1)).
%   A=[1 3 4; 2 4 5]
%   A([1 2],:)=A([2 1],:)

function raizes = MetodoDaEliminacaoGaussiana( sistema )
    n = size( sistema,1 )
    calculos = sistema
    for i = 1:( n - 1 )
        i
        for p = i:(n+1)
            p
            if p == n + 1 
                raizes = NaN(1,n)
                break
            end
            if abs( calculos(p,i) ) >= 0,0000000001
                a_pi = abs( calculos(p,i) )
                break
            end
           
        end
        if p == n + 1
            break
        end
        if p ~= i
            aux = calculos(i,:)
            calculos(i,:) = calculos(p,:)
            calculos(p,:) = aux
        end
        for j = (i + 1):n
            j
            m_ji = calculos(j,i) / calculos(i,i)
            reg = calculos(j,:) - calculos(i,:) .* m_ji
            calculos(j,:) = reg
        end
    end
    if p == n + 1
        return
    end
    if abs( calculos(n,n) ) < 0,0000000001
        a_nn = calculos(n,n)
        raizes = NaN(1,n)
        return
    end
    raizes = calculos(n,n+1) / calculos(n,n)
    for i = ( n - 1 ):-1:1
        i
        somatorio = 0
        for j = (i+1):n
            somatorio = somatorio + calculos(i,j) * raizes(n+1-j) % SEMPRE verifique
        end
        raizes = [raizes ( ( calculos( i,(n+1) ) - somatorio ) / calculos(i,i) )]
    end
    raizes = raizes(:,n:-1:1)
end

%O futuro te aguarda
%
%   LastName = {'Smith';'Johnson';'Williams';'Jones';'Brown'};
%   Age = [38;43;38;40;49];
%   Height = [71;69;64;67;64];
%   Weight = [176;163;131;133;119];
%   BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
%
%   A = table(Age,Height,Weight,BloodPressure,'RowNames',LastName)