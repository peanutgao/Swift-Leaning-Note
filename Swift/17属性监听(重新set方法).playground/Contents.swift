//: Playground - noun: a place where people can play

import UIKit

/// 有时开发的时候需要重新setter方法, 然后在setter方法中做一些事情
/// 在swift中有 willSet 和 didSet 两个函数, willSet有一个默认的值: newValue, didSet 有oldValue值


class Person: NSObject {
    var name: String? {
        /// 属性即将改变的时候
        willSet {
           print(newValue)
        }
        
        /// 数据改变时
        didSet {
            print(oldValue)
        }
    }

}


let p = Person()
p.name = "Peanutgao"