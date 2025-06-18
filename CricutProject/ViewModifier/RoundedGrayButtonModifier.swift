//
//  RoundedGrayButtonModifier.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/18/25.
//

import Foundation

import SwiftUI

struct RoundedGrayButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
    }
}

extension View {
    func roundedGrayButtonStyle() -> some View {
        self.modifier(RoundedGrayButtonModifier())
    }
}
