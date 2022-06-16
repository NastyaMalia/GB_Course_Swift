import UIKit

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

enum userError : Error {
 case notRegistered
 case badNetwork
 case serverError (error: Int)
 case lowBattery
}

struct userLogIn {
    var UserName : String
    var phoneNumbSize : Int
}

class userLog {
    var users = [
        "User1": userLogIn(UserName: "Nastya", phoneNumbSize: 8),
        "User2": userLogIn(UserName: "Sergey", phoneNumbSize: 9),
        "User3": userLogIn(UserName: "Ivan", phoneNumbSize: 12),
        "User4": userLogIn(UserName: "Volha", phoneNumbSize: 12)

    ]
    var sizePhoneNumber = 12
    var errorValue = 404
    
   
    
}
