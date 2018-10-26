//
//  RegistrationViewController.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/26.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var mailTextField: InputField!
    @IBOutlet weak var pass1TextField: InputField!
    @IBOutlet weak var pass2TextField: InputField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var RegistrationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "新規登録"
        setUI()
    }
    
    private func setUI() {
        mailTextField.placeholder = "メールアドレス"
        mailTextField.delegate = self
        mailTextField.keyboardType = .emailAddress
        
        pass1TextField.placeholder = "パスワード"
        pass1TextField.delegate = self
        pass1TextField.keyboardType = .namePhonePad
        
        pass2TextField.placeholder = "パスワード(確認)"
        pass2TextField.delegate = self
        pass2TextField.keyboardType = .namePhonePad
        
        RegistrationButton.setTitle("登録", for: .normal)
        RegistrationButton.setTitleColor(.white, for: .normal)
        RegistrationButton.backgroundColor = .main
        RegistrationButton.layer.cornerRadius = RegistrationButton.frame.height / 2
        
        label.textColor = .main
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 15)
        
        view.backgroundColor = .bg
    }
    
    @IBAction private func Registration(_ sender: UIButton) {
        guard let email = mailTextField.text else {return}
        guard let pass = pass1TextField.text else {return}
        if !errorMessage().1 {
            label.text = errorMessage().0
            return
        }
    }
    
    private func errorMessage() -> (String, Bool) {
        guard let email = mailTextField.text else {return ("", false)}
        guard let pass1 = pass1TextField.text else {return ("", false)}
        guard let pass2 = pass2TextField.text else {return ("", false)}
        
        if email.isEmpty {
            return ("メールアドレスを入力して下さい", false)
        }
        if pass1.isEmpty || pass2.isEmpty {
            return ("パスワードを入力して下さい", false)
        }
        if pass1 != pass2 {
            return ("パスワードが一致しません", false)
        }
        return ("", true)
    }
}

extension RegistrationViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn shshouldChangeCharactersInange: NSRange, replacementString string: String) -> Bool {
        if !errorMessage().1 {
            label.text = errorMessage().0
        }
        return true
    }
}
