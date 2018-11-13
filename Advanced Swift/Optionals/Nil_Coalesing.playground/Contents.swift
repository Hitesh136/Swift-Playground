
let a: Int? = nil
let b: Int? = nil
let c: Int? = nil

let v = a ?? b ?? c ?? -1
//print(v)

let s1: String??? = .some(.some(nil))
let v2 = ((s1 ?? "Inner") ?? "Outer") ?? "Universe"
print(v2)

let counts = [s1, s1, s1]
let iterator = counts.makeIterator() [pt    ]

