//: Playground - noun: a place where people can play

import UIKit

/*
    > 为什么会引入 可选类型
 
    * 在OC开发中,如果一个变量暂时不用,可以赋值为0(基本数据类型), 或者赋值为空(对象类型)
    * 在Swift开发中, nil 是一种特殊的类型, 
    * 而Swift是强类型语言, 如果类型不匹配是不能直接赋值的, 所以可能会导致 不能给一个字符串类型的变量 赋值 nil
    * 如果 var name: String = nil 会出错
    * 为了解决类似的问题, 引入了 `可选类型`
 
 */



/// 1. 定义可选类型
/// 1.1 方式一: 常规类型(不常用)
var nickName : Optional<String> = nil


/// 1.2 方式二: 语法糖(常用)
var name: String? = nil


/// 2. 赋值
name = "lala"


/// 3. 使用
print(name)  // 打印结果: "Optional("lala")\n", 包含了Optional(""), 而本质是想得到里面的 lala

// 格式: 变量 + !
// 所以在使用的时候 加上 !, 对可选类型 `解包` (Optional("")像一个包, 打开包,拿到里面的值)
print(name!)    // 打印结果 "lala\n"


/*
    注意: 强制解包时,如果发现里面的值是nil,程序会崩溃!
    所以在使用的时候 最好先对值判断是否是nil, 如果是nil,则再强制解包
 */
if name != nil {
    print(name!)
}



/// 4. 可选绑定
/*
    可选绑定其实相当于做了2件事
    1) 判断 变量 是否为nil
    2) 如果 变量 有值,则自动解包, 并将解包的内容复制给 tempName
 */

// 写法一: 不常用, 但是每次使用都要创建一个 临时变量, 比较麻烦, 所以不常用
if let tempName = name {
    print(tempName) // "lala\n"
}

// 写法二: 常用
if let name = name {
    print(name)     // "lala\n"
}



/// 5. 案例:

// 1. 创建URL
let url = NSURL(string: "www.google.com")   // 正确
//let url1: NSURL = NSURL(string: "www.google.com")   // 错误, 原因是  NSURL(string:)返回值是 NSURL? 可选类型, 而 定义的变量是 NSURL 类型, NSURL可选类型和NSURL类型不是同一个类型, Swift是强类型语言, 所以报错
let url2: NSURL? = NSURL(string: "www.google.com")  // 正确


// 2. 根据url创建NSURLReuqest对象
//let request = NSURLRequest(url: url)    // 错误, NSURLRequest(url: url) 里面的参数是强类型,而 url 是可选类型, 所以错误

//let request = NSURLRequest(url: url!)   // 不准确, 将rul加!来强制解包,但是没有判断, 可能导致程序崩溃, Swift必须加上 as URL  ( NSURLRequest(url: url! as URL) )

// 方法一:
if url != nil {
    let request = NSURLRequest(url: url! as URL)
}

if let url = url {
    let request = NSURLRequest(url: url as URL)
}











