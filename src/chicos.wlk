import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0

	method enojar(){
		nivelIra += 1
	}
	
	method ponerTraje(traje){
		disfraces.add(traje)
	}
	
	method capacidadSusto(){
		return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	

	method disfrazar(elemento){
		disfraces.add(elemento)
	}
}

object pancracio {
	const asustar = 'buuuu'
	var property disfraces = mascaraDracula
	
	method capacidadSusto(){
		return ( asustar.length() - 1 ) + disfraces.nivelSusto()
	}
}

// El chico inventado .

object pedro {

}

