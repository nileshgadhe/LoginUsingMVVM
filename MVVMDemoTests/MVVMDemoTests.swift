//
//  MVVMDemoTests.swift
//  MVVMDemoTests
//
//  Created by Nilesh Gadhe on 23/01/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import XCTest
@testable import MVVMDemo

class MVVMDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_LoginValidation_WithEmptyString_Return_ValidationFailure(){
        
        let validation = LoginValidation()
        
        let result = validation.validate(loginRequest: LoginRequest(userEmail: "", userPassword: ""))
        
        
        XCTAssertFalse(result.success!)
    }
    
    func test_LoginValidation_WithString_Return_ValidationSuccess(){
        
        let validation = LoginValidation()
        
        let result = validation.validate(loginRequest: LoginRequest(userEmail: "123", userPassword: "123"))
        
        
        XCTAssertTrue(result.success!)
    }

}
