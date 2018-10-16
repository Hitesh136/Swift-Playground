import UIKit

//1. Inistializing enum with default value gives nil if case is not definde with value in enum. But in class or struct it is not nil

enum ApiError: Int {
    case notFound = 404
    case internalServerError = 501
}

let someError = ApiError(rawValue: 400)
print(someError)
//nil

struct ApiErrorSt {
    var errorCode: Int
}

let someError2 = ApiErrorSt(errorCode: 400)
print(someError2)


