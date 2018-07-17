//: Playground - noun: a place where people can play

//import UIKit

var str = "Hello, playground"

func greet(message: String){
    print("\(message)")
}

greet(message: "Good morning chuchu")

func test()
{
    print("btmeez")
}

test()

func addition(n1: Int, _ n2: Int){
    var sum: Int
    sum = n1 + n2
    print("sum of \(n1) and \(n2) is \(sum)")
}

addition(n1:20, 30)

var a = 10
var b = 20
addition(n1: a, b)

func subtraction(n1: Float, _ n2: Float)
{
    print("Subtraction of \(n1) and \(n2) is \(n1 - n2)")
}
subtraction(n1: 23.54, 54.98765)

func mul(n1: Int, n2: Int) -> Int{
    let m = n1 * n2
    return m
}
 var ans = mul(n1: 9, n2: 2)
print("mul = \(ans)")

func swap(j:  Int, k:  Int ) ->(Int, Int)
{
    // all the function parameters are let constant by default
   // var temp = j
   // j = k
   // k = temp
    return(k, j)
}

(a, b) = swap(j: 1, k: 8)
print("j = \(a) and k = \(b)")

func swap(j: inout Int, k: inout Int)
{
   let temp = j
    j = k
    k = temp
}
var x = 45
var y = 6
swap(&x, &y)
print("x = \(x) and y = \(y)")

func SI(amount: Double, _ years: Double, rate: Double = 2.0) ->Double{
    return(amount*years*rate / 100)
}

var deposit1 = SI(amount: 1200.2,  3, rate: 3.2)
print("deposit1 = \(deposit1)")

deposit1 = SI(amount: 1200.2,  1)
print("deposit1 = \(deposit1)")


func dispCount(numbers: Int...)
{
    var sum = 0
    for n in numbers{
        sum += n
    }
    print("sum of arguments \(sum)")
}
dispCount(numbers: 1,2,3)
dispCount(numbers: 23,34,56,78,90)

func addArrays(arrays: [Int]...)
{
    let a = arrays.count
    print("a = \(a)")
    
    var array1 = arrays[0]
    var array2 = arrays[1]
    var result = [Int]()
    if array1.count == array2.count{
        for i in 0..<array1.count{
            result.append(array1[i] + array2[i])
           
        }
    }
}
 var ar1 = [1,2,3,4,5]
var ar2 = [9,9,9,9,9]
var s1 = addArrays(arrays: ar1, ar2)
print("s1 = \(s1)")

func add(a: Int, b: Int) ->Int{
    return(a + b)
}
print("add \(add(a: 10, b: 20))")
//function as a type
var mathOper: (Int, Int) -> Int = mul

print("mathOper \(mathOper(2,4))")
mathOper = add
print("mathOper \(mathOper(2,4))")
//function as a parameter
func callAnother(someFunc: (Int, Int) -> Int, a: Int, b: Int)
{
    print("some operation \(someFunc(a,b))")
}
callAnother(someFunc: add, a: 5, b: 9)
callAnother(someFunc: mul, a: 5, b: 9)

func stepforward(_ input: Int) -> Int{
    return input + 1
}
func stepBackward(_ input: Int) -> Int{
    return input - 1
}
func counting (flag: Bool) -> (Int) -> Int{
    return flag ? stepforward : stepBackward
}
var stepFunc = counting(flag: true)
print("\(stepforward(3))")

stepFunc = counting(flag: false)
print("\(stepforward(8))")

