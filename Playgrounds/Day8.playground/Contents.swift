import Cocoa

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}




// checkpoint 4
// write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number

enum SquareRootError: Error {
    case tooLow, tooHigh, notFound
}

func squareRoot(_ number: Int) throws -> Int {
    if number < 1 {
        throw SquareRootError.tooLow
    }

    if number > 10_000 {
        throw SquareRootError.tooHigh
    }
    
    for i in 1...100 {
        if i * i == number {
            return i;
        }
    }
    
    throw SquareRootError.notFound
}

let number = 100

do {
    let root = try squareRoot(number)
    print("The square root of \(number) is \(root).")
} catch {
    print("Sorry, there was a problem.")
}
