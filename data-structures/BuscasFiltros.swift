struct Person {
    var name: String
    var age: Int
}
let myName = "Jobson"

let persons: [Person] = [
    Person(name: "Jobson", age: 29), Person(name: "Maria", age: 25), Person(name: "Steve", age: 8),
    Person(name: "Bia", age: 26),
]

// Busca convencional usando um for
for person in persons {
    if person.name == "Joao" {
        print(person)
    }
}

// Recupera o primeiro elemento da coleçao que satifaz essa condição
// {$0.name == myName} é uma funçao. Onde $0 é o elemento iterado
// essa funçao vai percorrer todo o array e validar o name == myName
let person = persons.first(where: { $0.name == myName })
print(person ?? "Não estou no array")

// Retorna true se existir algum elemento com age >= 18
let hasAdult = persons.contains(where: { $0.age >= 18 })
print("hasAdult = ", hasAdult)

// Retorna uma nova coleçao com os elementos da coleçao inicial que satisfaz a condição
let adults = persons.filter { $0.age >= 18 }
print("\nadults = ", adults)

let newAdults = persons.filter { person in
    return person.age >= 18
}

print("\nnewAdults = ", newAdults)
