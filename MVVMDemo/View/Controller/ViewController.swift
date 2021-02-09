//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginViewModelDelegate {
    
    @IBOutlet weak var txtFieldUsername: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    
    private var loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewModel.delegate = self
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        
        let loginRequest = LoginRequest(userEmail: txtFieldUsername.text!, userPassword: txtFieldPassword.text!)
        loginViewModel.loginUser(loginRequest: loginRequest)
        
    }
    
    func didReceiveLoginResponse(loginResponse: LoginResponse) {
        
        if loginResponse.data != nil {
            
            print(AlertMessages.login_sucessfull)
            let alert = UIAlertController(title: AlertMessages.alert, message: AlertMessages.login_sucessfull, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: AlertMessages.ok, style: .default, handler: nil))
            self.present(alert, animated: true)
            
        } else{
            
            let alert = UIAlertController(title: AlertMessages.alert, message: loginResponse.errorMessage!, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: AlertMessages.ok, style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
}
