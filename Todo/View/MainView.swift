//
//  MainView.swift
//  Todo

//  Created by Yannick Fumukani on 5/1/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var todos: TodoViewModel = TodoViewModel()
    
    //    @EnvironmentObject var todos: TodoViewModel
    
    @State var title: String = ""
    @State var date: Date = Date()
    
    @State var isPresented: Bool  = false
    
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                
                Text("\(todos.all.count) Todos")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.darkGray)
                    .multilineTextAlignment(.center)
                    
                
                Text("\(todos.sortCompleted.count) Completed tasks")
                    .fontWeight(.regular)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                //                Sort
                HStack {
                    
                    Text("All")
                        .font(.caption2)
                        .padding(5)
                        .foregroundColor(.green)
                    
                    Text("Completed")
                        .font(.caption2)
                        .padding(5)
                        .foregroundColor(.green)
                    
                    Text("Not completed")
                        .font(.caption2)
                        .padding(5)
                        .foregroundColor(.green)
                    
                }
                
                
                ScrollView{
                    
                    VStack (spacing: 5){
                        ForEach(todos.sortNotCompleted) {
                            todo in
                            TodoItemView(title: todo.title, completed: todo.completed, date: todo.date,
                            stateTap: {
                                todos.switchState(todo: todo)
                            },
                            deleteTap: {
                                var result = todos.delete(todo: todo)
                            })
                        }
                        
                    }
                    
                    
                    VStack (spacing: 5){
                        ForEach(todos.sortCompleted) {
                            todo in
                            TodoItemView(title: todo.title, completed: todo.completed, date: todo.date,
                            stateTap: {
                                todos.switchState(todo: todo)
                            },
                            deleteTap: {
                                var result = todos.delete(todo: todo)
                            })
                        }
                        
                    }
                    
                    
                }
//                .scrollClipDisabled()
                .sheet(isPresented: $isPresented) {
                    CreateTodoForm(todos: todos)
                }
                .presentationDetents([.fraction(0.2), .medium])
               
                
                
                Spacer()
                 
                
                
                Image(systemName: "plus")
                    .font(.system(size: 30))
                    .padding()
                    .background(
                        Circle()
                            .fill(.green)
                    )
                    .foregroundColor(.white)
                    .onTapGesture {
                        isPresented = true
                    }
                
                
            }
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(Color.lightGray)
               
        }
        
        
    }
    
    
}

#Preview {
    //    @Previewable @EnvironmentObject var todos: TodoViewModel
    MainView()
}
