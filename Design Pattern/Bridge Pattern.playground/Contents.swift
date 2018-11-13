
/*
 Bridge Pattern
 
 https://medium.com/swiftworld/swift-world-design-patterns-bridge-a20bbe999059
 https://emanleet.com/swift-bridge-design-pattern/
 */
class Meal {
    
}

class HamBurger: Meal {
    func order() {
        print("Order Hamburger")
    }
}

class ChickenBurger: Meal {
    func order() {
        print("Order Chicken Burger")
    }
}

let burger = HamBurger()
burger.order()

let chickenBurger = ChickenBurger()
chickenBurger.order()


//Now add drinks in system

protocol Drink{
    var meal: Meal{ get set }
    func order()
}

class Cola: Drink {
    var meal: Meal
    init(meal: Meal) {
        self.meal = meal
    }
    
    func order() {
         print("Order Coco cola")
    }
}

class Coffee: Drink {
    var meal: Meal
    init(meal: Meal) {
        self.meal = meal
    }
    
    func order() {
        print("Order Coffe")
    }
}

let cocoCola = Cola(meal: burger)
cocoCola.order()
