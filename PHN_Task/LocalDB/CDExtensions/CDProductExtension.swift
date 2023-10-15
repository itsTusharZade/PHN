//
//  CDProductExtension.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

extension Users{
    func convertToUsers() -> CDUserModel{
        return CDUserModel(
            _id: self.id!,
            _userName: self.userName!,
            _emailId: self.emailId!,
            _password: self.password!
        )
    }
}
