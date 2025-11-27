program BilanganPrima;

uses crt;

var
  n, i, j: integer;
  isPrima: boolean;

begin
  clrscr;
  write('Masukkan nilai n: ');
  readln(n);

  writeln('Bilangan prima antara 1 dan ', n, ' adalah:');

  for i := 2 to n do
  begin
    isPrima := true;

    for j := 2 to i - 1 do
    begin
      if (i mod j = 0) then
      begin
        isPrima := false;
        break;
      end;
    end;

    if isPrima then
    begin
      write(i);
      if i < n then
        write(', ');
    end;
  end;

  writeln();
  readln;
end.