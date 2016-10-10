//
//  Tool.swift
//  18闭包使用
//
//  Created by Joseph on 2016/10/9.
//  Copyright © 2016年 Joseph. All rights reserved.
//

import UIKit


class Tool: NSObject {
    
    // 定义一个闭包属性 (String) -> (Void)
    // ((String) -> (Void))? 表示这个闭包是可选类型
    // 错误: (String) -> (Void)? 这个则表示 返回值是可选类型,
    var callBack : ((String) -> (Void))?
    

    func requestData(callBack: @escaping (String) -> (Void)) -> Void {
        DispatchQueue.global().async {
            
            self.callBack = callBack
            
            print("当前线程:\(Thread.current)")
            
            DispatchQueue.main.sync {
                print("主队列执行任务")
                callBack("hello world")
            }
        }
    }
}
