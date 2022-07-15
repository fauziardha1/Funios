import Foundation
let main =  {
    quadraticFunc(maxNum : 5)
    haiThree(maxNum: 5)
    reverseQuadratic(maxNum: 5)
}()

//answer for question 1
func quadraticFunc(maxNum : Int) {
    print("\n==== Quadratic Function ====")
    for number in 1...maxNum {
        print("\(number) square is \(pow(Decimal(number),2))")
    }
}

//answer for question 2
func haiThree(maxNum : Int){
    print("\n==== HaiThree Function ====")
    for number in 1...maxNum {
        (number % 3 == 0) ? print("Hai") : print(number)
    }
}


//answer for question 3 
func reverseQuadratic(maxNum : Int) {
    print("\n==== Reverse Quadratic Function ====")
    for number in 0..<maxNum {
        print(pow(Decimal(maxNum-number),2))
    }
}

