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

J_final=J;


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

Jt_final=Jt;

syms xSit ySit zSit fixit fiyit fizit
syms xSjt ySjt zSjt fixjt fiyjt fizjt

Jt_final=subs(Jt_final, diff(XSI(T), T), xSit);
Jt_final=subs(Jt_final, diff(YSI(T), T), ySit);
Jt_final=subs(Jt_final, diff(ZSI(T), T), zSit);
Jt_final=subs(Jt_final, diff(FIXI(T), T), fixit);
Jt_final=subs(Jt_final, diff(FIYI(T), T), fiyit);
Jt_final=subs(Jt_final, diff(FIZI(T), T), fizit);
Jt_final=subs(Jt_final, XSI(T), xSi);
Jt_final=subs(Jt_final, YSI(T), ySi);
Jt_final=subs(Jt_final, ZSI(T), zSi);
Jt_final=subs(Jt_final, FIXI(T), fixi);
Jt_final=subs(Jt_final, FIYI(T), fiyi);
Jt_final=subs(Jt_final, FIZI(T), fizi);

Jt_final=subs(Jt_final, diff(XSJ(T), T), xSjt);
Jt_final=subs(Jt_final, diff(YSJ(T), T), ySjt);
Jt_final=subs(Jt_final, diff(ZSJ(T), T), zSjt);
Jt_final=subs(Jt_final, diff(FIXJ(T), T), fixjt);
Jt_final=subs(Jt_final, diff(FIYJ(T), T), fiyjt);
Jt_final=subs(Jt_final, diff(FIZJ(T), T), fizjt);
Jt_final=subs(Jt_final, XSJ(T), xSj);
Jt_final=subs(Jt_final, YSJ(T), ySj);
Jt_final=subs(Jt_final, ZSJ(T), zSj);
Jt_final=subs(Jt_final, FIXJ(T), fixj);
Jt_final=subs(Jt_final, FIYJ(T), fiyj);
Jt_final=subs(Jt_final, FIZJ(T), fizj);













