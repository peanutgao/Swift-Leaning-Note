//: Playground - noun: a place where people can play

import UIKit

// 1. for 循环

// OC写法
//for (int i = 0; i < 10; i++) {
//    NSLog(@"%d", i);
//}

// Swift写法
for i in 0 ..< 10 {
    print(i)
}

// 如果遍历的时候不用标识符, 可以直接用 _ 代替
for _ in 0 ..< 10 {
    print(i)
}




// 2. while
// OC
/*
    while (a > 10) {
        do something
    }
*/

// Swift
var a = 10
while a>0 {
    print(a)
    a -= 1  // Swift 3.0 不能用 a--, 或者 a++
}


// 3. do-while
// OC
/*
    do {
        a--;
        NSLog(@"%d", a);
    } while (a > 10)
 */

// Swift
// 将 do 改成 repeat
var b = 10
repeat {
    b -= 1
    print("hello world")
} while b > 0
 
 
 
 
 
 
 
 
