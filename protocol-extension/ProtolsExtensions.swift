// É uma boa prática colocar o sufixo 'Protocol' no nome do protocolo.
// Por exemplo: CarProtocol, ControllerProtocol
protocol ExampleProtocol {
    var simpleDescription: String { get }  // Variável somente de acesso (get)
    //mutating: indica que a função pode modificar os proprios dados da struct
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 9
    func adjust() {
        simpleDescription += " (Now 100% adjusted)"
    }
}

var simpleClass: SimpleClass = SimpleClass()
print("SimpleClass before:\t\(simpleClass.simpleDescription)")
simpleClass.adjust()
let classDescription: String = simpleClass.simpleDescription
print("SimpleClass after:\t\(classDescription)")

struct SimpleStruct: ExampleProtocol {
    var simpleDescription: String = "A simple struct"
    mutating func adjust() {
        simpleDescription += " (ajusted)"
    }
}

var simpleStruct: SimpleStruct = SimpleStruct()
print("\nSimpleStruct before:\t\(simpleStruct.simpleDescription)")
simpleStruct.adjust()
print("SimpleStruct after:\t\(simpleStruct.simpleDescription)")

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)

let protocolValue: ExampleProtocol = simpleClass
print(protocolValue.simpleDescription)
