//: Playground - noun: a place where people can play

import UIKit

// 1. if-else
/*
    OC if
    if (判断句) {
    
    }
 */

/*
    1.1 Swift的if写法
        * if 后面的括号()可以省略
        * 判读语句不再有非0 / nil 即真, 判断句必须有明确的真假(Bool)
 */

let a = 10
if a > 0 {  // 直接写 if a {} 会出错
    print("a = \(a)")
}
else {
    print("hello")
}



// 2. 三目
// 三目也要类型一直
let m = 10
let n = 2.5
var result : Double = 0
result = Double(m) > n ? Double(m) : n



// 3 guard 
// * 是Swift 2.0 出现的
// * 和 if 语句非常相似, 设计的目的是为了提高程序的可读性
// * 使用时必须 和 else 语句一起使用
//     * 当 条件表达式为 true 时, 跳过else语句中的内容, 执行语句组内容
//     * 当 条件表达式为 false 时, 执行 else 
//     * 跳转语句一般是 return break continue 和 throw
// * 必须写在函数里面
/*
    guard 条件表达式 else {
        // 条件表达式为假的时候执行
        break
    }
    // 条件表达式为真的时候执行
    语句组
*/

func onLine(age : Int) -> Void {
    guard a >= 18 else {
        print("没有成年")
        return
    }
    print("成年了已经")
}

onLine(age: 20)





// 4. switch
// * switch后面的 () 可以省略
// * case语句结束后, break 也可以省略, 系统会自动添加
// * 如果希望case穿透(OC只要不写break即可,但是Swift会自动添加), 需要在case语句结尾 添加 `fallthrough`
let gender = 1
switch gender {
case 0:
    print("女")
    fallthrough // 会继续执行 case 1 的语句
case 1:
    print("男")
default:
    print("其他")
}

// * 当多种情况执行同个 case 时, 只要在case后面可以添加多个 判断语句, 用`,` 分割
let score = 100;
switch gender {
case 0, 1:      // 当gender 是 0 或者 1 的时候都会执行
    print("通常性别")
default:
    print("其他")
}



// * switch 可以判断 浮点数
let value = 3.14
switch value {
case 3.14:
    print("π")
default:
    print("非π")
}



// * switch 可以判断字符串
let opration = "+"
switch opration {
case "+":
    print("+")
default:
    print("other")
}



// * switch 可以判断 区间
// * 开区间: 0..<10 表示 0~9,不包括10
// * 闭区间: 0...10 表示0~10
switch score {
case 0..<60:
    print("不及格")
case 60..<70:
    print("及格")
case 70..<90:
    print("优秀")
case 90...100:  // 包含100
    print("牛逼")
default:
    print("错误")
}
















