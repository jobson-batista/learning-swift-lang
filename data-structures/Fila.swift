// MARK: Fila
// Estrutura de dados do tipo FIFO (First in, First out)
// O Acesso é restrito aos elementos mais antigo da fila
// Operaçoes básicas:
//      enqueue(): inserir elemento na fila
//      dequeue(): Remover elemento da fila
//      peek(): Observa o primeiro elemento da fila

struct Queue {
    private(set) var array: [String] = []

    mutating func enqueue(_ item: String) {
        array.append(item)
    }

    mutating func dequeue() -> String? {
        if array.isEmpty {
            return nil
        } else {
            let tempElement = array.first
            array.remove(at: 0)
            return tempElement
        }
    }

    mutating func peek() -> String? {
        return array[0]
    }

    func isEmpty() -> Bool {
        return array.isEmpty
    }

    func getArray() -> [String] {
        return array
    }
}

var queuePeople: Queue = Queue()
queuePeople.enqueue("Joao")
queuePeople.enqueue("Ana")
queuePeople.enqueue("Maria")
print("Primeiro da fila = ", queuePeople.peek() ?? "Fila vazia")
var newFirst = queuePeople.dequeue()
print("Primeiro da fila = ", queuePeople.peek() ?? "Fila vazia")
print("Fila inteira = ", queuePeople.getArray())
print("Fila inteira = ", queuePeople.array)
