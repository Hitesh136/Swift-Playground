
let a: [Int?] = [1, 3, nil]
let b: [Int?] = [1, 2, nil]
if a == b {
    print(true)
}

infix operator !!
func !!<T>(wrapped: T?, failureText: String) -> T? {
    if let x = wrapped {
        return x
    }
    print(failureText)
    return nil
}

let s = "foo"
let i = Int(s) !! "Expecting integer but got \(s)"

