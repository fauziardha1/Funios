import Foundation

let main = {
    //testing answer for question 2
    var students = studentSeed()
    
    // testing answer for queston 3 
    print("The Best Student is \(getBestStudent(students : students)?.nickName ?? "no one good")")
    print("The Worst Student is \(getWorstStudent(students : students)?.nickName ?? "no one the worst")")
    
    // testing answer for question 4
    let animal = Animal()
    animal.suara()
    
    // testing answer for question 5
    let cat = Cat()
    cat.suara()
    
    // testing answer for question 6
    let chicken = Chicken()
    chicken.suara()
}()


// answer for question 1
struct  Student {
    let nickName : String
    let fullName : String
    let GPA : Double
}

// answer for question 2
func studentSeed(count: Int = 5) -> [Student]{
    var arr : [Student] = [Student]()
    for index in 1...count {
        arr.append(Student(nickName: "Student\(index)", fullName: "Full Name of Stuent\(index)", GPA: ceil(Double.random(in: 1...4)*100)/100))
    }
    return arr
}

//answer for question 3
func getBestStudent(students : [Student] ) -> Student?{
    var best = students.first 
    students.forEach{ student in 
        best = student.GPA > best?.GPA ?? 0 ? student : best
    }
    return best
}

func getWorstStudent(students : [Student] ) -> Student?{
    var worst = students.first 
    students.forEach{ student in 
        worst = student.GPA < worst?.GPA ?? 0 ? student : worst
    }
    return worst
}


//answer for Question 4
class Animal {
    let sound : String
    init(sound: String = "arrgh"){
        self.sound = sound
    }
    func suara(){
        print(self.sound)
    }
}

//answer for Question 5
class Cat : Animal{
    override init(sound : String = "Meow"){
        super.init(sound: sound)
    }
}

//answer for Question 6
class Chicken : Animal {
    override init(sound: String = "cock-a-doodle-doo") {
        super.init(sound: sound)
    }
}


