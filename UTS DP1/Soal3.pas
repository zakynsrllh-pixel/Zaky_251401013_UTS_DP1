program JonoHitungAngka;

uses crt;

var
  n, i: integer;
  angka, total: integer;
  rata: real;

begin
  clrscr;
  total := 0;
  
  // Input jumlah angka
  write('N : ');
  readln(n);
  
  // Input angka dan hitung total
  for i := 1 to n do
  begin
    write('Angka ke - ', i, ' : ');
    readln(angka);
    total := total + angka;
  end;
  
  // Hitung rata-rata
  rata := total / n;
  
  // Output hasil
  writeln;
  writeln('Jumlah Total : ', total);
  writeln('Rata-rata  : ', rata:0:1);
  
  readln;
end.