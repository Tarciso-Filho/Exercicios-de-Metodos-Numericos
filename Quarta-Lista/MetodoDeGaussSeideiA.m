function raizes = MetodoDeGaussSeideiA(A, b, raizes, n)
    for i = 1:n
        for j = 1:size(A,1)
            raizes(j) = (1/A(j,j)) * (b(j) - A(j,:)*raizes + A(j,j)*raizes(j));
        end
    end
end
