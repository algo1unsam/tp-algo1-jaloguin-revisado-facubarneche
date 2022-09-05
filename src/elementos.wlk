object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2
	
	method nivelSusto(){
		return 5 * longitud
	}
}

object mascaraDracula {
	const tamanio = 2

	method nivelSusto() {
		return 2 * tamanio
	}

}

object mascaraFrankenstein {
	const tamanio = 22

	method nivelSusto() {
		return tamanio //Elimine el * 2 para que funcione el test (PREGUNTAR)
	}
}

object mascaraPolitico {
	const promesas = 10

	method nivelSusto(){
		return promesas
	}
}

