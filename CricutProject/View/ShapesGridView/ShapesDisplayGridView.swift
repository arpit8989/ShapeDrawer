//
//  ShapesDisplayGridView.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/18/25.
//

import SwiftUI

struct ShapesDisplayGridView: View {
    let shapes: [String]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120), spacing: 20)], spacing: 30) {
            ForEach(shapes.indices, id: \.self) { index in
                switch shapes[index] {
                case "circle":
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.blue.opacity(0.3))
                case "square":
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.blue.opacity(0.3))
                case "triangle":
                    TriangleShape()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.blue.opacity(0.3))
                default:
                    EmptyView()
                }
            }
        }
    }
}
