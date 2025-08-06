Algoritmo sin_titulo
	Definir n1, n2, n, c Como Entero
	Escribir "¿Cuàntos nùmeros de Fibonacci desea?"
	Leer n
	
	n1<-0
	n2<-1
	n3<-0
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir sin saltar n1 " "
		n3<-n1+n2
		n1<-n2
		n2<-n3
	Fin Para
FinAlgoritmo
