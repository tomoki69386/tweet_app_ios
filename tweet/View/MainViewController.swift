//
//  MainViewController.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/25.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registrationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }
    
    private func setUI() {
        loginButton.setTitle("ログイン", for: .normal)
        loginButton.setTitleColor(UIColor.gray, for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.gray.cgColor
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
        registrationButton.setTitle("新規登録", for: .normal)
        registrationButton.setTitleColor(UIColor.gray, for: .normal)
        registrationButton.layer.borderWidth = 1
        registrationButton.layer.borderColor = UIColor.gray.cgColor
        registrationButton.layer.cornerRadius = registrationButton.frame.height / 2
        
        view.backgroundColor = UIColor.bg
    }
    
    @IBAction private func login(_ sender: UIButton) {
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
    @IBAction private func registration(_ sender: UIButton) {
        performSegue(withIdentifier: "toRegistration", sender: nil)
    }
}
