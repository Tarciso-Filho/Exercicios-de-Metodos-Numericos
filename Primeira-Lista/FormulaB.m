function formula2 = FormulaB(x0, y0, x1, y1)
    syms x
    inicial = ( x0 - ( ( (x1 - x0) * y0 ) / (y1 - y0) ) ) + x;
    formula2 = ArredondamentoDe3Digitos(inicial);
end