program main;
uses
  UCadena;

procedure PTiene2Pares;
var n : cardinal;
    res : boolean;
begin
  while True do
  begin
    write('ingrese un numero: ');
    readln(n);
    res :=  Tiene2Pares(n);
    writeln(res);
  end;
end;


procedure prueba;
var r : string;
    dato : byte;
begin
  while True do
  begin
    write('ingresa un numero: ');
    readln(dato);
    r := Romano2(dato);
    writeln(r);
  end;

end;

//restar octal---------------------------------------------------------
procedure restar_octal;
var r : string;
    a,b : cardinal;
begin
  while True do
  begin
    write('ingresa un numero a: ');
    readln(a);
    write('ingresa un numero b: ');
    readln(b);
    writeln(Restar(a, b));
  end;

end;
//------------------------------------------------
procedure Enesimo;
var cantidad : byte;
    resultado : byte;
begin
  while True do
  begin
    write('ingrese el n-simo elemento: ');
    readln(cantidad);
    resultado := Nesimo(cantidad);  //cantidad = 0
//    cargar(cantidad);  //cantidad = 100
    writeln(resultado);
  end;
end;
//------------------------------------------
procedure EliminarNoLetrasP;
var cadena : string;
    dato : byte;
begin
  while True do
  begin
    write('ingresa un cadena: ');
    readln(cadena);
    EliminarNoLetras(cadena);
    writeln('cadena resultado => ', cadena);
  end;

end;


//main principal--------------------
begin
//   prueba;
//  restar_octal();
//Enesimo();
EliminarNoLetrasP();
  readln;
end.
