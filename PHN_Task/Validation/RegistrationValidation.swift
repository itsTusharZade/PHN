//
//  RegistrationValidation.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

struct RegistrationValidation {

    func Validate(registrationRequest: RegistrationRequest) -> ValidationResult{
        if(registrationRequest.userName!.isEmpty){
            return ValidationResult(success: false, error: "Please enter username")
        }
        
//        if !isValidFullName(registrationRequest.userName ?? ""){
//            return ValidationResult(success: false, error: "Please enter valid username")
//        }
        
        if(registrationRequest.userEmail!.isEmpty){
            return ValidationResult(success: false, error: "Please enter email address")
        }
        
        if let userEmail = registrationRequest.userEmail ,!isValidEmail(email: userEmail){
            return ValidationResult(success: false, error: "Please enter valid email address")
        }

        if(registrationRequest.password!.isEmpty){
            return ValidationResult(success: false, error: "Please enter password")
        }
        
        if(registrationRequest.confirmPassword!.isEmpty){
            return ValidationResult(success: false, error: "Please confirm your password")
        }
        
        if let password = registrationRequest.password, let confirmPassword = registrationRequest.confirmPassword, password != confirmPassword {
            return ValidationResult(success: false, error: "Passwords did not matched")
        }

        return ValidationResult(success: true, error: nil)
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
//    func isValidFullName(_ fullName: String) -> Bool {
//        let fullNameRegex = "^[a-zA-Z]+ [a-zA-Z]+$"
//        let fullNameTest = NSPredicate(format:"SELF MATCHES %@", fullNameRegex)
//        return fullNameTest.evaluate(with: fullName)
//    }

}
