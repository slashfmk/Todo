//
//  TodoItemView.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/6/25.
//

import SwiftUI

struct TodoItemView: View {
    
    @State var title: String
    @State var numeration: Int?
    @State var id: UUID?
    @State var completed: Bool
    @State var date: Date
    
    @State var stateTap: () -> Void
    @State var deleteTap: () -> Void
    
    @State var isShown: Bool = false
    
    
    var body: some View {
        
        VStack {
            HStack(spacing: 15){
                Circle()
                    .stroke(lineWidth: 3)
                    .frame(maxWidth: 25)
                    .overlay {
                        
                        Text("\(1)")
                            .fontWeight(.bold)
                            .font(.caption)
                    }
                    .foregroundColor(.gray)
                
                Text("\(title)")
                    .font(.callout)
                    .fontWeight(.bold)
                    .strikethrough(completed)
                    .foregroundColor(completed ?.gray : .gray)
                    .animation(.easeOut(duration: 2.5), value: completed)
                Spacer()
                
                Text("\( completed ? Image(systemName: "checkmark.seal") : Image(systemName: "checkmark.seal.fill") )")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(5)
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 60)
                            .fill(completed ? .green : .red))
                    .onTapGesture {
                       stateTap()
                    }
                    .animation(.easeInOut(duration: 2.5), value: completed)
                    
                
            }
            
            HStack(spacing: 15){
                
                Image(systemName: "pencil.and.list.clipboard")
                    .fontWeight(.black)
                    .foregroundColor(.gray)
                
                
                Image(systemName: "checkmark.seal.text.page.fill")
                    .fontWeight(.black)
                    .foregroundColor(.gray)
                    .onTapGesture {
                        deleteTap()
                    }
                
                Image(systemName: "calendar.badge.clock")
                    .fontWeight(.black)
                    .foregroundColor(.gray)
                   
            }
            .frame(maxWidth: .infinity)
            .padding(5)
            .opacity(isShown ? 1.0 : 0.0)
            .offset(y: isShown ? 0 : -35)
            .animation(.easeInOut(duration: 0.25), value: isShown)
            
            //            .background(Rectangle().fill(.lightGray))
            
            
        }
        .fixedSize(horizontal: false, vertical: true)
        .onTapGesture {
            isShown = !isShown
        }
        //        .border(ShapeStyle.secondary, width: 5)
        
    }
}

#Preview {
    @Previewable @State var done: Bool = true
    TodoItemView(title: "Something to do", completed: done, date: Date(), stateTap: {done = !done}, deleteTap: {})
}
