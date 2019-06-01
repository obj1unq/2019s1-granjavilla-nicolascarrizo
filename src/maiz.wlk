import hector.*
import wollok.game.*
import mercado.*

class Plantas{
	
	method procesoDeCosecha(){
		
		game.removeVisual(self)
	}
	
}


class Maiz inherits Plantas{
	
	var property position 
	var property image 
	
	method procesoDeRiego(){
		
		game.removeVisual(self)
		self.image("corn_adult.png")
		game.addVisual(self)
	}
	
	
	method precio(){
		
		return 150
	}
	
}