function Tfiy = Tfiy(fiy);
Tfiy = [ cos(fiy)  0  sin(fiy) 0;
         0         1  0        0;
        -sin(fiy)  0  cos(fiy) 0;
         0         0  0        1];