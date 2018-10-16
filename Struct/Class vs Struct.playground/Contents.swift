import Foundation

//1. Class must have initializer . But in struct initializer is not required
struct Location {
    var x: Int
    var y: Int
}

class Point {
    var x: Int
    var y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let point = Point(x: 10, y: 10)
let location = Location(x: 10, y: 10)

/*
 2. Inheritance
 Struct don't support inheritance.
    -> It can't inherit a class
    -> Struct can't be use as child struct
 
 both are not possible
 struct Address: Location{}
 class Address: Location {}
 
 apple suggest to use protocol inheritance with struct. protocol inheritance can use to meet the inheritance requirement of struct
 */

class Address: Point {
    var address: String = ""
    init(address: String, x: Int, y: Int) {
        self.address = address
        super.init(x: x, y: 10)
    }
    
    deinit {
        print("Address class is deinitialze")
    }
}

/*3. Type Casting
 type casting for check if object belongs to child class or parent is is not possible with struct and reason is struct not support inhertiance.
 */

//
let top = Address(address: "Topleft", x: 0, y: 0)
if top is Point {
    print("top is object of parent class point")
}
if top is Address {
    print("top is object of child class address")
}
if top is Location {
    print("top is object of child class ")
}
if point is Point {
    print("point is object of parent class point")
}
if point is Address {
    print("point is object of child class address")
}
if point is Location {
    print("point is object of child class ")
}

/*
 4. Deinitializers are not possible in struct
 */



// next thing for research is why this are not possible struct
