//
//  LogInViewController.swift
//  SmashMobile_v3
//
//  Created by Marianne Kenney on 6/1/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var logo: UIWebView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func logIn(_ sender: Any) {
        var storyboard = UIStoryboard(name: "Recruiter", bundle: nil)
        if (isHiringManager()) {
            storyboard = UIStoryboard(name: "HiringManager", bundle: nil)
        }
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerID") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        
    }
    
    func isHiringManager() -> Bool {
        if (email.text?.lowercased() == "recruiter") {
            return false
        }
        return true
    }
    
}
