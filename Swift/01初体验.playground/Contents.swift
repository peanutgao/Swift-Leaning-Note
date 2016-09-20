//: Playground - noun: a place where people can play

// 1. 导入框架
// OC
// #import <UIKit/UIKit.h>
// Swift
import UIKit


// 2. 定义标识符
// 2.1 定义常量用 let
// 2.2 定义变量用 var
// 2.3 结构: let/var 标识符名称 : 数据类型 = 值
let a : Int = 15;   // 注意Int的 `i` 是大写的

var b : Double = 12.4
b = 11.5


// 3. 语句结束
// 如果一行中只有一条语句, 那么该语句结束后可以不加 分号;,
// 如果有多条语句, 那么必须得加分号;


// 4. 打印
/*
    OC:
    NSLog(@"%d", a);
 */
print(a)

// 4.2 打印参数
// 用 \(参数) 的格式
let value1 = 10
let value2 = 2.5
let valueStr : String = "abc"
let view : UIView = UIView()
print("value1=\(value1), value2=\(value2), valueStr=\(valueStr), view=\(view)")