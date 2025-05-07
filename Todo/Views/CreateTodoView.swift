//
//  CreateTodoForm.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/6/25.
//

import SwiftUI

struct CreateTodoView: View {
    
    @ObservedObject var todos =  TodoViewModel()
    @StateObject var todoViewModel = CreateTodoViewModel()
    
    @Environment(\.dismiss) private var dismiss
    
    
    //    @State var title: String = ""
    //    @State var date: Date = Date()
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "xmark.circle")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.gray)
                .onTapGesture {
                    dismiss()
                }
            
            Text("Create Todo")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.gray)
            
            
            TextField("Title", text: $todoViewModel.title)
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.all, 15)
                .border(!todoViewModel.isReady() ? .red : .gray, width: 0.2)
            
            DatePicker("Date", selection: $todoViewModel.date, displayedComponents: [.date])
                .datePickerStyle(.wheel)
                .font(.callout)
                .foregroundColor(.gray)
            
            ButtonView(
                label: "Save Todo",
                action: {
                    if todoViewModel.isReady() {
                        todos.add(todo: Todo(title: todoViewModel.title, date: todoViewModel.date))
                        dismiss()
                    }
                })
            
            Spacer()
            
        }
        .padding()
        
    }
}

#Preview {
    CreateTodoView(todos: TodoViewModel())
}
