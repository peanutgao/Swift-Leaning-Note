//: Playground - noun: a place where people can play

import UIKit

// * 数组是 泛型集合, 必须要制定存放的值的类型

// 1. 定义数组
// 1.1 定义不可变数组: 用let 修饰即可
// * 如果 数组里面类型是一样的
let array = ["hello", "world", "hello", "world"]

// * 如果 数组里面类型不一样, 需要 加  as [Any], 表示里面存放的内容可以是任意类型
let array1 : Array = [12, "hello"] as [Any]


// 1.2 定义可变数组: 用 var 修饰

// 第一种方式:
var arrayM1 = Array<String>()  // 创建对象一般是 类型(), 但是Array()是错误的,因为Swift中 数组是泛型, 不行要制定其类型,

// 第二种方式:
var arrayM2 = [String]()






// 2. 对数组的基本操作
// 2.1 添加元素, 用 append 方法
arrayM1.append("hello")
arrayM1.append("world")


// 2.2 删除
arrayM1.remove(at: 0)
//arrayM1.removeAll()

// 2.3 修改数组
arrayM1[0] = "World"
var strF = arrayM1.first    // 直接 arrayM1.first = "Hello" 会提示错误, arrayM1.first 只读
strF = "Hello"


// 2.4 遍历
// 第一种方式
for i in 0..<array.count {
    print(array[i])
}

// 第二种方式
for obj in array {
    print(obj)
}

// 遍历前几位值
// 数组里面写 区间
for name in array[0..<2] {  // 遍历前2位
    print(name)
}





// 3 合并数组
// 第一种: 直接用 `+` 号, 前提是 两个数组的值必须一直
let resultArray = array + arrayM1

// 第二种方式:
arrayM1.append(contentsOf: arrayM1) // append 结合










