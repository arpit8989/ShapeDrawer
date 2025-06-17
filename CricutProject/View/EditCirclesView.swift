//
//  EditCirclesView.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/17/25.
//

import SwiftUI

struct EditCirclesView: View {
    @State private var mutableCircles: [String]

    init(circles: [String]) {
        self._mutableCircles = State(initialValue: circles)
    }

    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 3), spacing: 30) {
                ForEach(mutableCircles.indices, id: \.self) { index in
                    switch mutableCircles[index] {
                    case "circle":
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color.blue.opacity(0.3))
                    default:
                        EmptyView()
                    }
                }
            }
            
            Spacer()
            
            HStack {
                Button("Delete All") {
                    mutableCircles.removeAll()
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

                Button("Add") {
                    mutableCircles.append("circle")
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

                Button("Remove") {
                    if !mutableCircles.isEmpty {
                        mutableCircles.removeLast()
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}
