//
//  ViewController.swift
//  User
//
//  Created by Сергей Подолякин on 3/11/22.
//

import UIKit

class LoginViewContoller: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        loginTextField.text == UserName.shared.login && passwordTextField.text == UserName.shared.password ? performSegue(withIdentifier: "showWelcome", sender: nil) : showAlert(with: "Wrong password", "Enter correct data")
    }
    
    @IBAction func forgetPasswordButtonPressed(_ sender: UIButton) {
        showAlert(with: "Your password here!", "120012")
    }
    
    private func showAlert(with title: String, _ message: String, _ textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = loginTextField.text ?? ""
    }
}

