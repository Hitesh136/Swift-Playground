 /*
  A Simple example for adaptor pattern
  
  https://medium.com/jeremy-codes/adapter-pattern-in-swift-7332e178f112
  */
 
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
        print("marching.....")
    }
 }
 
 let hement = Student()
 hement.march()
 
 enum JackType: String {
    case threePointFive_MMJack = "3.5 mm jack"
    case lightingCable = "Lighting Cable"
 }
 
 class SonyHeadphone {
    var jackType = threePoint
 }
