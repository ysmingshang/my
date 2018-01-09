//
//  Target_my.swift
//  my
//
//  Created by Mikey on 2018/1/9.
//

import UIKit

@objc(Target_my)
class Target_my: NSObject {
    
    @objc
    func Action_viewController(params:NSDictionary) -> UIViewController {
        
        let block = params["callback"]
        typealias CallbackType = @convention(block) (NSString) -> Void
        
        let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
        let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
        
        callback("success")
        
        let aViewController = MyViewController()
        return aViewController
    }
    
}

