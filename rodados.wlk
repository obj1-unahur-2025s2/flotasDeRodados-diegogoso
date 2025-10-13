/*En este ejercicio vamos a construir un modelo que pueda servir para la administración
 de las flotas de rodados que utilizan las distintas dependencias de la Municipalidad de
 Coronel Vallejos. 

## Etapa 1 - Rodados y dependencias


. 
  
- Varios **autos especiales** que son todos distintos entre sí. De cada uno de ellos se debe especificar
 capacidad, velocidad máxima, peso y color.
*/

/*De cada **rodado** nos van a interesar: _capacidad_ (o sea, cuántos pasajeros puede transportar)
_velocidad máxima_, _color_ y _peso_.
*/

/*- Varios **Chevrolet Corsa**. <br>
  La capacidad de estos autos es de 4 pasajeros, su velocidad máxima 150 km/h, y pesan 1300 kg. <br>
  La municipalidad no estableció un color fijo para sus Corsa; por lo tanto, debe informarse el color
   de cada uno. <br>*/
class Corsa{
  const capacidad = 4
  const velocidadMaxima = 150
  const color
  const peso = 1300
  method color()= color
  method peso()= peso
  method capacidad()= capacidad
  method velocidadMaxima()= velocidadMaxima
}
/*- Varios **Renault Kwid** que funcionan _a gas_. 
  Cada uno de ellos puede tener puesto, o no, un tanque adicional. <br>
  La capacidad de un Kwid es de 4 pasajeros si no tiene puesto el tanque adicional
   o 3 pasajeros si sí lo tiene puesto. <br>
  La velocidad máxima es 120 km/h con, o 110 km/h sin, tanque adicional. <br>
  El peso es 1200 kg, más 150 kg adicionales si tiene tanque adicional. <br>
  Todos los autos de este tipo con que cuenta la municipalidad son azules. <br>*/
class Kwid{
  
  const color = "azul"
  const peso = 1200
  const property tieneTanqueAdicional
  
  method color()= color
  method peso()= peso + (if (tieneTanqueAdicional) 150 else 0)
  method capacidad()= if (tieneTanqueAdicional) 3 else 4
  method velocidadMaxima()= if (tieneTanqueAdicional) 120 else 110
  method tieneTanqueAdicional()= tieneTanqueAdicional
}
class RodadoEspecial{
  const capacidad
  const velocidadMaxima
  const color
  const peso
  method color()= color
  method peso()= peso
  method capacidad()= capacidad
  method velocidadMaxima()= velocidadMaxima
}
object trafic {
    var interiorActual = comodo
    var motorActual = pulenta
    const color = "blanco"
    const pesoBase = 4000

    method color() = color
    method peso() = pesoBase + interiorActual.peso() + motorActual.peso()
    method capacidad() = interiorActual.capacidad()
    method velocidadMaxima() = motorActual.velocidadMaxima()

    method cambiarInterior(nuevoInterior) {
        interiorActual = nuevoInterior
    }

    method cambiarMotor(nuevoMotor) {
        motorActual = nuevoMotor
    }
    method interiorActual()= interiorActual
    method motorActual()= motorActual
}
object comodo{
  const capacidad = 5
  const peso = 700
  method capacidad()= capacidad
  method peso()= peso
}
object popular{
  const capacidad = 12
  const peso = 1000
  method capacidad()= capacidad
  method peso()= peso
}
object pulenta{
  const peso = 800
  const velocidadMaxima = 130
  method peso()= peso
  method velocidadMaxima()= velocidadMaxima
}
object bataton{
  const peso = 500
  const velocidadMaxima = 80
  method peso()= peso
  method velocidadMaxima()= velocidadMaxima
}