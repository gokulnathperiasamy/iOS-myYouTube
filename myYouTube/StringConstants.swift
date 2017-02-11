//
//  StringConstants.swift
//  myYouTube
//
//  Created by Gokul Nath KP on 06/02/17.
//  Copyright © 2017 Gokul Nath KP. All rights reserved.
//

import Foundation

class StringConstants {
    
    /************************** Public Members ****************************/
    
    public static let APP_NAME = StringConstants.getAppName()
    public static let APP_VERSION = StringConstants.getAppVersion()
    
    /*********************** Private Getters/Setters **********************/
    
    private static func getAppVersion() -> String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "1.0.0"
    }
    
    private static func getAppName() -> String {
        if let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            return appName
        }
        return "myYouTube"
    }
}
