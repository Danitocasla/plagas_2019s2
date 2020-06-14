import elementos.*

class Plaga {
	var property poblacion
	
	method transmiteEnfermedad(){return poblacion>=10}
	method aumentoDePoblacion(){poblacion = poblacion * 1.10}
	method ataqueDePlagaA(elemento){
		self.aumentoDePoblacion()
		elemento.efectoPorPlaga(self)
	}
}

class Cucarachas inherits Plaga{
	var property pesoPromedio
	
	method nivelDanio(){return poblacion/2}
	override method transmiteEnfermedad(){
		return super() and pesoPromedio>10
	}
	override method ataqueDePlagaA(elemento){
		super(elemento)
		pesoPromedio = pesoPromedio + 2
	}
	
}
class Pulgas inherits Plaga{
	
	method nivelDanio(){return poblacion * 2}
}
class Garrapatas inherits Pulgas{
	override method aumentoDePoblacion(){
		poblacion = poblacion * 1.20		
	}
}
class Mosquito inherits Plaga{
	
	method nivelDanio(){
		return poblacion
	}
	override method transmiteEnfermedad(){
		return super() and poblacion % 3 == 0
	}
}