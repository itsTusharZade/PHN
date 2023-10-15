//
//  CustomUserDefaults.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation

class CustomUserDefaults{
    
    enum DefaultsKey: String, CaseIterable{
        case userId
        case userName
        case userEmail
        case isLoggedIn
    }
    
    static let shared = CustomUserDefaults()
    
    private let defaults = UserDefaults.standard
    
    init() {}
    
    // to set value using pre-defined key
    func set(_ value: Any?, key: DefaultsKey) {
        defaults.setValue(value, forKey: key.rawValue)
    }
    
    // get value using pre-defined key
    func get(key: DefaultsKey) -> Any? {
        return defaults.value(forKey: key.rawValue)
    }
    
    //Remove all userdefaults
    func resetDefaults() {
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
    }
}
