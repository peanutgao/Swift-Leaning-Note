//: Playground - noun: a place where people can play

import UIKit

/// 元组(tuple)是一种数据结构
/// 用于定义一组数据, 类似字典和数组
/// 一般用于函数的返回值, OC和C 一般只有一个返回值, 而通过元组, 可以让函数有多个返回值

/*
    定义一个人的信息,如姓名:lala, 身高:168, 年龄: 28
 */
// 1. 使用`数组`定义
let array = ["lala", 168, 28] as [Any]

// 取值
array[0]
array[1]
array[2]



// 2. 使用`字典`定义
let dic = ["name" : "lala", "height": 168, "age" : 28] as [String : Any]

// 取值
dic["name"]
dic["height"]
dic["age"]



/// 3. 元组
///  3.1 最简单的定义方式
/*
    定义元组用 () 小括号
 */
let tuple = ("lala", 168, 28)

// 取值
/*
    直接用 元组名.索引值 的方式来取值
    这种方式非常不好, 取值时不直观, 所以可以对元组取一个别名
 */
tuple.0
tuple.1
tuple.2



/// 3.2 给元组取别名
/// 类似字典, 不过字典前面的key 一般是字符串, 而元组前面的别名可以是随意的, **不用加双引号**
let tuple2 = (name: "lala", height: 168, age: 28)

// 取值
tuple2.name
tuple2.height
tuple2.age




/// 3.3 
let (name, height, age) = ("lala", 168, 28)

// 取值
name
height
age



