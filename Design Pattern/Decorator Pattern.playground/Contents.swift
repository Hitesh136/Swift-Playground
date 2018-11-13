
/*
 Decorator
 Pattern
 
 https://medium.com/swiftworld/swift-world-design-patterns-bridge-a20bbe999059
 https://emanleet.com/swift-bridge-design-pattern/
 */

enum CarType: String {
    case sedan = "Sedan"
    case suv = "Suv"
}
protocol Car {
    var type: CarType { get }
    func drive()
}


class Sedan: Car {
    var type: CarType = .sedan
    func drive() {
        print("drive a " + type.rawValue)
    }
}

class BasicCar: Car {
    var car: Car
    
    var type: CarType {
        return car.type
    }
    
    init(car: Car) {
        self.car = car
    }
    
    func drive() {
        print("drive")
    }
}


class Automatic: BasicCar {
    override func drive() {
        print("Driving automatic")
    }
}

let mercedes = Sedan()
let automaticcar = Automatic(car: mercedes)
automaticcar.drive()

