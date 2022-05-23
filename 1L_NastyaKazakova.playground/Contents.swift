import UIKit

//1. Решить квадратное уравнение. ax^2 + bx + c = y
let a = 0.0
let b = -7.0
let c = 5.0
let d = pow(b, 2.0) - 4 * a * c
if a != 0{
    if d > 0 {
        let x1 = (-b + sqrt(d)) / (2 * a)
        let x2 = (-b - sqrt(d)) / (2 * a)
        print("x1= \(x1) \nx2= \(x2)")
    }
    else if d == 0 {
        let x = -b / 2*a
        print("x= \(x) ")
    }
    else if d < 0 {
        print("Нет коней!")
    }
}
else if a == 0 {
    print ("Это не квадратное уравнение!")
}

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let n = 3.0
let m = 4.0
let g = sqrt((pow(n,2) + pow(m,2)))  // Гипотенуза
let p = n + m + g  // Периметр
let s = (n * m)/2  // Площадь
print("\nПлощадь: \(s) \nПериметр: \(p) \nГипотенуза: \(g)")

//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
let vklad = 500
let yearPersent = 5
let sum = vklad + (yearPersent * vklad * 5) / 100
print("Сумма вклада через 5 лет: \(sum) ")
