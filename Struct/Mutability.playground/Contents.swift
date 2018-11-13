import Foundation

class BinaryScanner {
    var position: Int
    var data: Data
    
    init(data: Data) {
        self.position = 0
        self.data = data
    }
}

extension BinaryScanner {
    func scanByte() -> UInt8? {
        guard position < data.endIndex else {
            return nil
        }
        position += 1
        return data[position - 1]
    }
}

func scanRemainingBytes(scanner: BinaryScanner) {
    while let byte = scanner.scanByte() {
        print(byte)
    }
}

let scanner = BinaryScanner(data: Data("hi".utf8))
scanRemainingBytes(scanner: scanner)
