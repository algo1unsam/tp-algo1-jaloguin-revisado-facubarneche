import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0

	method enojar(){
		nivelIra += 1
	}
	
	method capacidadSusto(){
		return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	
	method sacarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	

	method disfrazar(elemento){
		disfraces.add(elemento)
	}
	
	method dejarDeUsarMenosEfectivo(){
		const aEliminar = disfraces.min({disfraz => disfraz.nivelSusto()})
		disfraces.remove(aEliminar)
	}
	
	method disfraces() {
		return disfraces
	}
	
	method recibirCaramelos(cant){
		caramelos += (cant * 75).div(100)
	}
	
	method caramelos(){
		return caramelos
	}
	
	method desgastarDisfraz(){
		disfraces.forEach({disfraz => disfraz.aumentarLongitud()})
		disfraces.forEach({disfraz => disfraz.usar()})
	}
	
}

object pancracio {
	var asustar = 'buuuu'
	const disfraces = [mascaraDracula]
	var caramelos = 0
	
	method capacidadSusto(){
		return ( asustar.length() - 1 ) + disfraces.first().nivelSusto()
	}
	
	method sacarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	
	method disfrazar(elemento){
		disfraces.clear()
		disfraces.add(elemento)
	}
	
	method quitarDisfraz(mascara){
		asustar += 'uu'
	}
	
	method disfraces() {
		return disfraces
	}
	
	method recibirCaramelos(cant){
		caramelos += cant
	}
	
	method caramelos(){
		return caramelos
	}
	
	method desgastarDisfraz(){
		disfraces.forEach({disfraz => disfraz.aumentarLongitud()})
		disfraces.forEach({disfraz => disfraz.usar()})
	}
	
}

// El chico inventado .
//¿Qué características tiene que tener para que esto sea posible?
//Que el objeto, en este caso "pedro", sea polimorfico respecto a los otros chicos 
object pedro {
	const disfraces = [ ]
	var caramelos = 0
	
	method capacidadSusto(){
		return 0 + disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	
	method sacarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	
	method disfrazar(elemento){
		disfraces.add(elemento)
	}
	
	method disfraces() {
		return disfraces
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	
	method recibirCaramelos(cant){
		caramelos += (cant * 25).div(100)
	}
	
	method caramelos(){
		return caramelos
	}
	
	method desgastarDisfraz(){
		disfraces.forEach({disfraz => disfraz.aumentarLongitud()})
		disfraces.forEach({disfraz => disfraz.usar()})
	}
}


