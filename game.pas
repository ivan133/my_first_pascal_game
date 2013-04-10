program game ;
uses crt;
var cont:char;lose:boolean; pole :array [1..8,1..8] of integer;
r,ex,ey,c,s,pp,ep,x,y:integer;label 1,2;

begin
ep:=4;
pp:=1;
x:=2 ;
y:=2;
randomize;
ex:=random(8);
ey:=random(8);
lose:=false ;
{init pole}
for r:=1 to 8 do
    for c:=1 to 8 do
    pole[r,c]:=0;
 pole[x,y]:=pp;
 pole[ex,ey]:=ep;
 {cicl}
while lose=false
      do begin
      1:clrscr; {output pole}
      for r:=1 to 8 do
      begin
      writeln;
            for c:=1 to 8 do
            write(pole[r,c]);
            end;
    {controls}
cont:=readkey;
if ord(cont)=115{s} then
if x<8 then
   begin
   pole[x+1,y]:=1;
   pole[x,y]:=0;
   x:=x+1;
   clrscr;
   goto 1;
   end;
if ord(cont)=119{w}  then
if x>1 then
   begin
   pole[x-1,y]:=1;
   pole[x,y]:=0;
   x:=x-1;
   clrscr;
   goto 1;
   end;
if ord(cont)=97{a}  then
if y>1 then
 begin
   pole[x,y-1]:=1;
   pole[x,y]:=0;
   y:=y-1;
   clrscr;
   goto 1;
   end;
if ord(cont)=100{d}     then
if y<8 then
 begin
   pole[x,y+1]:=1;
   pole[x,y]:=0;
   y:=y+1;
   clrscr;
   goto 1;
   end;
 if ord(cont)=27{esc}     then
 begin
   lose:=true;
   end;
end;
{enimies}
end.