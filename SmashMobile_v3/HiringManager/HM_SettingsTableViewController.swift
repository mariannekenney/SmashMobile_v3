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
    
    var cellTitles: [[String]] = [["A", "B", "C"], ["A", "B", "C"], ["A", "B", "C"]]
    var sectionTitles: [String] = ["Categories to see in canidate preview", "Tags", "My action items"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //TableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "settingsCell")
        cell.textLabel?.text = cellTitles[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if (cell?.accessoryType == .checkmark) {
            cell?.accessoryType = .none
            checkmarkOff()
        } else {
            cell?.accessoryType = .checkmark
            checkmarkOn()
        }
        cell?.isSelected = false
    }
    
    func checkmarkOn() {
        print("CheckmarkOn")
    }
    
    func checkmarkOff() {
        print("CheckmarkOff")
    }
    
    //NavigationItems
    @IBAction func donePressed(_ sender: Any) {
        done()
    }
    
    func done() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
