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
		
		tolerancia -= 1	
	}
	
	method caramelosAEntregar(chico){
		const seAsustaONo = chico.capacidadSusto() - tolerancia
		
		if ( seAsustaONo > 0){
			return seAsustaONo
		}else{
			return 0
		}
	}

}
