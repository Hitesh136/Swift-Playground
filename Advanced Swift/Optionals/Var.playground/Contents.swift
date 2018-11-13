
import Foundation

let number = "12"

if var i = Int(number) {
    i += 2
    print(i)
}

let someString: String? = "Hello"

if var str = someString {
    str += " World!"
    print(str)
}


//Program for get file extension

extension String {
    var fileExtension: String? {
        let period: String.Index
        if let idx = index(of: ".") {
            period = idx
        }
        else {
            return nil
        }
        
        let extensionStart = index(after: period)
        return String(self[extensionStart...])
    }
}

let fileName = "hello.txt"
print(fileName.fileExtension)

