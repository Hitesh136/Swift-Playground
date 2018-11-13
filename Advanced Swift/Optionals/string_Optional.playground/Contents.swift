
let bodyTemperature: Double? = 37.0
var bloodGlucose: Double? = nil

infix operator ???: NilCoalescingPrecedence

public func ???<T>(optional: T?, defaultValue: String) -> String {
    switch optional {
    case let value?:
        return String(describing: value)
    case .none:
        return defaultValue
    }
}

print("Body Temperature = \(bodyTemperature ??? "n/a")")
print("Blood Glucose = \(bloodGlucose ??? "n/a")")

