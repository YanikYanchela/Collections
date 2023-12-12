
import UIKit

class ViewController: UIViewController {

    let numberArray = [2,3,5,4,6,8]
    
    var x = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        x.sort { $0.1 < $1.1 }
        print(x)
        
        let resultFactArray = factorialArray(array: numberArray)
        print(resultFactArray)
        
        let resultSquare = intSquare(array: x)
        print(resultSquare)
        
        let even = filtrEven(array: x)
        print(even)
        
        let sorted = sortedArray(array: x)
        print(x)
        
        func fucktorial(_ number: Int) -> Int {
            if number <= 1 {
                return 1
            } else {
                return number * fucktorial(number - 1)
            }
        }
        
        func factorialArray(array: [Int]) -> [Int] {
            var resultArray: [Int] = []
            for number in array{
                let fact = fucktorial(number)
                resultArray.append(fact)
                print( "факториал числа \(number) равен \(fact)")
            }
            return resultArray
        }
        
        func intSquare(array:[(Int, String)]) -> [(Int, String)]{
            var resultArray: [(Int, String)] = []
            for item in array{
                let valueInt = item.0
                let square = valueInt * valueInt
                let strItem = (square, item.1)
                resultArray.append(strItem)
            }
            return resultArray
        }
        func filtrEven(array:[(Int, String)]) -> [(Int, String)]{
            var resultArray: [(Int, String)] = []
            for item in array{
                let valueInt = item.0
                if valueInt % 2 == 0 {
                    resultArray.append(item)
                }
            }
                return resultArray
            }
            
        func sortedArray(array: [(Int, String)]) -> [(Int, String)]{
            var resultArray: [(Int,String)] = []
             resultArray.sort { $0.1 < $1.1}
            return resultArray
            }
           }
                
    
    
        
    

}

//ДЗ: Функция вычисления факториала числа - через передачу массива в параметр функции. Массив из 6 чисел -> Факториал числа \(numbers), равен ????
//
//var x = [(1, "x"), (4, "y"), (6, «a»), (9, «u»), (5, «k»)]
//Массив из кортежей - возвести Int в квадрат
//отфильтровать только четные Int -> [4, 6]
//упорядочить по строкам по возрастанию -> [a, k, u, x, y]
//
//****************
// написать список книг и отфильтровать книги по жанрам -> horror = []
//var books = ["Book001": ["title": "Swift Programming", "author": "John Doe", "genre": "Programming"]]
//
// объеденить 2 массива. первый массив это название групп. второй название песен
//
//
//[2, nil, 4, nil, 3, 8, nil] - не использую compactMap
//Создать функцию которая принимает массив чисел и умножает каждое число на 2 используя функцию map.
