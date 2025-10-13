/*Como dijimos, cada **dependencia** de la municipalidad maneja una _flota de rodados_. 
Un rodado puede estar compartido entre varias dependencias (ver test más abajo). 
De cada dependencia importa también _cuántos empleados tiene_.
 
Debe ser posible enviarle los siguientes mensajes a cada objeto que representa a una dependencia.
- `agregarAFlota(rodado)` y `quitarDeFlota(rodado)`.
- `pesoTotalFlota()`, la suma del peso de cada rodado afectado a la flota.
- `estaBienEquipada()`, es verdadero si la flota tiene al menos 3 rodados, y además, _todos_ los rodados de
 la flota pueden ir al menos a 100 km/h.
- `capacidadTotalEnColor(color)`, la cantidad total de personas que puede transportar la flota afectada
 a la dependencia, considerando solamente los rodados del color indicado.
- `colorDelRodadoMasRapido()`, eso.
- `capacidadFaltante()`, que es el resultado de restar, de la cantidad de empleados, la capacidad sumada
 de los vehículos de la flota. 
- `esGrande()`, la condición es que la dependencia tenga al menos 40 empleados y 5 rodados.*/
import rodados.*
class Dependencia{
  const empleados = 40
  const flota = []
  method empleados()= empleados
  method flota()= flota
  method agregarAFlota(rodado){    
      flota.add(rodado)
    
  }
  method quitarDeFlota(rodado){
    if (flota.contains(rodado)){
      flota.remove(rodado)
    }
  }
  method pesoTotalFlota()= flota.sum({r => r.peso()})
  method estaBienEquipada()= flota.size() >= 3 and flota.all({r => r.velocidadMaxima() >= 100})
  method capacidadTotalEnColor(color)= flota.filter({r => r.color() == color}).sum({r => r.capacidad()})
  method colorDelRodadoMasRapido()= if(!flota.isEmpty()) flota.max({r => r.velocidadMaxima()}).color() 
  method capacidadFaltante()= empleados - flota.sum({r => r.capacidad()})
  method esGrande()= empleados >= 40 and flota.size() >= 5
}

