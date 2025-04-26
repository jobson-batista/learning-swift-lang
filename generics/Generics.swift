// MARK: Sobre Generics
func makeArray<T>(repeating item: T, numberOfTimes: Int) -> [T] {
    var result: [T] = []
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
print(makeArray(repeating: "Ola", numberOfTimes: 2))
print(makeArray(repeating: 2, numberOfTimes: 2))

enum OptionalValue<T> {
    case none
    case some(T)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(10)
print(possibleInteger)

// MARK: bloco where
// Especifica os requisitos dos genericos T e U
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if rhsItem == lhsItem {
                return true
            }
        }
    }
    return false
}

let elementsEquals1 = anyCommonElements([1, 2, 3], [3])
print("elementsEquals1 = ", elementsEquals1)
