//
//  CricutProjectTests.swift
//  CricutProjectTests
//
//  Created by Arpit Mallick on 6/16/25.
//

import XCTest
@testable import CricutProject

final class CricutProjectTests: XCTestCase {

}

// MARK: - ShapesViewModel Tests

// Mock NetworkService for ShapesViewModel
struct MockNetworkService: NetworkService {
    let result: Result<ShapeModel, Error>

    func fetchData<T>(from urlString: String) async throws -> T where T : Decodable {
        switch result {
        case .success(let model):
            guard let casted = model as? T else {
                throw NetworkError.decodingError
            }
            return casted
        case .failure(let error):
            throw error
        }
    }
}

extension CricutProjectTests {
    func testViewModelFetchShapesSuccess() async {
        let shapeButton = ShapeButton(name: "Circle", drawPath: "circle")
        let mockService = MockNetworkService(result: .success(ShapeModel(buttons: [shapeButton])))
        let viewModel = ShapesViewModel(networkService: mockService)

        await viewModel.fetchShapes()

        switch viewModel.viewState {
        case .load(let buttons):
            XCTAssertEqual(buttons.count, 1)
            XCTAssertEqual(buttons.first?.name, "Circle")
        default:
            XCTFail("Expected .load state")
        }
    }

    func testViewModelFetchShapesFailure() async {
        let mockService = MockNetworkService(result: .failure(NetworkError.decodingError))
        let viewModel = ShapesViewModel(networkService: mockService)

        await viewModel.fetchShapes()

        switch viewModel.viewState {
        case .error(let message):
            XCTAssertEqual(message, NetworkError.decodingError.localizedDescription)
        default:
            XCTFail("Expected .error state")
        }
    }
}
