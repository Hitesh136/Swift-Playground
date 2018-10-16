import UIKit

//Default associate value is not supported
enum Change {
//    case add(length: Int = 0)
    case add(length: Int)
    case minus(length: Int)
}

//1. Problem in Access Associate Values

enum Company {
    case info(name: String, id: Int)
}

let google = Company.info(name: "Google", id: 001)
let apple = Company.info(name: "Apple", id: 002)

//Pattern matching used for compare associate value
if case Company.info(name: "Google", id: _) = google {
    print("same")
}
else {
    print("diff")
}

//And switch use for access associate values
switch google {
case let .info(name, id):
    print("\(name)'s company id is \(id)")
}

//2. Tuples
//enum Devices: (intro: Int, name: String) {
//    case iPhone = (intro: 2007, name: "iPhone")
//    case AppleTV = (intro: 2006, name: "Apple TV")
//    case AppleWatch = (intro: 2014, name: "Apple Watch")
//}

//Above code gives error "raw value for enum case must be a literal"

/*
 3. Equtable
 enum not support equatable
 */

//if google == apple {
//    print("same")
//}



