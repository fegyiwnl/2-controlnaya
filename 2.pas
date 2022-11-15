var
  
  j, k, m: integer;
  t: string;
  a: array[1..50] of string;
  n: array[1..50] of integer;

procedure aa;

begin
  
  if t <> '' then
    for var k := 1 to j do 
      if a[k] = t then 
      begin
        n[k] += 1;
        if n[m] < n[k] then 
          m := k;
        t := '';
        break;
      end;
  
  if t <> '' then begin
    j += 1;
    n[j] := 1;
    a[j] := t;
    t := ''
  end;
  
end;

begin
  
  j := 0;
  m := 1;
  t := '';
  var s := ReadString('Введите слова: ');
  
  for var i := 1 to length(s) do 
    if s[i] <> ' ' then 
      t += s[i] 
    else aa;
  
  for var i := 1 to j do 
  begin
    if n[i] = n[m] then 
      print(a[i]);
  end;
  
end.
