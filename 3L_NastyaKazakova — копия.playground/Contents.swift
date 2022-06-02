import UIKit

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действиsя.

//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.

enum IsMotorOn: String{
    case motorIsOn = "Двигатель включен"
    case motorIsOff = "Двигатель выключен "
    
}

enum WindowsOpen: String{
    case open = "Окна открыты"
    case close = "Окна закрыты"
}

struct SportCar {
    var brand: String
    var year: Int
    var trunkCapacity: Double
    var isMotorOn: IsMotorOn
    var windowsOpen: WindowsOpen
    
    mutating func actWindos(action: WindowsOpen){
        switch action{
        case .open:
            print(action.rawValue)
            self.isMotorOn = .motorIsOn
        case .close:
            print(action.rawValue)
            self.isMotorOn = .motorIsOff
            
        }
    }
    func description() {
        print("Машина \(brand) год выпуска: \(year). Состояние двигателя: \(windowsOpen.rawValue). Обьем багажника \(trunkCapacity)")
    }
    
}

struct TrunkCar {
    var brand: String
    let year: Int
    var trunkCapacity: Double
    var isMotorOn: IsMotorOn
    var windowsOpen: WindowsOpen
    var trunkSpace: Double {
        willSet {
            if newValue > trunkCapacity {
                print("Перегруз")
            } else if newValue - trunkCapacity <= 0 && newValue < 0{
                print("Багажник пустой")
            }
            else if newValue == trunkCapacity && newValue > 0{
                print("Багажник полностью заполнен")
            } else {
                print("В багажник загружено \(newValue), осталось \(trunkCapacity - newValue)")
            }
        }
    }
    mutating func actMotor(action: IsMotorOn){
        switch action{
        case .motorIsOn:
            print(action.rawValue)
            self.isMotorOn = .motorIsOn
        case .motorIsOff:
            print(action.rawValue)
            self.isMotorOn = .motorIsOff
            
        }
    }
    func description() {
        print("Машина \(brand) год выпуска: \(year). Состояние двигателя: \(isMotorOn.rawValue). Обьем багажника \(trunkCapacity)")
    }

}
var sportCar1 = SportCar(brand: "Acura", year: 2022, trunkCapacity: 14.5, isMotorOn: .motorIsOff, windowsOpen: .close)
var sportCar2 = SportCar(brand: "BMW", year: 2021, trunkCapacity: 4.5, isMotorOn: .motorIsOn, windowsOpen: .close)

var carTruk1 = TrunkCar(brand: "Kamaz", year: 2002, trunkCapacity: 23.6, isMotorOn: .motorIsOff, windowsOpen: .close, trunkSpace: 4.6)
var carTruk2 = TrunkCar(brand: "MonsterTruk", year: 2020, trunkCapacity: 30.5, isMotorOn: .motorIsOn, windowsOpen: .close, trunkSpace: 19.7)

carTruk1.description()
carTruk2.description()
sportCar1.description()
sportCar2.description()

sportCar1.windowsOpen = .open
sportCar1.isMotorOn = .motorIsOn

carTruk1.isMotorOn = .motorIsOn
carTruk1.trunkSpace = 19.7
carTruk1.trunkSpace = -29.7
carTruk1.trunkSpace = 39.7

carTruk1.description()
sportCar1.description()
