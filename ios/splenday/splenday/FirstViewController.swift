//
//  FirstViewController.swift
//  splenday
//
//  Created by ZhangOvilia on 10/1/15.
//  Copyright © 2015 Ovilia. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var activityStack: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        for var i in 0...3 {
            let mySwitch = SSwitchControl(frame: CGRect(x: 0, y: 50 * i,
                width: Int(activityStack.frame.width), height: 50))
            activityStack.addArrangedSubview(mySwitch)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

