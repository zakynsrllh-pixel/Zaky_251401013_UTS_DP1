program RentalMobil;

uses crt;

var
  jenisMobil: string;
  hari, jarak: integer;
  biayaSewa, biayaJarak, total: longint;

begin
  clrscr;
  writeln('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV) : ');
  readln(jenisMobil);
  writeln('Pemesan Berapa Hari : ');
  readln(hari);
  writeln('Berkendara Seberapa Jauh (km) : ');
  readln(jarak);

  // Hitung biaya sewa harian
  if (jenisMobil = 'Ekonomi') or (jenisMobil = 'ekonomi') then
    biayaSewa := 300000 * hari
  else if (jenisMobil = 'Sedan') or (jenisMobil = 'sedan') then
    biayaSewa := 400000 * hari
  else if (jenisMobil = 'SUV') or (jenisMobil = 'suv') then
    biayaSewa := 500000 * hari
  else
  begin
    writeln('Jenis mobil tidak valid.');
    halt;
  end;

  // Hitung biaya jarak tempuh
  if jarak <= 100 then
    biayaJarak := jarak * 1500
  else if (jarak > 100) and (jarak <= 200) then
    biayaJarak := (100 * 1500) + ((jarak - 100) * 1000)
  else
    biayaJarak := (100 * 1500) + (100 * 1000) + ((jarak - 200) * 500);

  // Total biaya
  total := biayaSewa + biayaJarak;

  writeln('Total biaya sewa mobil adalah : ', total);
  readln;
end.