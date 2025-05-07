//
//  ProgressBarView.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/1/25.
//

import SwiftUI

struct ProgressBarView: View {
    
    @State var percentage: Double
    @State var fillColor: Color
    
    var body: some View {
      
        // 40 * 100 / perc
        
        GeometryReader { proxy in
            
            let calculate = percentage <= 1 ? percentage * proxy.size.width : 1
            
            ZStack (alignment: .leading) {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.gray)
                    .frame(maxWidth: proxy.size.width)
                    .frame(height: 15)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(fillColor)
                    .frame(width: calculate)
                    .frame(height: 15)
                
            }
            .multilineTextAlignment(.center)
        }
        
    }
    
    
}

#Preview {
    ProgressBarView(percentage: 0.75, fillColor: .green)
}
