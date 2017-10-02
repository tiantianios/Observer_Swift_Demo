//
//  specificObservable.swift
//  Observer_Swift_Demo
//
//  Created by tianxiuping on 2017/10/2.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

//具体被观察者
class SpecificObservable: Observable {

    private var title:String?
    
    func setTitle(title:String) {
        
        self.title = title
    }
    
    func push() {
        if self.title != nil {
            notifyObservers(msg: self.title)
        }
    }
}
