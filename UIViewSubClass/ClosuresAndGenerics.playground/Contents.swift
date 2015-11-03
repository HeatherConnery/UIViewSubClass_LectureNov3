//: Playground - noun: a place where people can play

import UIKit

protocol Addable {
    //function that is add operatior +
    //think of self here as anyObj
    func +(lhs:Self, hrs: Self) -> Self
}

//implementation of generics
//adopts Addable protocol
func add<T:Addable>(a:T,b:T) -> T {
    return a + b
}
// extension to define types it works on
extension String:Addable {}
extension Int:Addable{}
extension Double:Addable{}

add(5, b: 5)
add("Kwame", b: "Bryan")
add(2.5, b: 3.0)


//functions as arguments
func operate(x:Int,y:Int, fn:(Int,Int) -> ()) {
    fn(x,y)
}

func add(x:Int,y:Int){
    print(x+y)
}

operate(1, y: 3, fn: add )
//because the signature of the two add functions are different, Swift sees them as unique

//working with tuples
func returnSomeIntegers(a:Int, b:Int) -> (Int,Int) {
    return (a,b)
}

var returnMultipleValues = returnSomeIntegers(8, b: 4)
returnMultipleValues.1

// passing closures to functions
func operate(a:Int,b:Int,fn:(Int,Int) ->Int) {
    fn(a,b)
}
//this is the standard that we will mostly see
operate(1, b: 2) { (a:Int, b:Int) -> (Int) in
    return a+b
}
operate(1, b: 4) { (a,b) in a+b }

operate(1, b: 5) { $0 + $1 }














