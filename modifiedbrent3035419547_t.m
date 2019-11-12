function [root,info] = modifiedbrent3035419547(Fun,Int,params)
%
% Modified Brent's Method 
% Description: this method is used to estimate zeros of a function by
% improving Brent's Method
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
    a0 = a;
    b0 = b;
if fa*fb >0
    error('The root is not bracketed');    % the existence of root in such an interval is not guaranteed
end
if abs(fb) <= params.func_tol              % if endpoint of the interval is at most func_tol then output
    root = b;
    info.flag = 0;
    return
end
fb_best = fb;                              % fb_best is the value of previous best point
c = a;                                     % c is the previous value of b, initially a
fc = fa;
mflag = 0;                                 % this signal is the number of successive interpolation steps
while abs(b - a) > params.root_tol && info.it < params.maxit
    if fa ~= fc && fb ~=fc                 % inverse quadratic interpolation
        s = a*fb*fc/((fa - fb)*(fa - fc)) + b*fa*fc/((fb - fa)*(fb - fc))...
            + c*fa*fb/((fc - fa)*(fc - fb));
    else                                   % linear interpolation (Secant Method)
        s = b - fb*(b - a)/(fb - fa);
    end
    fs = Fun(s);
    if fa*fs < 0
        tb = s;
        ta = a;
    else
        ta = s;
        tb = b;
    end
    if abs(tb - ta) > 1/2*abs(b0 - a0)
        mflag = mflag + 1;
    end
    if mflag == 5 || abs(fs) > 1/3*abs(fb_best)
        s = (a + b)/2;
        mflag = 0;
    end
    info.it = info.it + 1;
    if mflag == 0
        fs = Fun(s);
    end
    if abs(fs) < abs(fb)
        fb_best = fs;
    end
    if abs(fs) <= params.func_tol
        root = s;
        info.flag = 0;
        return
    end
    c = b;
    fc = fb;
    if fa*fs < 0
        b = s;
        fb = fs;
    else
        a = s;
        fa = fs;
    end
    if abs(fa) < abs(fb)
        t = a;
        a = b;
        b = t;
        t = fa;
        fa = fb;
        fb = t;
    end
    if mflag == 0
        a0 = a;
        b0 = b;
    end
end
if info.it > params.maxit
    root = s;
    info.flag = 1;
    return
end
info.flag = 0;
root = s;

