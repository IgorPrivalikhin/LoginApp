//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 08.11.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var userFamily: UILabel!
    @IBOutlet var userName: UILabel!
    @IBOutlet var userCompany: UILabel!
    @IBOutlet var userDepartment: UILabel!
    @IBOutlet var userPost: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userFamily.text = user.person.family
        userName.text = user.person.name
        userCompany.text = user.person.company
        userDepartment.text = user.person.department
        userPost.text = user.person.post
    }
        
    }

