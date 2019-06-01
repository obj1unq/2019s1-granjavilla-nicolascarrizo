import wollok.game.*
import mercado.*
import tomaco.*
import maiz.*
import trigo.*


object hector {
	
	var property position = game.at(1, 1)
	var cantDeOro = 0
	var plantasParaVender = []
	
	method image(){
	
		
		return "player.png"
	}
	
	method sembra(semilla){
		
		game.addVisualIn(semilla, position)
		 
		
	}
	
	method rega(){
		
	   var semillasEncontradas = game.colliders(self)
		
		if(not semillasEncontradas.isEmpty()){
			
			
			self.regarSemillas(semillasEncontradas)
			
		}else{
			
		  game.say(self, "No tengo nada para regar")
		}
	}
	
	method regarSemillas(semillas){
		
	   semillas.forEach({semilla => self.regar(semilla)})
	}
	
	method regar(semilla){
		
		if(semilla.image() == "corn_baby.png"){
			
			semilla.procesoDeRiego()
			
		
		}else if (semilla.image() ==  "tomaco.png"){
			
			semilla.procesoDeRiego()
			
		}else{
			
			semilla.procesoDeRiego()
		}
	}
	
	method cosecha(){
		
		var plantasACosechar = game.colliders(self)
		
		if (not plantasACosechar.isEmpty()){
			
	   		self.cosecharPlantas(plantasACosechar)
		
		}else{
			
			 game.say(self, "No tengo nada para cosechar")
		}
	}
	
	
	method cosecharPlantas(plantas){
		
		plantas.forEach({planta => self.cosechar(planta)})
	}
	
	method cosechar(planta){
		
		if(planta.image() == "corn_adult.png"){
			
			planta.procesoDeCosecha()
			plantasParaVender.add(planta)
			
		
		}else if (planta.image() ==  "tomaco.png"){
			
			planta.procesoDeCosecha()
			plantasParaVender.add(planta)
			
		}else if(planta.image() == "wheat_2.png" or planta.image() == "wheat_3.png"){
			
			planta.procesoDeCosecha()
			plantasParaVender.add(planta)
		}else{
			
			 game.say(self, "No tengo nada para cosechar")
		}
	}
	
	method vender(){
		
		cantDeOro += plantasParaVender.sum({planta => planta.precio()})
		plantasParaVender = []
	}
	
	method ganancias(){
		
		game.say(self, "Tengo"  + cantDeOro +  "monedas y" +   plantasParaVender.size() + "para vender" )
	}
	
	method venderAlMercado(mercado){
		
		mercado.nuevosProductos(plantasParaVender)
		keyboard.v().onPressDo { self.vender() }
		mercado.descontarMonedas(cantDeOro)
	}
		
}


