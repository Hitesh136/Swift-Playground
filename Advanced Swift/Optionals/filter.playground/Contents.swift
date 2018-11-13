

let numbers = ["1", "2", "3", "foo"]

func addByforEachMethod() -> Int {
    var sum = 0
    for num in numbers {
        if let intNum = Int(num) {
            sum += intNum
        }
    }
    return sum
}

func higherOrderFunctionMap1() -> Int {
    return numbers.map{ Int($0) }.reduce(0){$0 + ($1 ?? 0) }
}

func higherOrderFunctionMap2() -> Int {
    return numbers.flatMap{ Int($0) }.reduce(0, +)
//    return numbers.map{ Int($0) }.reduce(0){$0 + ($1 ?? 0) }
}


print("addByforEachMethod = \(addByforEachMethod())")
print("higherOrderFunctionMap 1 = \(higherOrderFunctionMap1())")
print("higherOrderFunctionMap 2 = \(higherOrderFunctionMap2())")



