import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}
class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    func cambioDeVelocidad( )-> ( actual : Int, velocidadEnCadena: String){
    var text = ""
    let vel = velocidad.rawValue
        switch(velocidad){
            case .Apagado:
               velocidad = Velocidades.VelocidadBaja
               text = "Velocidad Baja"
            break;
            case .VelocidadBaja:
                velocidad = Velocidades.VelocidadMedia
                text = "Velocidad Media"
            break;
            case .VelocidadMedia:
                velocidad = Velocidades.VelocidadAlta
                text = "Velocidad Alta"
            break;
            case .VelocidadAlta:
                velocidad = Velocidades.VelocidadMedia
                text = "Velocidad Baja"
            break;
        }
        return (vel, text)
    }
}

var auto = Auto()

for _ in 1...20 {
    print(auto.cambioDeVelocidad())
}