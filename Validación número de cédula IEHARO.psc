Algoritmo ValidarCedula
	Definir cedula, prueba Como Caracter
	Definir codprov, sumatoria Como Entero
	Definir Num1, Num2, Num3 como Logico
	prueba="0123456789"
	Escribir "Ingrese su nùmero de cèdula"
	Leer cedula
	Num1=Falso
	Si Longitud(cedula)=10 Entonces
		Para i<-1 Hasta 4 Con Paso 1 Hacer
			Si Subcadena(cedula,1,1)=Subcadena(prueba,i,i) Entonces
				Num1=Verdadero
			Fin Si
		Fin Para
		Si Num1=Verdadero Entonces
				Num2=Falso
				Para i<-1 Hasta 10 Con Paso 1 Hacer
					Si Subcadena(cedula,2,2)=Subcadena(prueba,i,i) Entonces
						Num2<-Verdadero
					Fin Si
				Fin Para
				Si Num2=Verdadero Entonces
					codprov<-ConvertirANumero(Subcadena(cedula,1,2))
					Si (codprov<=24) O (codprov=30) Entonces
						Num3<-Falso
						Para i<-1 Hasta 6 Con Paso 1 Hacer
							Si Subcadena(cedula,3,3)=Subcadena(prueba,i,i) Entonces
								Num3<-Verdadero
							Fin Si
						Fin Para
						Si Num3=Verdadero Entonces
							k<-0
							Para i<-4 Hasta 9 Con Paso 1 Hacer
								Para j<-1 Hasta 10 Con Paso 1 Hacer
									Si Subcadena(cedula,i,i)=Subcadena(prueba,j,j) Entonces
										k<-k+1
									Fin Si
								Fin Para
							Fin Para
							Si k=6 Entonces
								sumatoria<-0
								Para i<-1 Hasta 9 Con Paso 1 Hacer
									aux<-ConvertirANumero(Subcadena(cedula,i,i))
									Si i%2!=0 Entonces
										aux<-aux*2
										Si aux>=10 Entonces
											aux<-aux-9
										Fin Si
									Fin Si
									sumatoria<-sumatoria+aux
								Fin Para
								aux<-10-sumatoria%10
								Si aux=10 Entonces
									aux<-0
								Fin Si
								
								Si ConvertirANumero(Subcadena(cedula,10,10))=aux Entonces
									Escribir "Su nùmero de cèdula es vàlido"
								SiNo
									Escribir "No es vàlido"
								Fin Si
							Fin Si
							
						SiNo
							Escribir "No es vàlido"
						Fin Si
					SiNo
						Escribir "No es vàlido"
					Fin Si
				SiNo
					Escribir "No es vàlido"
				Fin Si
		SiNo
			Escribir "No es vàlido"
		Fin Si
	SiNo
		Escribir "No es vàlido"
	Fin Si
	
FinAlgoritmo
