

begin
  var a: array[1..50] of integer; 
  var s: integer;
  var ss := 0;
  var b: integer;
  var n := ReadInteger('Введите размер массива: ');
  
  for var i := 1 to n do     
  begin
    print('Введите значение элемента ', i, ': ');
    a[i] := ReadInteger();
  end;
  print('Исходный массив:');
  
  for var i := 1 to n do      
  begin
    write(a[i]:4);
    if i mod 10 = 0 then
      writeln;
  end;
  
  writeln;
  print('Введите значение числа s: ');
  s := ReadInteger();
  ss := 0;
  
  for var i := 1 to n do
  begin
    ss += a[i];  
    if ss > s then    
    begin
      b := i;
      break;
    end;
  end;
  
  if ss < n then
    print('Сумма элементов массива не достигла значение числа s')
  else
    print('Количество элементов массива, сумма которых превысила число s: ', b);
  
end.
