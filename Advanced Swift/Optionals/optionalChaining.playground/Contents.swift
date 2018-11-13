
struct Person {
    var name: String
    var age: Int
}

var optionalPerson: Person? = Person(name: "Thor", age: 4200)
if var personValue = optionalPerson {
    personValue.age += 1
}


optionalPerson?.age += 1
print(optionalPerson?.age)

var a: Int? = nil
a? = 10
print(a)
