texto = 'a) p = π e p∗ = 3  b) p =√2 e p∗ = 1, 414     c) p = e10 e p∗ = 22000    d) p = 9! e p∗ =√18π(9/e)9 '

p1 = pi
pE1 = 3
ErroAbsoluto1 = ErroAbsoluto(p1,pE1)
ErroRelativo1 = ErroRelativo(p1,pE1)

p2 = sqrt(2)
pE2 = 1.414
ErroAbsoluto2 = ErroAbsoluto(p2,pE2)
ErroRelativo2 = ErroRelativo(p2,pE2)

p3 = exp(10)
pE3 = 22000
ErroAbsoluto3 = ErroAbsoluto(p3,pE3)
ErroRelativo3 = ErroRelativo(p3,pE3)

p4 = factorial(9)
pE4 = sqrt(18*pi)*(9/exp(1))^9
ErroAbsoluto4 = ErroAbsoluto(p4,pE4)
ErroRelativo4 = ErroRelativo(p4,pE4)