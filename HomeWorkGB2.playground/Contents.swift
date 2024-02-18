import UIKit


// 1. Функция для расчета накоплений по вкладу:
func calculateDepositAmount(depositAmount: Double, annualInterestRate: Double, term: Int) -> Double {
    let interestRate = annualInterestRate / 100
    let finalAmount = depositAmount * pow(1 + interestRate, Double(term))
    return finalAmount
}
// Пример использования функции
let depositAmount = 1000.0
let annualInterestRate = 5.0
let term = 3
let finalAmount = calculateDepositAmount(depositAmount: depositAmount, annualInterestRate: annualInterestRate, term: term)
print("Пользователь получит по итогу: \(finalAmount)")

// 2. Создание перечисления для видов пиццы и переменных с каждым видом:

enum PizzaType: String {
    case margherita = "Маргарита"
    case pepperoni = "Пепперони"
    case hawaiian = "Гавайская"
}
let margheritaPizza = PizzaType.margherita
let pepperoniPizza = PizzaType.pepperoni
let hawaiianPizza = PizzaType.hawaiian

// 3. Получение названия пиццы через rawValue:

print(margheritaPizza.rawValue)
print(pepperoniPizza.rawValue)
print(hawaiianPizza.rawValue)

