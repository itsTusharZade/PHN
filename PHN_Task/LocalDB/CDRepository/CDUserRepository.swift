//
//  CDUserRepository.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation
import CoreData

struct CDUserRepository{
    
    func createUser(record: CDUserModel, completion: @escaping (_ isUserExisted: Bool) -> Void){
        if let isUserExisted = getUser(byIdentifier: record.emailId){
            print("isUserExisted ---------> \(isUserExisted)")
            completion(true)
        }else{
            let user = Users(context: PersistentStorage.shared.context)
            user.id = record.id
            user.userName = record.userName
            user.emailId = record.emailId
            user.password = record.password
            PersistentStorage.shared.saveContext()
            completion(false)
        }
    }
    
    func getUser(byIdentifier id: UUID) -> CDUserModel?{
        let fetchRequest = NSFetchRequest<Users>(entityName: "Users")
        let fetchById = NSPredicate(format: "id==%@", id as CVarArg)
        fetchRequest.predicate = fetchById
        
        do {
            let result = try PersistentStorage.shared.context.fetch(fetchRequest)
            guard result.count != 0 else {return nil}
            return result.first?.convertToUsers()
        } catch {
            return nil
        }
    }
    
    func getUser(byIdentifier userEmail: String) -> CDUserModel?{
        let fetchRequest = NSFetchRequest<Users>(entityName: "Users")
        let fetchById = NSPredicate(format: "emailId == %@", userEmail as CVarArg)
        fetchRequest.predicate = fetchById
        
        do {
            let result = try PersistentStorage.shared.context.fetch(fetchRequest)
            guard result.count != 0 else {return nil}
            return result.first?.convertToUsers()
        } catch {
            return nil
        }
    }
    
    func getUserForLogin(userEmail: String, userPassword: String, completion: (_ userInfo: CDUserModel?, _ error: String?) -> Void){
        if let user = getUser(byIdentifier: userEmail){
            if user.password == userPassword{
                completion(user, nil)
            }else{
                completion(nil, "Invalid credentials")
            }
        }else{
            completion(nil, "User does not exists")
        }
    }
}
