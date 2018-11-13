
let stringOfNumbers = ["1", "2", "Three"]

let mayBeInt = stringOfNumbers.map { return Int($0)}
print("Array = \(mayBeInt)")

var iterator = mayBeInt.makeIterator()
while let nextValue = iterator.next(),  let ele = nextValue {
    print(ele, terminator: " ")
}

for case .some(let ele) in mayBeInt {
    print(ele)
}

for case .none in mayBeInt {
    print("Nothing found")
}




 
