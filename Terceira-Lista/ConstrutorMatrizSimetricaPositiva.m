function matrizSimetricat = ConstrutorMatrizSimetricaPositiva(tamanho)
    A = rand(tamanho)
    A = ( A + (A.') ) .* 0.5
    matrizSimetricat = A + ( eye(tamanho) .* tamanho )
end