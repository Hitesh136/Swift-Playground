import UIKit

var str = "Hello, playground"

//Matching Associated values
enum Company {
    case info(name: String, id: Int)
}
let google = Company.info(name: "Google", id: 001)
let apple = Company.info(name: "Apple", id: 002)
if case Company.info(name: "Google", id: _) = google {
    print("same")
}
else {
    print("diff")
}

