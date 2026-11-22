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