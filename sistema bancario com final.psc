Algoritmo Sistema_Bancario
	
    Definir pin, intentos, opcion Como Entero
    Definir saldo, deposito, transferencia Como Real
    Definir totalDepositos, totalTransferencias Como Real
    Definir acceso Como Logico
	
    // Inicializacion de variables
    pin <- 0
    intentos <- 0
    acceso <- Falso
	
    saldo <- 0
    totalDepositos <- 0
    totalTransferencias <- 0
	
	// Seguridad: maximo tres intentos
    Escribir "================================"
    Escribir "       BIENVENIDO AL BANCO"
    Escribir "================================"
	
    Mientras intentos < 3 Y acceso = Falso Hacer
		
        Escribir "Ingrese su PIN de seguridad:"
        Leer pin
		
        Si pin = 12345 Entonces
            acceso <- Verdadero
            Escribir "Acceso autorizado."
        SiNo
            intentos <- intentos + 1
            Escribir "PIN incorrecto."
            Escribir "Intentos restantes: ", 3 - intentos
        FinSi
		
    FinMientras
	
	// Menu principal
    Si acceso = Verdadero Entonces
		
        Repetir
			
            Escribir ""
            Escribir "========= MENU BANCARIO ========="
            Escribir "1. Realizar deposito"
            Escribir "2. Realizar transferencia"
            Escribir "3. Consultar movimientos y saldo"
            Escribir "4. Salir"
            Escribir "Seleccione una opcion:"
            Leer opcion
			
            Segun opcion Hacer
				
                1:
                    Escribir "Ingrese el monto del deposito:"
                    Leer deposito
					
                    Si deposito > 0 Entonces
                        saldo <- saldo + deposito
                        totalDepositos <- totalDepositos + deposito
						
                        Escribir "Deposito realizado correctamente."
                        Escribir "Saldo actual: $", saldo
                    SiNo
                        Escribir "El monto debe ser mayor que cero."
                    FinSi
					
                2:
                    Escribir "Ingrese el monto de la transferencia:"
                    Leer transferencia
					
                    Si transferencia > 0 Entonces
						
                        Si transferencia <= saldo Entonces
                            saldo <- saldo - transferencia
                            totalTransferencias <- totalTransferencias + transferencia
							
                            Escribir "Transferencia realizada correctamente."
                            Escribir "Saldo actual: $", saldo
                        SiNo
                            Escribir "Saldo insuficiente."
                        FinSi
						
                    SiNo
                        Escribir "El monto debe ser mayor que cero."
                    FinSi
					
                3:
                    Escribir "======= ESTADO DE CUENTA ======="
                    Escribir "Saldo disponible: $", saldo
                    Escribir "Total depositado: $", totalDepositos
                    Escribir "Total transferido: $", totalTransferencias
                    Escribir "================================"
					
                4:
                    Escribir "Gracias por utilizar nuestro banco."
					
                De Otro Modo:
                    Escribir "Opcion no valida."
					
            FinSegun
			
        Hasta Que opcion = 4
		
    SiNo
        Escribir "Cuenta bloqueada por seguridad."
        Escribir "No puede ingresar al sistema."
    FinSi
	
FinAlgoritmo