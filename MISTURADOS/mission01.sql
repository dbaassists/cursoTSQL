--declara��o das vari�veis
declare @edmagno int
declare @igor int
declare @quintella int

-- aqui eu defino os valores iniciais
set @edmagno = 1
set @igor = 1
set @quintella = 0

--aqui eu fa�o a impress�o na tela dos valores porque a sequencia inicia com 1,1 e crio a vari�vel FIB para ser meu contador no la�o de repeti��o
print @edmagno
print @igor

--crio o la�o de repeti��o onde a FIB � igual a 0
while @quintella < 1000

-- inicio o o la�o
BEGIN
set @quintella = @edmagno + @igor
print @quintella
set @edmagno = @igor
set @igor = @quintella
END