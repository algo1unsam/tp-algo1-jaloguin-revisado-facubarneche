object trajeDeBruja {
	
	method nivelSusto() {
		return 10
	}
	
	method aumentarLongitud(){}	
	
	method usar(){}
	
} 

object barba {
	var longitud = 2
	var uso = 0
	
	method nivelSusto(){
		return 5 * longitud - uso
	}
	
	method aumentarLongitud(){
		longitud += 1	
	}	
	
	method usar(){
		uso += 1
	}
	//Este metodo es totalmente personal, lo cumple una madre comprometida con los chicos
	method agregarPelos(){
		uso = (uso - 2).max(0)
	}
}

object mascaraDracula {
	const tamanio = 2

	method nivelSusto() {
		return 2 * tamanio
	}

	method usar(){}
	
	method aumentarLongitud(){}	
}

object mascaraFrankenstein {
	const tamanio = 22

	method nivelSusto() {
		return tamanio //Elimine el * 2 para que funcione el test (PREGUNTAR)
	}
	
	method usar(){}
	
	method aumentarLongitud(){}	
}

object mascaraPolitico {
	const promesas = 10

	method nivelSusto(){
		return promesas
	}
	
	method usar(){}
	
	method aumentarLongitud(){}	
}

