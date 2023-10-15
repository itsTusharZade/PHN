//
//  RegistrationViewModel.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

struct RegistrationViewModel{
    private let manager: UsersManager = UsersManager()
    
    func createUser(registartionRequest: RegistrationRequest, onSuccess: @escaping() -> Void, onFailure: @escaping(_ error: String) -> Void){
        let validationResult = RegistrationValidation().Validate(registrationRequest: registartionRequest)
        
        if validationResult.success{
            let userModel = registartionRequest.convertToUsers()
            manager.createUser(record: userModel) { isUserExisted in
                if isUserExisted{
                    onFailure("User already existed, please login")
                }else{
                    saveUserData(userModel)
                    onSuccess()
                }
            }
        }else{
            onFailure(validationResult.error ?? "")
        }
    }
    
    func saveUserData(_ userInfo: CDUserModel){
        CustomUserDefaults.shared.set(userInfo.id.uuidString, key: .userId)
        CustomUserDefaults.shared.set(userInfo.emailId, key: .userEmail)
        CustomUserDefaults.shared.set(userInfo.userName, key: .userName)
        CustomUserDefaults.shared.set(true, key: .isLoggedIn)
    }
}
