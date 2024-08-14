Program EJ2P6;
var 
j, resultado, i, m, n : integer;
begin
    writeln   ('Ingrese M' );
    readln (m);
    writeln ('Ingrese N' );
    readln (n);
    for j := m to n do 
    writeln ('La tabla del ', m);
    for i:=1 to 10 do 
    resultado := i*j;
    writeln (i, ' La tabla de ', j, ' = ', resultado);

        end.