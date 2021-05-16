import UIKit

struct Operacion{
    var symbol: String
    
    init(_ symbol: String){
        self.symbol = symbol
    }
    
    func operar(_ a: String, _ b: String) -> Double?{
        
        guard let valueA =  Double(a) else {
            return nil
        }
        
        guard let valueB =  Double(b) else {
            return nil
        }
        
        switch self.symbol {
        case "+":
            return valueA + valueB
        case "-":
            return valueA - valueB
        case "*":
            return valueA * valueB
        case "/":
            return valueB == 0 ? nil :  valueA / valueB
        default:
            return nil
        }
    }
}

var operacion: Operacion = Operacion("+")
operacion.operar("3","2")
operacion.operar("","2")
operacion.operar("2","")
operacion.operar("","")
operacion.operar("a","b")
operacion.operar("-","*")

operacion.symbol = "-"
operacion.operar("5","2")
operacion.operar("4","9")

operacion.symbol = "*"
operacion.operar("5","2")
operacion.operar("-4","9")
operacion.operar("-2","-3")

operacion.symbol = "/"
operacion.operar("6","3")
operacion.operar("1","3")
operacion.operar("1","0")


