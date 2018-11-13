let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var cost = arr[0]
let discount = arr[1]
let min = arr[2]
var wallet = arr[3]
if wallet < cost {
    print(0)
    exit(0)
}
wallet -= cost


