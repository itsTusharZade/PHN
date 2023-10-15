//
//  CDUserManager.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation

struct UsersManager{
    private let usersRepository = CDUserRepository()
    
    func createUser(record: CDUserModel, completion: @escaping (_ isUserExisted: Bool) -> Void){
        usersRepository.createUser(record: record) { isUserExisted in
            completion(isUserExisted)
        }
    }
    
    func getUser(byIdentifier id: UUID) -> CDUserModel?{
        return usersRepository.getUser(byIdentifier: id)
    }
    
    func getUser(byIdentifier userName: String) -> CDUserModel?{
        return usersRepository.getUser(byIdentifier: userName)
    }
    
    func getUserForLogin(userEmail: String, userPassword: String, completion: (_ userInfo: CDUserModel?, _ error: String?) -> Void){
        return usersRepository.getUserForLogin(userEmail: userEmail, userPassword: userPassword) { userInfo, error in
            completion(userInfo, error)
        }
    }
}
