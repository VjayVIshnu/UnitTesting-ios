//
//  SignupFormValidator.swift
//  PhotoAppTests
//
//  Created by Vishnu on 07/10/21.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testSignFormModelValidator_whenValidFirstnameProvided_ShouldReturnTrue() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Sergey")
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid First name but returned FALSE")
    }
    
    func testSignUpFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a  First name that is shorter than 2 characters but it has returned TRUE")
    }
    
    func testSignUpForModelValidator_whenTooLongFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "SergeySergey")
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a  First name that is shorter than 2 characters but it has returned TRUE")
    }

}
