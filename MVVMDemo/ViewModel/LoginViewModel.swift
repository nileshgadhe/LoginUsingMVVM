//
//  LoginViewModel.swift
//  MVVMDemo
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import Foundation
import UIKit

protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse : LoginResponse)
}

struct LoginViewModel {
    
    var delegate : LoginViewModelDelegate?
    
    func loginUser(loginRequest: LoginRequest){
        
        let validate = LoginValidation()
        let validationResult = validate.validate(loginRequest: loginRequest)
        
        if validationResult.success!{
            
            let loginResource = LoginResource()
            loginResource.loginUser(loginRequest: loginRequest) { (loginApiResponse) in

                //return the response we get from loginResource
                DispatchQueue.main.async {
                    self.delegate?.didReceiveLoginResponse(loginResponse: loginApiResponse)
                }
            }
            
        } else{
            self.delegate?.didReceiveLoginResponse(loginResponse: LoginResponse(errorMessage: validationResult.error, data: nil))
        }
    }
    
}
