//
//  ViewController.swift
//  HelloGCD
//
//  Created by 林奕德 on 2018/4/4.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let task1 = {
            for i in 1...5{
                print("task1: \(i)")
            }
        }
        let task2 = {
            for i in 1...5{
                print("task2: \(i)")
            }
        }
//        DispatchQueue.main.async(execute: task1)//不同步 沒有回傳值 123123
//        DispatchQueue.main.async(execute: task2)//在主佇列 執行
            DispatchQueue.global().async(execute: task1) //同時執行 112233
            DispatchQueue.global().async(execute: task2) //共時佇列
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

