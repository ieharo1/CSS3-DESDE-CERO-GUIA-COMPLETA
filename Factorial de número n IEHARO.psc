Algoritmo Factorial
	Definir n, f Como Real
	f<-1
	Escribir "Ingrese un número: "
	Leer n
	Si n>=0 Entonces
		Para i<-1 Hasta n Con Paso 1 Hacer
			f<-f*i
		Fin Para
	SiNo
		Escribir "No existe el factorial de ese número "
	Fin Si
	Escribir  " El factorial de ",n," es: ",f
FinAlgoritmo
