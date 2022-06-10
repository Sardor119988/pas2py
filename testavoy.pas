Program Tenglama;
Uses Crt;
const
    Eps=0.2;r=0.4;dx=0.01;myu=0.1;dt=0.0005;
var
 i,j,k,n: integer;
 A, x: real;
al,bet, T0,T : array[0..100] of real;

Begin
    //ClrScr;
    For i:=0 to 100 do BEGIN
    //T0[0]:=1;
    //T0[100]:=eps;
    x:=i*dx;
    T0[i]:=cos(x*arccos(eps));
    end;
    
   for n:=1 to 100 do begin     
   al[99]:=0;
   bet[99]:=eps;
       For i:=100 downto 1 do BEGIN
 A:=Myu*dt/dx*dx;
   al[i-1]:=A/(1+2*A-A*al[i]);
   bet[i-1]:=(T0[i]+A*bet[i])/(1+2*A-A*al[i]);
end; 
 For i:=1 to 99 do BEGIN
   T[i+1]:=T[i]*al[i]+bet[i];
 end;
 
 For i:=0 to 100 do BEGIN
   T[i]:=T0[i];
   writeln(i,' ',T[i]);
 end;
   end;
end.
