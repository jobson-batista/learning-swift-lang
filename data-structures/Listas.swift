// MARK: Lista Ligada ou Lista Encadeada ou Linked List
// Estrutura de dados onde os elementos de um mesmo tipo estão
// organizadas de maneira sequencial.
// Cada elemento é chamado de 'nó' e cada nó aponta para o próxmimo elemento/nó.
// É possível remover e inserir em locais arbitrários.
// Vantagem: Flexibilidade do uso de memória, remover e inserir em locais arbitrários.
// Desvantagem: A alocação de memória é mais lenta.
// Operacões básicas:
//      Inserir elemento
//      Remover elemento
//      Acessar um elemento

// MARK: Lista Duplamente Encadeada
// Cada nó aponta para dois nós (o anterior e o próximo)
// Operacões básicas:
//      Inserir elemento
//      Remover elemento
//      Acessar um elemento

// MARK: Lista Circular
// É usado quando é necessário representar conjutos cíclicos
// O ultimo elemento tem o endereço de memória para o primeiro elemento. Nó = Elemento
// Operacões básicas:
//      Inserir elemento
//      Remover elemento
//      Acessar um elemento

// MARK: Implementaçao
class Node {
    var value: String
    var next: Node?  // struct não pode ter um atributo do tipo 'recursiva' (dele memso)

    init(value: String) {
        self.value = value
    }
}

class SimpleLinkedList {
    private var head: Node?
    private var tail: Node?

    public func isEmpty() -> Bool {
        return head == nil
    }

    public func first() -> Node? {
        return head
    }

    public func last() -> Node? {
        return tail
    }

    public func append(_ value: String) {
        let newNode: Node = Node(value: value)
        if let tailNode = tail {
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }

    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index

            while node != nil {
                if i == 0 { return node }

                i -= 1
                node = node!.next
            }
        }
        return nil
    }

    public func removeAll() {
        head = nil
        tail = nil
    }

    public func remove(node: Node) {

        // variáveis auxiliares para acessar o nó corrente e o anterior
        let current: Node? = self.head
        let previus: Node? = nil

        while current != nil {

            // Encontra o nó que buscamos
            if current?.value == node.value {
                if previus != nil {
                    // Caso o nó que queremos deletar seja a cauda(tail), deletamos ela
                    if previus?.value == self.tail?.value {
                        self.tail = previus
                    }

                    // Atualiza o ponteiro 'proximo' do no anterior (agora é cauda)
                    previus?.next = current?.next
                    break
                } else {
                    if current?.value == tail?.value {
                        self.tail = previus
                    }

                    self.head = current?.next
                    break
                }
            }
        }
    }
}

extension SimpleLinkedList: CustomStringConvertible {
    public var description: String {
        var text = "[ "
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + " ]"
    }
}

var linkedList: SimpleLinkedList = SimpleLinkedList()
linkedList.append("banana")
linkedList.append("uva")
print(linkedList)
linkedList.remove(node: Node(value: "banana"))
print(linkedList)
