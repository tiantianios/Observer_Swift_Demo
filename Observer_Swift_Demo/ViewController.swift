//
//  ViewController.swift
//  Observer_Swift_Demo
//
//  Created by tianxiuping on 2017/10/2.
//  Copyright © 2017年 TXP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        demo2()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func demo1() {
        let observable = Observable()
        let specificObserver1 = SpecificObserver1()
        let specificObserver2 = SpecificObserver2()
        observable.addObserver(o: specificObserver1)
        observable.addObserver(o: specificObserver2)
        
        observable.notifyObservers(msg: "发送通知")
    }
    func demo2() {
        
        let observable = SpecificObservable()
        let specificObserver1 = SpecificObserver1()
        let specificObserver2 = SpecificObserver2()
        observable.addObserver(o: specificObserver1)
        observable.addObserver(o: specificObserver2)
        
        observable.setTitle(title: "具体被观察者发送消息")
        observable.push()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

