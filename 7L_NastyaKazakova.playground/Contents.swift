import UIKit
import Darwin

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

enum userError : Error {
    case notRegistered
    case serverError (error: Int)
    case youngUser
}

struct userLogIn {
    var userName : String
    var userAge : Int
}

class userLog {
    var users = [
        "User1": userLogIn(userName: "Nastya", userAge: 8),
        "User2": userLogIn(userName: "Sergey", userAge: 99),
        "User3": userLogIn(userName: "Ivan", userAge: 32),
        "User4": userLogIn(userName: "Volha", userAge: 12)
        
    ]
    var valibleAge = 16
    var errorValue = 100
    
    func loginError (user: String, error: Int) throws{
        guard let name = users[user] else {
            throw userError.notRegistered
        }
        
        guard name.userAge >= valibleAge else {
            throw userError.youngUser
        }
        guard errorValue == 100 else {
            throw userError.serverError(error: errorValue)
        }
        
        print("User \(name.userName). Age: \(name.userAge)")
    }
    
}

let nickNames = [
    "nastya": "User1",
    "sergey": "User2",
    "ivan": "User3",
    "volha": "User4",
]
    

func logIn (appUser: String, funcUsers: userLog) throws {
    let serverMasssege = 200
    let userCollection = nickNames[appUser] ?? "sign up"
    try funcUsers.loginError(user: userCollection , error: serverMasssege)
}

do{
    try logIn(appUser: "nastya", funcUsers: userLog())
}
catch userError.youngUser {
    print("You're to young. Avalible age is 16!")
}
catch userError.notRegistered {
print("Create an account")
}
catch userError.serverError(error: let error){
    print("Server error №\(error)")
}
