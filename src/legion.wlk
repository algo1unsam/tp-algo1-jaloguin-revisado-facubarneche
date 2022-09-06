import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]

	method agregarIntegrantes(integrante){
		integrantes = integrante
	}
	
	method integrantes(){
		return integrantes
	}
	
	method capacidadSusto(){
		return integrantes.sum({integrante => integrante.capacidadSusto()})
	}
	
	method caramelos(){
		return integrantes.sum({integrante => integrante.caramelos()})
	}
	
	method lider(){
		return integrantes.max({integrante => integrante.capacidadSusto()})
	}
	
	method desgastarDisfraz(){
		integrantes.forEach({integrante => integrante.disfraces().forEach({disfraz => disfraz.aumentarLongitud()})})    //disfraces().forEach({disfraz => disfraz.aumentarLongitud()})
		integrantes.forEach({integrante => integrante.disfraces().forEach({disfraz => disfraz.usar()})})
	}
	
	method recibirCaramelos(cant){
		self.lider().recibirCaramelos(cant)
	}
	
	method sacarDisfraz(disfraz){
		integrantes.forEach({ integrante => integrante.sacarDisfraz(disfraz) })
	}

	//Retorna un array con todos los disfraces, pero antes limpia los repetidos DE CADA PERSONAJE (no puede pedro tener 2 veces barba),
	// si 2 personas distintos tiene el mismo los retorna a los 2 (pedro y macaria si pueden repetir barba)
	method todosLosDisfraces(){
		return integrantes.map({integrante => integrante.disfraces().asSet()}).flatten()
	}
	
	//disfracesRepetidos y normaSinRepetidos lo tuve que googlear, lo entendi!!!!
	method disfracesRepetidos(){
		return self.todosLosDisfraces().filter({ disfraz => self.todosLosDisfraces().occurrencesOf(disfraz) > 1 })
	}

	method normaSinRepetidos(){
		self.disfracesRepetidos().forEach({ disfraz => self.sacarDisfraz(disfraz) })
	}
	
}

object barrio {
	var chicos = []
	
	method chicosConMasCaramelos(cant){
		return chicos.sortedBy({x, y => x.caramelos() > y.caramelos()}).take(cant)
	}
	
	method chicos(grupo){
		chicos = grupo
	}
	
	method algunoMuyAsustador(){
		return chicos.any({chico => chico.capacidadSusto() > 42})
	}
}















