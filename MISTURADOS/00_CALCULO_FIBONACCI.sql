declare @fibonacci_de_quantos_nr int
,		@antepenultimo int
,		@penultimo int
,		@inicial int = 1
,		@calculoFibonacci int

set @fibonacci_de_quantos_nr = 15

while @inicial <= @fibonacci_de_quantos_nr

Begin 	

	if @inicial = 1 

	begin

		set @calculoFibonacci = @inicial

		print('Fibonacc de: ') + convert(varchar(4) , @inicial) + ' é ' + convert(varchar(4) , @inicial)

		set @antepenultimo = @calculoFibonacci
		set @penultimo = @calculoFibonacci

	end 

	else

	Begin

		print('----------------------------------------------------')
	
		if @inicial = 2
		begin

			set @calculoFibonacci = @inicial-1
			set @antepenultimo = @calculoFibonacci
			set @penultimo = @antepenultimo
			
		end 
		else 
		begin

			set @calculoFibonacci = @antepenultimo + @penultimo
			set @antepenultimo = @penultimo
			set @penultimo = @calculoFibonacci
			
		end

		print('Fibonacc de: ') + convert(varchar(4) , @inicial) + ' é ' + convert(varchar(4) , @calculoFibonacci) 

	End 

	set @inicial = @inicial + 1

End 