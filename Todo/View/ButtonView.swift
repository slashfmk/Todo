//
//  ButtonView.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/1/25.
//

/*
 * We are the real deal
 * cool stuff
 */

import SwiftUI

struct ButtonView: View {
    
    @State var label: String
    @State var action: () -> Void
    
    var body: some View {
       
        Text(label)
                .font(.callout)
                .fontWeight(.bold)
        .frame(maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 50).fill(.green))
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    ButtonView(label: "Click me!", action: {})
}
