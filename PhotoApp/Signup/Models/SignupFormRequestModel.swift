//
//  SignupFormRequestModel.swift
//  PhotoApp
//
//  Created by Vishnu on 08/10/21.
//

import Foundation

struct SignupFormRequestModel: Encodable {
    let firstName:String
    let lastName:String
    let email : String
    let password: String
}
