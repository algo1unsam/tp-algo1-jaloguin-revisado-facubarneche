import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	method serAsustadoPor(chico){
		chico.recibirCaramelos(self.caramelosAEntregar(chico))
		chico.desgastarDisfraz()
		tolerancia -= 1	
	}
	
	method caramelosAEntregar(chico){
		return (chico.capacidadSusto() - tolerancia).max(0)
	}

}
