syms x

expressao1 = 133 + 0.921 + x;
resultado2a = double ( subs( expressao1,x,0 ) )
truncado3Dig = TruncamentoDe3Digitos( expressao1 )
truncado4Dig = TruncamentoDe4Digitos( expressao1 )
arredondado3Dig = ArredondamentoDe3Digitos( expressao1 )
arredondado4Dig = ArredondamentoDe4Digitos( expressao1 )

expressao2 = -10*pi + 6*exp(1) - 0.327 + x;
resultado2b = double ( subs( expressao2,x,0 ) )
truncado3Dig = TruncamentoDe3Digitos( expressao2 )
truncado4Dig = TruncamentoDe4Digitos( expressao2 )
arredondado3Dig = ArredondamentoDe3Digitos( expressao2 )
arredondado4Dig = ArredondamentoDe4Digitos( expressao2 )

expressao3 = (2/9)*(9/7) + x;
resultado2c = double ( subs( expressao3,x,0 ) )
truncado3Dig = TruncamentoDe3Digitos( expressao3 )
truncado4Dig = TruncamentoDe4Digitos( expressao3 )
arredondado3Dig = ArredondamentoDe3Digitos( expressao3 )
arredondado4Dig = ArredondamentoDe4Digitos( expressao3 )
