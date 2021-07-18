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
    private let person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(String(person.personName))"
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
