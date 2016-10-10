//
//  ViewController.swift
//  18闭包使用
//
//  Created by Joseph on 2016/10/9.
//  Copyright © 2016年 Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tool : Tool?
    var tool2 : Tool = Tool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        tool = Tool()
        
        // 避免循环引用
        // 方法一:
        weak var weakSelf = self    // self 可能为nil
        
        tool!.requestData(callBack: { (jsonData) -> (Void) in
            print("\(jsonData)-------\(#function)")
            weakSelf?.view.backgroundColor = UIColor.red    // weakSelf是可选类型, 如果weakSelf == nil, 则系统会自动解包
        })
        
        
        // 方法二:
        tool!.requestData { [weak self] (jsonData) -> (Void) in
            self?.view.backgroundColor = UIColor.red    // self是可选类型, 如果self == nil, 则系统会自动解包
        }
        
        
        // 方法三:
        // 不推荐, 如果self为空,会奔溃
        tool!.requestData { [unowned self] (jsonData) -> (Void) in
            self.view.backgroundColor = UIColor.red
        }
    }


    
    // deinit相当于 OC 中的 - dealloc 方法
    deinit {
        print("当前控制器被释放了")
    }
}

