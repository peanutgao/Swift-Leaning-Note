//: Playground - noun: a place where people can play

import UIKit

class Student: NSObject {
    var name: String?
    var age: Int = 0
    
    override init() {
        // 在构造函数中, 如果没有明确super.init().那么系统会自动调用 super.init() 
        // 所以, 在构造函数中, 可写也可以不写
//        super.init()
        
        print("hello world")
    }
    
    
    // - (instancType)initWithName:(NSString *)name age:(int)age
    init(name: String?, age: Int) {
        self.name = name
        self.age = age
    }
    
    
    // - (instancType)initWithDict:(NSDictionary)dict
//    init(dict: Dictionary<String, AnyObject>) {
//
//    }
    init(dict: [String: AnyObject]) {
        /*
            as? 类型名, 转成可选类型
            as! 类型名, 转成确定的类型
         */
        
        super.init()
        self.setValuesForKeys(dict)
    }
    
    // 重新该方法是为了避免设置没有对应的key时导致崩溃
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
    }
    
    
}


let stu = Student()

let s1 = Student(name: nil, age: 28)

print("\(s1.name, s1.age)")


let s2 = Student(dict: ["name": "lala" as AnyObject, "age": 28 as AnyObject, "height": 168 as AnyObject])


