var
  
  a: array[1..50] of integer; 
  n, i, s, ss, b: integer; 
  
begin
  
  write('Введите количество элементов массива: ');
  Readln(n);
  
  for i:= 1 to n do     
   begin
     write('Введите значение элемента ',i,': ');
     readln(a[i]);
   end;
  writeln('Исходный массив:');
   
  for i:= 1 to n do      
    begin
      write(a[i]:4);
      if i mod 10 = 0 then
        writeln;
    end;
    
  writeln;
  write('Введите значение числа s: ');
  readln(s);
  ss := 0;
  
  for i:= 1 to n do
    begin
      ss := ss + a[i];  
      if ss > s then    
        begin
          b := i;
          break;
        end;
    end;
    
  if ss < n then
    writeln('Сумма элементов массива не достигла значение числа s')
  else
    writeln('Количество элементов массива, сумма которых превысила число s: ', b);

end.