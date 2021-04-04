//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by sherry on 04/04/2021.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init() {
        
    }
    
    
}
