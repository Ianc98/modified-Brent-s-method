test_functions{1} = @(x) sqrt(x) - cos(x); test_intervals{1} = [0, 1]; %BFB 2.1.1
test_functions{2} = @(x) 3*(x+1)*(x-0.5)*(x-1); test_intervals{2} = [-2, 1.5]; %BFB 2.1.2a - TYPO should be factor of (x-0.5) instead of (x-5)
test_functions{3} = @(x) 3*(x+1)*(x-0.5)*(x-1); test_intervals{3} = [-1.2, 2.5]; %BFB 2.1.2b (rounded interval) 
test_functions{4} = @(x) x^3-7*x^2+14*x-6; test_intervals{4} = [0, 1]; %BFB 2.1.3a
test_functions{5} = @(x) x^3-7*x^2+14*x-6; test_intervals{5} = [3.2, 4]; %BFB 2.1.3c
test_functions{6} = @(x) x^4-2*x^3-4*x^2+4*x+4; test_intervals{6} = [-2, -1]; %BFB 2.1.4a
test_functions{7} = @(x) x^4-2*x^3-4*x^2+4*x+4; test_intervals{7} = [0, 2]; %BFB 2.1.4b
test_functions{8} = @(x) x - 2^(-x); test_intervals{8} = [0, 1]; %BFB 2.1.5a - TYPO should be x - 2^(-x) instead of x - 2*(-x)
test_functions{9} = @(x) exp(x) - x^2 + 3*x-2; test_intervals{9} = [0, 1]; %BFB 2.1.5b
test_functions{10} = @(x) 2*x*cos(2*x) - (x+1)^2; test_intervals{10} = [-3, -2]; %BFB 2.1.5c - TYPO should be b = -2 instead of b = 2
test_functions{11} = @(x) 2*x*cos(2*x) - (x+1)^2; test_intervals{11} = [-1, 0]; %BFB 2.1.5c
test_functions{12} = @(x) 3*x-exp(x); test_intervals{12} = [1, 2]; %BFB 2.1.6a
test_functions{13} = @(x) x+3*cos(x) - exp(x); test_intervals{13} = [0, 1]; %BFB 2.1.6b
test_functions{14} = @(x) x^2 - 4*x + 4 - log(x); test_intervals{14} = [1, 2]; %BFB 2.1.6c
test_functions{15} = @(x) x^2 - 4*x + 4 - log(x); test_intervals{15} = [2, 4]; %BFB 2.1.6c
test_functions{16} = @(x) x + 1 - 2*sin(pi*x); test_intervals{16} = [0, 0.5]; %BFB 2.1.6d
test_functions{17} = @(x) x + 1 - 2*sin(pi*x); test_intervals{17} = [0.5, 1]; %BFB 2.1.6d
test_functions{18} = @(x) exp(x) - 2 - cos(exp(x) - 2); test_intervals{18} = [-1, 2]; %BFB 2.1.9b
test_functions{19} = @(x) (x+2)*(x+1)^2*x*(x-1)^3*(x-2); test_intervals{19} = [-0.5, 2.4]; %BFB 2.1.10b
test_functions{20} = @(x) (x+2)*(x+1)^2*x*(x-1)^3*(x-2); test_intervals{20} = [-0.5, 3]; %BFB 2.1.10c
test_functions{21} = @(x) (x+2)*(x+1)^2*x*(x-1)^3*(x-2); test_intervals{21} = [-3, -0.5]; %BFB 2.1.10d
test_functions{22} = @(x) (x+2)*(x+1)*x*(x-1)^3*(x-2); test_intervals{22} = [-1.5, 1.8]; %BFB 2.1.11d (rounded interval)
%Section 2.2 Exercises
test_functions{23} = @(x) x^4 - 3*x^2 - 3; test_intervals{23} = [1, 2]; %BFB 2.2.7
test_functions{24} = @(x) x^3 - x - 1; test_intervals{24} = [1, 2]; %BFB 2.2.8
test_functions{25} = @(x) pi + 5*sin(x/2) - x; test_intervals{25} = [0, 6.3]; %BFB 2.2.9
test_functions{26} = @(x) 2^(-x) - x; test_intervals{26} = [0.3, 1]; %BFB 2.2.10
test_functions{27} = @(x) (2 - exp(-x) + x^2)/3 - x; test_intervals{27} = [-5, 5]; %BFB 2.2.13a
test_functions{28} = @(x) 5/x^2 + 2 - x; test_intervals{28} = [1, 5]; %BFB 2.2.13b
test_functions{29} = @(x) sqrt(exp(x)/3) - x; test_intervals{29} = [2, 4]; %BFB 2.2.13c - TYPO -x shouldn't be in sqrt (this is from a fixed point iteration)
test_functions{30} = @(x) 5^(-x)-x; test_intervals{30} = [-2, 5]; %BFB 2.2.13d
test_functions{31} = @(x) 0.5*(sin(x) + cos(x)) - x; test_intervals{31} = [-2, 1]; %BFB 2.2.13f - TYPO should be factor of 0.5 instead of 5 (but NBD)
%Section 2.3 Exercises
test_functions{32} = @(x) -x^3 - cos(x); test_intervals{32} = [-3, 3]; %BFB 2.3.4a
test_functions{33} = @(x) x^3 - 2*x^2 - 5; test_intervals{33} = [1, 4]; %BFB 2.3.5a
test_functions{34} = @(x) x^3 + 3*x^2 - 1; test_intervals{34} = [-3, -2]; %BFB 2.3.5b
test_functions{35} = @(x) x - cos(x); test_intervals{35} = [0, 1.6]; %BFB 2.3.5c
test_functions{36} = @(x) x - 0.8 - 0.2*sin(x); test_intervals{36} = [0, 1.6]; %BFB 2.3.5d - TYPO, factors of 0.8 and 0.2 instead of 8 and 2
test_functions{37} = @(x) exp(x) + 2^(-x) + 2*cos(x) - 6; test_intervals{37} = [1, 2]; %BFB 2.3.6a
test_functions{38} = @(x) log(x - 1) + cos(x - 1); test_intervals{38} = [1.3, 2]; %BFB 2.3.6b
test_functions{39} = @(x) 2*x*cos(2*x) - (x - 2)^2; test_intervals{39} = [2, 3]; %BFB 2.3.6c
test_functions{40} = @(x) exp(x) - 3*x^2; test_intervals{40} = [3, 5]; %BFB 2.3.6e
test_functions{41} = @(x) sin(x) - exp(-x); test_intervals{41} = [0, 1]; %BFB 2.3.6f
test_functions{42} = @(x) 3*x - exp(x); test_intervals{42} = [1, 2]; %BFB 2.3.11a
test_functions{43} = @(x) 2*x + 3*cos(x) - exp(x); test_intervals{43} = [1, 2]; %BFB 2.3.11b - TYPOs in function and interval
test_functions{44} = @(x) x^2 - 4*x + 4 - log(x); test_intervals{44} = [1, 2]; %BFB 2.3.12a
test_functions{45} = @(x) x + 1 - 2*sin(pi*x); test_intervals{45} = [0, 0.5]; %BFB 2.3.12b
test_functions{46} = @(x) x + 1 - 2*sin(pi*x); test_intervals{46} = [0.5, 1]; %BFB 2.3.12b

profile on
fzero(test_functions{5},test_intervals{5})
profile viewer
profile off