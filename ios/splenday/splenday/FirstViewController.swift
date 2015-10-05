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
        for var i in 0...10 {
            let mySwitch = SSwitchControl()
            self.view.addSubview(mySwitch)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

