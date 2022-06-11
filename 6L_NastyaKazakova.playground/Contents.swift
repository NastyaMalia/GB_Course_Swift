import UIKit
import Foundation
import Darwin

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


struct queue <Element: Comparable> {
    var items = [Element]()
    
    subscript (ind: Int)-> Element? {
        ind < items.count ? items[ind] : nil
    }
    
    mutating func push (_ item: Element){
        items.append(item)
    }
    
    mutating func pop () -> Element? {
        if items.count > 0{
            return items.removeLast()}
        else { return nil}
    }
    
    mutating func deleteFirst () -> Element? {
        if items.count > 0{
            return items.removeFirst()}
        else {return nil }
    }
    
    mutating func elementsInArray() -> Int {
        return items.count
    }
    
    mutating func filterr() -> [Element] {
        return items.shuffled()
    }
}


var animals = queue<String>()
animals.push("cat")
animals.push("dog")
animals.push("bird")

print(animals.items)
animals.push("rat")
animals.push("horse")

print(animals.filterr())

animals.deleteFirst()
animals.deleteFirst()
animals.deleteFirst()
animals.deleteFirst()
animals.elementsInArray()

animals.pop()
animals.deleteFirst()
animals[8]
