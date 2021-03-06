//
//  LoginViewController.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/25.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    
    @IBOutlet weak var mailTextField: InputField!
    @IBOutlet weak var passTextField: InputField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "ログイン"
        setUI()
    }
    
    private func setUI() {
        mailTextField.placeholder = "メールアドレス"
        mailTextField.delegate = self
        mailTextField.keyboardType = .emailAddress
        
        passTextField.placeholder = "パスワード"
        passTextField.delegate = self
        passTextField.keyboardType = .namePhonePad

        loginButton.setTitle("ログイン", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .main
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
        label.textColor = .main
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 15)
        
        view.backgroundColor = .bg
    }
    
    @IBAction private func login(_ sender: UIButton) {
        
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
