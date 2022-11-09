//
//  TabBarViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 09.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearance = UITabBarAppearance()
         tabBarAppearance.configureWithOpaqueBackground()
         
         tabBar.standardAppearance = tabBarAppearance
         tabBar.scrollEdgeAppearance = tabBarAppearance 
         
     }

   }
