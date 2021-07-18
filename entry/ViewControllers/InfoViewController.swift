//
//  InfoViewController.swift
//  entry
//
//  Created by Олег В on 18.07.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var informanion: UILabel!
    let infoPerson = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        informanion.text = infoPerson.information
            
        
        
    }
}


