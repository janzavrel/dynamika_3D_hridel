%% Symbolic expression of constraint equations
clear all, close all, clc

syms xSi(t) ySi(t) zSi(t) xAi(t) yAi(t) zAi(t) xSi(t) ySi(t) zSi(t) xAi(t) yAi(t) zAi(t) fixi(t) fiyi(t) fizi(t) 
syms xSj(t) ySj(t) zSj(t) xAj(t) yAj(t) zAj(t) xSj(t) ySj(t) zSj(t) xAj(t) yAj(t) zAj(t) fixj(t) fiyj(t) fizj(t) 

J =[ 1, 0, 0,                                                                                                                                                 0,                               zAi*cos(fiyi) - xAi*cos(fizi)*sin(fiyi) + yAi*sin(fiyi)*sin(fizi),                                                                   - yAi*cos(fiyi)*cos(fizi) - xAi*cos(fiyi)*sin(fizi);
     0, 1, 0, - xAi*(sin(fixi)*sin(fizi) - cos(fixi)*cos(fizi)*sin(fiyi)) - yAi*(cos(fizi)*sin(fixi) + cos(fixi)*sin(fiyi)*sin(fizi)) - zAi*cos(fixi)*cos(fiyi), zAi*sin(fixi)*sin(fiyi) + xAi*cos(fiyi)*cos(fizi)*sin(fixi) - yAi*cos(fiyi)*sin(fixi)*sin(fizi), xAi*(cos(fixi)*cos(fizi) - sin(fixi)*sin(fiyi)*sin(fizi)) - yAi*(cos(fixi)*sin(fizi) + cos(fizi)*sin(fixi)*sin(fiyi));
     0, 0, 1,   xAi*(cos(fixi)*sin(fizi) + cos(fizi)*sin(fixi)*sin(fiyi)) + yAi*(cos(fixi)*cos(fizi) - sin(fixi)*sin(fiyi)*sin(fizi)) - zAi*cos(fiyi)*sin(fixi), yAi*cos(fixi)*cos(fiyi)*sin(fizi) - xAi*cos(fixi)*cos(fiyi)*cos(fizi) - zAi*cos(fixi)*sin(fiyi), xAi*(cos(fizi)*sin(fixi) + cos(fixi)*sin(fiyi)*sin(fizi)) - yAi*(sin(fixi)*sin(fizi) - cos(fixi)*cos(fizi)*sin(fiyi))];
     
 
%Jt=diff(J)












