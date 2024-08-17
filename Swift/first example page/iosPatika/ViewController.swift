//
//  ViewController.swift
//  iosPatika
//
//  Created by Salim Özel on 11.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var activityIndıcatorView: UIActivityIndicatorView!
    @IBOutlet var usernameErrorLabel: UILabel!
    @IBOutlet var passwordErrorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    let correctUsername = "Salim"
    let correctPassword = "12345"

    @IBAction func Giriş(_: UIButton) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""

        let isCredentialsValid = validateCredentials(username: username, password: password)

        if username.isEmpty || password.isEmpty || !isCredentialsValid {
            usernameErrorLabel.isHidden = username.isEmpty ? false : true
            passwordErrorLabel.isHidden = password.isEmpty ? false : true
        } else {
            usernameErrorLabel.isHidden = true
            passwordErrorLabel.isHidden = true
            activityIndıcatorView.startAnimating()
        }
    }

    func validateCredentials(username: String, password: String) -> Bool {
        return username == correctUsername && password == correctPassword
    }
}
