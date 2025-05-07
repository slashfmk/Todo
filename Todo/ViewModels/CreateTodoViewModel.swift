//
//  CreateTodoViewModel.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/15/25.
//

import Foundation

class CreateTodoViewModel: ObservableObject {
    
    @Published var title: String
    @Published var date: Date
    @Published var error: String
    
    
    init(){
        self.title = ""
        self.date = Date()
        self.error = ""
    }
    
     public func isReady() -> Bool {
        return !self.title.isEmpty
    }
    
}
