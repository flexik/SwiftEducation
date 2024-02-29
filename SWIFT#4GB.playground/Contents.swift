import UIKit

/* Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
Создать экземпляр класса пиццерии и добавить в него несколько пицц. */

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
class Pizzeria {
    private var pizzas: [Pizza]
    
    init() {
        pizzas = []
    }
    
    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }
    
    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
}
let pizzeria = Pizzeria()
let margheritaPizza = Pizza(price: 10.99, type: .margherita, crust: "thin", toppings: [.cheese, .tomatoes])
let pepperoniPizza = Pizza(price: 12.99, type: .pepperoni, crust: "thick", toppings: [.pepperoni, .cheese])
let vegetarianPizza = Pizza(price: 11.99, type: .vegetarian, crust: "thin", toppings: [.cheese, .tomatoes])
let hawaiianPizza = Pizza(price: 13.99, type: .hawaiian, crust: "thin", toppings: [.cheese, .tomatoes])
let meatLoversPizza = Pizza(price: 14.99, type: .meat_lovers, crust: "thick", toppings: [.pepperoni, .cheese])
pizzeria.addPizza(pizza: margheritaPizza)
pizzeria.addPizza(pizza: pepperoniPizza)
pizzeria.addPizza(pizza: vegetarianPizza)
pizzeria.addPizza(pizza: hawaiianPizza)
pizzeria.addPizza(pizza: meatLoversPizza)
let allPizzas = pizzeria.getAllPizzas()
for pizza in allPizzas {
    print("Pizza type: \(pizza.type), Price: \(pizza.price), Crust: \(pizza.crust), Toppings: \(pizza.toppings)")
}
