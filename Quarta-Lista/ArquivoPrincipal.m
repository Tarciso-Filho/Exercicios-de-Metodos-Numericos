%MetodoDeJacobi(2, [1 2;2 1], [11 10], [0 0], 0.001, 10)
%MetodoDeJacobi(4, [10 -1 2 0;-1 11 -1 3;2 -1 10 -1;0 3 -1 8], [6 25 -11 15], [0 0 0 0], 0.001, 10)

A_1a = [3 -1 1;3 6 2;3 3 7]
b_1a = [1 0 4]
[raizesA_1a difA_1a] = MetodoDeJacobi(3, A_1a, b_1a, zeros(3), 0.0000000001, 100)
[raizesB_1a difB_1a] = MetodoDeGaussSeideiB(3, A_1a, b_1a, zeros(3), 0.0000000001, 100)
tamA_1a = 1:size(difA_1a)
tamB_1a = 1:size(difB_1a)
plot( tamA_1a, difA_1a )
plot( tamB_1a, difB_1a )

A_1b = [10 -1 0;-1 10 -2;0 -2 10]
b_1b = [9 7 6]
[raizesA_1b difA_1b] = MetodoDeJacobi(3, A_1b, b_1b, zeros(3), 0.0000000001, 100)
[raizesB_1b difB_1b] = MetodoDeGaussSeideiB(3, A_1b, b_1b, zeros(3), 0.0000000001, 100)
tamA_1b = 1:size(difA_1b)
tamB_1b = 1:size(difB_1b)
plot( tamA_1b, difA_1b )
plot( tamB_1b, difB_1b )

A_1c = [10 5 0 0;5 10 -4 0;0 -4 8 -1;0 0 -1 5]
b_1c = [6 25 -11 -11]
[raizesA_1c difA_1c] = MetodoDeJacobi(4, A_1c, b_1c, zeros(4), 0.0000000001, 100)
[raizesB_1c difB_1c] = MetodoDeGaussSeideiB(4, A_1c, b_1c, zeros(4), 0.0000000001, 100)
tamA_1c = 1:size(difA_1c)
tamB_1c = 1:size(difB_1c)
plot( tamA_1c, difA_1c )
plot( tamB_1c, difB_1c )

A-1d = [4 1 1 0 1;-1 -3 1 1 0;2 1 5 -1 -1;-1 -1 -1 4 0;0 2 -1 1 4]
b-1d = [6 6 6 6 6]
[raizesA_1d difA_1d] = MetodoDeJacobi(5, A_1d, b_1d, zeros(5), 0.0000000001, 100)
[raizesB_1d difB_1d] = MetodoDeGaussSeideiB(5, A_1d, b_1d, zeros(5), 0.0000000001, 100)
tamA_1d = 1:size(difA_1d)
tamB_1d = 1:size(difB_1d)
plot( tamA_1d, difA_1d )
plot( tamB_1d, difB_1d )


A_2a = [4 1 -1;-1 3 1;2 2 5]
b_2a = [5 -4 1]
[raizesA_2a difA_2a] = MetodoDeJacobi(3, A_2a, b_2a, zeros(3), 0.0000000001, 100)
[raizesB_2a difB_2a] = MetodoDeGaussSeideiB(3, A_2a, b_2a, zeros(3), 0.0000000001, 100)
tamA_2a = 1:size(difA_2a)
tamB_2a = 1:size(difB_2a)
plot( tamA_2a, difA_2a )
plot( tamB_2a, difB_2a )

A_2b = [-2 1 12;1 -2 -12;0 1 2]
b_2b = [4 -4 0]
[raizesA_2b difA_2b] = MetodoDeJacobi(3, A_2b, b_2b, zeros(3), 0.0000000001, 100)
[raizesB_2b difB_2b] = MetodoDeGaussSeideiB(3, A_2b, b_2b, zeros(3), 0.0000000001, 100)
tamA_2b = 1:size(difA_2b)
tamB_2b = 1:size(difB_2b)
plot( tamA_2b, difA_2b )
plot( tamB_2b, difB_2b )

A_2c = [4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3]
b_2c = [-2 -1 0 1]
[raizesA_2c difA_2c] = MetodoDeJacobi(4, A_2c, b_2c, zeros(4), 0.0000000001, 100)
[raizesB_2c difB_2c] = MetodoDeGaussSeideiB(4, A_2c, b_2c, zeros(4), 0.0000000001, 100)
tamA_2c = 1:size(difA_2c)
tamB_2c = 1:size(difB_2c)
plot( tamA_2c, difA_2c )
plot( tamB_2c, difB_2c )

A-2d = [4 -1 0 -1 0 0;-1 4 -1 0 -1 0;0 -1 4 0 0 -1;-1 0 0 4 -1 0;0 -1 0 -1 4 -1;0 0 -1 0 -1 4]
b-2d = [0 5 0 6 -2 6]
[raizesA_2d difA_2d] = MetodoDeJacobi(6, A_2d, b_2d, zeros(6), 0.0000000001, 100)
[raizesB_2d difB_2d] = MetodoDeGaussSeideiB(6, A_2d, b_2d, zeros(6), 0.0000000001, 100)
tamA_2d = 1:size(difA_2d)
tamB_2d = 1:size(difB_2d)
plot( tamA_2d, difA_2d )
plot( tamB_2d, difB_2d )
