var
  
  i, j, k, m: integer;
  s, t: string;
  a: array[1..50] of string;
  n: array[1..50] of integer;

procedure aa;

var
  
  k: integer; 
  
begin
  
  if t <> '' then
    for k := 1 to j do 
      if a[k] = t then 
      begin
        n[k] := n[k] + 1;
        if n[m] < n[k] then 
          m := k;
        t := '';
        break;
      end;
      
  if t <> '' then begin
    j := j + 1;
    n[j] := 1;
    a[j] := t;
    t := ''
  end;
  
end;
 
begin
  
  i := 0;
  j := 0;
  m := 1;
  t := '';
  write('Введите слова: ');
  readln(s);
  
  for i := 1 to length(s) do 
    if s[i] <> ' ' then 
      t := t + s[i] 
      else aa;
      
  for i := 1 to j do 
  begin
    if n[i] = n[m] then 
      writeln(a[i]);
  end;
  
end.