//
//  BlockedWebsitesViewController.swift
//  Open Adblock
//
//  Created by Saagar Jha on 8/14/15.
//  Copyright © 2015 OpenAdblock. All rights reserved.
//

import UIKit

class BlockedWebsitesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let cellIdentifer = "blockedWebsite"
    
    @IBOutlet weak var blockedWebsites: UITableView! {
        didSet {
            blockedWebsites.delegate = self
        }
    }
    
    var rules: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        do {
//            let data = try NSJSONSerialization.JSONObjectWithData(NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList", withExtension: "json")!)!, options: .
//                AllowFragments) as? Array
//            for website in data {
//                rules.append(website["trigger"]["url-filter"])
//            }
//        } catch _ {
//            rules = [:]
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(rules)
        return 0
        //return rules.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier(cellIdentifer)!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
