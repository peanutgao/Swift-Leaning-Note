//: Playground - noun: a place where people can play

import UIKit

// 1. Swift中进行基本运算时必须保证类型一致, 否则会出错
// 不像OC那样有有隐式转换

// 2. 强制转换
// 如: 将整型转换成浮点型
let a : Int = 20
let b = 3.14

// 直接 let c = a + b 会出错
let c = Double(a) + b;
// 浮点型转换成整型会 四舍五入
let d = a + Int(b);


