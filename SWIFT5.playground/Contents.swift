import UIKit

/* Урок 5. Протоколы, классы и расширения
В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
Создайте протокол, в котором будут содержаться функции открытия и закрытия.
Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания. */

enum PizzaType {
    case margherita
    case pepperoni
    case vegetarian
    case hawaiian
    case meat_lovers
}

enum Toppings {
    case pepperoni
    case tomatoes
    case cheese
}

struct Pizza {
    var price: Double
    var type: PizzaType
    var crust: String // thick or thin
    var toppings: [Toppings]
}

struct FrenchFries {
    var price: Double
    var size: String // small, medium, large
}
protocol Restaurant {
    func open()
    func close()
}
class Pizzeria {
    private var menu: [Any]
    
    init() {
        menu = []
    }
    
    func addItemToMenu(item: Any) {
        menu.append(item)
    }
}
extension Pizzeria: Restaurant {
    func open() {
        print("Pizzeria is now open")
    }
    
    func close() {
        print("Pizzeria is now closed")
    }
}
func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}
let pizzeria = Pizzeria()
let margheritaPizza = Pizza(price: 10.99, type: .margherita, crust: "thin", toppings: [.cheese, .tomatoes])
let frenchFries = FrenchFries(price: 4.99, size: "medium")
pizzeria.addItemToMenu(item: margheritaPizza)
pizzeria.addItemToMenu(item: frenchFries)
pizzeria.open()
let resultInt = subtract(10, 5)
print("Result of subtraction (Int): \(resultInt)")
let resultDouble = subtract(10.5, 3.2)
print("Result of subtraction (Double): \(resultDouble)")
pizzeria.close()
