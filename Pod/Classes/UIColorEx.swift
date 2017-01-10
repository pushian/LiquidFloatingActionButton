//
//  UIColorEx.swift
//  LiquidLoading
//
//  Created by Takuma Yoshida on 2015/08/21.
//  Copyright (c) 2015年 yoavlt. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    var redLiquid: CGFloat {
        get {
            let components = self.cgColor.components
            return components![0]
        }
    }
    
    var greenLiquid: CGFloat {
        get {
            let components = self.cgColor.components
            return components![1]
        }
    }
    
    var blueLiquid: CGFloat {
        get {
            let components = self.cgColor.components
            return components![2]
        }
    }
    
    var alphaLiquid: CGFloat {
        get {
            return self.cgColor.alpha
        }
    }

    func alphaLiquid(_ alpha: CGFloat) -> UIColor {
        return UIColor(red: self.redLiquid, green: self.greenLiquid, blue: self.blueLiquid, alpha: alpha)
    }
    
    func whiteLiquid(_ scale: CGFloat) -> UIColor {
        return UIColor(
            red: self.redLiquid + (1.0 - self.redLiquid) * scale,
            green: self.greenLiquid + (1.0 - self.greenLiquid) * scale,
            blue: self.blueLiquid + (1.0 - self.blueLiquid) * scale,
            alpha: 1.0
        )
    }
}
