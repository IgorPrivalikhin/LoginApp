//
//  ViewController.swift
//  LoginApp
//
//  Created by Анастасия Булдакова on 04.11.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    private let user = user1.login
    private let password = user1.password
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? HelloUserViewController {
                welcomeVC.user = user
            }
        }
    }

    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Pleace enter correct you login and password",
                textField: passwordTF
            )
            return
        }
       performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotButton(_ sender: UIButton) { // sender выступает кнопкой и параметром
        sender.tag == 0 // 0 и 1 порядковые номера
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user)")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(password)")
        }
        
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let forgotUserName = UIAlertAction(title: "ok", style: .default) { _ in
                textField?.text = ""
            }
            alert.addAction(forgotUserName)
            present(alert, animated: true)
        }
}
