
procedure leerPalabraLargo(var largo: integer; var fin: boolean);
var
  caracter: char;
begin
  largo := 0;             // Inicializamos la variable 'largo' para contar la longitud de la palabra.
  fin := false;           // Inicializamos la variable 'fin' como falso para señalar que no se ha alcanzado el final.
  repeat
    read(caracter);      // Lee un carácter del input
    if (caracter <> SEPARADOR) and (caracter <> FINALIZADOR) then
      largo := largo + 1  // Incrementa la longitud de la palabra si el carácter no es un separador ni un finalizador.
    else if caracter = FINALIZADOR then
      fin := true;        // Establece 'fin' como verdadero si se encuentra el finalizador.
  until (caracter = SEPARADOR) or (caracter = FINALIZADOR); // Continúa hasta que se encuentre un separador o finalizador.
end;

procedure leerOracionDatos(var cantPalabras, masLarga, masCorta: integer);
var
  largoPalabra: integer;
  finPalabra: boolean;
begin
  cantPalabras := 0;       // Inicializamos el contador de palabras.
  masLarga := 0;           // Inicializamos la longitud de la palabra más larga.
  masCorta := MaxInt;      // Inicializamos la longitud de la palabra más corta con un valor máximo posible.
  finPalabra := false;     // Inicializamos la variable de final de palabra como falso. para señalar que no se ha alcanzado el final
  repeat
    leerPalabraLargo(largoPalabra, finPalabra); // Llama al procedimiento para leer una palabra y su longitud.
    if largoPalabra > 0 then  // Verifica si se leyó una palabra válida.
    begin
      cantPalabras := cantPalabras + 1;  // Incrementa el contador de palabras.
      if largoPalabra > masLarga then
        masLarga := largoPalabra;         // Actualiza la longitud de la palabra más larga si es necesario.
      if largoPalabra < masCorta then
        masCorta := largoPalabra;         // Actualiza la longitud de la palabra más corta si es necesario.
    end;
  until finPalabra;  // Continúa hasta que se alcance el final de la oración.
end;
