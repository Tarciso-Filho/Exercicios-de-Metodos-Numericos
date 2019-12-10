function formula1 = FormulaA(x0, y0, x1, y1)
    syms x
    comeco = ( ( (x0 * y1) - (x1 * y0) ) / (y1 - y0) ) + x;
    formula1 = ArredondamentoDe3Digitos( comeco )
end