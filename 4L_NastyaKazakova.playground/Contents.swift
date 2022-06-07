import UIKit

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

class Car {
    let brand: String
    let year: Int
    var motor: motorStatus = .off
    var windows: windowsStatus = .open
    
    enum motorStatus: CustomStringConvertible {
        case on
        case off
        var description: String{
            switch self{
            case .on:
                return "Motor is on"
            case .off:
                return "Motor is off"
            }
        }
    }
    
    enum windowsStatus: CustomStringConvertible {
        case open
        case close
        var description: String{
            switch self {
            case .open:
                return "Windows is open"
            case .close:
                return "Windows is close"
            }
        }
    }
    
    init (brand: String, year: Int){
        self.brand = brand
        self.year = year
    }
    
    enum action {
        case switchMotor(motorStatus)
        case switchWindows(windowsStatus)
        case carSpaseAdd(Double)
    }
    
    func perform(action : action) {
        
    }
}

class SportCar: Car {
    var maxSpeed: Int
    
    init (maxSpeed: Int, brand: String, year: Int){
        self.maxSpeed = maxSpeed
        super.init(brand: brand, year: year)
    }
    
    var descriptoin: String{
        return "Car brand: \(brand)\nRelised year: \(year)\nMax speed: \(maxSpeed)\n\(motor)\n\(windows)\n"
    }
    
    override func perform(action: action){
        switch action{
        case .switchMotor(let status):
            motor = status
        case .switchWindows(let status):
            windows = status
        default: break
        }
    }
}

class TrunckCar: Car {
    var trunkCapacity: Double
    var trunkSpase: Double = 0.0
    
    init (brand: String, year: Int, trunkCapacity: Double){
        self.trunkCapacity = trunkCapacity
        super.init(brand: brand, year: year )
    }
    
    var descriptoin: String{
        return "Car brand: \(brand)\nRelised year: \(year)\nTrunk capacity:\(trunkCapacity)\n\(motor)\n\(windows)\n"
    }
    
    override func perform(action: action){
        switch action{
        case .switchMotor(let status):
            motor = status
        case .switchWindows(let status):
            windows = status
        case.carSpaseAdd(let spase):
            let expSpase = spase + trunkSpase
            switch expSpase{
            case _ where expSpase < 0:
                print("Trunk is empty")
                trunkSpase = 0
            case _ where expSpase > trunkCapacity:
                print("The trunk is full ")
                trunkSpase = trunkCapacity
            default: trunkSpase += spase
                print("\(trunkSpase) loaded in the trunk")
            }
        }
    }
}

var acura = SportCar(maxSpeed: 300, brand: "acura", year: 2022)
acura.perform(action: .switchWindows(.open))
print(acura.descriptoin)

var kamaz = TrunckCar(brand: "Kamaz", year: 2008, trunkCapacity: 200)
kamaz.perform(action: .carSpaseAdd(50.8))
print(kamaz.descriptoin)
