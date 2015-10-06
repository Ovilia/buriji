//
//  SSwitchView.swift
//  splenday
//
//  Created by baidu on 15/10/6.
//  Copyright © 2015 Ovilia. All rights reserved.
//

import UIKit

class SSwitchControl: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setup()
    }

    override init(frame: CGRect) {
        let initialFrame = CGRectIsEmpty(frame)
                ? CGRectMake(0, 0, 500, 100) : frame
        super.init(frame: initialFrame)

        setup()
    }



    /**
     * change on/off state
     */
    internal func toggle() {
        // toggle state
        isOn = !isOn

        // update UI
        if (isOn) {
            self.backgroundColor = tintColor;
        } else {
            self.backgroundColor = UIColor.yellowColor()
        }
    }

    override internal func beginTrackingWithTouch(
        touch: UITouch,
        withEvent event: UIEvent?
        ) -> Bool {

            super.beginTrackingWithTouch(touch, withEvent: event)

            toggle()
            
            return true
            
    }



    /***** private *****/

    private var isOn = false



    /**
     * setup when init
     */
    private func setup() {
        userInteractionEnabled = true
        
        backgroundColor = UIColor.yellowColor()
    }

}
