//
//  LoginValidation.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

struct LoginValidation {

    func Validate(loginRequest: LoginRequest) -> ValidationResult{
        if(loginRequest.userEmail!.isEmpty){
            return ValidationResult(success: false, error: "Please enter username or email address")
        }

        if(loginRequest.userPassword!.isEmpty){
            return ValidationResult(success: false, error: "Please enter password")
        }

        return ValidationResult(success: true, error: nil)
    }

}
