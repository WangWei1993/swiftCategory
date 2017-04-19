//
//  UIDevice+Device.swift
//  PSS_swift
//
//  Created by 王伟 on 2017/4/19.
//  Copyright © 2017年 王伟. All rights reserved.
//

import UIKit

// 获取App相关的信息
let _infoDic =  Bundle.main.infoDictionary

extension UIDevice {
    
    // MARK: - App相关
    // 获取App的版本号
    var appVersion :String {
        
        guard let infoDic = _infoDic else {
            return "获取APP版本号失败"
        }
        
        guard let appVersion = infoDic["CFBundleShortVersionString"] as? String else {
            return "获取APP版本号失败"
        }
        return appVersion
    }
    
    // 获取App的build版本
    var appBuildVersion :String {
        
        guard let infoDic = _infoDic else {
            return "获取APP版本号失败"
        }
        
        guard let appBuildVersion = infoDic["CFBundleVersion"] as? String else {
            return "获取APP版本号失败"
        }
        return appBuildVersion
    }
    
    // 获取App的名称
    var appName :String {
        
        guard let infoDic = _infoDic else {
            return "获取APP版本号失败"
        }
        
        guard let appName = infoDic["CFBundleDisplayName"] as? String else {
            return "获取APP版本号失败"
        }
        return appName
    }
    
    
    
    // MARK: - 设备相关
    // 获取设备的型号
    var deviceModel :String {
        return UIDevice.current.model
    }
    
    // 获取设备UUID
    var deviceUUID :String {
        
        guard let UUID = UIDevice.current.identifierForVendor?.uuidString else {
            return "获取设备唯一标识失败"
        }
        return UUID
    }
    
    // 获取设备名称（如iPhone：王伟的iPhone）
    var deviceName :String {
        return UIDevice.current.name
    }
    
    // 获取系统版本号
    var sysVersion :String {
        return UIDevice.current.systemVersion
    }
    
    
    // 获取iPhone、ipad、TV、的具体型号
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,7", "iPad6,8":                      return "iPad Pro"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
}
