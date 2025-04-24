/// var : variable
/// let : constant
var age = 99
let name = "The Coder"

// Type declaration is not mandatory
let hometown: String = "London"
var temperatureCurrent: Double = 19.8

let hometownText: String =
    "My hometown is " + hometown + ", the temperature current is \(String(temperatureCurrent))C"

print("\(hometownText)\n")
// list
let myList: [String] = ["Coffee", "Cookie", "Eggs"]

// dictionary
var employees: [String: String] = [
    "Jhon": "iOS Developer",
    "Anne": "UX Design",
    "Steve": "Full Stack Developer",
]

print("Employees Dict Before: \(employees)\n")

employees["Maria"] = "CEO"

print("Employees Dict After: \(employees)\n")

var emptyList: [String] = []
var emptyDict: [String: Double] = [:]

print("emptyList = \(emptyList)\n")
print("emptyDict = \(emptyDict)\n")

print("Age Int = \(age)")
print("Age Double = \(Double(age))")
