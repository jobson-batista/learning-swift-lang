// Enums and Structures

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simplesDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .king:
            return "king"
        default:
            return "\(self.rawValue)"
        }
    }
}

let ace = Rank.ace
print(ace)
print(ace.rawValue)
print(Rank.king.rawValue)

// Struct
struct Card {
    var rank: Rank

    func simplesDescription() -> String {
        return "\nThe \(rank.simplesDescription())\n"
    }
}

let card = Card(rank: .five)

print(card.simplesDescription())

// Diference between Class and Struct
// Class -> Reference Values
// Struct -> A copy of values
class GoogleSheet {
    var author: String
    init(_ author: String) {
        self.author = author
    }
}
let file: GoogleSheet = GoogleSheet("Jobson")
print("File = \(file.author)")
let fileChanged = file
fileChanged.author = "Fulano"
print("File Changed = \(fileChanged.author)")
print("File = \(file.author)\n")

struct Excel {
    var author: String
}
let fileExcel: Excel = Excel(author: "Joao")
print("FileExcel = \(fileExcel.author)")
var fileExcelChanged: Excel = fileExcel
fileExcelChanged.author = "Beltrano"
print("FileExcelChanged = \(fileExcelChanged.author)")
print("FileExcel = \(fileExcel.author)\n")
