//
//  RegistrationRequest.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

struct RegistrationRequest{
    var userName, userEmail, password, confirmPassword: String?
    
    func convertToUsers() -> CDUserModel{
        return CDUserModel(
            _id: UUID(),
            _userName: self.userName!,
            _emailId: self.userEmail!,
            _password: self.password!
        )
    }
}
