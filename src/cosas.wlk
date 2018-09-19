object knightRider {
	
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
	method bulto() {return 1}
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
	method bulto() {return 2}
}


object paqueteDeLadrillos{
	const pesoPorLadrillo = 2
	var ladrillos_ =0
	method setCantidad(ladrillos){ladrillos_=ladrillos}
	method peso() {return pesoPorLadrillo *ladrillos_}
	method nivelPeligrosidad() {return 2}
	method bulto() {if (ladrillos_.between(0,100))
		return 1
		else if (ladrillos_.between(101,300))
		return 2
		else 
		return 3
		
	}
}

object arenaAGranel{
	var peso_
	method setPeso(peso){peso_=peso}
	method nivelPeligrosidad() {return 1}
	method bulto() {return 1}
}

object bateriaAntiaerea{
	var misiles = false
	
	method cargarMisiles() {
		misiles=true
	}
	method descargarMisiles(){
		misiles=false
	}
	method peso() {return if (misiles){300}else {200}}
	method nivelPeligrosidad() {return if (misiles){100} else {0}}
	method bulto(){return if (misiles) {2} else {1} }
	
	}
	
	
object contenedorPortuario{
	const pesoPropio =100
	const property cosas = []
	method cargar(unaCosa){cosas.add(unaCosa)}
	method peso() {return pesoPropio + cosas.sum({cosa=>cosa.peso()})}
	method nivelPeligrosidad() {return if ([cosas].isEmpty()){0}
		else{
		cosas.map({cosa=>cosa.nivelPeligrosidad().max()})
		}
	}
	method bulto() {return 1 + cosas.sum({cosa=>cosa.bulto()})}
}

object residuosRadioactivos{
	var peso_ = 0
	method setPeso(peso){peso_=peso}
	method nivelPeligrosidad() {return 200}
	method bulto() {return 1}
}

object embalajeDeSeguridad{
	var cosa_=null
	method envolver(cosa) {cosa_=cosa}
	method peso() {return cosa_.peso()}
	method nivelPeligrosidad() {return cosa_.nivelPeligrosidad()/2}
	method bulto() {return 2}
}


	
	