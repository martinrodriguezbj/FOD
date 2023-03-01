program ej2;
type
  ArchivodeEnteros = file of integer;


procedure mostrar(var Enteros:ArchivodeEnteros);
var
  aux:integer;
begin
  writeln('-Muestro numeros-');
  reset(Enteros);
  while not eof(Enteros) do begin
    read(Enteros,aux);
    writeln('Numero: ',aux);
  end;
  close(Enteros);
end;

procedure MayoresYPromedio(var Enteros:ArchivodeEnteros;var prom:double);
var
  aux,total,cant:integer;
begin
  total:=0;
  cant:=0;
  writeln('-Muestro mayores a 1500-');
  reset(Enteros);
  while not eof(Enteros) do begin
    read(Enteros,aux);
    total:=total+aux;
    cant:=cant+1;
    if (aux>1500) then
       writeln('Numero: ',aux);
  end;
  prom:=total/cant;
  close(Enteros);
end;

var
  Enteros: ArchivodeEnteros;
  archivoAProcesar: String[12];
  num: integer;
  prom:double;
begin
  writeln('Ingresar el nombre del archivo a procesar');
  readln(archivoAProcesar);
  assign(Enteros,archivoAProcesar); {anlace entre nombre logico y nombre fisico}
  reset(Enteros); {apertura del archivo para la creacion}
  mostrar(Enteros);
  MayoresYPromedio(Enteros,prom);
  writeln('Promedio: ',prom);
  readln();
  close(Enteros);
end.
