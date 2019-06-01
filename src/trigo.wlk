import hector.*
import wollok.game.*
import mercado.*
import maiz.*
import tomaco.*


class Trigo inherits Plantas{
	
	var property position 
	var property image 
	
	
	method etapa(){
		
		if(self.image() == "wheat_0.png"){
			
			return 0
		
		}else if(self.image() == "wheat_1.png"){
			
		  return 1
		  
		}else if(self.image() == "wheat_2.png"){
		 
		   return 2 
		 
		}else{
			
			return 3
		
		}
		
	}
	
	method procesoDeRiego(){
		
		if(self.etapa() == 0){
			
		 game.removeVisual(self)
		 self.image("wheat_1.png")
		 game.addVisual(self)
		 
		}else if(self.etapa() == 1){
			
		 game.removeVisual(self)
		 self.image("wheat_2.png")
		 game.addVisual(self)
		 
		}else if(self.etapa() == 2){
		  
		  game.removeVisual(self)
		  self.image("wheat_3.png")
		  game.addVisual(self)	
			
		}else{
			
		 game.removeVisual(self)
		 self.image("wheat_0.png")
		 game.addVisual(self)
		
		}
		
	}
	
	
	method precio(){
		
		return (self.etapa() - 1) * 100
	}
	
  }