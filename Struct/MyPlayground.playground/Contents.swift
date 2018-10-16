 //A Simple example for adaptor pattern
 //Adeptee
 class Student {
    func walk() {
        print("Walk...")
    }
 }
 
 //Target
 protocol Soldier {
    func march()
 }

 //Adaptor
 extension Student: Soldier {
    func march() {
//        walk()
        print("marching.....")
    }
 }
 
 let hement = Student()
 hement.march()

