//
//  SSwitch.swift
//  splenday
//
//  Created by baidu on 15/10/5.
//  Copyright © 2015 Ovilia. All rights reserved.
//

import UIKit

@IBDesignable @objc public class SSwitchControl: UIControl {
    
    /**
     * public
     */
    
    /**
     * switch on/off states
     */
    @IBInspectable public var on:Bool {

        get {
            return switchValue
        }
        set {
            switchValue = newValue

            if switchValue {
                self.backgroundView.backgroundColor = self.tintColor
            } else {
                self.backgroundView.backgroundColor = UIColor.clearColor()
            }
        }

    }

    override public func beginTrackingWithTouch(
        touch: UITouch,
        withEvent event: UIEvent?
    ) -> Bool {

        super.beginTrackingWithTouch(touch, withEvent: event)

        self.on = !self.on

        return true

    }



    /**
     * internal
     */
    internal var backgroundView: UIView!

    private var id: Int



    /*
    *   Initialization
    */
    public convenience init() {
        self.init(frame: CGRectMake(0, 0, 500, 100))
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.setup()
    }

    override public init(frame: CGRect) {
        let initialFrame = CGRectIsEmpty(frame) ? CGRectMake(0, 0, 500, 100) : frame
        super.init(frame: initialFrame)

        self.setup()
    }



    /**
     * private
     */
    
    private var switchValue: Bool = false
    
    private func setup() {

        self.backgroundView = UIView(frame: CGRectMake(0, 0,
            self.frame.size.width, self.frame.size.height))
        backgroundView.backgroundColor = UIColor.clearColor()
        backgroundView.layer.cornerRadius = 0
        //backgroundView.layer.borderColor = self.borderColor.CGColor
        backgroundView.layer.borderWidth = 1.0
        backgroundView.userInteractionEnabled = false
        backgroundView.clipsToBounds = true
        self.addSubview(backgroundView)

    }

}
