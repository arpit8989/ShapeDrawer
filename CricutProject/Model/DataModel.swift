//
//  DataModel.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/17/25.
//

import Foundation

struct ShapeModel: Decodable {
    let buttons: [ShapeButton]
}

struct ShapeButton: Decodable, Identifiable {
    let id = UUID()
    let name: String
    let draw_path: String
}
