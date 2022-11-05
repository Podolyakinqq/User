//
//  WelcomeViewController.swift
//  User
//
//  Created by Сергей Подолякин on 4/11/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(username)"
    }

}
