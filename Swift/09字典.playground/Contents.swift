//: Playground - noun: a place where people can play

import UIKit

/// 1. 定义字典
/// 定义字典的方式和数组一样,都是用中括号 []
/// 1.1 定义不可变字典,
let dic1 = ["key1" : "value1","key2" : "value2"]

// 完整写法
//let dic1 : Dictionary<String, NSObject> = ["key1" : "value1" as NSObject,"key2" : "value2" as NSObject]
//let dic1 : [String: AnyObject] = ["key1" : "value1" as AnyObject,"key2" : "value2" as AnyObject]

//----------------------------------------------
/// 1.2 定义可变字典
/// 创建时必须得key value的指定类型
//var dicM = Dictionary<String, NSObject>() // 很少用
var dicM = [String: AnyObject]()    // 常用

/*
    AnyObject: 一般指定类型,
    NSObject: 一般用于创建对象
 */


//----------------------------------------------
/// 2. 可变字典的基本操作
/// 2.1 添加元素
/// 直接 dic["key"] = value 即可,
/// 没有 setValue:forKey: 和 setObject:forKey:的方式了
dicM["name"] = "lala" as AnyObject?

let array = ["money", "car"]
dicM["have"] = array as AnyObject?


/// 2.2 删除元素
//dicM.removeAll()  // 删除所有
dicM.removeValue(forKey: "have")


/// 2.3 修改元素
/// 修改元素和添加元素的书写方式是一样的
/// 所以会有, 当修改一个不存在的key的value的时候,会创建这个元素
dicM["name"] = "acb" as AnyObject?



/// 2.4 获取元素
/// 直接获取, 没有 objectForKey了
dicM["name"]



//----------------------------------------------
/// 3. 遍历字典
/// 3.1 遍历key
for key in dicM.keys {
    print(key)
}


/// 3.2 遍历value
for value in dicM.values {
    print(value)
}


/// 3.3 同时遍历key 和 value
for (key, value) in dicM {
    print(key, value)
}



//----------------------------------------------
/// 4. 合并字典
/// 不可以类似 Array 那样通过 `+` 的方式合并, 只能遍历,然后一个个赋值
for (key, value) in dic1 {
    dicM[key] = value as AnyObject?
}
















