//
//  ShapeButtonBar.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/18/25.
//

import SwiftUI

struct ShapeButtonBar: View {
    let viewState: ViewState
    let onShapeSelected: (String) -> Void
    
    var body: some View {
        HStack {
            switch viewState {
            case .loading:
                ProgressView()
            case .load(let buttons):
                ForEach(buttons) { button in
                    Button(action: {
                        onShapeSelected(button.drawPath)
                    }) {
                        Text(button.name)
                            .roundedGrayButtonStyle()
                    }
                }
            case .error(let error):
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}
