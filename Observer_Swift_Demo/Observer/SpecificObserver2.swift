//
//  specificObserver2.swift
//  Observer_Swift_Demo
//
//  Created by tianxiuping on 2017/10/2.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

class SpecificObserver2: Observer {

    func update(o: Observable, msg: Any?) {
        if msg != nil{
            
            print("具体观察者2收到 \(String(describing: msg!))")
        }
    }

}
