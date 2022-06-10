import UIKit

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.
enum motorStatus{
    case on, off
}

enum windowsStatus{
    case open
    case close
}

protocol Car{
    var brand: String { get }
    var year: Int { get }
    var motor: motorStatus {get set }
    var windows: windowsStatus {get set}
}

extension Car{
    mutating func Motor(statys: motorStatus){
        switch statys{
        case .on:
            self.motor = .on
            print("Motor is on")
        case .off:
            print("Motor is off")
            self.motor = .off
        }
    }
    
    mutating func Windows(status: windowsStatus){
        switch status{
        case .open:
            print("Windowc is open")
            self.windows = .open
        case .close:
            print("Windows is close")
            self.windows = .close
        }
    }
}

class spotCar: Car {
    var brand: String
    var year: Int
    var motor: motorStatus
    var windows: windowsStatus
    var maxSpeed: Int
    
    init(brand: String, year: Int, maxSpeed: Int ){
        self.brand = brand
        self.year = year
        self.maxSpeed = maxSpeed
        self.windows = .close
        self.motor = .off
    }

}


class trunkCar: Car {
    var brand: String
    var year: Int
    var motor: motorStatus
    var windows: windowsStatus
    var trunkCapacity: Double
    
    init(brand: String, year: Int, trunkCapacity: Double){
        self.brand = brand
        self.year = year
        self.trunkCapacity = trunkCapacity
        self.windows = .close
        self.motor = .off
    }

}

extension spotCar: CustomStringConvertible {
    var description: String{
        return "\nSport car\nBrand: \(brand).\nRelised year: \(year)\nMax speed: \(maxSpeed)\n\(motor)\n\(windows)\n"
    }
}
extension trunkCar: CustomStringConvertible {
    var description: String{
        return "\nTrunck car\nBrand: \(brand)\nRelised year: \(year)\nTrunk capacity:\(trunkCapacity)\nMotor status is \(motor)\nWindows is \(windows)\n"
    }
}

var acura = spotCar(brand: "Acura", year: 2022, maxSpeed: 300)
print(acura)
acura.Windows(status: .close)
acura.Motor(statys: .off)

var mT = trunkCar(brand: "Monster Truck", year: 2019, trunkCapacity: 45.9)
print(mT)
mT.Motor(statys: .on)
mT.Windows(status: .open)
