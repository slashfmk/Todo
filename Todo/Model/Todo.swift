//
//  Task.swift
//  Todo
//
//  Created by Yannick Fumukani on 4/16/25.
//

import Foundation

struct Todo: Identifiable, Equatable {
    
    var id: UUID = UUID()
    var title: String
    var completed: Bool = false
    var date: Date
}

extension Todo {
    static func == (todo1: Todo, todo2: Todo) -> Bool {
        return todo1.title == todo2.title
    }
}
