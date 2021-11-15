//
//  SignupMOdelValidatorProtocol.swift
//  PhotoApp
//
//  Created by Vishnu on 18/10/21.
//

import Foundation


protocol SignupModelValidatorProtocol {
    func isFirstNameValid(firstName: String) -> Bool
    func isLasstNameValid(lastName:String) -> Bool
    func isValidEmailFormat(email:String) -> Bool
    func isPasswordValid(password: String) -> Bool
    func doPasswordsMatch(password:String, repeatPassword:String) -> Bool
}
