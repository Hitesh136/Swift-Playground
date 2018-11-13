
import Foundation
let j = 5

 
struct Pattern {
    let s: String
    
    init(_ s: String) {
        self.s = s
    }
}

func ~=(pattern: Pattern, value: String) -> Bool {
    return value.range(of: pattern.s) != nil
}

let name = "Taylor swift"
if case Pattern("swift") = name {
    print("Value found")
}


