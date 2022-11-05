//
//  HelloUserViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 04.11.2022.
//

import UIKit

class HelloUserViewController: UIViewController {

    @IBOutlet var welcomeUser: UILabel!
    var welcomeU: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUser.text = "Welcome, \(welcomeU ?? "") !"
    }
}
