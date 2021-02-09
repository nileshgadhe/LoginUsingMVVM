//
//  LoginValidation.swift
//  MVVMDemo
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import Foundation

struct LoginValidation {
    
    func validate(loginRequest: LoginRequest) -> ValidationResult{
        
        if loginRequest.userEmail.isEmpty {
            return ValidationResult(success: false, error: AlertMessages.enterUsername)
        }
        
        if loginRequest.userPassword.isEmpty{
            return ValidationResult(success: false, error: AlertMessages.enterPassword)
        }
        
        return ValidationResult(success: true, error: nil)
    }
}
