//
//  ShapesGridView.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/17/25.
//

import SwiftUI

struct ShapesGridView: View {
    @StateObject private var viewModel = ShapesViewModel(networkService: WebApiManager())

    var body: some View {
        VStack {
            Spacer()

            HStack {
                ForEach(viewModel.buttons) { button in
                    Text(button.name)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .onAppear {
            Task {
                await viewModel.fetchShapes()
            }
        }
    }
}
