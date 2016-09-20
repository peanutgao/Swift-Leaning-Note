//: Playground - noun: a place where people can play

import UIKit

/*
    * String 是一个结构体, 性能更高
    * NSString 是 一个 OC 对象
    * String 支持直接遍历
    * 支持 String 和 NSString 转换
 */

// 1. 定义字符串
let str1 : String = "hello world"
let str2 = "lala"


// 2. 遍历字符串
// 调用 字符串的 .characters 属性
for c in str1.characters {
    print(c)
}


// 3. 拼接字符串
// 3.1 字符串之间拼接, 直接用 `+` 加号即可
let str3 = str1 + str2


// 3.2 和其他类型拼接, 用 `\(变量名)` 格式替换
let name = "gaoyusheng"
let age = 29

let info = "my name is \(name), my age is \(age)"


// 3.3 字符串格式化
let minute = 2
let second = 18
// 保留2位数 02:18
// format是格式类型, arguments: 后面是数组
let timeStr = String(format: "%02d:%02d", arguments: [minute, second]);


// 3.4 字符串截取

let urlString = "www.google.com"
// 截取字符串建议 转成NSString 类型后, 用NSString的方法来截取
//let str = (urlString as NSString).substring(to: 4)


// 调用 String 的方法
// public func index(_ i: String.Index, offsetBy n: String.IndexDistance) -> String.Index
// 创建 String.Index 类型
let index = urlString.index(urlString.startIndex, offsetBy: 3)
let subStr1 = urlString.substring(to: index)

let index2 = urlString.index(urlString.startIndex, offsetBy: 8, limitedBy: urlString.endIndex)
let subStr2 = urlString.substring(to: index2!)















