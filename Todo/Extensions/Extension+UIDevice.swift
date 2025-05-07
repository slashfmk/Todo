//
//  Extension+UIDevice.swift
//  Todo
//
//  Created by Yannick Fumukani on 4/16/25.
//

import Foundation
import SwiftUI

extension UIDevice {
    
    var isIpad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    var isIphone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
}
