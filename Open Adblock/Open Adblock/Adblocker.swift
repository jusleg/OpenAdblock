//
//  Adblocker.swift
//  Open Adblock
//
//  Created by Saagar Jha on 8/21/15.
//  Copyright © 2015 OpenAdblock. All rights reserved.
//

import Foundation

class Adblocker {
    static let sharedInstance = Adblocker()
    
    init() {
        let data = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList", withExtension: "json")!)
        var jsonData: AnyObject?
        do {
           jsonData = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
        } catch _ {
            assertionFailure("Error parsing JSON")
        }
        //print(jsonData)
        for json in jsonData as! [AnyObject] {
            if let trigger = (json as! [String: AnyObject])["trigger"] {
                if let website = (trigger as! [String: AnyObject])["url-filter"] {
                    print(website)
                }
            }
        }
    }
}