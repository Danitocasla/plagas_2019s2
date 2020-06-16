import plagas.*

class Barrio {
	
	var property elementos = []
	
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	method cantidadBuenos(){
		return elementos.filter({elem=>elem.esBueno()}).size()
	}
	method cantidadMalos(){
		return elementos.filter({elem=>not elem.esBueno()}).size()
	}
	method esCopado(){
		return self.cantidadBuenos() > self.cantidadMalos()
	}
}

class Hogar{
	var property nivelMugre
	var property confort
	
	method esBueno(){return confort/nivelMugre  >= 2}
	method efectoPorPlaga(tipoPlaga){
		nivelMugre = nivelMugre + tipoPlaga.nivelDanio()
	}
}

object nivelHuerta{
	var property nivel
}
class Huerta{
	var property capacidadProduccion
	
	method esBueno(){return capacidadProduccion>nivelHuerta.nivel()}
	method efectoPorPlaga(tipoPlaga){
		if(tipoPlaga.transmiteEnfermedad()){
			capacidadProduccion =- tipoPlaga.nivelDanio()*0.10
			capacidadProduccion =- 10
		}
		else {capacidadProduccion =- tipoPlaga.nivelDanio()*0.10}
	}
}

class Mascota{
	var property nivelSalud
	
	method esBueno(){return nivelSalud>250}
	method efectoPorPlaga(tipoPlaga){
		if(tipoPlaga.transmiteEnfermedad()){
			nivelSalud =- tipoPlaga.nivelDanio()
		}
	}
}

