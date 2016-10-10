//: Playground - noun: a place where people can play

import UIKit

/*
    * 定义 类 的格式 :
    
    class 类名 : 父类 {
    }
 
    * 基类: NSObject
    * 重写父类的时候需要加 override 关键字
 */

class Person : NSObject {
    var age: Int = 0
    
    // 当通过重写 该方法的时候, 可以解决 通过 setValuesForKeys 设一个不存在的值时的报错问题
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}

let p = Person()
p.age = 20
p.setValuesForKeys(["age": 28, "name": "lala"])

print("age:\(p.age)")