//
//  ShapesGridHeaderView.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/18/25.
//

import SwiftUI

struct ShapesGridHeaderView: View {
    let onClear: () -> Void
    let onEditCircles: () -> Void

    var body: some View {
        HStack {
            Button("Clear All") {
                onClear()
            }
            .padding(.leading)

            Spacer()

            Button("Edit Circles") {
                onEditCircles()
            }
            .padding(.trailing)
        }
    }
}
