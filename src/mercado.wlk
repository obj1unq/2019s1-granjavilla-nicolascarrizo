import wollok.game.*
import hector.*
import tomaco.*
import maiz.*
import trigo.*



class Mercado{
	
	var property position 
	var property cantDeMonedas 
	var property cantDeMercaderia = []
	
	method image(){
		
		return "market.png"
	}
	
	method nuevosProductos(plantas){
		
		cantDeMercaderia.add(plantas)
	}
	
	method descontarMonedas(cantDeOro){
		
		cantDeMonedas -= cantDeOro
	}
}