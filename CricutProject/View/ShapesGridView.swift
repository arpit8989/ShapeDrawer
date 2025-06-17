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
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        Text("Check the console for logs")
            .padding()
    }
}

#Preview {
    ShapesGridView()
}
