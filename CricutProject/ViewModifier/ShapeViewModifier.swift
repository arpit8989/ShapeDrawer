//
//  ShapeViewModifier.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/18/25.
//

import Foundation
import SwiftUI

struct ShapeViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 100, height: 100)
            .foregroundColor(Color.blue.opacity(0.3))
    }
}

extension View {
    func shapeColorStyle() -> some View {
        self.modifier(ShapeViewModifier())
    }
}

