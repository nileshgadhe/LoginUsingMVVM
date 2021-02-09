//
//  LoginResource.swift
//  MVVMDemo
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

//Repository

import Foundation

struct LoginResource {
    
    func loginUser(loginRequest: LoginRequest, completionHandler: @escaping(_ result: LoginResponse) -> Void){
        
        let loginUrl = URL(string: APIs.loginAPI)
        let httpUtility = HttpUtility()
        
        do {
            let loginPostBody = try JSONEncoder().encode(loginRequest)
            httpUtility.postApiData(requestUrl: loginUrl!, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in
                
                _ = completionHandler(loginApiResponse)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
