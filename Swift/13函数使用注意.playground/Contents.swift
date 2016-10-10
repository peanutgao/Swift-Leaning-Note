//: Playground - noun: a place where people can play

import UIKit


//----------------------------------------------------------------//

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}


/// 1. 内部参数 和 外部参数
/*
    swift 2.2
    内部参数 和 外部参数
    内部参数: 在函数内部看到的就是内部参数, 默认所有的参数都是内部参数
    外部参数: 在函数外部可以看到的参数名称就是外部参数, 默认情况从第二个参数开始既是内部参数也是外部参数

    如果 要让第一个参数也是外部参数, 可以给第一个参数添加一个别名
 
    swift 3开始,都是外部参数
 */

sum(num1: 12, num2: 13)



//-------------------------------- 2. 默认参数 --------------------------------//

/*
    给函数的参数设置一个默认值, 在调用的时候,如果不穿参,则默认用该值
 如下面函数, 给language设置了一个 "C" 的默认值, 调用时不传参数, studyLanguage()
 */
func studyLanguage(language: String = "C") -> String {
    return "I want study \(language) language"
}

studyLanguage(language: "OC")
studyLanguage()




//-------------------------------- 3. 可变参数--------------------------------//

/*
    大多数的时候参数数量是固定的,但是有时会不确定, 比如计算多个整数相加, 但是有多少个 不确定, 这个时候就可以用可变参数
    可变参数是用 `...` 三个点来表示
    参数即是 一个数组, 所有的入参都在这里面
 */

func sum(num: Int...) -> Int {
    var result = 0
    for i in num {
        result += i
    }
    
    print(num)  // num 是一个数组
    return result
}


sum(num: 10, 15, 22)





//------------------------------ 4. 指针类型 ----------------------------------//

/*
    关键字, inout
    在swift 2 中是 在参数名前面
    在swift 3 中是在 变量名前面 加 inout
 */
var m = 20
var n = 30

func swapNumb(m: inout Int, n: inout Int) {
    let temp = m
    m = n
    n = temp
}


// 调用
swap(&m, &n)

print("m:\(m), n:\(n)")





//--------------------------------- 5. 函数嵌套 -------------------------------//
/*
    swift 支持函数嵌套
 */
func func1() {
    func func2() {
        print("\(#function)")
    }
    
    print(#function)
    func2()
}

func1()










