program IndeksNilaiPraktikan;
uses crt;

var
  nama1, nama2, nama3, nama4, nama5: string;
  nilai1, nilai2, nilai3, nilai4, nilai5: integer;
  indeks1, indeks2, indeks3, indeks4, indeks5: string;
  lulus, gagal: integer;

function TentukanIndeks(nilai: integer): string;
begin
  if nilai >= 85 then
    TentukanIndeks := 'A'
  else if nilai >= 75 then
    TentukanIndeks := 'C+'
  else if nilai >= 70 then
    TentukanIndeks := 'C'
  else if nilai >= 60 then
    TentukanIndeks := 'D'
  else
    TentukanIndeks := 'E';
end;

begin
  clrscr;
  writeln('=== Program Penentuan Indeks Nilai Praktikan ===');
  writeln;

  { Input data 1 }
  write('Nama Praktikan 1: '); readln(nama1);
  write('Nilai Akhir: '); readln(nilai1);
  writeln;

  { Input data 2 }
  write('Nama Praktikan 2: '); readln(nama2);
  write('Nilai Akhir: '); readln(nilai2);
  writeln;

  { Input data 3 }
  write('Nama Praktikan 3: '); readln(nama3);
  write('Nilai Akhir: '); readln(nilai3);
  writeln;

  { Input data 4 }
  write('Nama Praktikan 4: '); readln(nama4);
  write('Nilai Akhir: '); readln(nilai4);
  writeln;

  { Input data 5 }
  write('Nama Praktikan 5: '); readln(nama5);
  write('Nilai Akhir: '); readln(nilai5);
  writeln;

  { Tentukan indeks nilai masing-masing }
  indeks1 := TentukanIndeks(nilai1);
  indeks2 := TentukanIndeks(nilai2);
  indeks3 := TentukanIndeks(nilai3);
  indeks4 := TentukanIndeks(nilai4);
  indeks5 := TentukanIndeks(nilai5);

  { Hitung jumlah lulus dan mengulang }
  lulus := 0; gagal := 0;

  if indeks1 <> 'E' then lulus := lulus + 1 else gagal := gagal + 1;
  if indeks2 <> 'E' then lulus := lulus + 1 else gagal := gagal + 1;
  if indeks3 <> 'E' then lulus := lulus + 1 else gagal := gagal + 1;
  if indeks4 <> 'E' then lulus := lulus + 1 else gagal := gagal + 1;
  if indeks5 <> 'E' then lulus := lulus + 1 else gagal := gagal + 1;

  { Output hasil }
  writeln('===============================================');
  writeln('Indeks Nilai Praktikan 1: ', indeks1);
  writeln('Indeks Nilai Praktikan 2: ', indeks2);
  writeln('Indeks Nilai Praktikan 3: ', indeks3);
  writeln('Indeks Nilai Praktikan 4: ', indeks4);
  writeln('Indeks Nilai Praktikan 5: ', indeks5);
  writeln('-----------------------------------------------');
  writeln('Total Praktikan Lulus: ', lulus);
  writeln('Total Praktikan Mengulang: ', gagal);
  writeln('===============================================');

  readln;
end.