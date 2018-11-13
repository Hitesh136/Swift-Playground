 
 import Foundation
 
 
 extension Int {
    var isPerfectSquire: Bool {
        let sq = sqrt(Double(self))
        let sqInt = floor(sq)
        return sq == sqInt
    }
 }
 
 var count = [1, 2,3, 4, 5]
 let dd = Array(count.dropLast())
 count.remove(at: 0)
 
 

 
 
 
