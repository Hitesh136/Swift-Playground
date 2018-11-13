import Foundation
import UIKit

//
//extension Optional {
//    func myMap<T>(transform: (Wrapped) -> T ) -> T? {
//        if let value = self {
//            return transform(value)
//        }
//        return nil
//    }
//}
//
//var chars: [Character] = ["a", "b", "c", "d"]
//
////chars = []
//let value = chars.first.myMap{ String($0) }
//let v2 = chars.first
//let v3 = chars.first.map{ String($0) + "Demo" }
//
//print(v3)
//print(v2)
//print(value)

//flat map

var numbers = ["1", "2", "3", "Age"]
let x = numbers.first.map{ Int($0) }
//print(x)


let urlString = "https://www.objc.io/logo.png"

let view = URL(string: urlString)
    .flatMap{ try? Data(contentsOf: $0) }
    .flatMap{ UIImage(data: $0) }
    .map{ UIImageView(image: $0) }

guard let url = URL(string: urlString),
    let data = try? Data(contentsOf: url),
    let image = UIImage(data: data) else {
        
    fatalError("Url is not valid")
}
let view1 = UIImageView(image: image)

if let view = view {
    print(view)
}

let legendView = URL(string: urlString)
    .flatMap{ try? Data(contentsOf: $0) }
    .flatMap{ UIImage(data: $0)}
    .flatMap{ UIImageView(image: $0)}

print(legendView)
