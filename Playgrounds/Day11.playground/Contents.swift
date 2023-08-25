import Cocoa

struct BankAccount {
    private var funds = 0
    
    mutating func deposit (amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrwen money successfully")
} else {
    print("Failed to get the money")
}

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = " settings.json"
    static let homeURL =  "https://www.hackingwithswift.com"
}
AppData.version

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cdfesdf", password: "wuieahf8343")
}

Employee.example

// checkpoint 6

struct Car {
    let model: String
    let seats: Int
    private(set) var gear = 0
    
    mutating func switchGears(shift: Int) {
        if gear + shift <= 6 || gear - shift >= 0{
            gear += shift
        }
    }
    
}

var audi = Car(model: "Audi", seats: 5)
audi.switchGears(shift: 2)
audi.switchGears(shift: -1)
print(audi)

