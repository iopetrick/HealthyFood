//
//  ColorExtensions.swift
//  HealthyFood
//
//  Created by Pratikkumar Prajapati on 25/04/21.
//

import SwiftUI
extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
