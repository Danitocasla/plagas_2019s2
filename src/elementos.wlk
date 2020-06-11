class Barrio {
	
	var property elementos = []
	
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	method elementosBuenos(){
		return elementos.filter({elem=>elem.esBueno()}).size()
	}
	method elementosMalos(){
		return elementos.filter({elem=>not elem.esBueno()}).size()
	}
	method esCopado(){
		return self.elementosBuenos() > self.elementosMalos()
	}
}

class Hogar{
	var property nivelMugre
	var property confort
	
	method esBueno(){return confort/nivelMugre  <= 2}
}

class Granja{
	var property nivel
}

class Huerta inherits Granja{
	var property capacidadProduccion
		
	method esBueno(){return capacidadProduccion>nivel}
}

class Mascota{
	var property nivelSalud
	
	method esBueno(){return nivelSalud>250}
}

