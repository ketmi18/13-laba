begin
  Assign(input, 'input5.txt');
  Assign(output, 'output.txt');
  var s: array of integer;
  var max, min, i, a, b: integer;
  var n := 0;
  while not eof(input) do
  begin
    readln(a);
    n += 1;
  end;
  println('Количество элементов:', n);
  SetLength(s, n);
  n := 0;
  reset(input);
  while not eof(input) do
  begin
    Readln(b);
    s[n] := b;
    n += 1;
  end;
  println(s);
  min := s[0];
  for i := 1 to n - 1 do
    if s[i] < min then min := s[i];
  max := s[0];
  for i := 1 to n - 1 do
    if s[i] > max then max := s[i];
  Rewrite(output);
  println('Минимальное число:', min);
  print('Максимальное число:', max);
  close(input); 
  close(output);
end.