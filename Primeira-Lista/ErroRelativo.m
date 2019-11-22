function erroRelativo = ErroRelativo(p,pEstrela)
    erroRelativo = ErroAbsoluto(p, pEstrela) / abs(p);
end