//
//  AuthenticationService.swift
//  SwiftKit
//
//  Created by Daniel Saidi on 2016-01-18.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This protocol can be implemented by authenticating services
 that can be used to authenticate the current user.
 */
public protocol AuthenticationService: AnyObject {
    
    typealias AuthCompletion = (_ result: AuthResult) -> Void
    typealias AuthError = AuthenticationServiceError
    typealias AuthResult = Result<Void, Error>
    
    /**
     Authenticate the user for a certain authentication type.
     
     `reason` can be used to display information to the user.
     */
    func authenticateUser(for auth: Authentication, reason: String, completion: @escaping AuthCompletion)
    
    /**
     Check if the service instance can authenticate the user
     for a certain authentication type.
     */
    func canAuthenticateUser(for auth: Authentication) -> Bool
}
