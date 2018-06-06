//
//  HM_SpecificJobTableViewController.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class HM_SpecificJobTableViewCell: UITableViewCell {
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var textInfo: UITextView!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var mainView: UIView!
    
    @IBAction func starPresed(_ sender: Any) {
        star()
    }
    
    @IBAction func leftPressed(_ sender: Any) {
        left()
    }
    
    @IBAction func rightPressed(_ sender: Any) {
        right()
    }
    
    func left() {
        print("Left")
    }
    
    func right() {
        print("Right")
    }
    
    func star() {
        if (starButton.currentBackgroundImage == UIImage(named: "openStar")) {
            starButton.setBackgroundImage(UIImage(named: "fullStar"), for: .normal)
        } else {
            starButton.setBackgroundImage(UIImage(named: "openStar"), for: .normal)
        }
    }
    
    override func awakeFromNib() {
        let leftSwipe = UISwipeGestureRecognizer(target: self, action:Selector(("swipe:")))
        leftSwipe.direction = .left;
        self.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action:Selector(("swipe:")))
        rightSwipe.direction = .right;
        self.mainView.addGestureRecognizer(rightSwipe)
    }
    
    func swipe(sender:AnyObject) {
        let swipeGesture:UISwipeGestureRecognizer = sender as! UISwipeGestureRecognizer
        if(swipeGesture.direction == .left)
        {
            var frame:CGRect = self.mainView.frame;
            frame.origin.x = -self.leftButton.frame.width;
            self.mainView.frame = frame;
        }
        else if(swipeGesture.direction == .right)
        {
            var frame:CGRect = self.mainView.frame;
            frame.origin.x = +self.rightButton.frame.width;
            self.mainView.frame = frame;
        }
        
    }
}

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
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> HM_SpecificJobTableViewCell {
        let cell = HM_SpecificJobTableViewCell(style: .default, reuseIdentifier: "jobCell")
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "jobToIndividual", sender: self)
    }
    
    //SearchBar
    func setUpSearchBar() {
        searchBar.delegate = self
        searchBar.setStyle()
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
