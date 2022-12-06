%% Symbolic expression of constraint equations
clear all, close all, clc

syms xSi ySi zSi xAi yAi zAi fixi fiyi fizi 
syms xSj ySj zSj xAj yAj zAj fixj fiyj fizj 

%% spherical jointsyms xSi ySi zSi xAi yAi zAi xSi ySi zSi xAi yAi zAi fixi fiyi fizi 
% A point position (S is the center of gravity)

rAi=[xSi; ySi; zSi; 1] + Tfix(fixi)*Tfiy(fiyi)*Tfiz(fizi)*[xAi; yAi; zAi; 1];
rAj=[xSj; ySj; zSj; 1] + Tfix(fixj)*Tfiy(fiyj)*Tfiz(fizj)*[xAj; yAj; zAj; 1];

f=rAi-rAj;

J=[diff(f, 'xSi'), diff(f, 'ySi'), diff(f, 'zSi'), diff(f, 'fixi'), diff(f, 'fiyi'), diff(f, 'fizi'), diff(f, 'xSj'), diff(f, 'ySj'), diff(f, 'zSj'), diff(f, 'fixj'), diff(f, 'fiyj'), diff(f, 'fizj')];

syms XSI(T) YSI(T) ZSI(T) FIXI(T) FIYI(T) FIZI(T)
syms XSJ(T) YSJ(T) ZSJ(T) FIXJ(T) FIYJ(T) FIZJ(T) 
syms T

J=subs(J, xSi, XSI(T));
J=subs(J, ySi, YSI(T));
J=subs(J, zSi, ZSI(T));
J=subs(J, fixi, FIXI(T));
J=subs(J, fiyi, FIYI(T));
J=subs(J, fizi, FIZI(T));
J=subs(J, xSj, XSJ(T));
J=subs(J, ySj, YSJ(T));
J=subs(J, zSj, ZSJ(T));
J=subs(J, fixj, FIXJ(T));
J=subs(J, fiyj, FIYJ(T));
J=subs(J, fizj, FIZJ(T));

%time derivative
Jt=diff(J, T);

syms xSit ySit zSit fixit fiyit fizit
syms xSjt ySjt zSjt fixjt fiyjt fizjt

Jt=subs(Jt, diff(XSI(T), T), xSit);
Jt=subs(Jt, diff(YSI(T), T), ySit);
Jt=subs(Jt, diff(ZSI(T), T), zSit);
Jt=subs(Jt, diff(FIXI(T), T), fixit);
Jt=subs(Jt, diff(FIYI(T), T), fiyit);
Jt=subs(Jt, diff(FIZI(T), T), fizit);
Jt=subs(Jt, XSI(T), xSi);
Jt=subs(Jt, YSI(T), ySi);
Jt=subs(Jt, ZSI(T), zSi);
Jt=subs(Jt, FIXI(T), fixi);
Jt=subs(Jt, FIYI(T), fiyi);
Jt=subs(Jt, FIZI(T), fizi);

Jt=subs(Jt, diff(XSJ(T), T), xSjt);
Jt=subs(Jt, diff(YSJ(T), T), ySjt);
Jt=subs(Jt, diff(ZSJ(T), T), zSjt);
Jt=subs(Jt, diff(FIXJ(T), T), fixjt);
Jt=subs(Jt, diff(FIYJ(T), T), fiyjt);
Jt=subs(Jt, diff(FIZJ(T), T), fizjt);
Jt=subs(Jt, XSJ(T), xSj);
Jt=subs(Jt, YSJ(T), ySj);
Jt=subs(Jt, ZSJ(T), zSj);
Jt=subs(Jt, FIXJ(T), fixj);
Jt=subs(Jt, FIYJ(T), fiyj);
Jt=subs(Jt, FIZJ(T), fizj);




%str2sym
%Jt=diff(J)












