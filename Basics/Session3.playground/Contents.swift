import UIKit


// Closures

func rumush(){
    let angka = 8*(9+10)
    print(angka)
}
print(rumush())

// Function
let input: String = " "
// cara 1
func greeting(input: String) ->String{
        return "greetings, " + input + "!"
}
// si function hanya mengambil dari si greeting(input)
print(greeting(input: " Andika "))
func goodbye(input: String) ->String{
    return "goodbye, " + input + "!"
}
print(goodbye(input: " Andika "))

// Function Argument Labels and Parameter Names

// 1. function without parameters
func sayGreeting()-> String{
    return "hello world!"
}
print(sayGreeting())

// 2. function with multiple Parameter
func greet1ng(input: String, alreadyGreet: Bool)-> String{
    if alreadyGreet{
        return goodbye(input: input)
    }else{
        return greeting(input: input)
    }
}
print(greet1ng(input: "Andika", alreadyGreet: true))

// 3. function without return value
func great(input: String){
    print("Hello \(input)")
}
    great(input: "David")

// 4. function with multiple return value
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109"




// extensions
// Kelipatan
extension Int {
    var kelipatan2: Int {return self*2}
    var kelipatan3: Int {return self*3}
}
var kelipatan  = 82.kelipatan3
print(kelipatan)

// Satuan
extension Double{
    var Km: Double{return self * 1_000.0}
    var m: Double{return self}
    var cm: Double{return self / 100.0}
    var mm: Double{return self / 1_000.0}
}
var marathon = 24.5.Km
var estafet = 40.0.m

var myFollowers: Set<String> = ["a", "b", "c", "d", "e"]
print("My Followers\(myFollowers)")
var friendFollower: Set<String> = ["z", "x", "c", "q", "e"]
print("My Friend Followers\(friendFollower)")

let bothFollow = myFollowers.intersection(friendFollower)
print("both \(bothFollow)")
