/*
 Autor Hugo Reyes
 
 
 Crea un playground que contenga los elementos para representar un velocímetro de
 un automóvil. Recuerda que estamos practicando la programación orientada a
 objetos y primero debes diseñar la clase, enumeraciones o estructuras para
 llevarlas a un aplicación móvil. ¿Qué debes de realizar?
 
 */

import UIKit

/*
 La enumeración Velocidades cuenta con los siguientes elementos y sus respectivos valores:
 
 - Apagado = 0, representa la velocidad 0.
 
 - VelocidadBaja = 20, representa una velocidad de 20km por hora.
 
 - VelocidadMedia = 50, representa una velocidad de 50km por hora
 
 - VelocidadAlta = 120, representa una velocidad de 50km por hora.
 
 - Además, debes de declarar un inicializador que recibe un velocidad:
 
 - init( velocidadInicial : Velocidades )
 
 - El inicializador se debe asignar a self el valor de velocidadInicial
 
 */


// Se declara la enumeración Velocidades, con sus valores de tipo Int
enum Velocidades: Int{
    case Apagado = 0 // Representa la velocidad 0
    case VelocidadBaja = 20 // Representa una velocidad de 50km por hora
    case VelocidadMedia = 50 // Representa una velocidad de 50km por hora
    case VelocidadAlta = 120 // Representa una velociad de 120km por hora
    
    // Inicializador o constructor de la enumeración:
    init(velocidadInicial: Velocidades){ // Se recibe como entrada a Velocidades
        // que es una enumeración.
        self = velocidadInicial        // Ajusta el rawValue de la enumeración
        // con el valor de velocidadInicial
    }
    
}


// Se declara la clase Auto.
class Auto {
    // Instancia de la enumeración Velocidades, llamada velocidad
    var velocidad : Velocidades
    
    // Inicializador de la clase
    init(){
        // Instancia de la enumeración Velocidades
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    // Función de cambio de velocidad
    func cambioDeVelocidad( ) -> (actual: Int, velocidadEnCadena: String){
        // Se define una constante temporal
        let mensaje : String
        switch self.velocidad {
        case .Apagado:
            self.velocidad = .VelocidadBaja
            mensaje = "Velocidad Baja"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            mensaje = "Velocidad Alta"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Media"
        }
        
        return (actual: self.velocidad.rawValue, velocidadEnCadena: mensaje)
    }
    
}


var auto = Auto()

for i in 1...20{
    print (auto.cambioDeVelocidad())
}