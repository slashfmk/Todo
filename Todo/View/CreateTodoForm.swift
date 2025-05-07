//
//  CreateTodoForm.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/6/25.
//

import SwiftUI

struct CreateTodoForm: View {
    
    @ObservedObject var todos: TodoViewModel
    
    @Environment(\.dismiss) private var dismiss

    
    @State var title: String = ""
    @State var date: Date = Date()
    
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
            
            
            TextField("Title", text: $title)
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.all, 15)
                .border(title.isEmpty ? .red : .gray, width: 0.2)
            
            DatePicker("Date", selection: $date, displayedComponents: [.date])
                .datePickerStyle(.wheel)
                .font(.callout)
                .foregroundColor(.gray)
            
            ButtonView(label: "Save Todo", action: {
                
                if title.isEmpty {
                    return
                }
                
                todos.add(todo: Todo(title: title, date: date))
                dismiss()
            })
            
            Spacer()
                
        }
        .padding()
        
    }
}

#Preview {
    CreateTodoForm(todos: TodoViewModel())
}
