var
  filet: text;
  a: string;
  i, j, n, k: integer;

begin
  print('Введите N и K');
  read(n, k);
  assign(filet, 'text2.txt');
  rewrite(filet);
  for i := 1 to n do
  begin
    for j := 1 to k do
    begin
      if j < k then
        write(filet, '*')
      else
        writeln(filet, '*')
    end;
  end;
  close(filet);
  reset(filet);
  for i := 1 to n do
  begin
    readln(filet, a);
    writeln(a);
  end;
  close(filet);
end.