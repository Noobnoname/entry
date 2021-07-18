//
//  ViewController.swift
//  entry
//
//  Created by Олег В on 13.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let name = Person()
    private let password = Person()
    
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        guard let welcomeName =
                segue.destination as? LoginOutViewController else {return}
        welcomeName.welcome = userNameTF.text
            //"Welcome \(String(describing: userNameTF.text ?? ""))"
        
    }
    
    @IBAction func getNameBunnon() {
        showHintAlert(title: "Your name is", message: name.userName )
    }
    
    @IBAction func getPasswordButton() {
        showHintAlert(title: "Password is", message: password.userPassword)
    }
    
    private func showHintAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        present(alert, animated: true)
        let exitAlert = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(exitAlert)
    }
    
    @IBAction func getLogInButton() {
        if userNameTF.text == "Johnny" && passwordTF.text == "12345" {
            performSegue(withIdentifier: "entry", sender: nil)
            userNameTF.text = ""
            passwordTF.text = ""
        } else {
            showHintAlert(title: "Enter correct!", message: "Name and Password")
            passwordTF.text = ""
        }
    }
}

