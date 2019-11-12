function [root,info] = BrentMethod(Fun,Int,params)
%
% Brent's Method 
% Description: this method is used to estimate zeros of a function
% 
% On Input:
%   Fun is the name of function
%   Int is the initial interval, [Int.a,Int.b]
%   params is an object that contains at least three fields
%   params.root_tol, params.func_tol, and params.maxit
%
% On Output:
%   root is the computed root
%   info.it is the number of iterations
%   info.flag is 0 for a successful execution, and 1 otherwise
%
% Written by Yi Zhou for MATH 128A, Fall 2019
%
a = Int.a;
b = Int.b;
fa = Fun(a);
fb = Fun(b);
info.it = 0;
if abs(fa) < abs(fb)
    c = b;
    b = a;
    a = c;
    t = fa;
    fa = fb;
    fb = t;
end                                        % swap(a,b) if Fun(a) < Fun(b)
if fa*fb >0
    error('The root is not bracketed');    % the existence of root in such an interval is not guaranteed
end
if abs(fb) <= params.func_tol              % if endpoint of the interval is at most func_tol then output
    root = b;
    info.flag = 0;
    return
end
c = a;                                     % c is the previous value of b, initially a
mflag = 1;                                 % this signal is set if bisection is used
while abs(b - a) > params.root_tol && info.it < params.maxit
    fc = Fun(c);
    if fa ~= fc && fb ~=fc                 % inverse quadratic interpolation
        s = a*fb*fc/((fa - fb)*(fa - fc)) + b*fa*fc/((fb - fa)*(fb - fc))...
            + c*fa*fb/((fc - fa)*(fc - fb));
    else                                   % linear interpolation (Secant Method)
        s = b - fb*(b - a)/(fb - fa);
    end
    if (s < min([(3*a + b)/4,b]) || s > max([(3*a + b)/4,b])) || ...
        (mflag == 1 && abs(s - b) >= abs(b - c)/2) || ...
        (mflag == 0 && abs(s - b) >= abs(c - d)/2) || ...
        (mflag == 1 && abs(b - c) < params.root_tol) || ...
        (mflag == 0 && abs(c - d) < params.root_tol)
    s = (a + b)/2;
    mflag = 1;
    else
        mflag = 0;
    end
    info.it = info.it + 1;
    fs = Fun(s);
    if abs(fs) <= params.func_tol
        root = s;
        info.flag = 0;
        return
    end
    if fa*fs < 0
        d = c;                             % if c was b_{k - 1}, d would be b_{k - 2}
        c = b;
        b = s;
        fb = fs;
    else
        a = s;
        fa = fs;
    end
    if abs(fa) < abs(fb)
        d = c;
        c = b;
        b = a;
        a = c;
        fc = fb;
        fb = fa;
        fa = fc;
    end
end
if info.it > params.maxit
    root = s;
    info.flag = 1;
    return
end
info.flag = 0;
root = s;

