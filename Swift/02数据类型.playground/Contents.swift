//: Playground - noun: a place where people can play

import UIKit

// 1. 整型
// 整型包含: 有符号 和无符号
// * 有符号:
//      * Int8 / Int16 / Int32 / Int64
// * 无符号:
//      * UInt8 / UInt16 / UInt32 / UInt64
let a : Int = 10



// 2. 浮点型
// * Float: 32位浮点型
// * Double: 64位浮点型(默认类型)
var b : Double = 3.14



// 3. 类型推导
// * Swift是强类型语言
// * 任何一个标识符都要有`明确`的类型
// **注意**
// * 1. 如果定义一个标识符时直接赋值 , 那么标识符后面的类型可以省略,
var i = 20 // i 的类型会自动变成 整型, 因为Swift有类型推倒, 会根据后面的赋值自动决定前面标识符的数据类型
// * 2. 可以通过 option + 左键 来查看数据类型

let view : UIView = UIView()
// 简写
let myView = UIView()
myView.isHidden = true