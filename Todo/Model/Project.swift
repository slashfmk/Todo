//
//  Project.swift
//  Todo
//
//  Created by Yannick Fumukani on 4/16/25.
//

import Foundation

struct Project : Identifiable, Equatable {
    let id : UUID = UUID()
    var name: String
    var description: String
    var tasks: [Todo]
}
