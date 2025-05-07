//
//  MinTapView.swift
//  Todo
//
//  Created by Yannick Fumukani on 5/1/25.
//

import SwiftUI

struct MainTapView: View {
    var body: some View {
        
        TabView {
            
            MainView()
                .tabItem {
                    //                    Label("Home", systemImage: "house.fill")
                    Image(systemName: "house.fill")
                }
            
            
            HomeView()
                .tabItem {
                    Image(systemName: "scribble.variable")
                    //                    Label("Home", systemImage: "scribble.variable")
                }
        }
        .toolbarBackground(.ultraThinMaterial, for: .tabBar)
    }
}

#Preview {
    MainTapView()
}
