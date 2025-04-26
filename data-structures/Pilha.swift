// MARK: Pilha
// Pilha: Estrutura de dados do tipo LIFO (Last in, First out)
// O Acesso é restrito aos elementos mais recentes da pilha
// Operaçoes básicas:
//      push(): inserir elemento no topo
//      pop(): Remover elemento do topo
//      top(): Observa o top

struct StringStack {
    private var array = [String]()

    mutating func push(item: String) {
        array.append(item)
    }

    mutating func pop() -> String? {
        return array.popLast()
    }

    mutating func top() -> String? {
        return array.last
    }

    var isEmpty: Bool {
        return array.isEmpty
    }
}

var stack = StringStack()

print("stackIsEmpty = ", stack.isEmpty)
stack.push(item: "Um")
print("top = ", stack.top() ?? "Pilha Vazia")
print("stackIsEmpty = ", stack.isEmpty)
stack.push(item: "Dois")
print("top = ", stack.top() ?? "Pilha Vazia")

print("pop = ", stack.pop() ?? "Pilha Vazia")

print("stackIsEmpty = ", stack.isEmpty)
