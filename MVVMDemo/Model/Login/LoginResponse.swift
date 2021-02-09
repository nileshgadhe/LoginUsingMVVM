//
//  LoginResponse.swift
//  MVVMDemo
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import Foundation

struct LoginResponse : Decodable {
    let errorMessage: String?
    let data: User?
}

struct User: Decodable {
    let userName: String?
    let userId: Int?
    let email: String?
}
