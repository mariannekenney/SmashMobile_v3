//
//  StyleExtensions.swift
//  SmashMobile_v4
//
//  Created by Marianne Kenney on 6/4/18.
//  Copyright © 2018 SmashFly. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    struct MainColors {
        static let primary = UIColor(red: 0, green: 119, blue: 162)
        static let secondary = UIColor(red: 181, green: 209, blue: 75)
        static let dark = UIColor(red: 20, green: 54, blue: 80)
        static let light = UIColor(red: 237, green: 246, blue: 249)
        static let teal = UIColor(red: 79, green: 173, blue: 150)
        static let violet = UIColor(red: 83, green: 38, blue: 85)
        static let orange = UIColor(red: 240, green: 91, blue: 30)
        static let gold = UIColor(red: 255, green: 208, blue: 26)
        static let success = UIColor(red: 91, green: 198, blue: 91)
        static let info = UIColor(red: 91, green: 179, blue: 216)
        static let warning = UIColor(red: 255, green: 178, blue: 60)
        static let danger = UIColor(red: 216, green: 75, blue: 60)
    }
    
    struct TextColors {
        static let light = UIColor(red: 72, green: 87, blue: 93)
        static let dark = UIColor(red: 10, green: 29, blue: 38)
    }
}

extension UISearchBar {
    func setFont() {
        self.tintColor = UIColor.MainColors.secondary
        self.barTintColor = UIColor.MainColors.secondary
        for view : UIView in (self.subviews[0]).subviews {
            if let textField = view as? UITextField {
                textField.font = UIFont(name: "SourceSansPro-Regular", size: 17.0)
                textField.textColor = UIColor.TextColors.dark
            }
        }
    }
}

extension UIViewController {
    func errorAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
