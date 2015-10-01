//
//  FirstViewController.swift
//  splenday
//
//  Created by ZhangOvilia on 10/1/15.
//  Copyright © 2015 Ovilia. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var meetBtn: UIButton!
    @IBOutlet weak var codeBtn: UIButton!
    @IBOutlet weak var walkBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        let color = UIColor.whiteColor();
        meetBtn.backgroundColor = color;
        codeBtn.backgroundColor = color;
        walkBtn.backgroundColor = color;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleMeet(sender: UIButton) {
        if (sender.backgroundColor == UIColor.whiteColor()) {
            sender.backgroundColor = self.view.tintColor;
            sender.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        } else {
            sender.setTitleColor(sender.backgroundColor, forState: UIControlState.Normal);
            sender.backgroundColor = UIColor.whiteColor();
        }
    }

}

