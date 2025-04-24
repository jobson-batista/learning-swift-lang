// Flow Control

let score = [73, 43, 12, 89, 41]
var teamScore = 0

for scoreCurrent in score {
    print("Score Current: \(scoreCurrent)")
    if scoreCurrent > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print("TeamScore = \(teamScore)")

// Values Optional
var message: String? = "Hello"
print(message == nil)

var optionalName: String? = "Jhon Locke"
var newMessage = "Hello"

// Validate if optionalName has any value and is different nil
if let name = optionalName {
    newMessage = "Hello, \(name)"
    print("\n\(newMessage)")
} else {
    print("\nName is not exist!")
}

let nickname: String? = nil
// let nickname: String? = "jobson.dev"
let fullName: String = "Jack Snow"
let informalMessage = "Hi \(nickname ?? fullName)"  // if nickname is nil, so show fullName
print(informalMessage)

// Switch Case
let vegetable = "new tor"

switch vegetable {
case "tor":
    print("This is TOR!")
case "tomato", "chili":
    print("This is tomato or chili :)")
case let x where x.hasPrefix("tor"):
    print("What is type tor?")
default:
    print("Everthing good soup.")
}

// For in
let numbers = [
    "Prime": [2, 3, 5, 11, 13],
    "Fibtonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 6, 25],
]

var lagerst = 0
var key = ""
for (_key, numbers) in numbers {  // _: key not used , numbers: values (key, value)

    for num in numbers {
        if num > lagerst {
            lagerst = num
            key = _key
        }
    }
}

print("\(key) : \(lagerst)")

// While
print("\nWhile Block")
var n = 2
while n < 100 {
    n *= 2
    print(n)
}

// repeat
print("\nRepeat Block")
var m = 2
repeat {
    m *= 2
    print(m)
} while m < 100
print("FIM Repeat!")

var total = 0
for i in 0..<4 {  // from 0 to 3
    total += i
    print("total current = \(total) \t i = \(i)")
}
print("total final = \(total)\n")

var totalV2 = 0
for i in 0...4 {  // from 0 to 4
    totalV2 += i
    print("totalV2 current = \(totalV2) \t i = \(i)")
}
print("totalV2 final = \(totalV2)")
