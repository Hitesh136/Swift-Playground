import UIKit

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned(safe) let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

//var customer: Customer? = Customer(name: "Hemant")
//
//let creditCard = CreditCard(number: 90482038402, customer: customer!)

var customer: Customer? = Customer(name: "Hemant")
customer?.card = CreditCard(number: 90482038402, customer: customer!)

//customer = nil
customer = nil
