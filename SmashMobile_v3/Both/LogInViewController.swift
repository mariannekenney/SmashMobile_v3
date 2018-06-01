//
//  LogInViewController.swift
//  SmashMobile_v3
//
//  Created by Marianne Kenney on 6/1/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logIn(_ sender: Any) {
        var storyboard = UIStoryboard(name: "HiringManager", bundle: nil)
        if (email.text?.lowercased() == "recruiter") {
            storyboard = UIStoryboard(name: "Recruiter", bundle: nil)
        }
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerID") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
}
