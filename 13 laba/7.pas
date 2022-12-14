var
  i, j, s, n1: integer;

begin
  Assign(input, 'z3.in.txt');
  Assign(output, 'z3.out.txt');
  reset(input);
  var n := ReadInteger;
  s := 0;
  for i := 1 to n do
  begin
    n1 := 0;
    for j := 1 to i do
      if i mod j = 0 then n1 := n1 + 1;
    if n1 = 5 then
      s := s + i;
  end;
  rewrite(output);
  print(s);
  close(input); 
  close(output);
end.