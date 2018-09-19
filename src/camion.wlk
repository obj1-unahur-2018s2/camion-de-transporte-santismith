import cosas.*

object camion {
	const property cosas = []
	const pesoTara = 1000
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}


	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}

	method pesoTotal() {
		return pesoTara + cosas.sum({cosa=>cosa.peso()})
	}
	
	method excedidoDePeso(){ 
		return self.pesoTotal()>2500
		
	}

	method objetosPeligrosos(nivel){
		return cosas.filter({cosa=>cosa.nivelPeligrosidad()>nivel})
	
	}
	
	method objetosMasPeligrososQue(cosaa){
		return cosas.filter({cosa=>cosa.nivelPeligrosidad()>cosaa.nivelPeligrosidad()})
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all({cosa=>cosa.nivelPeligrosidad()<nivelMaximoPeligrosidad})
	}	
	
	method tieneAlgoQuePesaEntre(min,max){
		return cosas.all({cosa=>cosa.peso().between(min,max)})
	}
	
	method cosaMasPesada(){
		return cosas.find({cosa=>cosa.peso().max()})
	}
	
	method totalBultos(){
		return cosas.sum({cosa=>cosa.bulto()})
	}
	
	method pesos(){
		return cosas.map({cosa=>cosa.peso()})
	}
}
