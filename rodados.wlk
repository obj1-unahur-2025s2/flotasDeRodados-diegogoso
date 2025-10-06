/*En este ejercicio vamos a construir un modelo que pueda servir para la administración
 de las flotas de rodados que utilizan las distintas dependencias de la Municipalidad de
 Coronel Vallejos. 

## Etapa 1 - Rodados y dependencias

De cada **rodado** nos van a interesar: _capacidad_ (o sea, cuántos pasajeros puede transportar)
_velocidad máxima_, _color_ y _peso_.

A continuación se describen los rodados que maneja la muncipalidad.

- Varios **Chevrolet Corsa**. <br>
  La capacidad de estos autos es de 4 pasajeros, su velocidad máxima 150 km/h, y pesan 1300 kg. <br>
  La municipalidad no estableció un color fijo para sus Corsa; por lo tanto, debe informarse el color
   de cada uno. <br>

- Varios **Renault Kwid** que funcionan _a gas_. 
  Cada uno de ellos puede tener puesto, o no, un tanque adicional. 
  - La capacidad de un Kwid es de 4 pasajeros si no tiene puesto el tanque adicional
   o 3 pasajeros si sí lo tiene puesto.
  - La velocidad máxima es 120 km/h con, o 110 km/h sin, tanque adicional.
  - El peso es 1200 kg, más 150 kg adicionales si tiene tanque adicional. 
  - Todos los autos de este tipo con que cuenta la municipalidad son azules. <br>

- **Una Trafic** (sí, una sola), que es reconfigurable, porque se le puede cambiar el interior y
 el motor.
  - La municipalidad cuenta con dos _interiores_, uno **cómodo** (capacidad 5 pasajeros, peso 700 kg)
   y otro **popular** (capacidad 12 pasajeros, peso 1000 kg). La municipalidad tiene un solo interior de
    cada tipo.
  - También ha comprado dos _motores_ para su Trafic, uno **pulenta** (que pesa 800 kg y permite una 
  velocidad máxima de 130 km/h) y otro **batatón** (que pesa 500 kg y permite una velocidad máxima de
   80 km/h). La municipalidad tiene un solo motor de cada tipo.
  - Varias características de la Trafic dependen de qué interior y qué motor le hayan puesto:
    - La _capacidad_ de la Trafic es la del interior.
    - La _velocidad máxima_ es la que permite el motor.
    - El peso es 4000 kg más el peso del interior más el del motor.
  - Finalmente, digamos que la Trafic es de _color blanco_, independientemente del interior y el motor
   que tenga puestos. 
  
- Varios **autos especiales** que son todos distintos entre sí. De cada uno de ellos se debe especificar
 capacidad, velocidad máxima, peso y color.
*/
class Corsa {
  const color
  const listaChevrolet =[]
  method capacidad() = 4
  method velocidadMaxima() = 150
  method peso() = 1300
  method color() = color
  method agregarAChevrolet(unCorsa) = listaChevrolet.add(unCorsa)
  method listaChevrolet() = listaChevrolet
}
class Kwid {
  const tieneTanqueAdicional
  const color = "azul"
  const listaKwid =[]
  method capacidad() = if(tieneTanqueAdicional) 3 else 4
  method velocidadMaxima() = if(tieneTanqueAdicional) 110 else 120
  method peso() = if(tieneTanqueAdicional) 1350 else 1200
  method color() = color
  method agregarAKwid(unKwid) = listaKwid.add(unKwid)
  method listaKwid() = listaKwid
}
class AutoEspecial {
  const property capacidad
  const property velocidadMaxima
  const peso
  const color
  const listaAutosEspeciales =[]
  method capacidad() = capacidad
  method velocidadMaxima() = velocidadMaxima
  method peso() = peso
  method color() = color
  method agregarAutoEspecial(unAutoEspecial) = listaAutosEspeciales.add(unAutoEspecial)
  method listaAutosEspeciales() = listaAutosEspeciales
}
object traffic{
  var interior = comodo
  var motor = pulenta 
  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidadMaxima()
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"
  method ponerInterior(unInterior){
    interior = unInterior
  }
  method ponerMotor(unMotor){
    motor = unMotor
  }
}
object comodo{
  method capacidad() = 5
  method peso() = 700
}

object popular{
  method capacidad() = 12
  method peso() = 1000
}
object pulenta{
  method peso() = 800
  method velocidadMaxima() = 130
}
object bataton{
  method peso() = 500
  method velocidadMaxima() = 80
} 
