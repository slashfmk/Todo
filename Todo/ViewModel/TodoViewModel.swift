//
//  TaskViewModel.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/6/25.
//

import Foundation

class TodoViewModel: ObservableObject {
    
    @Published private var todos: [Todo] = []
    @Published var loading: Bool = false
    
    var sortCompleted: [Todo] {
        todos.filter({$0.completed == true})
    }
    
    var sortNotCompleted: [Todo] {
        todos.filter({$0.completed == false})
    }
    
    var all: [Todo] {
        todos
    }
    
    public init(){
        todos.append(Todo(title: "The automated todo of the year", completed: false, date: Date()))
    }
    
    /// Remove the todo passed from the List
    /// - Parameter todo: Todo to remove
    /// - Returns: Bool
    public func delete(todo: Todo) -> Bool{
        
        loading = true
        if let getTodoIndex = self.todos.firstIndex(of: todo) {
            self.todos.remove(at: getTodoIndex)
            loading = false
            return true
        } else {
            loading = false
            return false
        }
        
    }
    
    
    /// Add a todo to the collection
    /// - Parameter todo: todo
    /// - Returns: Void
    public func add(todo: Todo) -> Void {
        loading = true
        self.todos.append(todo)
        loading = false
    }
    
    
    /// Delete a Todo
    /// - Parameter todo: todo to delete
    /// - Returns: Void
    public func switchState(todo: Todo) -> Void {
        
        loading = true
        if let todoIndex = self.todos.firstIndex(where: {$0.id == todo.id}) {
            todos[todoIndex].completed = !todos[todoIndex].completed
            loading = false
            return
        }
        
        loading = false
    }
    
    
    /// Update the todo title
    /// - Parameter todo: todo to update the title
    /// - Returns: Void
    public func updateTitle(id: UUID, title: String) -> Bool {
        
        loading = true
        if let todoIndex = self.todos.firstIndex(where: {$0.id == id}) {
            var foundTodo = self.todos[todoIndex]
            foundTodo.title = title
            
            loading = false
            return true
        } else {
            loading = false
            return false
        }
    }
    
    private func findTodo (todo: Todo) -> Todo? {
        if let todoIndex = self.todos.firstIndex(of: todo) {
            let foundTodo = self.todos[todoIndex]
            return foundTodo
        } else {
            return nil
        }
    }
    
    
}
