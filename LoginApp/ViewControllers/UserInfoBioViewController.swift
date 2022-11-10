//
//  UserInfoBioViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 08.11.2022.
//

import UIKit

class UserInfoBioViewController: UIViewController {

    @IBOutlet var infoBioUser: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addInfoBio()

    }
    func addInfoBio() {
        infoBioUser.text = user.person.infoBio
    }


}
