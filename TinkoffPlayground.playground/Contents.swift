import UIKit

// 1. Вывод четных чисел от 0 до 100

// 1й Вариант:

//for num in 0...100{
//    if num % 2 == 0 {
//        print(num)
//    }
//}

// 2й Вариант:

//for i in stride(from: 0, through: 100, by: 2) {
//    print(i)
//}


// 2. Вывод первой переменной, если результат перемножения больше 10, иначе вывод второй переменной

//let firstVariable = 7
//let secondVariable = 3
//if firstVariable * secondVariable > 10 {
//    print(firstVariable)
//} else {
//    print(secondVariable)
//}

// 3. Увеличение переменной "k" на 2, если текущее число плюс "k" четное, иначе вывод "Next":

//var k = 0
//for i in stride(from: 1, through: 30, by: 1) {
//    if (i + k) % 2 == 0 {
//        k += 2
//        print(k)
//    } else {
//        print("Next")
//    }
//}

// 4. Увеличение переменной "k" на 1, если текущее число плюс "k" четное, иначе вывод "Next" и прекращение цикла:

//var k = 1
//for i in stride(from: 1, through: 30, by: 1) {
//    if (i + k) % 2 == 0 {
//        k += 1
//        print(k)
//    } else {
//        print("Next")
//        break
//    }
//}


