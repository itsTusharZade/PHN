//
//  LoginViewModel.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation
struct LoginViewModel{
    private let manager: UsersManager = UsersManager()
    
    func loginUser(loginRequest: LoginRequest, onSuccess: @escaping(_ user: CDUserModel) -> Void, onFailure: @escaping(_ error: String) -> Void){
        let validationResult = LoginValidation().Validate(loginRequest: loginRequest)
        
        if validationResult.success{
            manager.getUserForLogin(userEmail: loginRequest.userEmail ?? "", userPassword: loginRequest.userPassword ?? "") { userInfo, error in
                guard error == nil else { return onFailure(error ?? "") }
                guard let user = userInfo else { return onFailure("User not found") }
                onSuccess(user)
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
