//: Playground - noun: a place where people can play

import UIKit


class Student : NSObject {
    // 1. 存储属性
    var name: String?   // 可选类型
    var age: Int = 0    // 设值一个初始值
    
    var mathScore: Double = 0.0
    var chineseScore: Double = 0.0
    
    
    /*
        在swift中, 如果使用当前对象的某一个属性, 或者调用当前对象的某一个方式时, 可以直接使用, 不需要加 self
     */
    func averageScore() -> Double {
        return (mathScore + chineseScore) * 0.5
    }
    
    
    // 2. 计算属性
    /*
        在swift中,可以直接创建一个计算属性, 即:
        在属性后面直接加上一个 {}, 其值是通过其他的属性计算得到的
     */
    var myAverageScore: Double {
        return (mathScore + chineseScore) * 0.5
    }
    
    
    // 3. 类属性
    /*
        类属性就是整个类相关的属性,是通过类名来访问的
        关键字 static
     */
    static var classPorperty : Int = 0
}


// 创建对象
let stu = Student()

// 给对象赋值
stu.name = "lala"
stu.age = 28
stu.mathScore = 99
stu.chineseScore = 80

// 不要直接打印 stu.name, 这样打印的是可选类型
if let name = stu.name {
    print(name)
}
print(stu.age)

let averageScore = stu.averageScore()
let myaverageScore = stu.myAverageScore

// 类属性赋值
Student.classPorperty = 28




















