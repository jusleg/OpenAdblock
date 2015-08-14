//
//  SettingsTableViewController.swift
//  Open Adblock
//
//  Created by Justin on 2015-08-13.
//  Copyright © 2015 OpenAdblock. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func blockAds(sender: AnyObject) {
    }
    
    @IBAction func blockAnalytics(sender: AnyObject) {
    }
   
    @IBAction func openSettings(sender: AnyObject) {
        if let settingsURL = NSURL(string: UIApplicationOpenSettingsURLString) {
            UIApplication.sharedApplication().openURL(settingsURL)
        }
    }
    
}

