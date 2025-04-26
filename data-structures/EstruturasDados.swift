/* Tipos de básicos de coleções */

// MARK: Array
// Armazena valores do mesmo tipo em uma lista ordenada
print("\n--- Array ---\n")
var intArray: [Int] = [1, 2, 3]
var auxArray: [Int] = [90, 91, 92]
var textArray: [String] = []

// Adiciona item no final do array
intArray.append(4)
print(intArray)

// Adiciona conteúdos de outro array no final do array
intArray.append(contentsOf: auxArray)
print(intArray)

// Acessa o primeiro elemento do array, pode ser vazio (nil)
let first = intArray.first
print("first intArray = ", first ?? "Array vazio")
print("first textArray = ", textArray.first ?? "Array vazio")

// Retorna o tamanho do array
let size = intArray.count
print("count = ", size)

// Remove um elemento na posição especificada
intArray.remove(at: 0)
print(intArray)

// Remover todos os elementos do array
intArray.removeAll()
print(intArray)

// Retorna se o array está vazio
var isEmpty: Bool = intArray.isEmpty
print("intArray is empty = ", isEmpty)

// MARK: Set
// Armazena valores do mesmo tipo em uma lista não ordenada
print("\n--- Set ---\n")
var musicGenresSet: Set<String> = ["Rock", "Rap", "MPB"]
var emptySer: Set<String> = Set<String>()
var auxSet: Set<String> = ["Samba", "Forro"]
print(musicGenresSet)

// Adiciona um novo elemento no set
musicGenresSet.insert("Samba")
print("musicGenresSet = ", musicGenresSet)
print("auxSet = ", auxSet)

// Retorna um novo set com os elementos em comum entre eles
// A interseçao entre dois conjutos (teoria de conjuntos)
var intersectionSet: Set<String> = musicGenresSet.intersection(auxSet)
print(intersectionSet)

// Retorna um novo set com a união dos elementos
var unionSet: Set<String> = musicGenresSet.union(auxSet)
print(unionSet)

// Retorna um novo set com a diferença entre dois sets
var diffSetMusic: Set<String> = musicGenresSet.subtracting(auxSet)  // Tudo que esta em 'musicGenresSet' e nao está em 'auxSet'
var diffSetAux: Set<String> = auxSet.subtracting(musicGenresSet)  // Tudo que esta em 'auxSet' e nao está em 'musicGenresSet'
print("diffSetMusic = ", diffSetMusic)
print("diffSetAux", diffSetAux)

// Retorna se os sets não possuem elementos em comum
let isDisjoint: Bool = auxSet.isDisjoint(with: musicGenresSet)
print("isDisjoint = ", isDisjoint)

// Retorna se um set está contido em outro set
let isSubset: Bool = auxSet.isSubset(of: musicGenresSet)
print("'auxSet' is sub set of 'musicGenresSet' = ", isSubset)

// MARK: Dicionario
// Armazena uma associaçao entre chaves (sempre do mesmo tipo) e valores (sempre do mesmo tipo)
// em uma coleção não ordenada. Cada valor é associado em a uma única chave.
print("\n--- Dicionario ---\n")

// Dicionario vazio
var intNames: [Int: String] = [:]
print("intNames = ", intNames)

// Dicionario populado
var countryNames: [String: String] = ["BR": "Brazil", "USA": "United States of America"]
print("countryNames = ", countryNames)

// Adicionar valores e chaves no dicionario
intNames[1] = "Um"
intNames[2] = "Dois"
print("intNames = ", intNames)

// Retorna uma coleção com chaves do dicionario
print("intNames.keys = ", intNames.keys)

// Retorna uma coleção com valores do dicionario
print("intNames.values = ", intNames.values)

// Acesso ao valor de um dicionario buscando pela chave
print("intNames[1] = ", intNames[1] ?? "O dicionario não possui a chave '1'")
print("intNames[2] = ", intNames[2] ?? "O dicionario não possui a chave '2'")
print("intNames[3] = ", intNames[3] ?? "O dicionario não possui a chave '3'")
