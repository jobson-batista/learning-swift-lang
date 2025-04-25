class People {

    var age: Int?
    var name: String?

    // constructor
    init(_ age: Int, _ name: String) {
        self.age = age
        self.name = name
    }

    init() {}

    deinit {
        self.age = nil
        self.name = nil
    }

    func talk() {
        print("Hi! My name is \(name ?? "John") and I have \(age ?? 0) years.")
    }
}

var person1: People = People()
var person2: People = People(30, "Maria")
person1.age = 99
person1.name = "Jobson"
person1.talk()
person2.talk()

class Bean {

    let creationDate: String?
    var updatedDate: String?
    var isDeleted: Bool = false
    var name: String?

    init(_ name: String) {
        self.creationDate = "25/04/2025"
        self.updatedDate = "25/04/2025"
        self.name = name
    }

    func setUpdatedDate(date: String) {
        self.updatedDate = date
    }

    func toString() -> String {
        return """
            # Creation Date = \(self.creationDate ?? "Empty")
            # Updated Date = \(self.updatedDate ?? "Empty")
            # Is Deleted = \(self.isDeleted)
            """
    }

}

// Sub class. User extends Bean
class User: Bean {

    private var _username: String?
    private var _pass: String?
    private var _email: String?

    init(_ username: String, _ pass: String, _ email: String, _ name: String) {
        self._username = username
        self._pass = pass
        self._email = email
        super.init(name)
        updatedDate = "10/05/2025"
    }

    // Getters and Setters
    // This logic not is necessary, because is default. Just an example of how it work.
    var username: String? {
        get {
            return self._username
        }
        set {
            self._username = newValue
        }
    }

    func delete() {
        self.isDeleted = true
    }

    override func toString() -> String {
        return """
            \n##### User Info ##### 
            # Username = \(self.username ?? "Empty")
            # Pass = \(self._pass ?? "Empty")
            # Email = \(self._email ?? "Empty")
            # Creation Date = \(self.creationDate ?? "Empty")
            # Updated Date = \(self.updatedDate ?? "Empty") 
            # Is Deleted = \(self.isDeleted)
            # Name = \(self.name ?? "Empty")
            #####################\n
            """
    }
}

var newUser: User = User("jobson.dev", "1234", "jobson@email.com", "JOBSON")
print(newUser.toString())
newUser.delete()
print(newUser.toString())

// willSet and didSet
//Uses:
//  Register log;
//  Automatically update UI when changing a value
//  Avoid code redundancy by repeating get/set
class Animal {
    var age: Int = 0 {
        willSet {
            print("The animal's age will change from \(age) to \(newValue)")
        }
        didSet {
            print("The animal's age was changed from \(oldValue) to \(age)")
        }
    }
}

let dog = Animal()
dog.age = 3
