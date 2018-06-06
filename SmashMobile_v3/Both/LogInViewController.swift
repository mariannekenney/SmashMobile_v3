//
//  LogInViewController.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var staySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //LogIn
    @IBAction func logInPressed(_ sender: Any) {
        logIn()
    }
    
    func logIn() {
        if (isValidUser()) {
            handleSwitch()
            var storyboard = UIStoryboard(name: "Recruiter", bundle: nil)
            if (isHiringManager()) {
                storyboard = UIStoryboard(name: "HiringManager", bundle: nil)
            }
            let vc = storyboard.instantiateViewController(withIdentifier: "ViewControllerID") as UIViewController
            present(vc, animated: true, completion: nil)
        }
    }
    
    func isValidUser() -> Bool {
        if (email.text == "") {
            self.errorAlert(message: "Please enter an email.")
            return false
        } else if (password.text == "") {
            self.errorAlert(message: "Please enter a password.")
            return false
        }
        return true
    }
    
    func isHiringManager() -> Bool {
        if (email.text?.lowercased() == "rec") {
            return false
        }
        return true
    }
    
    //Switch
    func handleSwitch() {
        if (staySwitch.isOn) {
            print("SwitchOn")
        } else {
            print("SwitchOff")
        }
    }
    
    //ForgotPassword
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        forgotPassword()
    }
    
    func forgotPassword() {
        print("ForgotPassword")
    }
    
    
    
}
