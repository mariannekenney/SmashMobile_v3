//
//  HM_IndividualViewController.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class HM_IndividualViewController: UIViewController {
    
    @IBOutlet weak var decisionSegment: UISegmentedControl!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var text: UITextView!
    
    var labels: [UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInfo()
    }
    
    //InfoSetUp
    func setUpInfo() {
        
    }
    
    //Buttons
    @IBAction func starPressed(_ sender: Any) {
        star()
    }
    
    @IBAction func takeActionPressed(_ sender: Any) {
        takeAction()
    }
    
    @IBAction func statusLogPressed(_ sender: Any) {
        statusLog()
    }
    
    @IBAction func viewResumePressed(_ sender: Any) {
        viewResume()
    }
    
    func star() {
        if (starButton.currentBackgroundImage == UIImage(named: "openStar")) {
            starButton.setBackgroundImage(UIImage(named: "fullStar"), for: .normal)
        } else {
            starButton.setBackgroundImage(UIImage(named: "openStar"), for: .normal)
        }
    }
    
    func takeAction() {
        print("TakeAction")
    }
    
    func statusLog() {
        print("StatusLog")
    }
    
    func viewResume() {
        print("ViewResume")
    }
    
    //NavigationItems
    @IBAction func backPressed(_ sender: Any) {
        back()
    }
    
    @IBAction func commentPressed(_ sender: Any) {
        comment()
    }
    
    func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func comment() {
        print("Comment")
    }
}
