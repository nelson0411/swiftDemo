//
//  Tools.swift
//  weibo-ios
//
//  Created by wuna on 2019/9/16.
//  Copyright © 2019 wuna. All rights reserved.
//

import UIKit

class Tools: NSObject {

    var datas = [String]()
    
    private static let instance = Tools()
    
    private override init() {
        datas.append("si")
    }
    
    class func sharedTools() -> Tools {
        return instance
    }
    
}
