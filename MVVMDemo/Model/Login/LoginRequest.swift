//
//  LoginRequest.swift
//  MVVMDemo
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import Foundation

struct LoginRequest : Encodable {
    let userEmail, userPassword: String
}
