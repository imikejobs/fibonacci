program Fibonacci;

function Fibonacci(var n: integer): qWord;
var 
	i: integer;
	p, q, r: qWord;
begin
	if n <= 0 then
	begin
		Fibonacci := 0;
		writeLn('Fibonacci: ', Fibonacci);
		exit
	end;
	q := 0;
	r := 1;
	for i := 2 to n do
	begin
		p := q;
		q := r;
		r := p + q
	end;
	Fibonacci := r;
	writeLn('Fibonacci: ', Fibonacci)
end;

label
	Return;

var
	n: integer;

begin
	Return:
	write('Enter a number: ');
	{$I-}
	readLn(n);
	if IOResult = 0	then	
		Fibonacci(n)
	else
	begin
		writeLn('Wrong input');
		goto Return
	end
end.
