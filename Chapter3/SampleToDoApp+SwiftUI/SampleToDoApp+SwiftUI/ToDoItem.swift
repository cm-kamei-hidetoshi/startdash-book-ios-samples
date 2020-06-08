//
//  ToDoItem.swift
//  SampleToDoApp+SwiftUI
//
//  Created by tanabe.nobuyuki on 2020/01/15.
//  Copyright © 2020 tanabe.nobuyuki. All rights reserved.
//

import Foundation

struct ToDoItem: Identifiable {
    var id: String = NSUUID.init().uuidString
    var title: String
    var createdAt: Date
    var description: String?
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: createdAt)
    }
}
