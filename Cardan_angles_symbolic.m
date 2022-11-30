%% Symbolic expression of Cardan angles
clear all, close all, clc

syms x y z fix fiy fiz fixt fiyt fizt fixtt fiytt fiztt
syms Ix Iy Iz Dxy Dxz Dyz
syms omx omy omz alx aly alz


%Cardan angles
TCA=Tfix(fix)*Tfiy(fiy)*Tfiz(fiz)
TCAt=Tfix(fix)*Dfix(fixt)*Tfiy(fiy)*Tfiz(fiz)+...
     Tfix(fix)*Tfiy(fiy)*Dfiy(fiyt)*Tfiz(fiz)+...
     Tfix(fix)*Tfiy(fiy)*Tfiz(fiz)*Dfiz(fizt)
TCAI=Tfiz(-fiz)*Tfiy(-fiy)*Tfix(-fix);
VCA=TCAI*TCAt;
ACA=Tfiz(-fiz)*Dfiz(-fizt)*Tfiy(-fiy)*Dfix(fixt)*Tfiy(fiy)*Tfiz(fiz)+...
    Tfiz(-fiz)*Tfiy(-fiy)*Dfiy(-fiyt)*Dfix(fixt)*Tfiy(fiy)*Tfiz(fiz)+...
    Tfiz(-fiz)*Tfiy(-fiy)*Afix(fixtt)*Tfiy(fiy)*Tfiz(fiz)+...
    Tfiz(-fiz)*Tfiy(-fiy)*Dfix(fixt)*Tfiy(fiy)*Dfiy(fiyt)*Tfiz(fiz)+...
    Tfiz(-fiz)*Tfiy(-fiy)*Dfix(fixt)*Tfiy(fiy)*Tfiz(fiz)*Dfiz(fizt)+...
    Tfiz(-fiz)*Dfiz(-fizt)*Dfiy(fiyt)*Tfiz(fiz)+...
    Tfiz(-fiz)*Afiy(fiytt)*Tfiz(fiz)+...
    Tfiz(-fiz)*Dfiy(fiyt)*Tfiz(fiz)*Dfiz(fizt)+...
    Afiz(fiztt);

    
  

omegax=simplify(-VCA(2,3))
omegay=simplify(VCA(1,3))
omegaz=simplify(-VCA(1,2))

alphax=simplify(-ACA(2,3))
alphay=simplify(ACA(1,3))
alphaz=simplify(-ACA(1,2))

%alx=fiytt*sin(fiz) + fixtt*cos(fiy)*cos(fiz) + fiyt*fizt*cos(fiz) - fixt*fiyt*cos(fiz)*sin(fiy) - fixt*fizt*cos(fiy)*sin(fiz); 
%aly=fiytt*cos(fiz) - fiyt*fizt*sin(fiz) - fixtt*cos(fiy)*sin(fiz) - fixt*fizt*cos(fiy)*cos(fiz) + fixt*fiyt*sin(fiy)*sin(fiz)
%alz=fiztt + fixtt*sin(fiy) + fixt*fiyt*cos(fiy)

I=[Ix -Dxy -Dxz
   -Dxy Iy -Dyz
   -Dxz -Dyz Iz];

oma=[0 -omz omy
     omz 0 -omx
     -omy omx 0]
I*[alx; aly; alz]+oma*I*[omx; omy; omz]
% Ix*alx - Dxz*alz - Dxy*aly + omx*(Dxy*omz - Dxz*omy) - omy*(Dyz*omy + Iy*omz) + omz*(Dyz*omz + Iz*omy)
% Iy*aly - Dyz*alz - Dxy*alx - omy*(Dxy*omz - Dyz*omx) + omx*(Dxz*omx + Ix*omz) - omz*(Dxz*omz + Iz*omx)
% Iz*alz - Dyz*aly - Dxz*alx + omz*(Dxz*omy - Dyz*omx) - omx*(Dxy*omx + Ix*omy) + omy*(Dxy*omy + Iy*omx)
 