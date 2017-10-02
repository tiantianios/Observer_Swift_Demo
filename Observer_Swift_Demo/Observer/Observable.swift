//
//  Observable.swift
//  Observer_Swift_Demo
//
//  Created by tianxiuping on 2017/10/2.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

//抽象被观察者
class Observable: NSObject {

    //观察者数组
    private var obs:Array<Observer>?
    override init() {
        super .init()
        self.obs = Array<Observer>()
    }
    //注册观察者
    func addObserver(o:Observer) {
        obs?.append(o)
    }
    //取消观察者
    func cancelObserver(o:Observer){
        obs?.removeLast()
    }
    //取消所有观察者
    func cancelAllObservers(o:Observer){
        obs?.removeAll()
    }
    
    //获得所有观察者
    func countObservers()->Int {
         return (self.obs?.count)!
    }
    
    //发送通知
    func notifyObservers() {
        notifyObservers(msg: nil)
    }
    
    func notifyObservers(msg:Any?) {
        self.obs?.forEach({ (o) in
            o .update(o: self, msg: msg)
        })
    }
    
}
