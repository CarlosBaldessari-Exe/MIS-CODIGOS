program ProcesamientoTexto;

const
  SEPARADOR = ' ';
  FINALIZADOR = '.';

procedure leerPalabraLargo(var largo: integer; var fin: boolean);
var
  caracter: char;
begin
  largo := 0;
  fin := false;
  repeat
    read(caracter);
    if (caracter <> SEPARADOR) and (caracter <> FINALIZADOR) then
      largo := largo + 1
    else if caracter = FINALIZADOR then
      fin := true;
  until (caracter = SEPARADOR) or (caracter = FINALIZADOR);
end;

procedure leerOracionDatos(var cantPalabras, masLarga, masCorta: integer);
var
  largoPalabra: integer;
  finPalabra: boolean;
begin
  cantPalabras := 0;
  masLarga := 0;
  masCorta := MaxInt;
  finPalabra := false;
  repeat
    leerPalabraLargo(largoPalabra, finPalabra);
    if largoPalabra > 0 then
    begin
      cantPalabras := cantPalabras + 1;
      if largoPalabra > masLarga then
        masLarga := largoPalabra;
      if largoPalabra < masCorta then
        masCorta := largoPalabra;
    end;
  until finPalabra;
end;
//borrar esto
var
  cantPalabras, masLarga, masCorta: integer;

begin
  writeln('Ingrese la oración:');
  leerOracionDatos(cantPalabras, masLarga, masCorta);
  writeln('Tiene ', cantPalabras, ' palabras.');
  writeln('La palabra más larga tiene ', masLarga, ' letras.');
  writeln('La palabra más corta tiene ', masCorta, ' letras.');
end.


-------------------------------------------------------------------
{procedure leerPalabraLargo(var largo: integer; var fin: boolean);
var
  caracter: char;
begin
  largo := 0;             //Aca inicializamos la variable Largo 
  fin := false;       //Variable fin boolean 
  repeat                                                              
    read(caracter);        
    if (caracter <> SEPARADOR) and (caracter <> FINALIZADOR) then
      largo := largo + 1                    // Este if esta hecho para  
    else if caracter = FINALIZADOR then
      fin := true;
  until (caracter = SEPARADOR) or (caracter = FINALIZADOR);
end;

procedure leerOracionDatos(var cantPalabras, masLarga, masCorta: integer);
var
  largoPalabra: integer;
  finPalabra: boolean;
begin
  cantPalabras := 0;
  masLarga := 0;
  masCorta := MaxInt;
  finPalabra := false;
  repeat
    leerPalabraLargo(largoPalabra, finPalabra);
    if largoPalabra > 0 then
    begin
      cantPalabras := cantPalabras + 1;
      if largoPalabra > masLarga then
        masLarga := largoPalabra;
      if largoPalabra < masCorta then
        masCorta := largoPalabra;
    end;
  until finPalabra;
end;}
