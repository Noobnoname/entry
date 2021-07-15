//
//  LoginOutViewController.swift
//  entry
//
//  Created by Олег В on 14.07.2021.
//

import UIKit

class LoginOutViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
