//: Playground - noun: a place where people can play

import UIKit

/// 一. 函数格式
/*
    func 函数名(参数列表) -> 返回值类型 {
        代码块
        return 返回值
    }
 
 
    * func 是关键字
    * 多个参数列表直接用逗号 (,) 分割, 也可以没有参数
    * 箭头 -> 指向返回值类型
    * 如果没有返回值, 返回值为 Void (V大写), 并且 -> 返回值类型 部分可以省略
 
     func 函数名(参数列表) {
        代码块
        return 返回值
     }
 
*/


/// 1. 没参,没返回值
func func1() -> Void {
    print("hello world")
}

func func2() {
    print("hello world")
}


/// 2. 没参, 有返回值
func func3() -> Int {
    print("my world")
    return 1
}


/// 3. 有参数, 没有返回值
func func4(name: String, age: Int) -> Void {
    print(name, age)
}

func func5(name: String, age: Int) {
    print(name, age)
}



/// 4. 有参数, 有返回值
func func6(name: String) -> Int {
    if name == "apple" {
        return 28
    }
    return 0
}


// 返回值是 `元组` 类型
func func7(name: String) -> (Int, Bool) {
    if name == "apple" {
        return (28, true)
    }
    return (0, false)
}


















