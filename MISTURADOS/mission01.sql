--declaração das variáveis
declare @edmagno int
declare @igor int
declare @quintella int

-- aqui eu defino os valores iniciais
set @edmagno = 1
set @igor = 1
set @quintella = 0

--aqui eu faço a impressão na tela dos valores porque a sequencia inicia com 1,1 e crio a variável FIB para ser meu contador no laço de repetição
print @edmagno
print @igor

--crio o laço de repetição onde a FIB é igual a 0
while @quintella < 1000

-- inicio o o laço
BEGIN
set @quintella = @edmagno + @igor
print @quintella
set @edmagno = @igor
set @igor = @quintella
END