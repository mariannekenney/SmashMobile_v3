//
//  HM_JobsTableViewController.swift
//  SmashMobile_v3
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class HM_JobsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.performSegue(withIdentifier: "jobsToJob", sender: self)
    }
    
}
