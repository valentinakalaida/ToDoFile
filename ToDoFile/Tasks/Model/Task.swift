//
//  Task.swift
//  ToDoFile
//
//  Created by Валентина Калайда on 22.03.2020.
//  Copyright © 2020 Валентина Калайда. All rights reserved.
//

import Foundation
import Firebase

struct Task {
    let title: String
    let userID: String
    let ref: DatabaseReference?
    var completed: Bool = false
    
    init(title: String, userID: String) {
        self.title = title
        self.userID = userID
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userID = snapshotValue["userID"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
    
    func convertToDictionary() -> Any {
        return ["title": title, "userID": userID, "completed": completed]
    }
}
