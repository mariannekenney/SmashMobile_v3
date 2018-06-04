//
//  HM_SpecificJobTableViewController.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class HM_SpecificJobTableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var favorites: UIBarButtonItem!
    @IBOutlet weak var no: UIBarButtonItem!
    @IBOutlet weak var yes: UIBarButtonItem!
    @IBOutlet weak var new: UIBarButtonItem!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSearchBar()
    }
    
    //TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "jobCell")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "jobToIndividual", sender: self)
    }
    
    //SearchBar
    func setUpSearchBar() {
        searchBar.delegate = self
        searchBar.setFont()
        self.tableView.setContentOffset(CGPoint(x: 0, y: searchBar.frame.size.height), animated: false)
    }
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        searchBar.endEditing(true)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.endEditing(true)
    }
    
    //Toolbar
    @IBAction func newPressed(_ sender: UIBarButtonItem) {
        removeAllStyle()
        new.style = .done
    }
    
    @IBAction func yesPressed(_ sender: Any) {
        removeAllStyle()
        yes.style = .done
    }
    
    @IBAction func noPressed(_ sender: Any) {
        removeAllStyle()
        no.style = .done
    }
    
    @IBAction func favoritesPressed(_ sender: Any) {
        removeAllStyle()
        favorites.style = .done
    }
    
    func removeAllStyle() {
        new.style = .plain
        yes.style = .plain
        no.style = .plain
        favorites.style = .plain
    }
    
    //NavigationItems
    @IBAction func backPressed(_ sender: Any) {
        back()
    }
    
    @IBAction func settingsPressed(_ sender: Any) {
        settings()
    }
    
    func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func settings() {
        self.performSegue(withIdentifier: "jobToSettings", sender: self)
    }
}
