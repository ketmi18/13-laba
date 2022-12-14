var
  filet: text;
  a: string;
  i: integer;

begin
  assign(filet, 'text1.txt');
  rewrite(filet);
  for i := 1 to 10 do
    writeln(filet, i);
  close(filet);
  reset(filet);
  for i := 1 to 10 do
  begin
    readln(filet, a);
    writeln(a);
  end;
  close(filet);
end.