class Bici{
    const rodado
    const largo
    const marca
    const accesorios = #{}

    method agregarAccesorio(unAccesorio){accesorios.add(unAccesorio)}
    method quitarAccesorio(unAccesorio){accesorios.remove(unAccesorio)}

    method altura() = rodado * 2.5 + 15
    method velocidadCrucero() = if(largo > 120) rodado + 6 else rodado + 2
    method carga() = accesorios.sum({c => c.carga()})
    method peso() = rodado/2 + self.pesoAccesorios()
    method pesoAccesorios() = accesorios.sum({c => c.peso()})

    method tieneLuz() = accesorios.any({c => c.esLuminoso()})

    method cantidadDeAccesoriosLivianos() = accesorios.count({c => c.peso() < 1})

}

//Accesorios que puede tener cada Bici
class Farolito{
    method peso() = 0.5
    method carga() = 0
    method esLuminoso() = true
}

class Canasto {
    const  volumen
    method peso() = volumen / 10
    method carga() = volumen * 2
    method esLuminoso() = false
    method initialize(){
        if(not volumen.between(1, 20)){
            self.error(volumen.toString()+"no es un valor entre 1 y 20")
        }
    }
}

class Morral{
    const largo
    var tieneOjoDeGato
    method peso() = 1.2
    method carga() = largo / 3
    method esLuminoso() = tieneOjoDeGato 

    method ponerOjoDeGato() {tieneOjoDeGato = true}
    method quitarOjoDeGato() {tieneOjoDeGato = false}   
}
