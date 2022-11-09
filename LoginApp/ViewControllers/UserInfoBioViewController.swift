//
//  UserInfoBioViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 08.11.2022.
//

import UIKit

class UserInfoBioViewController: UIViewController {

    @IBOutlet var infoBioUser: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addInfoBio()

    }
    func addInfoBio() {
        infoBioUser.text = user1.person.infoBio
    }


}
