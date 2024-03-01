import UIKit

/* Урок 6. ARC и управление памятью
Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками
Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе
Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра */

struct Employee {
    var name: String
    var salary: Double
    var position: String // cashier or cook
}
class Pizzeria {
    private var employees: [Employee]
    private var tables: [Table]
    
    init() {
        employees = []
        tables = []
    }
    
    func addEmployee(employee: Employee) {
        employees.append(employee)
    }
    
    func addTable(table: Table) {
        tables.append(table)
    }
}
class Table {
    var numberOfSeats: Int
    var pizzeria: Pizzeria?
    
    init(numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
    }
    
    func canSeatGuests(numberOfGuests: Int) -> Bool {
        return numberOfGuests <= numberOfSeats
    }
}
let pizzeria = Pizzeria()
let employee1 = Employee(name: "Alice", salary: 1000, position: "cashier")
let employee2 = Employee(name: "Bob", salary: 1200, position: "cook")
pizzeria.addEmployee(employee: employee1)
pizzeria.addEmployee(employee: employee2)
let table1 = Table(numberOfSeats: 4)
let table2 = Table(numberOfSeats: 6)
table1.pizzeria = pizzeria
table2.pizzeria = pizzeria
pizzeria.addTable(table: table1)
pizzeria.addTable(table: table2)
let guests1 = 5
let guests2 = 3
print("Table 1 can seat \(guests1) guests: \(table1.canSeatGuests(numberOfGuests: guests1))")
print("Table 2 can seat \(guests2) guests: \(table2.canSeatGuests(numberOfGuests: guests2))")
