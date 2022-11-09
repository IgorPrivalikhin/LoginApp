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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addUser()
    }
    
    func addUser() {
        userFamily.text = user1.person.family
        userName.text = user1.person.name
        userCompany.text = user1.person.company
        userDepartment.text = user1.person.department
        userPost.text = user1.person.post
        }
        
    }

