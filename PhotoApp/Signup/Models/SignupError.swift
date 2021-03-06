//
//  SignupErrors.swift
//  PhotoApp
//
//  Created by Vishnu on 08/10/21.
//

import Foundation

enum SignupError: LocalizedError, Equatable {
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)
    
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(let description):
            return description
        case .invalidRequestURLString, .invalidResponseModel:
            return ""
        }
    }
}
