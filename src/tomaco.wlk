import hector.*
import wollok.game.*	
import mercado.*
import maiz.*
import trigo.*


class Tomaco inherits Plantas{
	
   var property position 
   var property image 

   method procesoDeRiego(){
   	
   	game.removeVisual(self)
    self.position(self.position().up(1))
	game.addVisualIn(self, self.position())
   }
	
	method precio(){
		
		return 80
	}
	
}