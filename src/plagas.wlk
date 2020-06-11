class Plaga {
	var property poblacion
	
	method transmiteEnfermedad(){return poblacion>=10}
}

class Cucarachas inherits Plaga{
	var property pesoPromedio
	override method poblacion(cant){
		poblacion = cant
	}
	method nivelDanio(){return poblacion/2}
	override method transmiteEnfermedad(){
		return super() and pesoPromedio>10
	}
}
class Pulgas inherits Plaga{
	override method poblacion(cant){
		poblacion = cant
	}
	method nivelDanio(){return poblacion * 2}
}
class Garrapatas inherits Pulgas{
	override method poblacion(cant){
		poblacion = cant
	}
}
class Mosquito inherits Plaga{
	override method poblacion(cant){
		poblacion = cant
	}
	method nivelDanio(){
		return poblacion
	}
	override method transmiteEnfermedad(){
		return super() and poblacion % 3 == 0
	}
}