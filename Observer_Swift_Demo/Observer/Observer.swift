//
//  Observer.swift
//  Observer_Swift_Demo
//
//  Created by tianxiuping on 2017/10/2.
//  Copyright © 2017年 TXP. All rights reserved.
//

import Foundation

protocol Observer {
   
    //收到通知
    func update(o:Observable,msg:Any?)
}
