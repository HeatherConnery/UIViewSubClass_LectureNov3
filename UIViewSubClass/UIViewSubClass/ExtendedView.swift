//
//  ExtendedView.swift
//  UIViewSubClass
//
//  Created by Heather Connery on 2015-11-03.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

//can view in interface builder anything in here:
@IBDesignable

class ExtendedView: UIView {
    
    //write code here and be able to change in interface builder
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    override func layoutSubviews() {
        self.layer.backgroundColor = UIColor.blueColor().CGColor
        
    }

}
