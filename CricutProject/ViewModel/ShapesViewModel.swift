//
//  ShapesViewModel.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/17/25.
//

import Foundation

class ShapesViewModel: ObservableObject {
    private let networkService: NetworkService
    @Published var buttons: [ShapeButton] = []
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func fetchShapes() async {
        do {
            let response: ShapeModel = try await networkService.fetchData(from: ApiConstants.apiUrl)
            DispatchQueue.main.async {
                self.buttons = response.buttons
            }
        } catch {
            print("Error in fetching shapes: ", error.localizedDescription)
        }
    }
}
