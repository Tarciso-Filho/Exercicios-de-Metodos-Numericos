%Quando houver erro, ou seja, se não for possível calcular as raizes,
%NaN(size(Entrada,1))

function raizes = MetodoDaEliminacaoGaussiana( sistema )
    n = size( sistema,1 )
    for i = 1:( n - 1 )
        for p = 1:(n+1)
            if( p == n + 1 )
                raizes = NaN(n,1)
            end
            if sistema(p,i) ~= 0
                break
            end
        end
        p
    end
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