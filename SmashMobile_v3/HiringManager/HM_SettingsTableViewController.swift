//
//  HM_SettingsTableViewController.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class HM_SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var stillOpen: UISwitch!
    @IBOutlet weak var pushNotifications: UISwitch!
    @IBOutlet weak var recruiterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "settingsCell")
        return cell
    }
    
    //NavigationItems
    @IBAction func donePressed(_ sender: Any) {
        settings()
    }
    
    func settings() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
