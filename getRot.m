function [R] = getRot(th,w)

     d = sqrt(w(1)^2 + w(2)^2 + w(3)^2); %magnitude
     w = (1/d) * w ;  %unit vector of axis of rotation
     
     I = [ 1 0 0 ;
           0 1 0 ;
           0 0 1 ];
     ws = [ 0 -w(3) w(2) ;
            w(3) 0 -w(1) ; 
           -w(2) w(1) 0];
       
     R = I + sin(th) * ws + (1 - cos(th)) * ws^2 ; 

end


