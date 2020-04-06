//
//  User.swift
//  ToDoFile
//
//  Created by Валентина Калайда on 22.03.2020.
//  Copyright © 2020 Валентина Калайда. All rights reserved.
//

import Foundation
import Firebase

struct Users {
    
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email!
    }
    
    
}
