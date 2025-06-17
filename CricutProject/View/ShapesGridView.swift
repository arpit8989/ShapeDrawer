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
        Text("Check the console for logs")
            .padding()
    }
}

#Preview {
    ShapesGridView()
}
