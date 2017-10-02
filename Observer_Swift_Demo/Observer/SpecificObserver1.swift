//
//  specificObserver1.swift
//  Observer_Swift_Demo
//
//  Created by tianxiuping on 2017/10/2.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

//具体观察者1
class SpecificObserver1: Observer {
    func update(o: Observable, msg: Any?) {
        if msg != nil{
            
            print("具体观察者1收到 \(String(describing: msg!))")
        }
    }
}
