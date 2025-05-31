import bicis.*

class Deposito{
    const bicis = []
    method agregarBicis(listaDeBicis) {
        if(listaDeBicis.any({b => bicis.contains(b)})){
            //self.error("no se puede agregar dos veces una bici al deposito")
            throw new Exception(message = "no se puede agregar dos veces una bici al deposito")
        }
        if(listaDeBicis.any({b => listaDeBicis.occurrencesOf(b)}) > 1){
            self.error("hay bicis duplicadas en la lista de las nuevas bicis")
            //throw new Exception(message = "no se puede agregar dos veces una bici al deposito")
        }
        
        bicis.addAll(listaDeBicis)
    }


    method bicisRapidad() = bicis.filter({b => b.velocidadCrucero() > 25}) 
}