import Cocoa

let surname: String = "Lasso"
var score: Double = 0
var luckyNumber: Int = 13
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girld, Woman, Other"])
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

let username: String

username = "@twostraws"

print(username)

//Checkpoint 2

let randomList = ["Henry", "Marie", "Amaia", "Henry"]
print("Number of items: \(randomList.count), Number of unique items: \(Set(randomList).count)")

