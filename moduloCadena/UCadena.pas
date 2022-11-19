unit UCadena;

interface
  //definen los menotodos
  Function Tiene2Pares(x : Cardinal): boolean;
  Function EsPar(x : Cardinal): boolean;
  Function RomanoUnidad(x : byte) : String;
  Function RomanoIf(x : byte) : String;
  Function Romano(x : byte) : String;
  Function Romano2(x : byte) : String;
implementation
  {implemetan los metodos}

  //------------------------------------------------------------
  Function Tiene2Pares(x : Cardinal): boolean;
  var d, c : byte;
      r : boolean;
  begin
    c := 0;
    r := false;
    while (x > 0)AND (NOT r) do
    begin
      d := x mod 10;
      x := x div 10;
      if (EsPar(d)) then   // d mod 2 = 0 ;
      begin
        c := c + 1;
      end;
      if c = 2 then
      begin
        r := true;
      end;
    end;
    Tiene2Pares := r;
  end;

  //------------------------------------------------------------
  Function EsPar(x : Cardinal): boolean;
  begin
    EsPar :=  (x mod 2 = 0);
  end;
                  //11
  Function RomanoUnidad(x : byte) : String;
  var r : String;
  begin
    case x of
      1 : begin
            r := 'I';
            writeln('es el 1');
          end;
      2 : r := 'II';
      3 : r := 'III';
      4 : r := 'IV';
      5 : r := 'V';
      6 : r := 'VI';
      7 : r := 'VII';
      8 : r := 'VIII';
      9 : r := 'IX';
      else
        r := '';
    end;
    RomanoUnidad := r;
  end;

 //------------------------------------------------------------

 Function RomanoIf(x : byte) : String;
  var r : String;
  begin
    if x = 1 then begin
      r := 'I';
      writeln('es el 1');
    end else if x = 2 then
      r := 'II'
    else if x = 3 then
      r := 'III'
    else if x = 4 then
      r := 'IV'
    else if x = 5 then
      r := 'V'
    else if x = 6 then
      r := 'VI'
    else if x = 7 then
      r := 'VII'
    else if x = 8 then
      r := 'VIII'
    else if x = 9 then
      r := 'IX'
    else if x = 10 then
      r := 'X'
    else
      r := 'cadena error';

    RomanoIf := r;
  end;
 //------------------------------------------------------------


 Function Romano(x : byte) : String;
  var r : String;
      d : byte;
  begin
    d := x mod 10;
    case d of
      1 : r := 'I';
      2 : r := 'II';
      3 : r := 'III';
      4 : r := 'IV';
      5 : r := 'V';
      6 : r := 'VI';
      7 : r := 'VII';
      8 : r := 'VIII';
      9 : r := 'IX';
      else
        r := '';
    end;
    //ya tengo la unidad
    d := (x div 10)  mod 10;
    case d of
      1 :r := 'X' + r;
      2 : r := 'XX' + r;
      3 : r := 'XXX' + r;
      4 : r := 'XL' + r;
      5 : r := 'L' + r;
      6 : r := 'LX' + r;
      7 : r := 'LXX' + r;
      8 : r := 'LXXX' + r;
      9 : r := 'XC' + r;
      else
        r := '';
    end;
    Romano := r;
  end;
 //------------------------------------------------------------
  Function Romano2(x : byte) : String;
  var r : String;
      d : byte;
  begin
    d := (x div 10)  mod 10;
    case d of
      1 : r := 'X';
      2 : r := 'XX';
      3 : r := 'XXX';
      4 : r := 'XL';
      5 : r := 'L';
      6 : r := 'LX';
      7 : r := 'LXX';
      8 : r := 'LXXX';
      9 : r := 'XC';
      else
        r := '';
    end;
    r := r + RomanoUnidad(x mod 10);
    Romano2 := r;
  end;
end.
