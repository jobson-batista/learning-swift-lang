// greet = saudar (fazer saudacao)
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}

func greetV2(_ person: String, on day: String) -> String {
    return "Hi \(person), today is \(day)! Version 2"
}

var greeting = greet(person: "Jobson", day: "Monday")
print(greeting)

var greeting2 = greetV2("Jhon", on: "Monday")
print(greeting2)

// Tuples
func calculateStatics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max: Int = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statitics = calculateStatics(scores: [3, 5, 100, 3, 9])
print("\nSUM = \(statitics.sum)\nMIN = \(statitics.min)\nMAX = \(statitics.max)")
print("SUM by index = \(statitics.2)\n")

func returnFiftem() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
var anyNumber = returnFiftem()
print("Any Number = \(anyNumber)\n")

func makeIncrement() -> ((Int) -> Int) {

    func addOne(number: Int) -> Int {
        return 1 + number
    }

    return addOne
}

var increment = makeIncrement()
print(increment(8))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
var result = hasAnyMatches(list: numbers, condition: lessThanTen)
print("Numbers = \(numbers)")

// Closure -> Function with access variables and contats out scope
let mapperV1 = numbers.map({ (n: Int) -> Int in
    let result = 3 * n
    return result
})
print("Mapper V1 = \(mapperV1)")

let mapperV2: [Int] = numbers.map({ number in 3 * number })
print("Mapper V2 = \(mapperV2)")
