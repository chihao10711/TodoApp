//
//  ColorManager.swift
//  TodoApp
//
//  Created by Lam Chi Hao on 8/23/22.
//

import SwiftUI

struct ColorManager {
    static let primaryColor = Color("primary_color")
    static let backgroundColor = Color("background_color")
    static let textColor = Color("text_color")
}

// Or you can use an extension
// this will allow you to just type .spotifyGreen and you wont have to use ColorManager.primaryColor
extension Color {
    static let primaryColor = Color("primary_color")
    static let backgroundColor = Color("background_color")
    static let textColor = Color("text_color")
}
