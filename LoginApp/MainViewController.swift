//
//  ViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 04.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet var userNameText: UITextField!
    @IBOutlet var passwordText: UITextField!

    
    let user = "User"
    let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameText.autocorrectionType = .no
        passwordText.autocorrectionType = .no
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeUser = segue.destination as? HelloUserViewController else { return }
        welcomeUser.welcomeU = userNameText.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        

        if userNameText.text == user && passwordText.text == password {
        } else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Pleace enter correct you login and password")
        }
    }
    
        @IBAction func forgotButtonUserName() {
            showAlert(withTitle: "Oops!", andMessage: "Your name is User!")
        }
        
        @IBAction func forgotPasswordButton() {
            showAlert(withTitle: "Oops!", andMessage: "Your password is 1234!")
        }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? HelloUserViewController else { return }
        userNameText.text = ""
        passwordText.text = ""
    }
    
    
    }
    

    extension MainViewController {
        private func showAlert(withTitle title: String, andMessage message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let forgotUserName = UIAlertAction(title: "ok", style: .default)
            alert.addAction(forgotUserName)
            present(alert, animated: true)
        }
    }
