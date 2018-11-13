import UIKit

enum Optional<Wrapped> {
    case some(Wrapped)
    case none
}

extension Collection where Element: Equatable {
    func myIndexOf(element: Element) -> Optional<Index> {
        var idx = startIndex
        while idx != endIndex {
            if self[idx] == element {
                return .some(idx)
            }
            formIndex(after: &idx)
        }
        return .none
    }
    
    func mySecondIndexOf(element: Element) -> Index? {
        var idx = startIndex
        while idx != endIndex {
            if self[idx] == element {
                return idx
            }
            formIndex(after: &idx)
        }
        return nil
    }
}
    

let counts = [1,2,3,4,5,6,7,8,9]

//switch counts.myIndexOf(element: 5) {
//case .some(let associatValue):
//    print(associatValue)
//case .none:
//    print("Nothing found")
//}

//switch counts.firstIndex(of: 5) {
//case let idx?:
//    print(idx)
//case nil:
//    print("Found nothing")
//}

let strs: [String?] = ["one", nil, "Two", nil]
//for str in strs {
//    switch str {
//    case let element?:
//        print(element)
//    case nil:
//        print("Nil value found")
//    }
//}

//While let
var iterator = strs.makeIterator()
while let element = iterator.next() {
    print(element)
}


