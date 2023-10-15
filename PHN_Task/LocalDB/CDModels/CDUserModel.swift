//
//  CDUserModel.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

class CDUserModel{
    let id: UUID
    let userName: String
    let emailId: String
    let password: String
    

    init(_id: UUID, _userName: String, _emailId : String, _password: String){
        self.id = _id
        self.userName = _userName
        self.emailId = _emailId
        self.password = _password
    }
}
