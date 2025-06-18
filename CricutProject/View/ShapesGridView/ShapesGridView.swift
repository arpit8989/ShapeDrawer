//
//  ShapesGridView.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/17/25.
//

import SwiftUI

struct ShapesGridView: View {
    @StateObject private var viewModel = ShapesViewModel(networkService: WebApiManager())
    @State private var shapes: [String] = []
    @State private var navigateToEditCircles = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    ShapesGridHeaderView(
                        onClear: { shapes.removeAll() },
                        onEditCircles: { navigateToEditCircles = true }
                    )
                    
                    ShapesDisplayGridView(shapes: shapes)
                    Spacer()
                    
                    ShapeButtonBar(viewState: viewModel.viewState) { shapeType in
                        shapes.append(shapeType)
                    }
                }
            }
            .navigationDestination(isPresented: $navigateToEditCircles) {
                EditCirclesView(circles: Binding(
                    get: { shapes.filter { $0 == "circle" } },
                    set: { newCircles in
                        var updatedShapes = shapes
                        let circleIndices = updatedShapes.indices.filter { updatedShapes[$0] == "circle" }
                        
                        // Replace existing circles
                        for (i, index) in circleIndices.enumerated() {
                            if i < newCircles.count {
                                updatedShapes[index] = newCircles[i]
                            } else {
                                updatedShapes[index] = ""
                            }
                        }
                        
                        // Append extra new circles if any
                        if newCircles.count > circleIndices.count {
                            let extras = newCircles[circleIndices.count...]
                            updatedShapes.append(contentsOf: extras)
                        }
                        
                        shapes = updatedShapes.filter { !$0.isEmpty }
                    }
                ))
            }
        }
        .task {
            await viewModel.fetchShapes()
        }
    }
}
