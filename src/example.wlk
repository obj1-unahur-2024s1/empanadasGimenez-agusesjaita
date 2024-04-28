object galvan {
	var sueldoNuevo = 150000
	var deuda = 0
	var dinero = 0
	
	method nuevoSueldo(cantidad) {sueldoNuevo = cantidad}
	
	method sueldo() = sueldoNuevo
	
	method cobrarSueldo() {
		dinero = if (deuda == 0) self.sueldo() else 0.max(self.sueldo() - deuda) 
											   deuda = 0.max(deuda - self.sueldo())
	}
	
	method totalDeuda() = deuda
		
	method totalDinero() = dinero
	
	method gastar(cuanto) {
		deuda = deuda + if (dinero == 0) cuanto else cuanto - dinero 
						dinero = 0.max(dinero - cuanto)
 	}
 }

object baigorria {
	var empanadas
	var ahorros = 0
	
	method cantidadVendida(cantidad) {empanadas = cantidad}
	
	method empanadasVendidas() = empanadas
	
	method sueldo() = 150 * self.empanadasVendidas()
	
	method cobrarSueldo() {self.totalCobrado()}
	
	method totalCobrado() {ahorros = ahorros + self.sueldo()}
}


object senorGimenez {
	var fondo = 3000000
	
	method pagarA(empleado) {
		fondo = fondo - empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
	method fondo() = fondo
}




















