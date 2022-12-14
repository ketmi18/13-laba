var input,output: text;
s: string;
begin
  Assign(input, 'input4.txt');
  Assign(output, 'output1.txt');
  reset(input);
  rewrite(output);
  while not eof(input) do
  begin
    readln(input, s);
    if s <> ' ' then Writeln(output, s);
  end;
  Close(input);
  Close(output);
end.