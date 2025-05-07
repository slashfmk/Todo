//
//  TodoApp.swift
//  Todo
//
//  Created by Yannick Fumukani on 4/16/25.
//

import SwiftUI

@main
struct TodoApp: App {
    
//    @StateObject private var todoViewModel:TodoViewModel = TodoViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainTapView()
//                .environmentObject(todoViewModel)
        }
    }
}
