enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never has toner" {
        throw PrinterError.noToner
    } else if printerName == "Out of paper" {
        throw PrinterError.outOfPaper
    } else if printerName == "On Fire" {
        throw PrinterError.onFire
    }
    return "Job sent"
}

// MARK: Primeiro teste
do {
    let printResponse = try send(job: 1040, toPrinter: "The legend!")
    print("printResponse = \(printResponse)")
} catch PrinterError.onFire {
    print("The print on fire!!")
} catch let printerError as PrinterError {
    print("PrinterError = \(printerError)")
} catch {
    print(error)
}

// MARK: Segundo teste
do {
    let printResponse = try send(job: 1040, toPrinter: "On Fire")
    print("printResponse = \(printResponse)")
} catch PrinterError.onFire {
    print("The print on fire!!")
} catch let printerError as PrinterError {
    print("PrinterError = \(printerError)")
} catch {
    print(error)
}

// Converter um resultado em um Optional
let printerSuccess: String? = try? send(job: 1001, toPrinter: "Maria")
let printerFailure: String? = try? send(job: 1002, toPrinter: "Never has toner")

print(printerSuccess ?? "empty")
print(printerFailure ?? "empty")

var fridgeIsOpen = false
var fridgeContent: [String] = ["milk", "eggs", "coffee"]

// MARK: defer
// Esse bloco de código é executado sempre que a funcao terminar de executar todo o código,
// mesmo quando lançar algum erro
func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}

print("RESULTADO: ", fridgeContains("banana"))
print("RESULTADO FridgeIsOpen: ", fridgeIsOpen)
