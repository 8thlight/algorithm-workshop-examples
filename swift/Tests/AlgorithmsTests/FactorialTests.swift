//
//  FactorialTests.swift
//  AlgorithmsTests
//
//  Created by Brian Gerstle on 11/8/19.
//

@testable import Algorithms
import XCTest

class FactorialTests: XCTestCase {
    func testZero() {
        XCTAssertEqual(0.factorial(), 0)
    }
}
