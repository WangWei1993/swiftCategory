//
//  UIView+Frame.swift
//  PSS_swift
//
//  Created by 王伟 on 2017/4/13.
//  Copyright © 2017年 王伟. All rights reserved.
//

import UIKit

// 给UIView扩展一些方法
extension UIView {
    
    var x :CGFloat {
        set{
            var rect = self.frame
            rect.origin.x = newValue
            self.frame = rect
            
        }
        get{
            return self.frame.origin.x
        }
    }
    
    var y :CGFloat {
        set{
            var rect = self.frame
            rect.origin.y = newValue
            self.frame = rect
            
        }
        get{
            return self.frame.origin.y
        }
    }
    
    
    var width :CGFloat {
        set{
            var rect = self.frame
            rect.size.width = newValue
            self.frame = rect
            
        }
        get{
            return self.frame.size.width
        }
    }
    
    var height :CGFloat {
        set{
            var rect = self.frame
            rect.size.height = newValue
            self.frame = rect
            
        }
        get{
            return self.frame.size.height
        }
    }
    
    var centerX :CGFloat {
        set{
            var center = self.center
            center.x = newValue
            self.center = center
            
        }
        get{
            return self.center.x
        }
    }
    
    var centerY :CGFloat {
        set{
            var center = self.center
            center.y = newValue
            self.center = center
            
        }
        get{
            return self.center.y
        }
    }
    
    // 获取最大y值
    var maxY :CGFloat {
        get{
            return self.frame.maxY
        }
    }
    
    // 获取最大x值
    var maxX :CGFloat {
        get{
            return self.frame.maxX
        }
    }
    
    
}
