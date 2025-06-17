//
//  ShapesViewModel.swift
//  CricutProject
//
//  Created by Arpit Mallick on 6/17/25.
//

import Foundation

class ShapesViewModel: ObservableObject {
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
        Task {
            await fetchShapes()
        }
    }
    
    func fetchShapes() async {
        do {
            let response: ShapeModel = try await networkService.fetchData(from: ApiConstants.apiUrl)
            print("Fetch Shapes: ", response.buttons)
        } catch {
            print("Error in fetching shapes: ", error.localizedDescription)
        }
    }
}
