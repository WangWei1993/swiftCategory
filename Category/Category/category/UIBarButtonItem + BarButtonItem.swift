//
//  BarButtonItem.swift
//  PSS_swift
//
//  Created by 王伟 on 2017/4/12.
//  Copyright © 2017年 王伟. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    public class func itemWithTarget(target: AnyObject ,
                               action: Selector ,
                                image: String? ,
                                title: String? ,
                          selectImage: String?) -> UIBarButtonItem {
        
        let buttonItem :UIBarButtonItem = UIBarButtonItem()
        
        // 添加自定义的View
        buttonItem.customView = buttonWithTarget(target: target, action: action, image: image, title: title, selectImage: selectImage)
        
        return buttonItem
        
        
        
    }
    
    public class func buttonWithTarget(target: AnyObject ,
                                       action: Selector ,
                                        image: String? ,
                                        title: String? ,
                                  selectImage: String?) -> UIButton {
        
        let button :UIButton = UIButton()

        // 默认图片
        if let imageStr = image  {
            
            if let image = UIImage(named:imageStr) {
                
                button.setImage(image, for: UIControlState.normal)
            }
            
        }
        

        
        // highlighted图片
        if let selectImageStr = selectImage {
            if let selectImage = UIImage(named:selectImageStr) {
                
                button.setImage(selectImage, for: UIControlState.highlighted)
            }
        }
        
        
        // 设置按钮中图片的尺寸
        button.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        button.addTarget(target, action: action, for: .touchUpInside)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        
        // 设置为的内边距
        button.titleEdgeInsets = UIEdgeInsetsMake(button.bounds.height * 0.5, 0, 0, 0)

        return button
        
    }
    
    
}

