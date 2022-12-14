begin
  var k := readinteger('k: ');
  Assign(input, 'input.txt');
  Assign(output, 'output.txt');
  var i:=0;
  while not eof(input) do
  begin
    var s := ReadString;
    inc(i);
    if i<>k then 
      println(s)
    else
      println('');
  end;
  close(input); 
  close(output);
  Rename(output, 'input4.txt');
end.