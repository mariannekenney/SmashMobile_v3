//
//  RC_IndividualViewController.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class RC_IndividualViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

